USE MyLibraryDB;
GO

SET NOCOUNT ON;

-- Вставка 100 известных книг
INSERT INTO Books (Title, Author, YearPublished, Publisher, Genre, Pages, ContentsXml) VALUES
-- Классическая литература
('Война и мир', 'Лев Толстой', 1869, 'Азбука-Классика', 'Роман-эпопея', 1300, '<contents><chapter title="Часть 1" page="1"/></contents>'),
('Преступление и наказание', 'Федор Достоевский', 1866, 'Эксмо', 'Философский роман', 672, '<contents><chapter title="Часть 1" page="5"/></contents>'),
('Мастер и Маргарита', 'Михаил Булгаков', 1967, 'АСТ', 'Роман', 480, '<contents><chapter title="Глава 1" page="3"/></contents>'),
('1984', 'Джордж Оруэлл', 1949, 'АСТ', 'Антиутопия', 320, '<contents><chapter title="Part One" page="1"/></contents>'),
('Убить пересмешника', 'Харпер Ли', 1960, 'Азбука', 'Роман', 384, '<contents><chapter title="Chapter 1" page="1"/></contents>'),
('Великий Гэтсби', 'Фрэнсис Скотт Фицджеральд', 1925, 'Азбука-Классика', 'Роман', 224, '<contents><chapter title="I" page="5"/></contents>'),
('Сто лет одиночества', 'Габриэль Гарсиа Маркес', 1967, 'АСТ', 'Магический реализм', 480, '<contents><chapter title="Глава 1" page="7"/></contents>'),
('Гордость и предубеждение', 'Джейн Остин', 1813, 'Эксмо', 'Роман', 416, '<contents><chapter title="Chapter 1" page="1"/></contents>'),
('Над пропастью во ржи', 'Джером Сэлинджер', 1951, 'Эксмо', 'Роман', 288, '<contents><chapter title="1" page="3"/></contents>'),
('Отцы и дети', 'Иван Тургенев', 1862, 'Азбука-Классика', 'Роман', 320, '<contents><chapter title="I" page="5"/></contents>'),
('Евгений Онегин', 'Александр Пушкин', 1833, 'Азбука-Классика', 'Роман в стихах', 320, '<contents><chapter title="Глава первая" page="7"/></contents>'),
('Мертвые души', 'Николай Гоголь', 1842, 'Эксмо', 'Поэма в прозе', 352, '<contents><chapter title="Глава I" page="1"/></contents>'),
('Герой нашего времени', 'Михаил Лермонтов', 1840, 'АСТ', 'Роман', 224, '<contents><chapter title="Бэла" page="5"/></contents>'),
('Три товарища', 'Эрих Мария Ремарк', 1936, 'АСТ', 'Роман', 480, '<contents><chapter title="Глава 1" page="7"/></contents>'),
('Процесс', 'Франц Кафка', 1925, 'Азбука-Классика', 'Абсурдизм', 288, '<contents><chapter title="Арест" page="1"/></contents>'),

-- Научная фантастика и фэнтези
('Дюна', 'Фрэнк Герберт', 1965, 'АСТ', 'Научная фантастика', 704, '<contents><chapter title="Book One: Dune" page="3"/></contents>'),
('Властелин колец: Братство Кольца', 'Дж. Р. Р. Толкин', 1954, 'АСТ', 'Фэнтези', 576, '<contents><chapter title="A Long-expected Party" page="21"/></contents>'),
('451 градус по Фаренгейту', 'Рэй Брэдбери', 1953, 'Эксмо', 'Научная фантастика', 256, '<contents><chapter title="The Hearth and the Salamander" page="1"/></contents>'),
('Автостопом по галактике', 'Дуглас Адамс', 1979, 'АСТ', 'Юмористическая фантастика', 224, '<contents><chapter title="1" page="5"/></contents>'),
('Игра престолов', 'Джордж Р. Р. Мартин', 1996, 'АСТ', 'Фэнтези', 768, '<contents><chapter title="Prologue" page="1"/></contents>'),
('Трудно быть богом', 'Аркадий и Борис Стругацкие', 1964, 'АСТ', 'Научная фантастика', 288, '<contents><chapter title="Глава первая" page="7"/></contents>'),
('Пикник на обочине', 'Аркадий и Борис Стругацкие', 1972, 'АСТ', 'Научная фантастика', 256, '<contents><chapter title="Раздел первый" page="5"/></contents>'),
('Цветы для Элджернона', 'Дэниел Киз', 1966, 'Эксмо', 'Научная фантастика', 320, '<contents><chapter title="Progress Report 1" page="1"/></contents>'),
('Солярис', 'Станислав Лем', 1961, 'АСТ', 'Научная фантастика', 320, '<contents><chapter title="Прибытие" page="7"/></contents>'),
('Гиперион', 'Дэн Симмонс', 1989, 'Эксмо', 'Научная фантастика', 576, '<contents><chapter title="The Consul’s Tale" page="13"/></contents>'),
('Ведьмак: Последнее желание', 'Анджей Сапковский', 1993, 'АСТ', 'Фэнтези', 320, '<contents><chapter title="Глас рассудка" page="7"/></contents>'),
('Американские боги', 'Нил Гейман', 2001, 'АСТ', 'Городское фэнтези', 672, '<contents><chapter title="Chapter One" page="1"/></contents>'),
('Задача трех тел', 'Лю Цысинь', 2008, 'Эксмо', 'Научная фантастика', 432, '<contents><chapter title="Тихие годы" page="5"/></contents>'),
('Нейромант', 'Уильям Гибсон', 1984, 'Азбука', 'Киберпанк', 352, '<contents><chapter title="Chiba City Blues" page="1"/></contents>'),
('Марсианин', 'Энди Вейер', 2011, 'АСТ', 'Научная фантастика', 416, '<contents><chapter title="SOL 6" page="1"/></contents>'),

