// получаем доступ ко всем элементам внутри страницы по их ID
const container = document.getElementById("container");
const buttoun = document.getElementById("buttoun");
const mast = document.getElementById("mast");
const sail1 = document.getElementById("sail-1");
const sail2 = document.getElementById("sail-2");

// отслеживаем нажатие на кнопку
// при нажатии запустится функция sail()
buttoun.addEventListener("click", sail);

// подготовка к отплытию — функция, которая сработает по нажатию кнопки
function sail() {
	// выводим надпись
	buttoun.innerText = 'Счастливого пути!'
	// превращаем кнопку в лодку
	buttoun.style.setProperty("border-radius", "10px 10px 100px 100px");
	// поднимаем мачту
	mast.style.setProperty("transform", " translate(170px, 48px) rotatez(-0deg)");
	// отдаём команду «Поднять паруса»
	setTimeout(hoist, 500);
}

// Поднимаем паруса
function hoist() {
	// поднимаем паруса
	sail1.style.setProperty("transform", "translatex(16px) scaley(1)");
	sail2.style.setProperty("transform", "translate(-104px, -145px) scaley(1)");
	// отдаём команду на отплытие
	setTimeout(sailaway, 1000);
}

// уплываем за экран
function sailaway() {
	// движемся на 150 пикселей правее правой границы экрана
	container.style.setProperty("transform", "translatex(calc(100vw - 150px)");
}