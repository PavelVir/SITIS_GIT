﻿Перем мМенеджеры Экспорт;

Функция ПолучитьВидСравнения(Знач ИмяПоля, Знач ВидСравненияОтбора, ИмяПараметра, ЗначениеПараметра = "") Экспорт
	Если Лев(ИмяПоля, 6) = "Объект" Тогда
		ИмяПоля = "Ссылка" + Сред(ИмяПоля, 7);
	КонецЕсли;
	
    Если ВидСравненияОтбора = ВидСравненияКомпоновкиДанных.Равно  Тогда
		Возврат "ТаблицаСсылок." + ИмяПоля + " = &" + ИмяПараметра;

	ИначеЕсли ВидСравненияОтбора = ВидСравненияКомпоновкиДанных.Больше Тогда
		Возврат "ТаблицаСсылок." + ИмяПоля + " > &" + ИмяПараметра;
	
	ИначеЕсли ВидСравненияОтбора = ВидСравненияКомпоновкиДанных.БольшеИлиРавно  Тогда
		Возврат "ТаблицаСсылок." + ИмяПоля + " >= &" + ИмяПараметра;
	
	ИначеЕсли ВидСравненияОтбора = ВидСравненияКомпоновкиДанных.ВИерархии 
		ИЛИ  ВидСравненияОтбора = ВидСравненияКомпоновкиДанных.ВСпискеПоИерархии Тогда
		Возврат "ТаблицаСсылок." + ИмяПоля + " В ИЕРАРХИИ (&" + ИмяПараметра + ")";
	
	ИначеЕсли ВидСравненияОтбора = ВидСравненияКомпоновкиДанных.ВСписке  Тогда
		Возврат "ТаблицаСсылок." + ИмяПоля + " В (&" + ИмяПараметра + ")";
	
	ИначеЕсли ВидСравненияОтбора = ВидСравненияКомпоновкиДанных.Меньше  Тогда
		Возврат "ТаблицаСсылок." + ИмяПоля + " < &" + ИмяПараметра;
	
	ИначеЕсли ВидСравненияОтбора = ВидСравненияКомпоновкиДанных.МеньшеИлиРавно  Тогда         
		Возврат "ТаблицаСсылок." + ИмяПоля + " <= &" + ИмяПараметра;
	
	ИначеЕсли ВидСравненияОтбора = ВидСравненияКомпоновкиДанных.НеВСписке  Тогда
		Возврат "НЕ ТаблицаСсылок." + ИмяПоля + " В (&" + ИмяПараметра + ")";
	
	ИначеЕсли ВидСравненияОтбора = ВидСравненияКомпоновкиДанных.НеВИерархии 
		ИЛИ ВидСравненияОтбора = ВидСравненияКомпоновкиДанных.НеВСпискеПоИерархии Тогда
		Возврат "НЕ ТаблицаСсылок." + ИмяПоля + " В ИЕРАРХИИ (&" + ИмяПараметра + ")";
	
	ИначеЕсли ВидСравненияОтбора = ВидСравненияКомпоновкиДанных.НеРавно  Тогда
		Возврат "ТаблицаСсылок." + ИмяПоля + " <> &" + ИмяПараметра;
	
	ИначеЕсли ВидСравненияОтбора = ВидСравненияКомпоновкиДанных.Содержит  Тогда
		Возврат "ТаблицаСсылок." + ИмяПоля + " ПОДОБНО ""%" + ЗначениеПараметра + "%""";
		
	ИначеЕсли ВидСравненияОтбора = ВидСравненияКомпоновкиДанных.НеСодержит  Тогда
		Возврат " НЕ ТаблицаСсылок." + ИмяПоля + " ПОДОБНО ""%" + ЗначениеПараметра + "%""";
		
	КонецЕсли;

КонецФункции // ()

