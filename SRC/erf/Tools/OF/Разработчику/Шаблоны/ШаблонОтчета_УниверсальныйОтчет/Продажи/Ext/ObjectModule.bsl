﻿#Если Клиент Тогда
	
////////////////////////////////////////////////////////////////////////////////
// ПРОЦЕДУРЫ И ФУНКЦИИ НАЧАЛЬНОЙ НАСТРОЙКИ ОТЧЕТА

// Процедура установки начальных настроек отчета по метаданным регистра накопления
//
Процедура УстановитьНачальныеНастройки(ДополнительныеПараметры = Неопределено) Экспорт
	
	// Настройка общих параметров универсального отчета
	
	// Содержит название отчета, которое будет выводиться в шапке.
	// Тип: Строка.
	// Пример:
	// УниверсальныйОтчет.мНазваниеОтчета = "Название отчета";
	УниверсальныйОтчет.мНазваниеОтчета = СокрЛП(ЭтотОбъект.Метаданные().Синоним);
	
	// Содержит признак необходимости отображения надписи и поля выбора раздела учета в форме настройки.
	// Тип: Булево.
	// Значение по умолчанию: Истина.
	// Пример:
	// УниверсальныйОтчет.мВыбиратьИмяРегистра = Ложь;
	УниверсальныйОтчет.мВыбиратьИмяРегистра = Ложь;
	
	// Содержит имя регистра, по метаданным которого будет выполняться заполнение настроек отчета.
	// Тип: Строка.
	// Пример:
	// УниверсальныйОтчет.ИмяРегистра = "ТоварыНаСкладах";
	УниверсальныйОтчет.ИмяРегистра = "Продажи";
	
	// Содержит признак необходимости вывода отрицательных значений показателей красным цветом.
	// Тип: Булево.
	// Значение по умолчанию: Ложь.
	// Пример:
	// УниверсальныйОтчет.ОтрицательноеКрасным = Истина;
	
	// Содержит признак необходимости вывода в отчет общих итогов.
	// Тип: Булево.
	// Значение по умолчанию: Истина.
	// Пример:
	// УниверсальныйОтчет.ВыводитьОбщиеИтоги = Ложь;
	
	// Содержит признак необходимости вывода детальных записей в отчет.
	// Тип: Булево.
	// Значение по умолчанию: Ложь.
	// Пример:
	// УниверсальныйОтчет.ВыводитьДетальныеЗаписи = Истина;
	
	// Содержит признак необходимости отображения флага использования свойств и категорий в форме настройки.
	// Тип: Булево.
	// Значение по умолчанию: Истина.
	// Пример:
	// УниверсальныйОтчет.мВыбиратьИспользованиеСвойств = Ложь;
	
	// Содержит признак использования свойств и категорий при заполнении настроек отчета.
	// Тип: Булево.
	// Значение по умолчанию: Ложь.
	// Пример:
	// УниверсальныйОтчет.ИспользоватьСвойстваИКатегории = Истина;
	
	// Содержит признак использования простой формы настроек отчета без группировок колонок.
	// Тип: Булево.
	// Значение по умолчанию: Ложь.
	// Пример:
	// УниверсальныйОтчет.мРежимФормыНастройкиБезГруппировокКолонок = Истина;
	
	// Дополнительные параметры, переданные из отчета, вызвавшего расшифровку.
	// Информация, передаваемая в переменной ДополнительныеПараметры, может быть использована
	// для реализации специфичных для данного отчета параметрических настроек.
	
	УниверсальныйОтчет.ДобавитьПолеГруппировка("НоменклатураБазоваяЕдиницаИзмерения", "Номенклатура", "БазоваяЕдиницаИзмерения", "Базовая единица измерения");
	
	УниверсальныйОтчет.ДобавитьПолеРесурс("КоличествоЕдиницОтчетов", "КоличествоОборот * Номенклатура.ЕдиницаХраненияОстатков.Коэффициент / Номенклатура.ЕдиницаДляОтчетов.Коэффициент", "Количество (в ед. отчетов)");
	УниверсальныйОтчет.ДобавитьПолеРесурс("КоличествоБазовыхЕд",     "КоличествоОборот * Номенклатура.ЕдиницаХраненияОстатков.Коэффициент", "Количество (в базовых ед.)");
	УниверсальныйОтчет.ДобавитьПолеРесурс("ПроцентСкидки",           "ВЫБОР КОГДА СтоимостьБезСкидокОборот = 0 ТОГДА 0 ИНАЧЕ (СтоимостьБезСкидокОборот - СтоимостьОборот) / СтоимостьБезСкидокОборот * 100 КОНЕЦ", "% скидки",
		"ВЫБОР КОГДА СУММА(СтоимостьБезСкидокОборот) = 0 ТОГДА 0 ИНАЧЕ (СУММА(СтоимостьБезСкидокОборот) - СУММА(СтоимостьОборот)) / СУММА(СтоимостьБезСкидокОборот) * 100 КОНЕЦ"); // Чтобы не суммировались проценты
	УниверсальныйОтчет.ДобавитьПолеРесурс("СуммаСкидки",             "СтоимостьБезСкидокОборот - СтоимостьОборот", "Сумма скидки");
	
	// Заполнение начальных настроек универсального отчета
	УниверсальныйОтчет.УстановитьНачальныеНастройки(Истина);
	
	ВалютаУпр = глЗначениеПеременной("ВалютаУправленческогоУчета").Наименование;
	
	УниверсальныйОтчет.ДобавитьПоказатель("КоличествоОборот",, Ложь);
	УниверсальныйОтчет.ДобавитьПоказатель("КоличествоЕдиницОтчетов", "Количество (в ед. отчетов)",        Ложь, "ЧЦ=15; ЧДЦ=3");
	УниверсальныйОтчет.ДобавитьПоказатель("КоличествоБазовыхЕд",     "Количество (в базовых ед.)", Истина, "ЧЦ=15; ЧДЦ=3");
	УниверсальныйОтчет.ДобавитьПоказатель("НДСОборот",               "НДС",                               Ложь);
	УниверсальныйОтчет.ДобавитьПоказатель("СуммаСкидки",             "Сумма скидки в (" + ВалютаУпр + ")",     Истина, "ЧЦ=15; ЧДЦ=2");
	УниверсальныйОтчет.ДобавитьПоказатель("ПроцентСкидки",           "% скидки",                        Истина, "ЧЦ=15; ЧДЦ=2");
	
	УниверсальныйОтчет.ДобавитьПоказатель("СтоимостьОборот",          "Сумма продажи в (" + ВалютаУпр + ")");
	УниверсальныйОтчет.ДобавитьПоказатель("СтоимостьБезСкидокОборот", "Сумма продажи без скидок в (" + ВалютаУпр + ")");
	
	// Добавление предопределенных группировок строк отчета.
	// Необходимо вызывать для каждой добавляемой группировки строки.
	// УниверсальныйОтчет.ДобавитьИзмерениеСтроки(<ПутьКДанным>);
	//УниверсальныйОтчет.ДобавитьИзмерениеСтроки("Покупатель");
	УниверсальныйОтчет.ДобавитьИзмерениеСтроки("Контрагент");
	УниверсальныйОтчет.ДобавитьИзмерениеСтроки("Номенклатура");
	
	// Добавление предопределенных группировок колонок отчета.
	// Необходимо вызывать для каждой добавляемой группировки колонки.
	// УниверсальныйОтчет.ДобавитьИзмерениеКолонки(<ПутьКДанным>);
	
	// Добавление предопределенных отборов отчета.
	// Необходимо вызывать для каждого добавляемого отбора.
	// УниверсальныйОтчет.ДобавитьОтбор(<ПутьКДанным>);
	УниверсальныйОтчет.ДобавитьОтбор("Контрагент");
	УниверсальныйОтчет.ДобавитьОтбор("Номенклатура");
	УниверсальныйОтчет.ДобавитьОтбор("Проект");
	УниверсальныйОтчет.ДобавитьОтбор("Подразделение");
	
	// Добавление предопределенных полей порядка отчета.
	// Необходимо вызывать для каждого добавляемого поля порядка.
	// УниверсальныйОтчет.ДобавитьПорядок(<ПутьКДанным>);
	УниверсальныйОтчет.ДобавитьПорядок("Контрагент.Наименование");
	УниверсальныйОтчет.ДобавитьПорядок("Номенклатура.Наименование");
	
	// Установка связи подчиненных и родительских полей
	// УниверсальныйОтчет.УстановитьСвязьПолей(<ПутьКДанным>, <ПутьКДаннымРодитель>);
	
	// Установка связи полей и измерений
	// УниверсальныйОтчет.УстановитьСвязьПоляИИзмерения(<ИмяПоля>, <ИмяИзмерения>);
	
	// Добавление дополнительных полей
	// Необходимо вызывать для каждого добавляемого дополнительного поля.
	// УниверсальныйОтчет.ДобавитьДополнительноеПоле(<ПутьКДанным>, <Размещение>, <Положение>);
	УниверсальныйОтчет.ДобавитьДополнительноеПоле("НоменклатураБазоваяЕдиницаИзмерения");
	
