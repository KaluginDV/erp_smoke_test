# Справка по продукту Vanessa.ADD

## Каталог docs

Предназначен для хранения файлов документации в формате Markdown

Содержит:

* рекомендаций разработчикам и команде проекта
* описание релизов (RELEASE NOTES) и оперативного плана (ROADMAP)

Для быстрого входа рекомендуем [почитать статьи или посмотреть видео](xdd/Статьи-и-видео-по-тестированию-в-1С.MD)

- [Начало использования](/doc/начало-использования.md)
- [Описание возможностей готовых универсальных дымовых тестов](../tests/smoke/readme.md)
- [Документация по разделу xdd/tdd](/doc/xdd/README.MD)
- [BDD-Документация по фреймворку Vanessa.Add](/doc/bdd/README.md)

Vanessa.ADD работает с гарантией на платформах 1С версии 8.3.8 и выше в режиме совместимости с 8.3.8 и выше.
  - Рекомендуется режим совместимости 8.3.8 или выше
Частично поддерживаются режимы совместимости от 8.2.16 до 8.3.7

## Разделы справки

* [Обширная документация по BDD-части](./bdd/README.md)
    * [Подготовка автодокументации - видео-документация и т.п.](https://github.com/vanessa-opensource/add/blob/develop/doc/bdd/подготовка-автодокументации.md)

* Разделы по tdd-тесты кодом

    * [Принципы написания тестов/фич/сценариев](xdd/Принципы-написания-тестов.MD)

    * [Методы проверки/утверждений для использования кода шагов/тестов](xdd/Методы-проверки---утверждения.MD)
        * [Текучие (fluent) утверждения](xdd/Текучие-(fluent)-утверждения.MD) - очень красивые и довольно удобные. Можно выполнять несколько проверок в одной строке проверки.
        * [Базовые утверждения](xdd/Базовые-утверждения.MD) - простые, устаревшие, но все еще замечательные утверждения.
        * [Проверка таблиц и табличных документов](xdd/Проверка-таблиц-и-табличных-документов.MD)

    * [Система плагинов](xdd/Система-плагинов.MD)
        * [Генерация данных](xdd/Генерация-данных.MD)
        * [ВременныеФайлы](xdd/ВременныеФайлы.MD)
        * [КомандныйФайл](xdd/КомандныйФайл.MD)
        * [ПарсерКоманднойСтроки](xdd/ПарсерКоманднойСтроки.MD)
        * [ЗапросыИзБД](xdd/ЗапросыИзБД.MD)
        * [ЗагрузчикПользовательскихНастроек](xdd/Загрузчик-пользовательских-настроек.MD)
        * [ГенераторОтчетаJUnitXML](xdd/ГенераторыОтчетов.MD#генераторотчетаjunitxml)
        * Генераторы отчетов тестирования:
            * [ГенераторОтчетаAllureXMLВерсия2](xdd/ГенераторыОтчетов.MD#генераторотчетаallurexmlверсия2)
            * [(устаревший) ГенераторОтчетаAllureXML](xdd/ГенераторыОтчетов.MD#устаревший-генераторотчетаallurexml)
            * [ГенераторОтчетаJUnitXML](xdd/ГенераторыОтчетов.MD#генераторотчетаjunitxml)
            * [ГенераторОтчетаMXL](xdd/ГенераторыОтчетов.MD#генераторотчетаmxl)

    * [Дымовые тесты (тесты открытия всех форм)](../tests/smoke/readme.md)