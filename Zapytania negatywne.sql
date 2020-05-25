Wypisz Imię, Nazwisko użytkowników, którzy nie utworzyli żadnych rezerwacji:

SELECT "Użytkownik_id","Imię","Nazwisko" FROM "Użytkownicy" WHERE "Użytkownik_id" NOT IN
(SELECT "użytkownik_id" FROM "Rezerwacje");

Wynik : 
Użytkownik_id |   Imię    | Nazwisko
--------------+-----------+------------
      4	      |  Paulina  |  Pozioma

