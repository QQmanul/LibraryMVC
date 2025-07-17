USE MyLibraryDB;
GO

SET NOCOUNT ON;

-- ������� 100 ��������� ����
INSERT INTO Books (Title, Author, YearPublished, Publisher, Genre, Pages, ContentsXml) VALUES
-- ������������ ����������
('����� � ���', '��� �������', 1869, '������-��������', '�����-������', 1300, '<contents><chapter title="����� 1" page="1"/></contents>'),
('������������ � ���������', '����� �����������', 1866, '�����', '����������� �����', 672, '<contents><chapter title="����� 1" page="5"/></contents>'),
('������ � ���������', '������ ��������', 1967, '���', '�����', 480, '<contents><chapter title="����� 1" page="3"/></contents>'),
('1984', '������ ������', 1949, '���', '����������', 320, '<contents><chapter title="Part One" page="1"/></contents>'),
('����� ������������', '������ ��', 1960, '������', '�����', 384, '<contents><chapter title="Chapter 1" page="1"/></contents>'),
('������� ������', '������� ����� �����������', 1925, '������-��������', '�����', 224, '<contents><chapter title="I" page="5"/></contents>'),
('��� ��� �����������', '�������� ������ ������', 1967, '���', '���������� �������', 480, '<contents><chapter title="����� 1" page="7"/></contents>'),
('�������� � �������������', '����� �����', 1813, '�����', '�����', 416, '<contents><chapter title="Chapter 1" page="1"/></contents>'),
('��� ��������� �� ���', '������ ���������', 1951, '�����', '�����', 288, '<contents><chapter title="1" page="3"/></contents>'),
('���� � ����', '���� ��������', 1862, '������-��������', '�����', 320, '<contents><chapter title="I" page="5"/></contents>'),
('������� ������', '��������� ������', 1833, '������-��������', '����� � ������', 320, '<contents><chapter title="����� ������" page="7"/></contents>'),
('������� ����', '������� ������', 1842, '�����', '����� � �����', 352, '<contents><chapter title="����� I" page="1"/></contents>'),
('����� ������ �������', '������ ���������', 1840, '���', '�����', 224, '<contents><chapter title="����" page="5"/></contents>'),
('��� ��������', '���� ����� ������', 1936, '���', '�����', 480, '<contents><chapter title="����� 1" page="7"/></contents>'),
('�������', '����� �����', 1925, '������-��������', '���������', 288, '<contents><chapter title="�����" page="1"/></contents>'),

-- ������� ���������� � �������
('����', '����� �������', 1965, '���', '������� ����������', 704, '<contents><chapter title="Book One: Dune" page="3"/></contents>'),
('��������� �����: �������� ������', '��. �. �. ������', 1954, '���', '�������', 576, '<contents><chapter title="A Long-expected Party" page="21"/></contents>'),
('451 ������ �� ����������', '��� ��������', 1953, '�����', '������� ����������', 256, '<contents><chapter title="The Hearth and the Salamander" page="1"/></contents>'),
('���������� �� ���������', '������ �����', 1979, '���', '�������������� ����������', 224, '<contents><chapter title="1" page="5"/></contents>'),
('���� ���������', '������ �. �. ������', 1996, '���', '�������', 768, '<contents><chapter title="Prologue" page="1"/></contents>'),
('������ ���� �����', '������� � ����� ����������', 1964, '���', '������� ����������', 288, '<contents><chapter title="����� ������" page="7"/></contents>'),
('������ �� �������', '������� � ����� ����������', 1972, '���', '������� ����������', 256, '<contents><chapter title="������ ������" page="5"/></contents>'),
('����� ��� ����������', '������ ���', 1966, '�����', '������� ����������', 320, '<contents><chapter title="Progress Report 1" page="1"/></contents>'),
('�������', '��������� ���', 1961, '���', '������� ����������', 320, '<contents><chapter title="��������" page="7"/></contents>'),
('��������', '��� �������', 1989, '�����', '������� ����������', 576, '<contents><chapter title="The Consul�s Tale" page="13"/></contents>'),
('�������: ��������� �������', '������ ����������', 1993, '���', '�������', 320, '<contents><chapter title="���� ��������" page="7"/></contents>'),
('������������ ����', '��� ������', 2001, '���', '��������� �������', 672, '<contents><chapter title="Chapter One" page="1"/></contents>'),
('������ ���� ���', '�� ������', 2008, '�����', '������� ����������', 432, '<contents><chapter title="����� ����" page="5"/></contents>'),
('���������', '������ ������', 1984, '������', '���������', 352, '<contents><chapter title="Chiba City Blues" page="1"/></contents>'),
('���������', '���� �����', 2011, '���', '������� ����������', 416, '<contents><chapter title="SOL 6" page="1"/></contents>'),