Функция ЭтоСлужебнаяФорма(ФормаИмя)
	
	Если ФормаИмя = "ПодборИОбработка" 
		ИЛИ ФормаИмя = "ФормаНастроек" 
		ИЛИ ФормаИмя = "ШаблонОбработки" 
		ИЛИ ФормаИмя = "ФормаОтбора" 
		ИЛИ ФормаИмя = "ПодборИОбработкаОбычнаяФорма"
		ИЛИ ФормаИмя = "ВыборОбъектаМетаданных" 
		ИЛИ ФормаИмя = "ФормаНастроекУправляемая" Тогда
		
		Возврат Истина;
	КонецЕсли;
	
	Возврат Ложь;
	
КонецФункции

Процедура ЗагрузитьОбработки(ТекФорма, ДоступныеОбработки2, ВыбранныеОбработки2, СтруктураФорм = Неопределено) Экспорт

	_ДоступныеОбработки = ТекФорма.РеквизитФормыВЗначение("ДоступныеОбработки");
	_ВыбранныеОбработки = ТекФорма.РеквизитФормыВЗначение("ВыбранныеОбработки");
	
	ФормыОбработки = ЭтотОбъект.Метаданные().Формы;

	Для каждого Форма из ФормыОбработки Цикл
		Если ЭтоСлужебнаяФорма(Форма.Имя) Тогда
			Продолжить;
		КонецЕсли;
		НайденнаяСтрока = _ДоступныеОбработки.Строки.Найти(Форма.Имя, "ИмяФормы");
		Если НЕ НайденнаяСтрока = Неопределено Тогда
			Если НЕ НайденнаяСтрока.Обработка = Форма.Синоним Тогда
				НайденнаяСтрока.Обработка = Форма.Синоним;
			КонецЕсли;
			Если СтруктураФорм = Неопределено Тогда
				Если НЕ ЭтотОбъект.ПолучитьФорму(Форма.Имя).мИспользоватьНастройки Тогда
					НайденнаяСтрока.Строки.Очистить();
				КонецЕсли;
			Иначе
				Если НЕ СтруктураФорм[Форма.Имя] Тогда
					НайденнаяСтрока.Строки.Очистить();
				КонецЕсли;
			КонецЕсли;
			Продолжить;
		КонецЕсли;
		
		НоваяОбработка = _ДоступныеОбработки.Строки.Добавить();
		НоваяОбработка.Обработка = Форма.Синоним;
		НоваяОбработка.ИмяФормы  = Форма.Имя;
		НоваяОбработка.мИспользоватьНастройки  = Истина;
		
		Настройка = Новый Структура;
		Настройка.Вставить("Обработка", Форма.Синоним);
		Настройка.Вставить("Прочее", Неопределено);
		НоваяОбработка.Настройка.Добавить(Настройка);
		
		Если СтруктураФорм = Неопределено Тогда
			СтруктураФорм = Новый Структура;
		КонецЕсли;
		СтруктураФорм.Вставить(Форма.Имя, Истина);
		
	КонецЦикла;

	МассивДляУдаления = Новый Массив;
	
	Для каждого ДоступнаяОбработка из _ДоступныеОбработки.Строки Цикл
		Если ФормыОбработки.Найти(ДоступнаяОбработка.ИмяФормы) = Неопределено Тогда
			МассивДляУдаления.Добавить(ДоступнаяОбработка);
		КонецЕсли;
	КонецЦикла;

	Для Индекс = 0 по МассивДляУдаления.Количество() - 1 Цикл
		_ДоступныеОбработки.Строки.Удалить(МассивДляУдаления[Индекс]);
	КонецЦикла;

	МассивДляУдаления.Очистить();
	
	Для каждого ВыбраннаяОбработка из _ВыбранныеОбработки Цикл
		
		Удалить = Истина;
		Если _ДоступныеОбработки.Строки.Найти(ВыбраннаяОбработка.СтрокаДоступнойОбработки, "Идентификатор") = Неопределено Тогда
			Для каждого ДоступнаяОбработкаСтроки Из _ДоступныеОбработки.Строки Цикл
				Если ДоступнаяОбработкаСтроки.Строки.Найти(ВыбраннаяОбработка.СтрокаДоступнойОбработки, "Идентификатор") <> Неопределено Тогда
					Удалить = Ложь;
					Прервать;
				КонецЕсли;
			КонецЦикла;
		Иначе
			Удалить = Ложь;
		КонецЕсли;
		
		Если Удалить Тогда
			МассивДляУдаления.Добавить(ВыбраннаяОбработка);
		КонецЕсли;
		
	КонецЦикла;

	Для Индекс = 0 по МассивДляУдаления.Количество() - 1 Цикл
		_ВыбранныеОбработки.Удалить(МассивДляУдаления[Индекс]);
	КонецЦикла;
	
	ТекФорма.ЗначениеВРеквизитФормы(_ДоступныеОбработки, "ДоступныеОбработки");
	ТекФорма.ЗначениеВРеквизитФормы(_ВыбранныеОбработки, "ВыбранныеОбработки");

