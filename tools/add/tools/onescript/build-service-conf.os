#Использовать v8runner
#Использовать logos
#Использовать 1commands

Перем Лог;

Процедура ОчиститьВременныйКаталог(ВременныйКаталог)
	Файлы = НайтиФайлы(ВременныйКаталог,"*",Ложь);
	Для Каждого Файл Из Файлы Цикл
		УдалитьФайлы(Файл.ПолноеИмя);
	КонецЦикла;	
КонецПроцедуры

Процедура ОбработатьФайлConfiguration_xml(ИмяФайла,Версия)
	ИмяВременногоФайла = ПолучитьИмяВременногоФайла("xml");
	
	Текст = Новый ЧтениеТекста;
	Текст.Открыть(ИмяФайла,"UTF-8");
	
	ЗТ = Новый ЗаписьТекста(ИмяВременногоФайла,"UTF-8",,Ложь); 
	
	ЗначениеВерсия = "DontUse";
	Если Версия = "8.3.9" Тогда
		ЗначениеВерсия = "VERSION" + СтрЗаменить(Версия,".","_");
	КонецЕсли;	 
	
	
	Пока Истина Цикл
		Стр = Текст.ПрочитатьСтроку();
		Если Стр = Неопределено Тогда
			Прервать;
		КонецЕсли;	 
		
		Если Найти(Стр,"<CompatibilityMode>") > 0 Тогда
			Стр = "			<CompatibilityMode>" + ЗначениеВерсия + "</CompatibilityMode>";
		КонецЕсли;	 
		
		ЗТ.ЗаписатьСтроку(Стр); 
	КонецЦикла;	
	
	Текст.Закрыть();
	ЗТ.Закрыть();
	
	
	КопироватьФайл(ИмяВременногоФайла,ИмяФайла);
	УдалитьФайлы(ИмяВременногоФайла);
КонецПроцедуры

Функция ПолучитьВременныйКаталог()
	ИмяФайла = ПолучитьИмяВременногоФайла();
	СоздатьКаталог(ИмяФайла);
	Возврат ИмяФайла;
КонецФункции	

Процедура СоздатьБазу82ЕслиЕёНет(_конфигурация)
	Если _конфигурация.Версия = "8.2" Тогда
		лог.Отладка("Создание сервисной базы контрибьютора 8.2" + _конфигурация.СоздаваемаяБаза);
		УправлениеКонфигуратором = Новый УправлениеКонфигуратором();
		путьКПлатформе = УправлениеКонфигуратором.ПолучитьПутьКВерсииПлатформы("8.2");
		УправлениеКонфигуратором.ПутьКПлатформе1С(путьКПлатформе);
		УправлениеКонфигуратором.КаталогСборки("./tools/ServiceBases/");	
		УправлениеКонфигуратором.СоздатьФайловуюБазу(_конфигурация.СоздаваемаяБаза);
	КонецЕсли;	 
КонецПроцедуры

Лог = Логирование.ПолучитьЛог("behavior.build.log");

СоздатьКаталог("./build/ServiceBases");

массивСервисныхБаз = Новый Массив();
массивСервисныхБаз.Добавить(Новый Структура("ПутьКИсходникам,СоздаваемаяБаза, Версия",
	"./lib/CF/82/","./build/ServiceBases/v82ServiceBase82", "8.3.6"));

массивСервисныхБаз.Добавить(Новый Структура("ПутьКИсходникам,СоздаваемаяБаза, Версия",
	"./lib/CF/83/","./build/ServiceBases/v83ServiceBase836", "8.3.6"));

массивСервисныхБаз.Добавить(Новый Структура("ПутьКИсходникам,СоздаваемаяБаза, Версия",
	"./lib/CF/83/","./build/ServiceBases/v83ServiceBase837", "8.3.7"));

массивСервисныхБаз.Добавить(Новый Структура("ПутьКИсходникам,СоздаваемаяБаза, Версия",
	"./lib/CF/83/","./build/ServiceBases/v83ServiceBase838", "8.3.8"));

массивСервисныхБаз.Добавить(Новый Структура("ПутьКИсходникам,СоздаваемаяБаза, Версия",
	"./lib/CF/83/","./build/ServiceBases/v83ServiceBase839", "8.3.9"));

массивСервисныхБаз.Добавить(Новый Структура("ПутьКИсходникам,СоздаваемаяБаза, Версия",
	"./lib/CF/83NoSync/","./build/ServiceBases/v83NoSyncServiceBase", "8.3.9"));

// массивСервисныхБаз.Добавить(Новый Структура("ПутьКИсходникам,СоздаваемаяБаза, Версия",
// 	"./lib/CF/83/","./build/ServiceBases/v83ServiceBase8310r01", "8.3.10"));