-- Детективы и триллеры
('Убийство в «Восточном экспрессе»', 'Агата Кристи', 1934, 'Эксмо', 'Детектив', 256, '<contents><chapter title="The Facts" page="5"/></contents>'),
('Собака Баскервилей', 'Артур Конан Дойл', 1902, 'Азбука-Классика', 'Детектив', 224, '<contents><chapter title="Mr. Sherlock Holmes" page="1"/></contents>'),
('Молчание ягнят', 'Томас Харрис', 1988, 'Эксмо', 'Триллер', 352, '<contents><chapter title="1" page="3"/></contents>'),
('Девушка с татуировкой дракона', 'Стиг Ларссон', 2005, 'Эксмо', 'Триллер', 608, '<contents><chapter title="Part 1: Incentive" page="11"/></contents>'),
('Имя розы', 'Умберто Эко', 1980, 'Corpus', 'Исторический детектив', 640, '<contents><chapter title="Пролог" page="1"/></contents>'),
('Десять негритят', 'Агата Кристи', 1939, 'Эксмо', 'Детектив', 224, '<contents><chapter title="One" page="7"/></contents>'),
('Код да Винчи', 'Дэн Браун', 2003, 'АСТ', 'Триллер', 544, '<contents><chapter title="Prologue" page="1"/></contents>'),
('Исчезнувшая', 'Гиллиан Флинн', 2012, 'Азбука-Аттикус', 'Психологический триллер', 512, '<contents><chapter title="Part One: Boy Loses Girl" page="3"/></contents>'),
('Большая маленькая ложь', 'Лиана Мориарти', 2014, 'Азбука-Аттикус', 'Детектив', 512, '<contents><chapter title="September" page="7"/></contents>'),
('Таинственная история Билли Миллигана', 'Дэниел Киз', 1981, 'Эксмо', 'Документальный роман', 512, '<contents><chapter title="Part One" page="1"/></contents>'),

