# converter
Django, requests, httplib2, apiclient, oauth2client, threading, telebot

## Реализованный функционал (untitled/n13/views.py):

1. Получает данные с документа при помощи Google API, сделанного в Google Sheets.
2. Данные добавляются в БД, в том же виде, что и в файле–источнике, с добавлением колонки «стоимость в руб.»

    a. СУБД на основе PostgreSQL.    
    
    b. Данные для перевода $ в рубли получаются по курсу ЦБ РФ.   
    
3. Программа работает постоянно для обеспечения обновления данных в онлайн режиме (база данных обновляется каждые 15 секунд).

Дополнения:

4.  a. докер контейнер (в разработке)   
 
    b. Разработан функционал проверки соблюдения «срока поставки» из таблицы. В случае, если срок прошел, скрипт отправляет уведомление в Telegram. (пока через threading.Timer как проверка каждый час, но в перспективе реализация с помощью django-apscheduler для проверки ежедневно в установленное время) 
    
    c. Разработано в виде простейшего одностраничного web-приложения на основе Django.
    
5. Ссылка на Google Sheets документ: https://docs.google.com/spreadsheets/d/1HHvU314fvTSsLEVvUlmBfDpBt0_l6_DOVSCLYsLdBBw/edit#gid=0 (права чтения и записи предоставляю лично)

Инструкция по запуску программы:
- Скачать виртуальное окружение проекта (https://dropmefiles.com/8N18x) и разархивировать в его корень 
- Создать БД kanal_db

    user: kanaluser

    password: kanaluser

- Накатить на базу дамп dump.sql из корневого каталога проекта
- Запустить скрипт start.sh

Разработано в ОС Ubuntu 20.04

Запуск проекта требует предустановленного python3-venv
