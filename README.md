# Гайд по правильной установке, настройки и оптимизации Windows.
Данный гайд поможет вам правильно настроить вашу систему, и оптимизировать ее.

<ul>
        <li><a href="#install">Установка</a></li>
        <li><a href="#install">Оптимизация</a></li>
</ul>

<h1 id="install">Установка</h1>
Для правильной установки Windows, достаточно скачать ее с <a href="https://www.microsoft.com/software-download">официального сайта</a> либо с <a href="https://massgrave.dev/msdl/">зеркала</a> от Massgrave. (версии полностью официальные, и скачиваются напрямую с официальных серверов Microsoft, и при этом не требует включения VPN или использование сторонних прокси для России).

<h2>Создание загрузочной флешки</h2>

Самый простой способ создания загрузочной флешки это через <a href="https://en.wikipedia.org/wiki/Rufus_(software)">Rufus</a>, поэтому и будем использовать его.

<a href="https://rufus.ie/">Скачиваем с официального сайта</a>

Устанавливаем, после запускаем:

<ol>
        <li>Выбираем необходимую флешку для установки</li>
        <li>Загружаем iso образ который был скачен ранее</li>
        <li>Схему раздела устанавливаем в зависимости от вашей <a href="#partition">структуры</a>
        <li>Остальное оставляем как на скриншоте</li>
</ol>

![Does-Rufus-work-Windows-10](https://github.com/HromasDev/HromasOptimization/assets/90126334/b8b540c9-c39a-4de9-9247-6b470e12bb92)

Далее откроется окно опций, выбераем по своему усмотрению (рекомендую поставить все галочки)

![1](https://github.com/HromasDev/HromasOptimization/assets/90126334/37265208-3ed1-409a-9e46-0d30c6e86191)

После этого, нажимаем ОК, соглашаемся и ожидаем установки. После этого перезагружаемся, ставим загрузочный диск в F12 и следуем дальнейшим инструкциям.

<h1 id="install">Оптимизация</h1>
<h2>Кратко о главном</h2>
Как правило в не зависимости от того какую мы Windows устанавливаем, она засорена ненужным хламом, различными компонентами и программами которые даже удалить через панель управления невозможно.

К тому же, например в России операционные системы Windows 10 и Windows 11, как выяснилось, устанавливаются медленнее, чем, например, в США. Помимо этого, после якобы чистой установки системы российские пользователи все равно получат ОС, переполненную дополнительными программами, часть из которых нельзя удалить стандартными методами.

Столь необычную проблему выявил американский пользователь заблокированной в России социальной сети Twitter под псевдонимом `ThioJoe (@thiojoe)`. В своем блоге он написал, что подобное характерно в принципе для всех стран, кроме тех, что используют американскую систему написания дат и времени, когда вместо привычной схемы «день/месяц/год» пишут «месяц/день/год».
*<a href="https://www.cnews.ru/news/top/2023-08-03_microsoft_iskusstvenno_zamedlyaet">источник</a>*

При чем этот хлам это только самая малая часть проблемных моментов Windows. Cortana, Teams, Люди, и др, никому не нужный HDCP, система контроля учетных записей (UAC), бесполезный таймер HPET (наподобие RTC), телеметрия, сбор данных без нашего ведома и прочее мы полностью вырежем, или хотя бы постараемся отключить на срок использования Windows.

> [!IMPORTANT]
> Всё что будет выполнено далее, совместимо с `Windows 10 и выше`, в более ранних версиях некоторые настройки могут отличаться.

<h2>Быстрый старт</h2>

После того как мы установили "чистую" винду, зайдем в Win + I -> Центр обновления Windows, и обновим все драйвера до последних

![4](https://github.com/HromasDev/HromasOptimization/assets/90126334/c9c474ec-e45e-4265-aa17-a060f03bf5ed)

Отправляемся на перезагрузку, и снова проверям наличие обновлений, если имеются - обновляем и опять перезагружаем.

После того, как мы обновили все недостающие драйвера, можем приступить к удалению предустановленного мусора. 

<ul>
        <li>Нажимаем ПКМ по меню пуск</li>
        <li>Установленные приложения</li>
</ul>

Зайдем в Win + I -> Приложения -> Дополнительные компоненты

Тут удаляем:
<ul>
  <li>Windows Media Player Legacy</li>
  <li>Распознавание лиц</li>
  <li>Распознавание метематических знаки</li>
  <li>Internet explorer</li>
  <li>Содержимое расшириной темы</li>
  <li>Средство записи действий</li>
  <li>Управление печатью (не рекомендуется удалять если вы используете принтеры)</li>
</ul>

В итоге должно получиться примерно так:

![image](https://github.com/HromasDev/HromasOptimization/assets/90126334/2ed37c06-7a7e-477c-8e56-3333f5724edf)

Тут же перейдем в дополнительные компоненты,

***тут важно быть осторожным чтобы не отключить что-то важное***

Если вы далеки от работы с серверами, можно отключить компонент
<ul>
  <li>Клиент рабочих папок</li>
</ul>

Если вы собираетесь использовать <a href="https://www.codecguide.com/download_k-lite_codec_pack_mega.htm">сторонний плеер</a> (как и я), то следует отключить компонент
<ul>
  <li>Компоненты для работы с мультимедиа</li>
</ul>


Если если у вас нет принтера, то следует отключить компонент
<ul>
  <li>Печать в PDF</li>
  <li>Службы печати и документов</li></ul>
</ul>

Итого у нас должно получиться примерно так:

![image](https://github.com/HromasDev/HromasOptimization/assets/90126334/9ac8d26b-cacf-480d-b94e-56f2a61c5aca)


Теперь загружаем <a href="https://github.com/HromasDev/HromasOptimization/archive/main.zip">HromasOptimization</a>.

Запускаем `start.exe` **от имени администратора**:

***важно запускать от имени администратора, в ином случае применяться не все изменения***

![image](https://github.com/HromasDev/HromasOptimization/assets/90126334/aeb03984-3343-453d-b14a-b0456fbd410e)

Выбираем тип нашего устройства и соглашение на удаление Windows Defender (не рекомендуется для неопытных пользователей):

![image](https://github.com/HromasDev/HromasOptimization/assets/90126334/113d2ab3-ca08-4d0a-a24d-e5c91e84459e)


после чего соглашаемся, и устанавливаем все требуемые компоненты.

<h1 id="remarks">Замечания</h1>

<h3 id="partition">Выбор схемы раздела</h3>

<ul>
        <li>MBR использует 32-битную адресацию</li>
        <li>GPT использует 64-битную адресацию</li>
</ul>

Чтобы узнать схему раздела введем в Win + R -> `diskmgmt.msc` -> ПКМ по имени диска -> Свойства (см. скриншот)

![2](https://github.com/HromasDev/HromasOptimization/assets/90126334/d0fbbd97-67d0-4ad4-bbd7-b33327ff0751)

В свойствах выбераем -> Тома 

![3](https://github.com/HromasDev/HromasOptimization/assets/90126334/9dbc0ab8-8ca7-43ae-be44-b6a1d0574fa5)

<ul>
        <li>Если в пункте «Стиль раздела» указано «Таблица с GUID разделов» — у вас GPT-диск.</li>
        <li>Если указано «Основная загрузочная запись (MBR)» — у вас MBR-диск.</li>
</ul>
