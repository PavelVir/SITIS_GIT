﻿
Перем ВыбранныеПодсистемы;

// -= СОЗДАНИЕ ДЕРЕВА МЕТАДАННЫХ =-

Функция СоздатьТаблицуКоллекций()
	
	// Создадим структуру ТЗ
	ТЗ = Новый ТаблицаЗначений;
	ТЗ.Колонки.Добавить("Представление");
	ТЗ.Колонки.Добавить("НазваниеКоллекции");
	ТЗ.Колонки.Добавить("Картинка");
	ТЗ.Колонки.Добавить("КартинкаОбъекта");
	ТЗ.Колонки.Добавить("ОбъектМД");
	ТЗ.Колонки.Добавить("НаличиеТЧ");
	
	// Добавим справочники
	НС = ТЗ.Добавить();
	НС.Представление = "Справочники";
	НС.НазваниеКоллекции = "Справочник";
	НС.Картинка = БиблиотекаКартинок.Справочник;
	НС.КартинкаОбъекта = БиблиотекаКартинок.СправочникОбъект;
	НС.ОбъектМД = Метаданные.Справочники;
	НС.НаличиеТЧ = Истина;
	
	// Добавим документы
	НС = ТЗ.Добавить();
	НС.Представление = "Документы";
	НС.НазваниеКоллекции = "Документ";
	НС.Картинка = БиблиотекаКартинок.Документ;
	НС.КартинкаОбъекта = БиблиотекаКартинок.ДокументОбъект;
	НС.ОбъектМД = Метаданные.Документы;
	НС.НаличиеТЧ = Истина;
	
	// Добавим последовательности
	НС = ТЗ.Добавить();
	НС.Представление = "Последовательности";
	НС.НазваниеКоллекции = "Последовательность";
	НС.Картинка = БиблиотекаКартинок.СортироватьСписок;
	НС.КартинкаОбъекта = БиблиотекаКартинок.СортироватьСписок;
	НС.ОбъектМД = Метаданные.Последовательности;
	НС.НаличиеТЧ = Ложь;
	
	// Добавим журналы документов
	НС = ТЗ.Добавить();
	НС.Представление = "Журналы документов";
	НС.НазваниеКоллекции = "ЖурналДокументов";
	НС.Картинка = БиблиотекаКартинок.ЖурналДокументов;
	НС.КартинкаОбъекта = БиблиотекаКартинок.ЖурналДокументов;
	НС.ОбъектМД = Метаданные.ЖурналыДокументов;
	НС.НаличиеТЧ = Ложь;
	
	// Добавим планы видов характеристик
	НС = ТЗ.Добавить();
	НС.Представление = "Планы видов характеристик";
	НС.НазваниеКоллекции = "ПланВидовХарактеристик";
	НС.Картинка = БиблиотекаКартинок.ПланВидовХарактеристик;
	НС.КартинкаОбъекта = БиблиотекаКартинок.ПланВидовХарактеристикОбъект;
	НС.ОбъектМД = Метаданные.ПланыВидовХарактеристик;
	НС.НаличиеТЧ = Истина;
	
	// Добавим планы счетов
	НС = ТЗ.Добавить();
	НС.Представление = "Планы счетов";
	НС.НазваниеКоллекции = "ПланСчетов";
	НС.Картинка = БиблиотекаКартинок.ПланСчетов;
	НС.КартинкаОбъекта = БиблиотекаКартинок.ПланСчетовОбъект;
	НС.ОбъектМД = Метаданные.ПланыСчетов;
	НС.НаличиеТЧ = Истина;
	
	// Добавим планы видов расчета
	НС = ТЗ.Добавить();
	НС.Представление = "Планы видов расчета";
	НС.НазваниеКоллекции = "ПланВидовРасчета";
	НС.Картинка = БиблиотекаКартинок.ПланВидовРасчета;
	НС.КартинкаОбъекта = БиблиотекаКартинок.ПланВидовРасчетаОбъект;
	НС.ОбъектМД = Метаданные.ПланыВидовРасчета;
	НС.НаличиеТЧ = Истина;
	
	// Добавим регистры сведений
	НС = ТЗ.Добавить();
	НС.Представление = "Регистры сведений";
	НС.НазваниеКоллекции = "РегистрСведений";
	НС.Картинка = БиблиотекаКартинок.РегистрСведений;
	НС.КартинкаОбъекта = БиблиотекаКартинок.РегистрСведений;
	НС.ОбъектМД = Метаданные.РегистрыСведений;
	НС.НаличиеТЧ = Ложь;
	
	// Добавим регистры накопления
	НС = ТЗ.Добавить();
	НС.Представление = "Регистры накопления";
	НС.НазваниеКоллекции = "РегистрНакопления";
	НС.Картинка = БиблиотекаКартинок.РегистрНакопления;
	НС.КартинкаОбъекта = БиблиотекаКартинок.РегистрНакопления;
	НС.ОбъектМД = Метаданные.РегистрыНакопления;
	НС.НаличиеТЧ = Ложь;
	
	// Добавим регистры бухгалтерии
	НС = ТЗ.Добавить();
	НС.Представление = "Регистры бухгалтерии";
	НС.НазваниеКоллекции = "РегистрБухгалтерии";
	НС.Картинка = БиблиотекаКартинок.РегистрБухгалтерии;
	НС.КартинкаОбъекта = БиблиотекаКартинок.РегистрБухгалтерии;
	НС.ОбъектМД = Метаданные.РегистрыБухгалтерии;
	НС.НаличиеТЧ = Ложь;
	
	// Добавим регистры расчета
	НС = ТЗ.Добавить();
	НС.Представление = "Регистры расчета";
	НС.НазваниеКоллекции = "РегистрРасчета";
	НС.Картинка = БиблиотекаКартинок.РегистрРасчета;
	НС.КартинкаОбъекта = БиблиотекаКартинок.РегистрРасчета;
	НС.ОбъектМД = Метаданные.РегистрыРасчета;
	НС.НаличиеТЧ = Ложь;
	
	// Добавим бизнес-процессы
	НС = ТЗ.Добавить();
	НС.Представление = "Бизнес-процессы";
	НС.НазваниеКоллекции = "БизнесПроцесс";
	НС.Картинка = БиблиотекаКартинок.БизнесПроцесс;
	НС.КартинкаОбъекта = БиблиотекаКартинок.БизнесПроцессОбъект;
	НС.ОбъектМД = Метаданные.БизнесПроцессы;
	НС.НаличиеТЧ = Истина;
	
	// Добавим задачи
	НС = ТЗ.Добавить();
	НС.Представление = "Задачи";
	НС.НазваниеКоллекции = "Задача";
	НС.Картинка = БиблиотекаКартинок.Задача;
	НС.КартинкаОбъекта = БиблиотекаКартинок.ЗадачаОбъект;
	НС.ОбъектМД = Метаданные.Задачи;
    НС.НаличиеТЧ = Истина;
	
	Возврат ТЗ;