КонецПроцедуры

// Инициализирует переменную мМенеджеры, содержащую соответствия типов объектов их свойствам.
//
// Параметры:
//  Нет.
//
// Возвращаемое значение:
//  Соответствие, содержащее соответствия типов объектов их свойствам.
// 
Функция ИнициализацияМенеджеров() Экспорт

	Менеджеры = Новый Соответствие;

	ИмяТипа = "Справочник";
	Для каждого ОбъектМД Из Метаданные.Справочники Цикл
		Имя              = ОбъектМД.Имя;
		Менеджер         = Справочники[Имя];
		ТипСсылкиСтрокой = "СправочникСсылка." + Имя;
		ТипСсылки        = Тип(ТипСсылкиСтрокой);
		Структура = Новый Структура("Имя,ИмяТипа,ТипСсылкиСтрокой,Менеджер,ТипСсылки, ОбъектМД", Имя, ИмяТипа, ТипСсылкиСтрокой, Менеджер, ТипСсылки, ОбъектМД);
		Менеджеры.Вставить(ОбъектМД, Структура);
	КонецЦикла;

	ИмяТипа = "Документ";
	Для каждого ОбъектМД Из Метаданные.Документы Цикл
		Имя              = ОбъектМД.Имя;
		Менеджер         = Документы[Имя];
		ТипСсылкиСтрокой = "ДокументСсылка." + Имя;
		ТипСсылки        = Тип(ТипСсылкиСтрокой);
		Структура = Новый Структура("Имя,ИмяТипа,ТипСсылкиСтрокой,Менеджер,ТипСсылки, ОбъектМД", Имя, ИмяТипа, ТипСсылкиСтрокой, Менеджер, ТипСсылки, ОбъектМД);
		Менеджеры.Вставить(ОбъектМД, Структура);
	КонецЦикла;

	ИмяТипа = "ПланВидовХарактеристик";
	Для каждого ОбъектМД Из Метаданные.ПланыВидовХарактеристик Цикл
		Имя              = ОбъектМД.Имя;
		Менеджер         = ПланыВидовХарактеристик[Имя];
		ТипСсылкиСтрокой = "ПланВидовХарактеристикСсылка." + Имя;
		ТипСсылки        = Тип(ТипСсылкиСтрокой);
		Структура = Новый Структура("Имя,ИмяТипа,ТипСсылкиСтрокой,Менеджер,ТипСсылки, ОбъектМД", Имя, ИмяТипа, ТипСсылкиСтрокой, Менеджер, ТипСсылки, ОбъектМД);
		Менеджеры.Вставить(ОбъектМД, Структура);
	КонецЦикла;
	
	ИмяТипа = "ПланВидовРасчета";
	Для каждого ОбъектМД Из Метаданные.ПланыВидовРасчета Цикл
		Имя              = ОбъектМД.Имя;
		Менеджер         = ПланыВидовРасчета[Имя];
		ТипСсылкиСтрокой = "ПланВидовРасчетаСсылка." + Имя;
		ТипСсылки        = Тип(ТипСсылкиСтрокой);
		Структура = Новый Структура("Имя,ИмяТипа,ТипСсылкиСтрокой,Менеджер,ТипСсылки, ОбъектМД", Имя, ИмяТипа, ТипСсылкиСтрокой, Менеджер, ТипСсылки, ОбъектМД);
		Менеджеры.Вставить(ОбъектМД, Структура);
	КонецЦикла;
	
	ИмяТипа = "ПланОбмена";
	Для каждого ОбъектМД Из Метаданные.ПланыОбмена Цикл
		Имя              = ОбъектМД.Имя;
		Менеджер         = ПланыОбмена[Имя];
		ТипСсылкиСтрокой = "ПланОбменаСсылка." + Имя;
		ТипСсылки        = Тип(ТипСсылкиСтрокой);
		Структура = Новый Структура("Имя,ИмяТипа,ТипСсылкиСтрокой,Менеджер,ТипСсылки, ОбъектМД", Имя, ИмяТипа, ТипСсылкиСтрокой, Менеджер, ТипСсылки, ОбъектМД);
		Менеджеры.Вставить(ОбъектМД, Структура);
	КонецЦикла;
	
	ИмяТипа = "Задача";
	Для каждого ОбъектМД Из Метаданные.Задачи Цикл
		Имя              = ОбъектМД.Имя;
		Менеджер         = Задачи[Имя];
		ТипСсылкиСтрокой = "ЗадачаСсылка." + Имя;
		ТипСсылки        = Тип(ТипСсылкиСтрокой);
		Структура = Новый Структура("Имя,ИмяТипа,ТипСсылкиСтрокой,Менеджер,ТипСсылки, ОбъектМД", Имя, ИмяТипа, ТипСсылкиСтрокой, Менеджер, ТипСсылки, ОбъектМД);
		Менеджеры.Вставить(ОбъектМД, Структура);
	КонецЦикла;
	
	ИмяТипа = "БизнесПроцесс";
	Для каждого ОбъектМД Из Метаданные.БизнесПроцессы Цикл
		Имя              = ОбъектМД.Имя;
		Менеджер         = БизнесПроцессы[Имя];
		ТипСсылкиСтрокой = "БизнесПроцессСсылка." + Имя;
		ТипСсылки        = Тип(ТипСсылкиСтрокой);
		Структура = Новый Структура("Имя,ИмяТипа,ТипСсылкиСтрокой,Менеджер,ТипСсылки, ОбъектМД", Имя, ИмяТипа, ТипСсылкиСтрокой, Менеджер, ТипСсылки, ОбъектМД);
		Менеджеры.Вставить(ОбъектМД, Структура);
	КонецЦикла;
	
	ИмяТипа = "РегистрСведений";
	Для каждого ОбъектМД Из Метаданные.РегистрыСведений Цикл
		Если ОбъектМД.РежимЗаписи <> Метаданные.СвойстваОбъектов.РежимЗаписиРегистра.Независимый 
				//ИЛИ ОбъектМД.ПериодичностьРегистраСведений <> Метаданные.СвойстваОбъектов.ПериодичностьРегистраСведений.Непериодический 
					Тогда
			Продолжить;
		КонецЕсли;
		Имя              = ОбъектМД.Имя;
		Менеджер         = РегистрыСведений[Имя];
		ТипСсылкиСтрокой = "РегистрСведенийЗапись." + Имя;
		ТипСсылки        = Тип(ТипСсылкиСтрокой);
		Структура = Новый Структура("Имя,ИмяТипа,ТипСсылкиСтрокой,Менеджер,ТипСсылки, ОбъектМД", Имя, ИмяТипа, ТипСсылкиСтрокой, Менеджер, ТипСсылки, ОбъектМД);
		Менеджеры.Вставить(ОбъектМД, Структура);
	КонецЦикла;
	
	Возврат Менеджеры;