-- Современная и прочая проза
('Бойцовский клуб', 'Чак Паланик', 1996, 'АСТ', 'Контркультура', 288, '<contents><chapter title="1" page="3"/></contents>'),
('Зеленая миля', 'Стивен Кинг', 1996, 'АСТ', 'Мистический роман', 448, '<contents><chapter title="Part One" page="1"/></contents>'),
('Жизнь Пи', 'Янн Мартел', 2001, 'Эксмо', 'Приключенческий роман', 384, '<contents><chapter title="Author’s Note" page="ix"/></contents>'),
('Книжный вор', 'Маркус Зусак', 2005, 'Эксмо', 'Исторический роман', 512, '<contents><chapter title="Prologue" page="1"/></contents>'),
('Дом, в котором...', 'Мариам Петросян', 2009, 'Livebook Publishing', 'Магический реализм', 960, '<contents><chapter title="Курильщик" page="7"/></contents>'),
('Облачный атлас', 'Дэвид Митчелл', 2004, 'Эксмо', 'Роман', 704, '<contents><chapter title="The Pacific Journal of Adam Ewing" page="1"/></contents>'),
('Поправки', 'Джонатан Франзен', 2001, 'Corpus', 'Роман', 672, '<contents><chapter title="St. Jude" page="3"/></contents>'),
('Щегол', 'Донна Тартт', 2013, 'Corpus', 'Роман', 832, '<contents><chapter title="I" page="1"/></contents>'),
('Поколение «П»', 'Виктор Пелевин', 1999, 'Эксмо', 'Постмодернизм', 320, '<contents><chapter title="Человек ниоткуда" page="5"/></contents>'),
('Петровы в гриппе и вокруг него', 'Алексей Сальников', 2016, 'Редакция Елены Шубиной', 'Роман', 416, '<contents><chapter title="День первый" page="7"/></contents>'),
('Зулейха открывает глаза', 'Гузель Яхина', 2015, 'Редакция Елены Шубиной', 'Исторический роман', 512, '<contents><chapter title="Часть первая. Мокрое дело" page="9"/></contents>'),
('Норвежский лес', 'Харуки Мураками', 1987, 'Эксмо', 'Роман', 416, '<contents><chapter title="1" page="1"/></contents>'),
('Маленькая жизнь', 'Ханья Янагихара', 2015, 'Corpus', 'Роман', 704, '<contents><chapter title="Part I: Lispenard Street" page="3"/></contents>'),
('Бегущий за ветром', 'Халед Хоссейни', 2003, 'Фантом Пресс', 'Роман', 384, '<contents><chapter title="1" page="1"/></contents>'),
('О дивный новый мир', 'Олдос Хаксли', 1932, 'АСТ', 'Антиутопия', 320, '<contents><chapter title="One" page="1"/></contents>'),
('Не отпускай меня', 'Кадзуо Исигуро', 2005, 'Эксмо', 'Научно-фантастическая драма', 352, '<contents><chapter title="Part One" page="1"/></contents>'),
('Вино из одуванчиков', 'Рэй Брэдбери', 1957, 'Эксмо', 'Повесть', 320, '<contents><chapter title="1" page="5"/></contents>'),
('Посторонний', 'Альбер Камю', 1942, 'АСТ', 'Экзистенциализм', 160, '<contents><chapter title="Part 1" page="1"/></contents>'),
('Тошнота', 'Жан-Поль Сартр', 1938, 'Азбука', 'Философский роман', 288, '<contents><chapter title="Дневник" page="5"/></contents>'),
('Оно', 'Стивен Кинг', 1986, 'АСТ', 'Ужасы', 1152, '<contents><chapter title="Chapter 1" page="3"/></contents>'),
('Сияние', 'Стивен Кинг', 1977, 'АСТ', 'Ужасы', 576, '<contents><chapter title="Part One: Prefatory Matters" page="1"/></contents>'),
('Портрет Дориана Грея', 'Оскар Уайльд', 1890, 'Азбука-Классика', 'Философский роман', 320, '<contents><chapter title="The Preface" page="v"/></contents>'),
('Лолита', 'Владимир Набоков', 1955, 'Азбука-Классика', 'Роман', 480, '<contents><chapter title="Part One" page="9"/></contents>'),
('Чума', 'Альбер Камю', 1947, 'АСТ', 'Роман-притча', 352, '<contents><chapter title="Часть первая" page="5"/></contents>'),
('Моби Дик, или Белый кит', 'Герман Мелвилл', 1851, 'Азбука', 'Роман', 704, '<contents><chapter title="Loomings" page="1"/></contents>'),
('Франкенштейн, или Современный Прометей', 'Мэри Шелли', 1818, 'Азбука', 'Готический роман', 288, '<contents><chapter title="Letter 1" page="1"/></contents>'),
('Дракула', 'Брэм Стокер', 1897, 'Азбука', 'Готический роман', 480, '<contents><chapter title="Jonathan Harker’s Journal" page="1"/></contents>'),
('Идиот', 'Федор Достоевский', 1869, 'Эксмо', 'Роман', 640, '<contents><chapter title="Часть первая" page="5"/></contents>'),
('Бесы', 'Федор Достоевский', 1872, 'Азбука-Классика', 'Роман', 736, '<contents><chapter title="Вместо введения" page="7"/></contents>'),
('Анна Каренина', 'Лев Толстой', 1877, 'Азбука', 'Роман', 864, '<contents><chapter title="Часть первая" page="1"/></contents>'),
('Тихий Дон', 'Михаил Шолохов', 1940, 'Эксмо', 'Роман-эпопея', 1536, '<contents><chapter title="Книга первая" page="5"/></contents>'),
('Приключения Шерлока Холмса', 'Артур Конан Дойл', 1892, 'Азбука', 'Детективные рассказы', 384, '<contents><chapter title="A Scandal in Bohemia" page="5"/></contents>'),
('Алиса в Стране чудес', 'Льюис Кэрролл', 1865, 'Азбука-Классика', 'Сказка', 240, '<contents><chapter title="Down the Rabbit-Hole" page="1"/></contents>'),
('Хоббит, или Туда и обратно', 'Дж. Р. Р. Толкин', 1937, 'АСТ', 'Фэнтези', 320, '<contents><chapter title="An Unexpected Party" page="1"/></contents>'),
('Скотный двор', 'Джордж Оруэлл', 1945, 'АСТ', 'Политическая сатира', 128, '<contents><chapter title="I" page="1"/></contents>'),
('Повелитель мух', 'Уильям Голдинг', 1954, 'АСТ', 'Роман-притча', 288, '<contents><chapter title="The Sound of the Shell" page="7"/></contents>'),
('Заводной апельсин', 'Энтони Бёрджесс', 1962, 'АСТ', 'Антиутопия', 256, '<contents><chapter title="Part 1" page="1"/></contents>'),

