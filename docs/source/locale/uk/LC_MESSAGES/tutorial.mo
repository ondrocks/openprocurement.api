��    5      �  G   l      �  ?   �  �   �  !   J     l  (   �     �  :   �                    0     J     R  >   c     �     �     �  	   �  /   �  C        R  Q   h  N   �  +   	  #   5  O   Y  *   �  7   �  +   	  -   8	  T   f	  ,   �	  H   �	     1
  '   B
  k   j
     �
  B   �
     '     0  �  @     �  )   �  W   )     �     �  :   �  �   �  �   �  w   +  P   �  �   �  >  �  j   �  �   D  @   �  %   9  :   _  @   �  ]   �     9  '   L  U   t  0   �  
   �  !     l   (  3   �  %   �     �        P     p   d  2   �  �     �   �  J   `  9   �  u   �  L   [  @   �  K   �  L   5  �   �  H   ,  �   u  )   �  @   !  �   b     0  x   I     �  )   �  �  �     �   i    !  �   j!     "  1   $"  m   V"    �"  !  �#  �   �$  �   �%  8  L&         4                 &              -                     $   %   "          5      
          .   	      2      /                    0   !               *             ,   #   )          1                    (             '   +   3                     And again we can confirm that there are two documents uploaded. And again we have `201 Created` response code, `Location` header and body wth extra `id`, `tenderID`, and `modified` properties. And indeed we have 2 tenders now. And individual answer: And one can retrieve the questions list: And upload proposal document: And we can see that it is overriding the original version: Answer Awarding Bidder can register a bid: Bidder is answering them: Bidding Canceling tender Checking the listing again reflects the new modification date: Confirming qualification Creating tender Document Enquiries Error states that no `data` found in JSON body. Error states that only accepted Content-Type is `application/json`. Exploring basic rules For best effect (biggest economy) Tender should have multiple bidders registered: In case we made an error, we can reupload the document over the older version: It is possible to check documents uploaded: Just invoking it reveals empty set. Let's access the URL of object created (the `Location` header of the response): Let's check what tender registry contains: Let's provide the data attribute in the body submitted: Let's satisfy the Content-type requirement: Let's see what listing of tenders reveals us: Let's try creating tender with more data, passing the `procuringEntity` of a tender: Let's try exploring the `/tenders` endpoint: Let's update tender by providing it with all other essential properties: Modifying tender Now let's attempt creating some tender: Procuring entity can upload PDF files into tender created. Uploading should follow the :ref:`upload` rules. Qualification Qualification comission registers its decision via following call: Question Registering bid Success! Now we can see that new object was created. Response code is `201` and `Location` response header reports the location of object created.  The body of response reveals the information about tender created, its internal `id` (that matches the `Location` segment), its official `tenderID` and `modified` datestamp stating the moment in time when tender was last modified.  Note that tender is created with `active.enquiries` status. Tender Tender creator can cancel tender anytime: The single array element describes the document uploaded. We can upload more documents: Tutorial Uploading documentation We can see the same response we got after creating tender. We do see the internal `id` of a tender (that can be used to construct full URL by prepending `http://api-sandbox.openprocurement.org/api/0/tenders/`) and its `modified` datestamp. We see the added properies merged with existing data of tender. Additionally the `modified` property updated to reflect the last modification datestamp. When ``Tender.tenderingPeriod.startDate`` comes Tender switches to `tendering` status that allows registration of bids. When tender is in `active.enquiry` status, interested parties can ask questions: `201 Created` response code and `Location` header confirm document creation. We can additionally query the `documents` collection API endpoint to confirm the action: Project-Id-Version: openprocurement.api 0.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-10-21 10:42+0300
PO-Revision-Date: 2014-12-02 10:23+0300
Last-Translator: 
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 1.5.4
 І знову можна перевірити, що є два завантажених документа. І знову код відповіді `201 Created`,  заголовок `Location` і тіло з додатковим `id`, `tenderID`, та властивість `modified`. Дійсно, в нас зараз є дві закупівлі. та окрему відповідь: Можна отримати список запитань: І завантажити документ пропозиції: І ми бачимо, що вона перекриває оригінальну версію: Відповідь Визначення переможця Учасник може зареєструвати цінову пропозицію: Учасник відповідає на них: Торги Відміна закупівлі Ще одна перевірка списку відображає нову дату модифікації: Підтвердження кваліфікації Створення закупівлі Документ Уточнення Помилка вказує, що `data` не знайдено у тілі JSON. Помилка вказує, що єдиний прийнятний тип вмісту це `application/json`. Розглянемо основні правила Для найкращого результату (найбільшої економії) Закупівля повинна мати багато зареєстрованих учасників. Якщо сталась помилка, ми можемо ще раз завантажити документ поверх старої версії: Можна перевірити завантажений документ: При виклику видає пустий набір. Використаємо URL створеного об’єкта (заголовок відповіді `Location`): Перевіримо, що містить реєстр закупівель: Введемо data атрибут у поданому тілі: Задовольнимо вимогу типу вмісту (Content-type): Подивимось, що показує список закупівель: Спробуймо створити закупівлю з більшою кількістю даних використовуючи `procuringEntity` закупівлі: Подивимось як працює точка входу `/tenders`: Оновимо закупівлю шляхом надання їй усіх інших важливих властивостей: Модифікація закупівлі Спробуймо створити нову закупівлю: Замовник може завантажити PDF файл у створену закупівлю. Завантаження повинно відбуватись згідно правил :ref:`upload`. Кваліфікація Кваліфікаційна комісія реєструє своє рішення через такий виклик: Запитання Реєстрація пропозиції Успіх! Тепер ми бачимо, що новий об’єкт було створено. Код відповіді `201` та заголовок відповіді `Location` вказує місцерозташування створеного об’єкта. Тіло відповіді показує інформацію про створену закупівлю, її внутрішнє `id` (яке співпадає з сегментом `Location`), її офіційне `tenderID` та `modified` дату, що показує час, коли закупівля востаннє модифікувалась. Зверніть увагу, що закупівля створюється зі статусом `active.enquiries`. Закупівля Створювач закупівлі може відмінити її в будь-який момент: Один елемент масиву описує завантажений документ. Ми можемо завантажити більше документів: Туторіал Завантаження документації Ми бачимо, що ту ж відповідь, що і після створення закупівлі. Ми бачимо внутрішнє `id` закупівлі (що може бути використано для побудови повної URL-адреси, якщо додати `http://api-sandbox.openprocurement.org/api/0/tenders/`) та її `modified` дату. Ми бачимо, що додаткові властивості об’єднані з існуючими даними закупівлі. Додатково оновлена властивість `modified`, щоб відображати останню дату модифікації. Коли приходить ``Tender.tenderingPeriod.startDate``, Закупівля отримує статус `tendering`, що дозволяє реєстрацію пропозицій. Коли закупівля має статус `active.enquiry`, зацікавлені сторони можуть задавати питання: Код відповіді `201 Created` та заголовок `Location` підтверджують, що документ було створено. Додатково можна зробити запит точки входу API колекції `документів`, щоб підтвердити дію: 