КонецФункции // вИнициализацияМенеджеров()

//////////////////////////////////////////////////////////
// СЛУЖЕБНЫЕ ПРОЦЕДУРЫ И ФУНКЦИИ РЕГИСТРАЦИИ ОБРАБОТКИ
//

// Сервисная экспортная функция. Вызывается в основной программе при регистрации обработки в информационной базе
// Возвращает структуру с параметрами регистрации
//
// Возвращаемое значение:
//		Структура с полями:
//			Вид - строка, вид обработки, один из возможных: "ДополнительнаяОбработка", "ДополнительныйОтчет", 
//					"ЗаполнениеОбъекта", "Отчет", "ПечатнаяФорма", "СозданиеСвязанныхОбъектов"
//			Назначение - Массив строк имен объектов метаданных в формате: 
//					<ИмяКлассаОбъектаМетаданного>.[ * | <ИмяОбъектаМетаданных>]. 
//					Например, "Документ.СчетЗаказ" или "Справочник.*". Параметр имеет смысл только для назначаемых обработок, для глобальных может не задаваться.
//			Наименование - строка - Наименование обработки, которым будет заполнено наименование элемента справочника по умолчанию.
//			Информация  - строка - Краткая информация или описание по обработке.
//			Версия - строка - Версия обработки в формате “<старший номер>.<младший номер>” используется при загрузке обработок в информационную базу.
//			БезопасныйРежим - булево - Принимает значение Истина или Ложь, в зависимости от того, требуется ли устанавливать или отключать безопасный режим 
//							исполнения обработок. Если истина, обработка будет запущена в безопасном режиме. 
//
//
Функция СведенияОВнешнейОбработке() Экспорт
	
	//Инициализируем структуру с параметрами регистрации
	
	ПараметрыРегистрации = ПолучитьПараметрыРегистрации();
	ПараметрыРегистрации.Вид = "ДополнительнаяОбработка";
	ПараметрыРегистрации.Версия = Версия;
	ПараметрыРегистрации.БезопасныйРежим = Ложь;

	//Определяем команды для вывода формы
	
	ТаблицаКоманд = ПолучитьТаблицуКоманд();

	ДобавитьКоманду(ТаблицаКоманд,
		ПараметрыРегистрации.Наименование, // Представление команды в пользовательском интерфейсе
		"УниверсальныеПодборИОбработкаОбъектовУФ",		// Уникальный идентификатор команды
		"ОткрытиеФормы"
	);

	ПараметрыРегистрации.Вставить("Команды", ТаблицаКоманд);
	Возврат ПараметрыРегистрации;