КонецФункции	

Процедура ВыраститьДеревоМетаданных()
	
	// Очищаем дерево
	Дерево.Строки.Очистить();
	
	// Создаем таблицу групп
	ТаблицаКоллекций = СоздатьТаблицуКоллекций();
	
	// Создаем корневой объект дерева
	НС1 = Дерево.Строки.Добавить();
	НС1.Пометка = 1;
	НС1.Картинка = ЭлементыФормы.Корень.Картинка;
	ГлобальныйСчетчикОбъектов = 0;
	ГлобальныйСчетчикТаблиц = 0;
	
	// Обходим коллекции
	Для Каждого СтрокаКоллекция Из ТаблицаКоллекций Цикл
		НС2 = НС1.Строки.Добавить();
		НС2.Пометка = 1;
		НС2.Картинка = СтрокаКоллекция.Картинка;
		НС2.Коллекция = СтрокаКоллекция.НазваниеКоллекции;
		СчетчикОбъектов = 0;
		СчетчикТаблиц = 0;
		
		// Обходим объекты
		Для Каждого СтрокаТаблица Из СтрокаКоллекция.ОбъектМД Цикл			
			
			// Добавляем объект метаданных
			НС3 = НС2.Строки.Добавить();
			НС3.Представление = СтрокаТаблица.Имя;
			НС3.Пометка = 1;
			НС3.Картинка = СтрокаКоллекция.КартинкаОбъекта;
			НС3.Коллекция = СтрокаКоллекция.НазваниеКоллекции;
			НС3.ОбъектКоллекции = СтрокаТаблица.Имя;
			
			// Подсчет количества объектов в конфигурации и коллекции
			СчетчикОбъектов = СчетчикОбъектов + 1;
			ГлобальныйСчетчикОбъектов = ГлобальныйСчетчикОбъектов + 1;
			
			// Создаем основную таблицу объекта
			НС4 = НС3.Строки.Добавить();
			НС4.Представление = СтрокаТаблица.Имя;
			НС4.Пометка = 1;
			НС4.Картинка = ЭлементыФормы.ТаблицаГлавная.Картинка;
			НС4.Коллекция = СтрЗаменить(СтрокаТаблица.ПолноеИмя(),"." + СтрокаТаблица.Имя,"");
			НС4.ОбъектКоллекции = СтрокаТаблица.Имя;
			НС4.ТаблицаОбъекта = СтрокаТаблица.ПолноеИмя();
			НС4.ПредставлениеТаблицы = СтрокаТаблица.Имя;
			
			// Подсчет количества таблиц в конфигурации и коллекции
			СчетчикТаблиц = СчетчикТаблиц + 1;
			ГлобальныйСчетчикТаблиц = ГлобальныйСчетчикТаблиц + 1;
			
			// Проверяем возможность наличия табличных частей
			Если СтрокаКоллекция.НаличиеТЧ = Ложь Тогда
				Продолжить;
			КонецЕсли;
			
			// Обходим табличные части объектов
			Для Каждого ТабличнаяЧасть Из СтрокаТаблица.ТабличныеЧасти Цикл
				НС4 = НС3.Строки.Добавить();
				НС4.Представление = СтрокаТаблица.Имя +"."+ ТабличнаяЧасть.Имя;
				НС4.Пометка = 1;
				НС4.Картинка = ЭлементыФормы.Таблица.Картинка;
  			    НС4.Коллекция = СтрЗаменить(СтрокаТаблица.ПолноеИмя(),"." + СтрокаТаблица.Имя,"");
			    НС4.ОбъектКоллекции = СтрокаТаблица.Имя;
	            НС4.ТаблицаОбъекта = СтрокаТаблица.ПолноеИмя() + "." + ТабличнаяЧасть.Имя;
				НС4.ПредставлениеТаблицы = СтрокаТаблица.Имя +"."+ ТабличнаяЧасть.Имя;
				
				// Подсчет количества таблиц в конфигурации и коллекции
				СчетчикТаблиц = СчетчикТаблиц + 1;
				ГлобальныйСчетчикТаблиц = ГлобальныйСчетчикТаблиц + 1;
			КонецЦикла;
		КонецЦикла;
		НС2.Представление = СтрокаКоллекция.Представление 
		    + " (" + Строка(СчетчикОбъектов) + ", " + Строка(СчетчикТаблиц) + ")";
	КонецЦикла;
    НС1.Представление = Метаданные.Имя 
	    + " (" + Строка(ГлобальныйСчетчикОбъектов) + ", " + Строка(ГлобальныйСчетчикТаблиц) + ")";
