# DirectoryCar 
СУБД - PostgreSQL   
Сервер - Apache Tomcat 9  
Библиотеки: 
+ postgresql - для работы с PostgreSQL
+ javax.servlet - для работы с servlet
+ jackson - для работы с JSON

Структура проекта:
- web
  + index.html - главная страница
  + outListCar.jsp - страница отображения все автомобилей
  + addCar.jsp - страница для добавления 
  + statistics.jsp - страница отображения статистики
  + ajax.js - ajax-запрос для отправки JSON
- package bd - работа с БД 
  + ConnectionBD - подключение к БД
  + GetInfoBD - содержит методы для получения данных из БД
  + SetInfoBD - методы для добавления записей в БД
  + DeleteInfoBD - удаление записи из БД
- package pojo -
  + Car
  + Owner 
- package servlet - работа с servlet
  + OutputListCar - получает параметр сортировки -> отображение все автомобилей
  + AddCar - получение данных для формы добавления
  + AddCarBD - получает JSON -> в объект Java -> сохранить в БД
  + DeleteCar - получает id -> удалить изи БД
  + OutputStatistics - получение статистики из БД
