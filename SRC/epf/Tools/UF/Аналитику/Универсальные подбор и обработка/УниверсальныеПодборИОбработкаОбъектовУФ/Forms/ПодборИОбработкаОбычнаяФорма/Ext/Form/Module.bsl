﻿
Процедура ПередОткрытием(Отказ, СтандартнаяОбработка)
	
	Отказ = Истина;
	
	ОбработкаДвоичныеДанные = ПолучитьМакет("УниверсальныеПодборИОбработкаОбъектов");
	мИмяВременногоФайлаОбработки = ПолучитьИмяВременногоФайла("epf");
	ОбработкаДвоичныеДанные.Записать(мИмяВременногоФайлаОбработки);
	ВнешниеОбработки.ПолучитьФорму(мИмяВременногоФайлаОбработки).Открыть();
	УдалитьФайлы(мИмяВременногоФайлаОбработки);
	
КонецПроцедуры