КонецПроцедуры		

Процедура ПриОткрытии()
	Пустые = Истина;
    ВыраститьДеревоМетаданных();
КонецПроцедуры

// -= ОТМЕЧАЕМ ОБЪЕКТЫ ПО ПОДСИСТЕМАМ =-

Процедура ОтметитьПоПодсистемам(пКорень)
	Для Каждого Коллекция Из пКорень.Строки Цикл
		Для Каждого Объект Из Коллекция.Строки Цикл
			Если (НЕ(Объект.Коллекция = "")) и (НЕ(Объект.ОбъектКоллекции = "")) Тогда
				ОбъектМетаданных = Метаданные.НайтиПоПолномуИмени(Объект.Коллекция + "." + Объект.ОбъектКоллекции);
				
				 // ++ Kamala: p.virich   2018-11-22				
				//ПодсистемыОбъекта = ОбъектМетаданных.Подсистемы;  
				
				Для Каждого ВыбраннаяПодсистема Из ВыбранныеПодсистемы Цикл
					
					///Если ПодсистемыОбъекта.Содержит(ВыбраннаяПодсистема) Тогда
					Если ВыбраннаяПодсистема.Состав.Содержит(ОбъектМетаданных) Тогда 						
					// -- Kamala: p.virich   2018-11-22 	
 						Объект.Пометка = 1;
						ИзменитьПометкиВладельцев(Объект);
						ИзменитьПометкиПодчиненных(Объект);
						Прервать;
					КонецЕсли;
					
				КонецЦикла;
			КонецЕсли;
		КонецЦикла;
	КонецЦикла;
КонецПроцедуры	

Процедура КоманднаяПанель2ПоПодсистемам(Кнопка)
	
	// Очищаем список выбраннных ранее подсистем
	ВыбранныеПодсистемы = Неопределено;
	
	// Выводим форму выбора
	ВыборПодсистем = ЭтотОбъект.ПолучитьФорму("Подсистемы",ЭтаФорма,"KEY001");
	ВыборПодсистем.ОткрытьМодально();
	
	// Проверяем, был ли сделан выбор
	Если ВыбранныеПодсистемы = Неопределено Тогда
		Возврат;
	КонецЕсли;
	
	// Снимаем все отметки у дерева
	Дерево.Строки[0].Пометка = 0;
	ИзменитьПометкиПодчиненных(Дерево.Строки[0]);
	
	// Устанавливаем отметки по подсистемам
	ОтметитьПоПодсистемам(Дерево.Строки[0]);
КонецПроцедуры

Процедура ОбработкаВыбора(ЗначениеВыбора, Источник)
	Если Источник.КлючУникальности = "KEY001" Тогда
		ВыбранныеПодсистемы = ЗначениеВыбора;
	КонецЕсли;
КонецПроцедуры

// -= РАБОТА С ДЕРЕВОМ МЕТАДАННЫХ =-	

Процедура КоманднаяПанель2РазвернутьДерево(Кнопка)
	ЭлементыФормы.Дерево.Развернуть(Дерево.Строки[0],Истина);
КонецПроцедуры

Процедура КоманднаяПанель2СвернутьДерево(Кнопка)
	ЭлементыФормы.Дерево.Свернуть(Дерево.Строки[0]);
КонецПроцедуры

Процедура ДеревоПриИзмененииФлажка(Элемент, Колонка)
	ТекСтрока = Элемент.ТекущиеДанные;
	Если ТекСтрока.Пометка = 2 Тогда
		ТекСтрока.Пометка = 0;
	КонецЕсли;
	ИзменитьПометкиПодчиненных(ТекСтрока);
	ИзменитьПометкиВладельцев(ТекСтрока);
КонецПроцедуры

// -= СОЗДАНИЕ ДЕТАЛИЗИРУЮЩИХ ОТЧЕТОВ =-	