// массивСервисныхБаз.Добавить(Новый Структура("ПутьКИсходникам,СоздаваемаяБаза, Версия",
// 	"./lib/CF/83/","./build/ServiceBases/v83ServiceBase8310r02", "8.3.10"));

// массивСервисныхБаз.Добавить(Новый Структура("ПутьКИсходникам,СоздаваемаяБаза, Версия",
// 	"./lib/CF/83/","./build/ServiceBases/v83ServiceBase8310r03", "8.3.10"));

// массивСервисныхБаз.Добавить(Новый Структура("ПутьКИсходникам,СоздаваемаяБаза, Версия",
// 	"./lib/CF/83/","./build/ServiceBases/v83ServiceBase8310r04", "8.3.10"));

// массивСервисныхБаз.Добавить(Новый Структура("ПутьКИсходникам,СоздаваемаяБаза, Версия",
// 	"./lib/CF/83/","./build/ServiceBases/v83ServiceBase8310r05", "8.3.10"));

массивСервисныхБаз.Добавить(Новый Структура("ПутьКИсходникам,СоздаваемаяБаза, Версия",
	"./lib/CF/83/","./build/ServiceBases/v83ServiceBase8310", "8.3.10"));

массивСервисныхБаз.Добавить(Новый Структура("ПутьКИсходникам,СоздаваемаяБаза, Версия",
	"./lib/CF/83NoSync/","./build/ServiceBases/v83NoSyncServiceBase", "8.3.9"));
	

УправлениеКонфигуратором = Новый УправлениеКонфигуратором();
УправлениеКонфигуратором.КаталогСборки("./build/ServiceBases/");

ФильтрВерсия = ?(АргументыКоманднойСтроки.Количество() > 0, АргументыКоманднойСтроки[0], "");


Для каждого _конфигурация из массивСервисныхБаз Цикл
	
	Если ЗначениеЗаполнено(ФильтрВерсия) И _конфигурация.Версия <> СокрЛП(ФильтрВерсия) Тогда
		Продолжить;
	КонецЕсли;
	
	СоздатьБазу82ЕслиЕёНет(_конфигурация);
	
	Лог.Информация("Обрабатываю исходные файлы " + _конфигурация.ПутьКИсходникам);

	Команда = Новый Команда;
	Команда.УстановитьПравильныйКодВозврата(0);
	СтрокаВыполнения = СтрШаблон("runner init-dev --nocacheuse --src %1 --v8version %2 --ibconnection %3",
		_конфигурация.ПутьКИсходникам,
		_конфигурация.Версия,
		"/F" + _конфигурация.СоздаваемаяБаза
		);
	Лог.Информация(СтрокаВыполнения);
	Команда.УстановитьСтрокуЗапуска(СтрокаВыполнения);
	Команда.Исполнить();

	путьКПлатформе = УправлениеКонфигуратором.ПолучитьПутьКВерсииПлатформы(_конфигурация.Версия);
	УправлениеКонфигуратором.ПутьКПлатформе1С(путьКПлатформе);

	УправлениеКонфигуратором.УстановитьКонтекст("/F" + _конфигурация.СоздаваемаяБаза + "/","","");

	Если Найти(_конфигурация.ПутьКИсходникам,"82") = 0 Тогда
		//теперь выгрузим конфу в файлы ещё раз и заменим параметр CompatibilityMode на DontUse, чтобы гарантировать, что не используется режим совместимости
		ВременныйКаталог = ПолучитьВременныйКаталог();
		
		ПараметрыЗапуска = УправлениеКонфигуратором.ПолучитьПараметрыЗапуска();
		ПараметрыЗапуска.Добавить("/DumpConfigToFiles  """ + ВременныйКаталог + """"); 
		УправлениеКонфигуратором.ВыполнитьКоманду(ПараметрыЗапуска);
		
		//Сообщить("ВременныйКаталог="+ВременныйКаталог);
		ОбработатьФайлConfiguration_xml(ВременныйКаталог + "/Configuration.xml",_конфигурация.Версия);
		
		//теперь загрузим конфу обратно
		ПараметрыЗапуска = УправлениеКонфигуратором.ПолучитьПараметрыЗапуска();
		ПараметрыЗапуска.Добавить("/LoadConfigFromFiles  """ + ВременныйКаталог + """"); 
		УправлениеКонфигуратором.ВыполнитьКоманду(ПараметрыЗапуска);
		
		ОчиститьВременныйКаталог(ВременныйКаталог);
	КонецЕсли;	 
	
	//УправлениеКонфигуратором.ВыполнитьСинтаксическийКонтроль();

	УправлениеКонфигуратором.ОбновитьКонфигурациюБазыДанных();

КонецЦикла;

//УправлениеКонфигуратором.ЗапуститьВРежимеПредприятия("",Истина);