-- ��������� � ��������
('�������� � ���������� ���������', '����� ������', 1934, '�����', '��������', 256, '<contents><chapter title="The Facts" page="5"/></contents>'),
('������ �����������', '����� ����� ����', 1902, '������-��������', '��������', 224, '<contents><chapter title="Mr. Sherlock Holmes" page="1"/></contents>'),
('�������� �����', '����� ������', 1988, '�����', '�������', 352, '<contents><chapter title="1" page="3"/></contents>'),
('������� � ����������� �������', '���� �������', 2005, '�����', '�������', 608, '<contents><chapter title="Part 1: Incentive" page="11"/></contents>'),
('��� ����', '������� ���', 1980, 'Corpus', '������������ ��������', 640, '<contents><chapter title="������" page="1"/></contents>'),
('������ ��������', '����� ������', 1939, '�����', '��������', 224, '<contents><chapter title="One" page="7"/></contents>'),
('��� �� �����', '��� �����', 2003, '���', '�������', 544, '<contents><chapter title="Prologue" page="1"/></contents>'),
('�����������', '������� �����', 2012, '������-�������', '��������������� �������', 512, '<contents><chapter title="Part One: Boy Loses Girl" page="3"/></contents>'),
('������� ��������� ����', '����� ��������', 2014, '������-�������', '��������', 512, '<contents><chapter title="September" page="7"/></contents>'),
('������������ ������� ����� ���������', '������ ���', 1981, '�����', '�������������� �����', 512, '<contents><chapter title="Part One" page="1"/></contents>'),