Функция СоздатьТекстЗапросаСправочники(пИменаСправочников)	
	ТекстЗапроса = "";
	КоличествоСправочников = пИменаСправочников.Количество();
	
	// Обход справочников, создание вложенного запроса
	Для Счетчик = 0 По КоличествоСправочников - 1 Цикл
		ИмяСправочника = пИменаСправочников[Счетчик];
		ИмяСправочникаСк = Символ(34) + пИменаСправочников[Счетчик] + Символ(34);
		ТекстЗапроса = ТекстЗапроса + 
		"ВЫБРАТЬ
		|	" + ИмяСправочникаСк + " КАК Имя,
		|	СУММА(1) КАК Всего,";
		
		// Будет ли справочник иметь группы
		Иерархический = Метаданные.Справочники[ИмяСправочника].Иерархический;
		ВидИерархии = Метаданные.Справочники[ИмяСправочника].ВидИерархии;
		Если (Иерархический = Истина) и	
			(ВидИерархии = Метаданные.СвойстваОбъектов.ВидИерархии.ИерархияГруппИЭлементов) Тогда
			ТекстЗапроса = ТекстЗапроса +
			"
			|	СУММА(ВЫБОР
			|			КОГДА Спр" + ИмяСправочника + ".ЭтоГруппа = ЛОЖЬ
			|				ТОГДА 1
			|			ИНАЧЕ 0
			|		КОНЕЦ) КАК Элементы,
			|	СУММА(ВЫБОР
			|			КОГДА Спр" + ИмяСправочника + ".ЭтоГруппа = ИСТИНА
			|				ТОГДА 1
			|			ИНАЧЕ 0
			|		КОНЕЦ) КАК Группы,";
		Иначе
			ТекстЗапроса = ТекстЗапроса +
			"
			|	СУММА(1) КАК Элементы,
			|   0 КАК Группы,";
		КонецЕсли;
		
		ТекстЗапроса = ТекстЗапроса +
		"
		|	СУММА(ВЫБОР
		|			КОГДА Спр" + ИмяСправочника + ".ПометкаУдаления = ИСТИНА
		|				ТОГДА 1
		|			ИНАЧЕ 0
		|		КОНЕЦ) КАК Помеченные,		
		|	СУММА(ВЫБОР
		|			КОГДА Спр" + ИмяСправочника + ".Предопределенный = ИСТИНА
		|				ТОГДА 1
		|			ИНАЧЕ 0
		|		КОНЕЦ) КАК Предопределенные
		|ИЗ
		|	Справочник." + ИмяСправочника + " КАК Спр" + ИмяСправочника;
		Если Счетчик < КоличествоСправочников - 1 Тогда
			ТекстЗапроса = ТекстЗапроса +
			"
			|
			|ОБЪЕДИНИТЬ ВСЕ
			|
			|";
		КонецЕсли;
	КонецЦикла;
	
	// Создание основного запроса
	ТекстЗапроса =
	"ВЫБРАТЬ
	|    ЕСТЬNULL(ВложенныйЗапрос.Имя,0) КАК Имя,
	|    ЕСТЬNULL(ВложенныйЗапрос.Всего,0) КАК Всего,
	|    ЕСТЬNULL(ВложенныйЗапрос.Элементы,0) КАК Элементы,
	|    ЕСТЬNULL(ВложенныйЗапрос.Группы,0) КАК Группы,
	|    ЕСТЬNULL(ВложенныйЗапрос.Помеченные,0) КАК Помеченные,
	|    ЕСТЬNULL(ВложенныйЗапрос.Предопределенные,0) КАК Предопределенные
	|ИЗ
	|	 (" + ТекстЗапроса + ") КАК ВложенныйЗапрос
	|
	|УПОРЯДОЧИТЬ ПО
    |    Имя	
	|ИТОГИ
	|	СУММА(Всего),
	|	СУММА(Элементы),
	|	СУММА(Группы),
	|	СУММА(Помеченные),
	|	СУММА(Предопределенные)
	|ПО
	|	ОБЩИЕ";
	
	// Возвращаем текст запроса
	Возврат ТекстЗапроса;
КонецФункции	

