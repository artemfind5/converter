from django.shortcuts import render
from untitled.n13.models import kanal_data_table
import httplib2
import requests
import apiclient.discovery
from oauth2client.service_account import ServiceAccountCredentials
from datetime import datetime
import threading
import telebot

def usd_to_rub(usd):
    # перевод $ в рубли по курсу ЦБ РФ
    url = 'http://www.cbr.ru/scripts/XML_daily.asp?date_req=' + datetime.now().strftime("%d/%m/%Y")
    r = requests.get(url)
    r.raise_for_status()
    for item in r.text.split("</Valute>"):
        if "<Valute ID=\"R01235\">" in item:
            return (float)(item.split("<Value>")[1][:-len("</Value>")].replace(',', '.'))*usd

def get_data():
    threading.Timer(15.0, get_data).start()  # обновление данных каждые 15 секунд
    CREDENTIALS_FILE = 'kanal-361615-a568d3819f7a.json'  # Имя файла с закрытым ключом
    kanal_sheet = '1HHvU314fvTSsLEVvUlmBfDpBt0_l6_DOVSCLYsLdBBw'
    credentials = ServiceAccountCredentials.from_json_keyfile_name(CREDENTIALS_FILE,
                                                                   ['https://www.googleapis.com/auth/spreadsheets',
                                                                    'https://www.googleapis.com/auth/drive'])
    httpAuth = credentials.authorize(httplib2.Http())  # Авторизуемся в системе
    service = apiclient.discovery.build('sheets', 'v4', http=httpAuth)  # Выбираем работу с таблицами и 4 версию API
    ranges = ["Лист номер один!A2:D51"]
    results = service.spreadsheets().values().batchGet(spreadsheetId=kanal_sheet,
                                                       ranges=ranges,
                                                       valueRenderOption='FORMATTED_VALUE',
                                                       dateTimeRenderOption='FORMATTED_STRING').execute()
    sheet_values = results['valueRanges'][0]['values']
    kanal_data_table.objects.all().delete()
    for i in range(len(sheet_values)):
        order_date = datetime.strptime(sheet_values[i][3], "%d.%m.%Y").date()
        newrow = kanal_data_table(order_numb=sheet_values[i][1],
                                  price_d=sheet_values[i][2],
                                  term=order_date,
                                  price_r=usd_to_rub(int(sheet_values[i][2])))
        # на реальной базе функцию сверки сроков поставки можно вызывать тут
        newrow.save()

def check_order_date():
    threading.Timer(60.0*60, check_order_date).start()  # проверка каждый час на сроки поставки.
    # грамотнее будет реализовать через django-apscheduler и проверять ежедневно в установленное время
    bot = telebot.TeleBot('5794822572:AAElSLU3dgcTHIW4AWG8VI3dN7sXQXGyDqY')
    chat = '206184462'  # Chat ID, куда отправлять уведомление в телеграм
    dates = kanal_data_table.objects.values_list('term', flat=True)
    for i in range(len(dates)):
        if datetime.now().date() > dates[i]:
            bot.send_message(chat, str(kanal_data_table.objects.values_list('order_numb', flat=True)[i]) + " - Срок поставки прошел!")

get_data()
check_order_date()

def main(request):
    return render(request, "data.html", {'acts': kanal_data_table.objects.all()
                                         })