-- ����������� � ������ �����
('���������� ����', '��� �������', 1996, '���', '�������������', 288, '<contents><chapter title="1" page="3"/></contents>'),
('������� ����', '������ ����', 1996, '���', '����������� �����', 448, '<contents><chapter title="Part One" page="1"/></contents>'),
('����� ��', '��� ������', 2001, '�����', '��������������� �����', 384, '<contents><chapter title="Author�s Note" page="ix"/></contents>'),
('������� ���', '������ �����', 2005, '�����', '������������ �����', 512, '<contents><chapter title="Prologue" page="1"/></contents>'),
('���, � �������...', '������ ��������', 2009, 'Livebook Publishing', '���������� �������', 960, '<contents><chapter title="���������" page="7"/></contents>'),
('�������� �����', '����� �������', 2004, '�����', '�����', 704, '<contents><chapter title="The Pacific Journal of Adam Ewing" page="1"/></contents>'),
('��������', '�������� �������', 2001, 'Corpus', '�����', 672, '<contents><chapter title="St. Jude" page="3"/></contents>'),
('�����', '����� �����', 2013, 'Corpus', '�����', 832, '<contents><chapter title="I" page="1"/></contents>'),
('��������� �ϻ', '������ �������', 1999, '�����', '�������������', 320, '<contents><chapter title="������� ��������" page="5"/></contents>'),
('������� � ������ � ������ ����', '������� ���������', 2016, '�������� ����� �������', '�����', 416, '<contents><chapter title="���� ������" page="7"/></contents>'),
('������� ��������� �����', '������ �����', 2015, '�������� ����� �������', '������������ �����', 512, '<contents><chapter title="����� ������. ������ ����" page="9"/></contents>'),
('���������� ���', '������ ��������', 1987, '�����', '�����', 416, '<contents><chapter title="1" page="1"/></contents>'),
('��������� �����', '����� ���������', 2015, 'Corpus', '�����', 704, '<contents><chapter title="Part I: Lispenard Street" page="3"/></contents>'),
('������� �� ������', '����� ��������', 2003, '������ �����', '�����', 384, '<contents><chapter title="1" page="1"/></contents>'),
('� ������ ����� ���', '����� ������', 1932, '���', '����������', 320, '<contents><chapter title="One" page="1"/></contents>'),
('�� �������� ����', '������ �������', 2005, '�����', '������-�������������� �����', 352, '<contents><chapter title="Part One" page="1"/></contents>'),
('���� �� �����������', '��� ��������', 1957, '�����', '�������', 320, '<contents><chapter title="1" page="5"/></contents>'),
('�����������', '������ ����', 1942, '���', '���������������', 160, '<contents><chapter title="Part 1" page="1"/></contents>'),
('�������', '���-���� �����', 1938, '������', '����������� �����', 288, '<contents><chapter title="�������" page="5"/></contents>'),
('���', '������ ����', 1986, '���', '�����', 1152, '<contents><chapter title="Chapter 1" page="3"/></contents>'),
('������', '������ ����', 1977, '���', '�����', 576, '<contents><chapter title="Part One: Prefatory Matters" page="1"/></contents>'),
('������� ������� ����', '����� ������', 1890, '������-��������', '����������� �����', 320, '<contents><chapter title="The Preface" page="v"/></contents>'),
('������', '�������� �������', 1955, '������-��������', '�����', 480, '<contents><chapter title="Part One" page="9"/></contents>'),
('����', '������ ����', 1947, '���', '�����-������', 352, '<contents><chapter title="����� ������" page="5"/></contents>'),
('���� ���, ��� ����� ���', '������ �������', 1851, '������', '�����', 704, '<contents><chapter title="Loomings" page="1"/></contents>'),
('������������, ��� ����������� ��������', '���� �����', 1818, '������', '���������� �����', 288, '<contents><chapter title="Letter 1" page="1"/></contents>'),
('�������', '���� ������', 1897, '������', '���������� �����', 480, '<contents><chapter title="Jonathan Harker�s Journal" page="1"/></contents>'),
('�����', '����� �����������', 1869, '�����', '�����', 640, '<contents><chapter title="����� ������" page="5"/></contents>'),
('����', '����� �����������', 1872, '������-��������', '�����', 736, '<contents><chapter title="������ ��������" page="7"/></contents>'),
('���� ��������', '��� �������', 1877, '������', '�����', 864, '<contents><chapter title="����� ������" page="1"/></contents>'),
('����� ���', '������ �������', 1940, '�����', '�����-������', 1536, '<contents><chapter title="����� ������" page="5"/></contents>'),
('����������� ������� ������', '����� ����� ����', 1892, '������', '����������� ��������', 384, '<contents><chapter title="A Scandal in Bohemia" page="5"/></contents>'),
('����� � ������ �����', '����� �������', 1865, '������-��������', '������', 240, '<contents><chapter title="Down the Rabbit-Hole" page="1"/></contents>'),
('������, ��� ���� � �������', '��. �. �. ������', 1937, '���', '�������', 320, '<contents><chapter title="An Unexpected Party" page="1"/></contents>'),
('������� ����', '������ ������', 1945, '���', '������������ ������', 128, '<contents><chapter title="I" page="1"/></contents>'),
('���������� ���', '������ �������', 1954, '���', '�����-������', 288, '<contents><chapter title="The Sound of the Shell" page="7"/></contents>'),
('�������� ��������', '������ ��������', 1962, '���', '����������', 256, '<contents><chapter title="Part 1" page="1"/></contents>'),