Функция СоздатьТекстЗапросаДокументы(пИменаДокументов)
	ТекстЗапроса = "";
	КоличествоДокументов = пИменаДокументов.Количество();
	
	// Обход справочников, создание вложенного запроса
	Для Счетчик = 0 По КоличествоДокументов - 1 Цикл
		ИмяДокумента = пИменаДокументов[Счетчик];
		ИмяДокументаСк = Символ(34) + пИменаДокументов[Счетчик] + Символ(34);
		ТекстЗапроса = ТекстЗапроса + 
		"ВЫБРАТЬ
		|	" + ИмяДокументаСк + " КАК Имя,
		|	СУММА(1) КАК Всего,";
		
		// Будет ли документ проводиться
		Проведение = Метаданные.Документы[ИмяДокумента].Проведение;
		Если Проведение = Метаданные.СвойстваОбъектов.Проведение.Разрешить Тогда
			ТекстЗапроса = ТекстЗапроса +
			"
			|	СУММА(ВЫБОР
			|			КОГДА Док" + ИмяДокумента + ".Проведен = ИСТИНА
			|				ТОГДА 1
			|			ИНАЧЕ 0
			|		КОНЕЦ) КАК Проведенные,
			|	СУММА(ВЫБОР
			|			КОГДА Док" + ИмяДокумента + ".Проведен = ЛОЖЬ
			|				ТОГДА 1
			|			ИНАЧЕ 0
			|		КОНЕЦ) КАК Непроведенные,";
		Иначе
			ТекстЗапроса = ТекстЗапроса +
			"
			|   0 КАК Проведенные,
			|	СУММА(1) КАК Непроведенные,";
		КонецЕсли;
		
		ТекстЗапроса = ТекстЗапроса +
		"
		|	СУММА(ВЫБОР
		|			КОГДА Док" + ИмяДокумента + ".ПометкаУдаления = ИСТИНА
		|				ТОГДА 1
		|			ИНАЧЕ 0
		|		КОНЕЦ) КАК Помеченные		
		|ИЗ
		|	Документ." + ИмяДокумента + " КАК Док" + ИмяДокумента;
		Если Счетчик < КоличествоДокументов - 1 Тогда
			ТекстЗапроса = ТекстЗапроса +
			"
			|
			|ОБЪЕДИНИТЬ ВСЕ
			|
			|";
		КонецЕсли;
	КонецЦикла;
	
	// Создание основного запроса
	ТекстЗапроса =
	"ВЫБРАТЬ
	|    ЕСТЬNULL(ВложенныйЗапрос.Имя,0) КАК Имя,
	|    ЕСТЬNULL(ВложенныйЗапрос.Всего,0) КАК Всего,
	|    ЕСТЬNULL(ВложенныйЗапрос.Проведенные,0) КАК Проведенные,
	|    ЕСТЬNULL(ВложенныйЗапрос.Непроведенные,0) КАК Непроведенные,
	|    ЕСТЬNULL(ВложенныйЗапрос.Помеченные,0) КАК Помеченные
	|ИЗ
	|	 (" + ТекстЗапроса + ") КАК ВложенныйЗапрос
	|
	|УПОРЯДОЧИТЬ ПО
    |    Имя	
	|ИТОГИ
	|	СУММА(Всего),
	|	СУММА(Проведенные),
	|	СУММА(Непроведенные),
	|	СУММА(Помеченные)
	|ПО
	|	ОБЩИЕ";
	
	// Возвращаем текст запроса
	Возврат ТекстЗапроса;
КонецФункции	

Процедура СоздатьДетализирующийОтчет(пНазваниеКоллекции,пНазваниеОбъекта)
	
	// Получим массив названий объектов
	Если пНазваниеОбъекта = Неопределено Тогда
		МассивНазваний = ПолучитьИменаТаблицДанных(пНазваниеКоллекции);
	Иначе
		МассивНазваний = Новый Массив;
		МассивНазваний.Добавить(пНазваниеОбъекта);
	КонецЕсли;
	
	// Если не отмечен ни один объект
	Если МассивНазваний.Количество() = 0 Тогда
		Возврат;
	КонецЕсли;
	
	// Создаем запрос
	Запрос = Новый Запрос;
	
	// Выбираем тип создаваемого отчета
	Если пНазваниеКоллекции = "Справочник" Тогда	
	    Запрос.Текст = СоздатьТекстЗапросаСправочники(МассивНазваний);
	ИначеЕсли пНазваниеКоллекции = "Документ" Тогда
		Запрос.Текст = СоздатьТекстЗапросаДокументы(МассивНазваний);
	Иначе 
		Возврат;
	КонецЕсли;
	Результат = Запрос.Выполнить();
	ВыборкаОбщийИтог = Результат.Выбрать(ОбходРезультатаЗапроса.ПоГруппировкам);
	
	// Получаем макет и секции
	Макет = ЭтотОбъект.ПолучитьМакет("Макет" + пНазваниеКоллекции);
	ОбЗаголовок = Макет.ПолучитьОбласть("ОбЗаголовок");
	ОбОбщийИтог = Макет.ПолучитьОбласть("ОбОбщийИтог");
	ОбОбъектИтог = Макет.ПолучитьОбласть("ОбОбъектИтог");
	
	// Создаем табличный документ и выводим шапку
	ТабДок = Новый ТабличныйДокумент;
	ОбЗаголовок.Параметры.ИнформационнаяБаза = Метаданные.ПодробнаяИнформация;
	ТабДок.Вывести(ОбЗаголовок);
	ТабДок.ФиксацияСверху = 7;
	
	// Обходим выборку
	Пока ВыборкаОбщийИтог.Следующий() Цикл
		ВыборкаОбъектИтог = ВыборкаОбщийИтог.Выбрать();
		Пока ВыборкаОбъектИтог.Следующий() Цикл
			ОбОбъектИтог.Параметры.Заполнить(ВыборкаОбъектИтог);
			ТабДок.Вывести(ОбОбъектИтог,2,,Истина);
		КонецЦикла;
		ОбОбщийИтог.Параметры.Заполнить(ВыборкаОбщийИтог);
		ТабДок.Вывести(ОбОбщийИтог,1,,Истина);
	КонецЦикла;
	
	// Покажем табличный документ
	ТабДок.ОтображатьЗаголовки = Ложь;
	ТабДок.ОтображатьСетку = Ложь;
	ТабДок.ПолеСверху = 10;
	ТабДок.ПолеСнизу = 10;
	ТабДок.ПолеСлева = 20;
	ТабДок.ПолеСправа = 10;
	ТабДок.ТолькоПросмотр = Истина;
	ТабДок.АвтоМасштаб = Истина;
	ТабДок.Показать(НСтр("ru = 'Детализация'; uk = 'Деталізація'"));
