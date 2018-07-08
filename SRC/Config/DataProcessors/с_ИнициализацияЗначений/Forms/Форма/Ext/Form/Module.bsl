﻿
#Область ОбработчикиСобытийФормы


&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	//Заголовок формы
    ЭтаФорма.АвтоЗаголовок = Ложь;
    ЭтаФорма.Заголовок = ЗаголовокОтчета();
	
КонецПроцедуры

&НаСервере
Функция ЗаголовокОтчета()
	
	ТекОбъект = РеквизитФормыВЗначение("Объект");
	Комментарий = ТекОбъект.Метаданные().Комментарий;
	Возврат ТекОбъект.Метаданные().Синоним
	+ ?(ЗначениеЗаполнено(Комментарий)," (" + Комментарий + ")","");
	
КонецФункции       

#КонецОбласти

                   
				   