-- Нон-фикшн
('Sapiens: Краткая история человечества', 'Юваль Ной Харари', 2011, 'Corpus', 'Нон-фикшн', 520, '<contents><chapter title="Когнитивная революция" page="23"/></contents>'),
('Краткая история времени', 'Стивен Хокинг', 1988, 'АСТ', 'Научно-популярное', 256, '<contents><chapter title="Our Picture of the Universe" page="1"/></contents>'),
('Эгоистичный ген', 'Ричард Докинз', 1976, 'Corpus', 'Научно-популярное', 512, '<contents><chapter title="Why are people?" page="1"/></contents>'),
('Думай медленно... решай быстро', 'Даниэль Канеман', 2011, 'АСТ', 'Психология', 656, '<contents><chapter title="Two Systems" page="19"/></contents>'),
('Человек в поисках смысла', 'Виктор Франкл', 1946, 'Альпина Нон-фикшн', 'Психология', 224, '<contents><chapter title="Experiences in a Concentration Camp" page="21"/></contents>'),
('Homo Deus: Краткая история завтрашнего дня', 'Юваль Ной Харари', 2015, 'Corpus', 'Нон-фикшн', 496, '<contents><chapter title="The New Human Agenda" page="1"/></contents>'),
('Сказать жизни «Да!»: Психолог в концлагере', 'Виктор Франкл', 1946, 'Альпина Нон-фикшн', 'Психология', 239, '<contents><chapter title="Часть 1" page="5"/></contents>'),
('Искусство любить', 'Эрих Фромм', 1956, 'АСТ', 'Философия', 224, '<contents><chapter title="Is Love an Art?" page="1"/></contents>'),
('Чёрный лебедь. Под знаком непредсказуемости', 'Нассим Николас Талеб', 2007, 'КоЛибри', 'Экономика', 528, '<contents><chapter title="Prologue" page="xix"/></contents>'),
('Семь навыков высокоэффективных людей', 'Стивен Кови', 1989, 'Альпина Паблишер', 'Саморазвитие', 384, '<contents><chapter title="Paradigms and Principles" page="15"/></contents>'),
('Никогда не ешьте в одиночку', 'Кейт Феррацци', 2005, 'Манн, Иванов и Фербер', 'Бизнес', 352, '<contents><chapter title="1. Becoming a Member of the Club" page="3"/></contents>'),
('Власть привычки', 'Чарлз Дахигг', 2012, 'Манн, Иванов и Фербер', 'Психология', 384, '<contents><chapter title="The Habit Loop" page="1"/></contents>'),
('Заразительный. Психология сарафанного радио', 'Йона Бергер', 2013, 'Манн, Иванов и Фербер', 'Маркетинг', 240, '<contents><chapter title="Introduction" page="1"/></contents>'),
('Илон Маск: Tesla, SpaceX и дорога в будущее', 'Эшли Вэнс', 2015, 'Олимп-Бизнес', 'Биография', 416, '<contents><chapter title="Мир Илона" page="13"/></contents>'),
('Стив Джобс', 'Уолтер Айзексон', 2011, 'Corpus', 'Биография', 656, '<contents><chapter title="Childhood" page="1"/></contents>'),
('Принципы', 'Рэй Далио', 2017, 'Манн, Иванов и Фербер', 'Бизнес', 592, '<contents><chapter title="Part I: Where I’m Coming From" page="1"/></contents>'),
('От хорошего к великому', 'Джим Коллинз', 2001, 'Манн, Иванов и Фербер', 'Бизнес', 320, '<contents><chapter title="Good is the Enemy of Great" page="1"/></contents>'),
('Поток: Психология оптимального переживания', 'Михай Чиксентмихайи', 1990, 'Смысл', 'Психология', 464, '<contents><chapter title="Happiness Revisited" page="1"/></contents>'),
('Гении и аутсайдеры', 'Малкольм Гладуэлл', 2008, 'Манн, Иванов и Фербер', 'Психология', 288, '<contents><chapter title="The Matthew Effect" page="15"/></contents>'),
('Игры, в которые играют люди', 'Эрик Берн', 1964, 'Эксмо', 'Психология', 352, '<contents><chapter title="Introduction" page="1"/></contents>');

GO

-- Включаем счетчик обратно
SET NOCOUNT OFF;
GO

PRINT '100 тестовых записей были успешно добавлены в таблицу Books.';
GO

-- Проверяем, что данные были вставлены
SELECT COUNT(*) AS TotalBooks FROM Books;
SELECT TOP 20 * FROM Books ORDER BY Id DESC;
GO