КонецФункции

//
// ВСПОМОГАТЕЛЬНЫЕ ПРОЦЕДУРЫ И ФУНКЦИИ РЕГИСТРАЦИИ ОБРАБОТКИ
//

// Формирует структуру с параметрами регистрации регистрации обработки в информационной базе
//
// Параметры:
//	ОбъектыНазначенияФормы - Массив - Массив строк имен объектов метаданных в формате: 
//					<ИмяКлассаОбъектаМетаданного>.[ * | <ИмяОбъектаМетаданных>]. 
//					или строка с именем объекта метаданных 
//	НаименованиеОбработки - строка - Наименование обработки, которым будет заполнено наименование элемента справочника по умолчанию.
//							Необязательно, по умолчанию синоним или представление объекта
//	Информация  - строка - Краткая информация или описание обработки.
//							Необязательно, по умолчанию комментарий объекта
//	Версия - строка - Версия обработки в формате “<старший номер>.<младший номер>” используется при загрузке обработок в информационную базу.
//
//
// Возвращаемое значение:
//		Структура
//
Функция ПолучитьПараметрыРегистрации(ОбъектыНазначенияФормы = Неопределено, НаименованиеОбработки = "", Информация = "", Версия = "1.0")

	Если ТипЗнч(ОбъектыНазначенияФормы) = Тип("Строка") Тогда
		ОбъектНазначенияФормы = ОбъектыНазначенияФормы;
		ОбъектыНазначенияФормы = Новый Массив;
		ОбъектыНазначенияФормы.Добавить(ОбъектНазначенияФормы);
	КонецЕсли;
	
	ПараметрыРегистрации = Новый Структура;
	ПараметрыРегистрации.Вставить("Вид", "ПечатнаяФорма");
	ПараметрыРегистрации.Вставить("БезопасныйРежим", Истина);
	ПараметрыРегистрации.Вставить("Назначение", ОбъектыНазначенияФормы);
	
	Если Не ЗначениеЗаполнено(НаименованиеОбработки) Тогда
		НаименованиеОбработки = ЭтотОбъект.Метаданные().Представление();
	КонецЕсли;
	ПараметрыРегистрации.Вставить("Наименование", НаименованиеОбработки);
	
	Если Не ЗначениеЗаполнено(Информация) Тогда
		Информация = ЭтотОбъект.Метаданные().Комментарий;
	КонецЕсли;
	ПараметрыРегистрации.Вставить("Информация", Информация);
	
	ПараметрыРегистрации.Вставить("Версия", Версия);

	Возврат ПараметрыРегистрации;

