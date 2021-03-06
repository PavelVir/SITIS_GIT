﻿
Функция СведенияОВнешнейОбработке() Экспорт
	
	// ++ Ситис: p.virich   2018-07-17
	
	//Попытка
	//	ПараметрыРегистрации				= ДополнительныеОтчетыИОбработки.СведенияОВнешнейОбработке(СтандартныеПодсистемыСервер.ВерсияБиблиотеки());
	//	ПараметрыРегистрации.Вид			= ДополнительныеОтчетыИОбработкиКлиентСервер.ВидОбработкиДополнительнаяОбработка();
	//	НоваяКоманда.Использование			= ДополнительныеОтчетыИОбработкиКлиентСервер.ТипКомандыОткрытиеФормы();	
	//Исключение
		
		ПараметрыРегистрации				= допСведенияОВнешнейОбработке(ВерсияБиблиотеки());
		ПараметрыРегистрации.Вид			= ВидОбработкиДополнительнаяОбработка();
		
	//КонецПопытки;
	
	// -- Ситис: p.virich   2018-07-17 

	ПараметрыРегистрации.Версия			= "1.0";
	ПараметрыРегистрации.БезопасныйРежим= Истина;
	ПараметрыРегистрации.Наименование	= "Изменение режима компактности форм ТАКСИ";
	ПараметрыРегистрации.Информация		= "";

	НоваяКоманда				= ПараметрыРегистрации.Команды.Добавить();
	НоваяКоманда.Представление	= НСтр("ru = 'Изменить режим компактности форм ТАКСИ'");
	НоваяКоманда.Идентификатор	= "ИзменениеРежимаКомпактностиФормТАКСИ";
	НоваяКоманда.Использование			= ТипКомандыОткрытиеФормы();
	
	НоваяКоманда.ПоказыватьОповещение = Истина;

	Возврат ПараметрыРегистрации;
	
КонецФункции

// ++ Ситис: p.virich   2018-07-17
Функция допСведенияОВнешнейОбработке(ВерсияБСП = "") Экспорт
	ПараметрыРегистрации = Новый Структура;
	
	ПараметрыРегистрации.Вставить("Вид", "");
	ПараметрыРегистрации.Вставить("Версия", "0.0");
	ПараметрыРегистрации.Вставить("Назначение", Новый Массив);
	ПараметрыРегистрации.Вставить("Наименование", Неопределено);
	ПараметрыРегистрации.Вставить("БезопасныйРежим", Истина);
	ПараметрыРегистрации.Вставить("Информация", Неопределено);
	ПараметрыРегистрации.Вставить("ВерсияБСП", ВерсияБСП);
	ПараметрыРегистрации.Вставить("ОпределитьНастройкиФормы", Ложь);
	
	РеквизитыТабличнойЧасти = Метаданные.Справочники.ДополнительныеОтчетыИОбработки.ТабличныеЧасти.Команды.Реквизиты;
	
	ТаблицаКоманд = Новый ТаблицаЗначений;
	ТаблицаКоманд.Колонки.Добавить("Представление", РеквизитыТабличнойЧасти.Представление.Тип);
	ТаблицаКоманд.Колонки.Добавить("Идентификатор", РеквизитыТабличнойЧасти.Идентификатор.Тип);
	ТаблицаКоманд.Колонки.Добавить("Использование", Новый ОписаниеТипов("Строка"));
	ТаблицаКоманд.Колонки.Добавить("ПоказыватьОповещение", РеквизитыТабличнойЧасти.ПоказыватьОповещение.Тип);
	ТаблицаКоманд.Колонки.Добавить("Модификатор", РеквизитыТабличнойЧасти.Модификатор.Тип);
	ТаблицаКоманд.Колонки.Добавить("Скрыть",      РеквизитыТабличнойЧасти.Скрыть.Тип);
	ТаблицаКоманд.Колонки.Добавить("ЗаменяемыеКоманды", РеквизитыТабличнойЧасти.ЗаменяемыеКоманды.Тип);
	
	ПараметрыРегистрации.Вставить("Команды", ТаблицаКоманд);
	ПараметрыРегистрации.Вставить("Разрешения", Новый Массив);
	
	Возврат ПараметрыРегистрации;
КонецФункции

// Дополнительная обработка.
Функция ВидОбработкиДополнительнаяОбработка() Экспорт
	
	Возврат "ДополнительнаяОбработка"; // Внутренний идентификатор.
	
КонецФункции

// Возвращает имя типа команд по открытию формы. При выполнении этих команд
//   открывается основная форма внешнего объекта с указанными ниже параметрами.
//
//   Общие параметры:
//       * ИдентификаторКоманды - Строка - Имя команды, определенное в функции СведенияОВнешнейОбработке().
//       * ДополнительнаяОбработкаСсылка - СправочникСсылка.ДополнительныеОтчетыИОбработки - Ссылка этого объекта.
//           Может использоваться для чтения и сохранения параметров обработки.
//           Также может использоваться для фонового выполнения длительных операций.
//           Подробнее см. в документации к подсистеме, раздел "Фоновое выполнение длительных операций".
//       * ИмяФормы - Строка - Имя формы-владельца, из которой вызвана эта команда.
//   
//   Вспомогательные параметры для обработок создания связанных объектов (Вид = "СозданиеСвязанныхОбъектов"),
//   обработок заполнения (Вид = "ЗаполнениеОбъекта") и контекстных отчетов (Вид = "Отчет"):
//       * ОбъектыНазначения - Массив - Ссылки объектов, для которых вызвана команда.
//   
//   Пример чтения общих параметров:
//       	ОбъектСсылка = ОбщегоНазначенияКлиентСервер.СвойствоСтруктуры(Параметры, "ДополнительнаяОбработкаСсылка");
//       	ИдентификаторКоманды = ОбщегоНазначенияКлиентСервер.СвойствоСтруктуры(Параметры, "ИдентификаторКоманды");
//   
//   Пример чтения значений дополнительных настроек:
//       	Если ЗначениеЗаполнено(ОбъектСсылка) Тогда
//       		ХранилищеНастроек = ОбщегоНазначения.ЗначениеРеквизитаОбъекта(ОбъектСсылка, "ХранилищеНастроек");
//       		Настройки = ХранилищеНастроек.Получить();
//       		Если ТипЗнч(Настройки) = Тип("Структура") Тогда
//       			ЗаполнитьЗначенияСвойств(ЭтотОбъект, "<ИменаНастроек>");
//       		КонецЕсли;
//       	КонецЕсли;
//   
//   Пример сохранения значений дополнительных настроек:
//       	Настройки = Новый Структура("<ИменаНастроек>", <ЗначенияНастроек>);
//       	ДополнительнаяОбработкаОбъект = ОбъектСсылка.ПолучитьОбъект();
//       	ДополнительнаяОбработкаОбъект.ХранилищеНастроек = Новый ХранилищеЗначения(Настройки);
//       	ДополнительнаяОбработкаОбъект.Записать();
//
// Возвращаемое значение:
//   Строка - имя типа команд по открытию формы.
//
Функция ТипКомандыОткрытиеФормы() Экспорт
	
	Возврат "ОткрытиеФормы"; // Внутренний идентификатор.
	
КонецФункции

Функция ВерсияБиблиотеки()
	Возврат "2.3.2.53";
КонецФункции

 // -- Ситис: p.virich   2018-07-17 