КонецПроцедуры // УстановитьНачальныеНастройки()

////////////////////////////////////////////////////////////////////////////////
// ПРОЦЕДУРЫ И ФУНКЦИИ ФОРМИРОВАНИЯ ОТЧЕТА 
	
// Процедура формирования отчета
//
Процедура СформироватьОтчет(ТабличныйДокумент) Экспорт
	
	// Перед формирование отчета можно установить необходимые параметры универсального отчета.
	
	УниверсальныйОтчет.СформироватьОтчет(ТабличныйДокумент,,, ЭтотОбъект);

КонецПроцедуры // СформироватьОтчет()

Функция ПолучитьТекстСправкиФормы() Экспорт
	
	Возврат "";
	
КонецФункции

////////////////////////////////////////////////////////////////////////////////
// ПРОЦЕДУРЫ И ФУНКЦИИ ОБЩЕГО НАЗНАЧЕНИЯ

// Процедура обработки расшифровки
//
Процедура ОбработкаРасшифровки(Расшифровка, Объект) Экспорт
	
	// Дополнительные параметры в расшифровывающий отчет можно передать
	// посредством инициализации переменной "ДополнительныеПараметры".
	
	ДополнительныеПараметры = Неопределено;
	УниверсальныйОтчет.ОбработкаРасшифровкиУниверсальногоОтчета(Расшифровка, Объект, ДополнительныеПараметры);
	
КонецПроцедуры // ОбработкаРасшифровки()

// Формирует структуру для сохранения настроек отчета
//
Процедура СформироватьСтруктуруДляСохраненияНастроек(СтруктураСНастройками) Экспорт
	
	УниверсальныйОтчет.СформироватьСтруктуруДляСохраненияНастроек(СтруктураСНастройками);
	
КонецПроцедуры // СформироватьСтруктуруДляСохраненияНастроек()

// Заполняет настройки отчета из структуры сохраненных настроек
//
Функция ВосстановитьНастройкиИзСтруктуры(СтруктураСНастройками) Экспорт
	
	Возврат УниверсальныйОтчет.ВосстановитьНастройкиИзСтруктуры(СтруктураСНастройками, ЭтотОбъект);
	
КонецФункции // ВосстановитьНастройкиИзСтруктуры()

// Содержит значение используемого режима ввода периода.
// Тип: Число.
// Возможные значения: 0 - произвольный период, 1 - на дату, 2 - неделя, 3 - декада, 4 - месяц, 5 - квартал, 6 - полугодие, 7 - год
// Значение по умолчанию: 0
// Пример:
// УниверсальныйОтчет.мРежимВводаПериода = 1;

#КонецЕсли