КонецПроцедуры

// -= СОЗДАНИЕ ГЛАВНОГО ОТЧЕТА =-

Процедура ПоказатьФормуСписка(пНазваниеКоллекции,пНазваниеОбъекта)
	
	// Создадим соответствие со ссылками на менеджеры
	Соответствие = Новый Соответствие;
	Соответствие.Вставить("Справочник",Справочники);
	Соответствие.Вставить("Документ",Документы);
	Соответствие.Вставить("ЖурналДокументов",ЖурналыДокументов);
	Соответствие.Вставить("ПланВидовХарактеристик",ПланыВидовХарактеристик);
	Соответствие.Вставить("ПланСчетов",ПланыСчетов);
	Соответствие.Вставить("ПланВидовРасчета",ПланыВидовРасчета);
	Соответствие.Вставить("РегистрСведений",РегистрыСведений);
	Соответствие.Вставить("РегистрНакопления",РегистрыНакопления);
	Соответствие.Вставить("РегистрБухгалтерии",РегистрыБухгалтерии);
	Соответствие.Вставить("РегистрРасчета",РегистрыРасчета);
	Соответствие.Вставить("БизнесПроцесс",БизнесПроцессы);
	Соответствие.Вставить("Задача",Задачи);
	
	// Получим менеджер, затем форму списка и возвратим ее
	Если пНазваниеКоллекции = "Последовательность" Тогда
		Предупреждение(НСтр("ru = 'Последовательность не имеет формы списка'; uk = 'Послідовність не має форми списку'"));
		Возврат;
	ИначеЕсли пНазваниеКоллекции = "ЖурналДокументов" Тогда
	    МенеджерКоллекции = Соответствие.Получить(пНазваниеКоллекции);
	    МенеджерОбъекта = МенеджерКоллекции[пНазваниеОбъекта];
		ФормаСписка = МенеджерОбъекта.ПолучитьФорму();
	Иначе			
	    МенеджерКоллекции = Соответствие.Получить(пНазваниеКоллекции);
	    МенеджерОбъекта = МенеджерКоллекции[пНазваниеОбъекта];
		ФормаСписка = МенеджерОбъекта.ПолучитьФормуСписка();
	КонецЕсли;
	ФормаСписка.Открыть();
КонецПроцедуры	

Функция ПолучитьИменаТаблицДанных(пНазваниеКоллекции)
	
	// Создаем таблицу с именами и признаками таблиц данных или массив
	Если пНазваниеКоллекции = Неопределено Тогда
		УКЗВозврат = Новый ТаблицаЗначений;
		УКЗВозврат.Колонки.Добавить("Коллекция");
		УКЗВозврат.Колонки.Добавить("ОбъектКоллекции");
		УКЗВозврат.Колонки.Добавить("ТаблицаОбъекта");
		УКЗВозврат.Колонки.Добавить("ПредставлениеТаблицы");
	Иначе
		УКЗВозврат = Новый Массив;
	КонецЕсли;
	
	// Обходим дерево (корневой объект, уровень 1)
	Для Каждого Строка1Уровня Из Дерево.Строки Цикл
		
		// Коллекции, уровень 2
		Для Каждого Строка2Уровня Из Строка1Уровня.Строки Цикл
			
			// Если в режиме создания массива обходиться не та коллекция
			Если НЕ (пНазваниеКоллекции = Неопределено) Тогда
				Если НЕ (Строка2Уровня.Коллекция = пНазваниеКоллекции) Тогда
					Продолжить;
				КонецЕсли;
			КонецЕсли;
			
			// Объекты, уровень 3
			Для Каждого Строка3Уровня Из Строка2Уровня.Строки Цикл
				
				// Добавляем элемент в массив
				Если НЕ (пНазваниеКоллекции = Неопределено) Тогда
					Если (Строка3Уровня.Пометка = 1) или (Строка3Уровня.Пометка = 2) Тогда
                    	УКЗВозврат.Добавить(Строка3Уровня.ОбъектКоллекции);
					КонецЕсли;
					Продолжить;
				КонецЕсли;
				
				// Таблицы, уровень 4, добавляем элемент в ТЗ
				Для Каждого Строка4Уровня Из Строка3Уровня.Строки Цикл
					Если НЕ (Строка4Уровня.Пометка = 1) Тогда
						  Продолжить;
					КонецЕсли;
					НС = УКЗВозврат.Добавить();
					НС.Коллекция = Строка4Уровня.Коллекция;
					НС.ОбъектКоллекции = Строка4Уровня.ОбъектКоллекции;
					НС.ТаблицаОбъекта = Строка4Уровня.ТаблицаОбъекта;
					НС.ПредставлениеТаблицы = Строка4Уровня.ПредставлениеТаблицы;
				КонецЦикла;
		    КонецЦикла;
		КонецЦикла;
	КонецЦикла;
	Возврат УКЗВозврат;