КонецФункции

// Формирует таблицу значений с командами печати
//	
// Возвращаемое значение:
//		ТаблицаЗначений
//
Функция ПолучитьТаблицуКоманд()

	Команды = Новый ТаблицаЗначений;
	
	//Представление команды в пользовательском интерфейсе
	Команды.Колонки.Добавить("Представление", Новый ОписаниеТипов("Строка"));
	
	//Уникальный идентификатор команды или имя макета печати
	Команды.Колонки.Добавить("Идентификатор", Новый ОписаниеТипов("Строка"));
	
	//Способ вызова команды: "ОткрытиеФормы", "ВызовКлиентскогоМетода", "ВызовСерверногоМетода"
	// "ОткрытиеФормы" - открытие формы обработки Форма
	// "ВызовКлиентскогоМетода" - вызов процедуры Печать(), определённой в модуле формы обработки
	// "ВызовСерверногоМетода" - вызов процедуры Печать(), определённой в модуле объекта обработки
	Команды.Колонки.Добавить("Использование", Новый ОписаниеТипов("Строка"));
	
	//Показывать оповещение.
	//Если Истина, требуется показать оповещение при начале и при завершении работы обработки. 
	//Имеет смысл только при запуске обработки без открытия формы
	Команды.Колонки.Добавить("ПоказыватьОповещение", Новый ОписаниеТипов("Булево"));
	
	//Дополнительный модификатор команды. 
	//Используется для дополнительных обработок печатных форм на основе табличных макетов.
	//Для таких команд должен содержать строку ПечатьMXL
	Команды.Колонки.Добавить("Модификатор", Новый ОписаниеТипов("Строка"));

	Возврат Команды;

КонецФункции

// Вспомогательная процедура.
//
Процедура ДобавитьКоманду(ТаблицаКоманд, Представление, Идентификатор, Использование = "ВызовСерверногоМетода", ПоказыватьОповещение = Ложь, Модификатор = "ПечатьMXL")

	НоваяКоманда = ТаблицаКоманд.Добавить();
	НоваяКоманда.Представление = Представление;
	НоваяКоманда.Идентификатор = Идентификатор;
	НоваяКоманда.Использование = Использование;
	НоваяКоманда.ПоказыватьОповещение = ПоказыватьОповещение;
	НоваяКоманда.Модификатор = Модификатор;

КонецПроцедуры

мМенеджеры = ИнициализацияМенеджеров();
Версия = "1.8.2";