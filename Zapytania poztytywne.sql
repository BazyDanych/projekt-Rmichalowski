Znajdź lokal, który kosztuje mniej niż 100 zł za dobę:

SELECT "Lokal_id","koszt/doba" FROM "Lokal" WHERE "koszt/doba"<100;

Wynik : 

   Lokal_id |  koszt/doba
------------+----------------
          1 | 58
          3 | 10


Id imie i nazwisko użytkowników posortowane alfabetycznie: 

SELECT "Użytkownik_id","Imię","Nazwisko" FROM "Użytkownicy" ORDER BY "Nazwisko";

Wynik : 

  Id |  imię   | nazwisko     
-----+---------+--------
   3 | Bąfołej | Borowski             
   1 | Andrzej | Fomfara               
   2 | Michał  | Kapowski            
   4 | Paulina | Pozioma    

Sprawdzenie średniego kosztu wynajmu lokalu:

SELECT AVG("koszt/doba") FROM "Lokal" ;

Wynik:

       avg
-------------------
102.66666666666667

Wyszukanie Pokoju, który został wyszukany więcej niz 100 razy:

SELECT "Lokal_id","nr.pokoju/mieszkania" FROM "Lokal" WHERE 
"Informacje_przeglądania_id" in (SELECT "Informacje_przeglądania_id" From "Informacje_przeglądania" WHERE "wyświetlenia">100);

Wynik:

     Lokal_id   | nr.pokoju/mieszkania
----------------+---------------------
              1 |                 521
        

Wyświetlenie udogodnień pokojów , które nie mają kaucji :

SELECT * FROM "Udogodnienia" WHERE "Udogodnienia_id" in (SELECT "Udogodnienia_id" FROM "Lokal" WHERE "kaucja" IS NULL);

Wynik: 

Udogodnienia_id | Dostep_do_basenu | zasieg_free_wi-fi | dla_palaczy | zwierzęta | dzieci | własna_łazienka | ilosc_osob | ilosc_metrow^2 | ilosc_gwiazdek | wyżywienie_id
----------------+------------------+-------------------+-------------+-----------+--------+-----------------+------------+----------------+----------------+----------------
      1	        |       true       |       false       |    false    |    true   |  true  |      true       |	   6     |	50	  |        5       |	   1
      2	        |       false      |        true       |    false    |    true   | false  |      true       |	   2     |	15	  |        3	   |       4







           
 