КонецФункции

Функция СоздатьТекстВложенногоЗапроса(пИменаТаблиц)
	
	ТекстЗапроса = "";
	Счетчик = 0;
	
	// Обходим таблицу
	Для Каждого СтрокаТаблица Из пИменаТаблиц Цикл
		Счетчик = Счетчик + 1;
		Коллекция = Символ(34) + СтрокаТаблица.Коллекция + Символ(34);
		ОбъектКоллекции = Символ(34) + СтрокаТаблица.ОбъектКоллекции + Символ(34);
		ПредставлениеТаблицы = Символ(34) + СтрокаТаблица.ПредставлениеТаблицы + Символ(34);
		ТаблицаОбъекта = СтрокаТаблица.ТаблицаОбъекта;
		
		ТекстЗапроса = ТекстЗапроса +
		"ВЫБРАТЬ
		|    " + Коллекция + " КАК НазваниеКоллекции,
		|    " + ОбъектКоллекции + " КАК НазваниеОбъекта,
		|    " + ПредставлениеТаблицы + " КАК НазваниеТаблицы,
		|    КОЛИЧЕСТВО(*) КАК КоличествоСтрок
		|ИЗ
		|	" + ТаблицаОбъекта;
		Если Счетчик < пИменаТаблиц.Количество() Тогда
			ТекстЗапроса = ТекстЗапроса +
			"
			|
			|ОБЪЕДИНИТЬ ВСЕ
			|
			|";
		КонецЕсли;
	КонецЦикла;
	
	// Возвращаем текст вложенного запроса
	Возврат ТекстЗапроса;
КонецФункции	

Функция СоздатьТекстЗапроса(пТекстВложенногоЗапроса)
	
	ТекстЗапроса =
	"ВЫБРАТЬ
	|    ВложенныйЗапрос.НазваниеКоллекции КАК НазваниеКоллекции,
	|	 ВложенныйЗапрос.НазваниеОбъекта КАК НазваниеОбъекта,
	|	 ВложенныйЗапрос.НазваниеТаблицы КАК НазваниеТаблицы,
	|	 ВложенныйЗапрос.КоличествоСтрок КАК КоличествоСтрок
	|ИЗ
	|	 (" + пТекстВложенногоЗапроса + ") КАК ВложенныйЗапрос
	|
	|УПОРЯДОЧИТЬ ПО
    |    НазваниеТаблицы,	
	|	 КоличествоСтрок УБЫВ,
	|	 НазваниеКоллекции,
	|	 НазваниеОбъекта
	|ИТОГИ
	|	 СУММА(КоличествоСтрок)
	|ПО
	|	 ОБЩИЕ,
	|	 НазваниеКоллекции,
	|    НазваниеОбъекта";
	
	// Возвращаем текст запроса
	Возврат ТекстЗапроса;
КонецФункции