-- ���-�����
('Sapiens: ������� ������� ������������', '����� ��� ������', 2011, 'Corpus', '���-�����', 520, '<contents><chapter title="����������� ���������" page="23"/></contents>'),
('������� ������� �������', '������ ������', 1988, '���', '������-����������', 256, '<contents><chapter title="Our Picture of the Universe" page="1"/></contents>'),
('����������� ���', '������ ������', 1976, 'Corpus', '������-����������', 512, '<contents><chapter title="Why are people?" page="1"/></contents>'),
('����� ��������... ����� ������', '������� �������', 2011, '���', '����������', 656, '<contents><chapter title="Two Systems" page="19"/></contents>'),
('������� � ������� ������', '������ ������', 1946, '������� ���-�����', '����������', 224, '<contents><chapter title="Experiences in a Concentration Camp" page="21"/></contents>'),
('Homo Deus: ������� ������� ����������� ���', '����� ��� ������', 2015, 'Corpus', '���-�����', 496, '<contents><chapter title="The New Human Agenda" page="1"/></contents>'),
('������� ����� ���!�: �������� � ����������', '������ ������', 1946, '������� ���-�����', '����������', 239, '<contents><chapter title="����� 1" page="5"/></contents>'),
('��������� ������', '���� �����', 1956, '���', '���������', 224, '<contents><chapter title="Is Love an Art?" page="1"/></contents>'),
('׸���� ������. ��� ������ �����������������', '������ ������� �����', 2007, '�������', '���������', 528, '<contents><chapter title="Prologue" page="xix"/></contents>'),
('���� ������� ����������������� �����', '������ ����', 1989, '������� ��������', '������������', 384, '<contents><chapter title="Paradigms and Principles" page="15"/></contents>'),
('������� �� ����� � ��������', '���� ��������', 2005, '����, ������ � ������', '������', 352, '<contents><chapter title="1. Becoming a Member of the Club" page="3"/></contents>'),
('������ ��������', '����� ������', 2012, '����, ������ � ������', '����������', 384, '<contents><chapter title="The Habit Loop" page="1"/></contents>'),
('�������������. ���������� ����������� �����', '���� ������', 2013, '����, ������ � ������', '���������', 240, '<contents><chapter title="Introduction" page="1"/></contents>'),
('���� ����: Tesla, SpaceX � ������ � �������', '���� ����', 2015, '�����-������', '���������', 416, '<contents><chapter title="��� �����" page="13"/></contents>'),
('���� �����', '������ ��������', 2011, 'Corpus', '���������', 656, '<contents><chapter title="Childhood" page="1"/></contents>'),
('��������', '��� �����', 2017, '����, ������ � ������', '������', 592, '<contents><chapter title="Part I: Where I�m Coming From" page="1"/></contents>'),
('�� �������� � ��������', '���� �������', 2001, '����, ������ � ������', '������', 320, '<contents><chapter title="Good is the Enemy of Great" page="1"/></contents>'),
('�����: ���������� ������������ �����������', '����� �������������', 1990, '�����', '����������', 464, '<contents><chapter title="Happiness Revisited" page="1"/></contents>'),
('����� � ����������', '�������� ��������', 2008, '����, ������ � ������', '����������', 288, '<contents><chapter title="The Matthew Effect" page="15"/></contents>'),
('����, � ������� ������ ����', '���� ����', 1964, '�����', '����������', 352, '<contents><chapter title="Introduction" page="1"/></contents>');

GO

-- �������� ������� �������
SET NOCOUNT OFF;
GO

PRINT '100 �������� ������� ���� ������� ��������� � ������� Books.';
GO

-- ���������, ��� ������ ���� ���������
SELECT COUNT(*) AS TotalBooks FROM Books;
SELECT TOP 20 * FROM Books ORDER BY Id DESC;
GO