Процедура КнопкаВыполнитьНажатие(Кнопка)
	
	// Получаем краткие и полные имена таблиц к которым будем обращаться
	ИменаТаблиц = ПолучитьИменаТаблицДанных(Неопределено);
	
	Если ИменаТаблиц.Количество() = 0 Тогда
		Предупреждение("Не выбрана ни одна таблица !!!");
		Возврат;
	КонецЕсли;
	
	// Создаем текст вложенного запроса
	ТекстВложенногоЗапроса = СоздатьТекстВложенногоЗапроса(ИменаТаблиц);
	
	// Создаем текст основного запроса
	ТекстЗапроса = СоздатьТекстЗапроса(ТекстВложенногоЗапроса);
	
	// Получим макет и секции
	ЭлементыФормы.ПолеОтчета.Очистить();
	Макет = ЭтотОбъект.ПолучитьМакет("Макет");
	ОбЗаголовок = Макет.ПолучитьОбласть("ОбЗаголовок");
	ОбОбщийИтог = Макет.ПолучитьОбласть("ОбОбщийИтог");
	ОбКоллекцияИтог = Макет.ПолучитьОбласть("ОбКоллекцияИтог");
	ОбОбъектИтог = Макет.ПолучитьОбласть("ОбОбъектИтог");
	ОбТаблицаСтрока = Макет.ПолучитьОбласть("ОбТаблицаСтрока");

	// Создадим и выполним запрос, выведем отчет 
	Запрос = Новый Запрос;
	Запрос.Текст = ТекстЗапроса;
	Результат = Запрос.Выполнить();
	ВыборкаОбщийИтог = Результат.Выбрать(ОбходРезультатаЗапроса.ПоГруппировкам);
	ОбЗаголовок.Параметры.ИнформационнаяБаза = Метаданные.ПодробнаяИнформация;
	ЭлементыФормы.ПолеОтчета.Вывести(ОбЗаголовок);
	
	// Общий итог
	ЭлементыФормы.ПолеОтчета.НачатьАвтогруппировкуСтрок();
	Пока ВыборкаОбщийИтог.Следующий() Цикл
		ОбОбщийИтог.Параметры.Заполнить(ВыборкаОбщийИтог);
		ЭлементыФормы.ПолеОтчета.Вывести(ОбОбщийИтог,1,,Истина);
		ВыборкаКоллекцияИтог = ВыборкаОбщийИтог.Выбрать(ОбходРезультатаЗапроса.ПоГруппировкам);
		
		// Итог в рамках коллекции
		Пока ВыборкаКоллекцияИтог.Следующий() Цикл
			
			// Добавим расшифровку коллекции
			СтруктураРасшифровкиКоллекции 
				= Новый Структура("Коллекция,Объект",ВыборкаКоллекцияИтог.НазваниеКоллекции,Неопределено);
			ОбКоллекцияИтог.Параметры.Расшифровка = СтруктураРасшифровкиКоллекции;
			ОбКоллекцияИтог.Параметры.Заполнить(ВыборкаКоллекцияИтог);
			ЭлементыФормы.ПолеОтчета.Вывести(ОбКоллекцияИтог,2,,Истина);
			ВыборкаОбъектИтог = ВыборкаКоллекцияИтог.Выбрать(ОбходРезультатаЗапроса.ПоГруппировкам);
			
			// Итог в рамках объекта
			Пока ВыборкаОбъектИтог.Следующий() Цикл
				Если (Пустые = Истина) и (ВыборкаОбъектИтог.КоличествоСтрок = 0) Тогда
				    Продолжить;
				КонецЕсли;
				
				// Добавим расшифровку объекта
				СтруктураРасшифровкиОбъекта 
				    = Новый Структура("Коллекция,Объект",ВыборкаОбъектИтог.НазваниеКоллекции,ВыборкаОбъектИтог.НазваниеОбъекта);
				ОбОбъектИтог.Параметры.Расшифровка = СтруктураРасшифровкиОбъекта;
				ОбОбъектИтог.Параметры.Заполнить(ВыборкаОбъектИтог);
				ЭлементыФормы.ПолеОтчета.Вывести(ОбОбъектИтог,3,,Ложь);
				ВыборкаТаблицаСтрока = ВыборкаОбъектИтог.Выбрать();
				
				// Таблицы объекта
				Пока ВыборкаТаблицаСтрока.Следующий() Цикл
					Если (Пустые = Истина) и (ВыборкаТаблицаСтрока.КоличествоСтрок = 0) Тогда
				    	Продолжить;
					КонецЕсли;
					ОбТаблицаСтрока.Параметры.Заполнить(ВыборкаТаблицаСтрока);
				    ЭлементыФормы.ПолеОтчета.Вывести(ОбТаблицаСтрока,4,,Ложь);
				КонецЦикла;
			КонецЦикла;
		КонецЦикла;
	КонецЦикла;
	ЭлементыФормы.ПолеОтчета.ЗакончитьАвтогруппировкуСтрок();
	
	// Покажем макет
	ЭлементыФормы.ПолеОтчета.ПолеСверху = 10;
	ЭлементыФормы.ПолеОтчета.ПолеСнизу = 10;
	Элементыформы.ПолеОтчета.ПолеСлева = 20;
	ЭлементыФормы.ПолеОтчета.ПолеСправа = 10;
	ЭлементыФормы.ПолеОтчета.ТолькоПросмотр = Истина;
	ЭлементыФормы.ПолеОтчета.АвтоМасштаб = Истина;
	ЭлементыФормы.ПолеОтчета.Показать();
	
КонецПроцедуры

Процедура ПолеОтчетаОбработкаРасшифровки(Элемент, Расшифровка, СтандартнаяОбработка)
	СтандартнаяОбработка = Ложь;
	
	// Создадим список выбора действий
	СписокВыбора = Новый СписокЗначений;
	
	// Пункт 1, открыть форму списка
	Если НЕ (Расшифровка.Объект = Неопределено) Тогда
	    СписокВыбора.Добавить(1,НСтр("ru = 'Открыть форму списка'; uk = 'Відкрити форму списку'"));
	КонецЕсли;
	
	// Пункт 2, детализация
	Если (Расшифровка.Коллекция = "Справочник") или (Расшифровка.Коллекция = "Документ") Тогда
	    СписокВыбора.Добавить(2,НСтр("ru = 'Детализировать'; uk = 'Деталізувати'"));
	КонецЕсли;
		
	// Выберем действие из списка
	Если СписокВыбора.Количество() > 0 Тогда
	    ВыбранныйЭлемент = СписокВыбора.ВыбратьЭлемент(,СписокВыбора[0]);
	Иначе
		Возврат;
	КонецЕсли;
	
	// Если действие выбрано
	Если НЕ (ВыбранныйЭлемент = Неопределено) Тогда
		Если ВыбранныйЭлемент.Значение = 1 Тогда
			ПоказатьФормуСписка(Расшифровка.Коллекция,Расшифровка.Объект);
		ИначеЕсли ВыбранныйЭлемент.Значение = 2 Тогда	
			СоздатьДетализирующийОтчет(Расшифровка.Коллекция,Расшифровка.Объект);
		КонецЕсли;
	КонецЕсли;
КонецПроцедуры

Процедура КоманднаяПанель1ОПрограмме(Кнопка)
	Форма = ЭтотОбъект.ПолучитьФорму("Информация");
	Форма.КартинкаЗаголовка = ЭтаФорма.КартинкаЗаголовка;
	Форма.ОткрытьМодально();
КонецПроцедуры
