INSERT INTO public."Użytkownicy"(
	"Użytkownik_id", "Login", "Hasło", email, "Imię", "Nazwisko", "nr.tel", nr_konta_bank)
	VALUES (1, 'Andrej','pok251','andrzej@gmail.com','Andrzej','Fomfara',52152521,00155216196);

  INSERT INTO public."Użytkownicy"(
	"Użytkownik_id", "Login", "Hasło", email, "Imię", "Nazwisko", "nr.tel", nr_konta_bank)
	VALUES (2, 'Kapo','mojepolska1234','kapoeira@gmail.com','Michał','Kapowski',599991,55892396);

  INSERT INTO public."Użytkownicy"(
	"Użytkownik_id", "Login", "Hasło", email, "Imię", "Nazwisko", "nr.tel", nr_konta_bank)
	VALUES (3, 'Borowik','mojehaslo1','borówka@gmail.com','Bąfołej','Borowski',12384321,1256196);

  INSERT INTO public."Użytkownicy"(
	"Użytkownik_id", "Login", "Hasło", email, "Imię", "Nazwisko", "nr.tel", nr_konta_bank)
	VALUES (4, 'Poziomka','123456789','poziomik@gmail.com','Paulina','Pozioma',128252521,661261196);



  INSERT INTO public."Adresy"(
  	"Adres_id", "Kraj", "Miasto", "Ulica", "Kod_pocztowy", "nr.budynku", "nr.lokalu")
  	VALUES (1, 'Polska', 'Gdańsk', 'Leśna', '85-781', 3, 2);

  INSERT INTO public."Adresy"(
  	"Adres_id", "Kraj", "Miasto", "Ulica", "Kod_pocztowy", "nr.budynku", "nr.lokalu")
  	VALUES (2, 'Polska', 'Gdynia', 'Nowa', '15-121', 1, 162);

  INSERT INTO public."Adresy"(
  	"Adres_id", "Kraj", "Miasto", "Ulica", "Kod_pocztowy", "nr.budynku", "nr.lokalu")
  	VALUES (3, 'Polska', 'Gdańsk', 'Kocia', '45-521', 58, 152);

  INSERT INTO public."Adresy"(
  	"Adres_id", "Kraj", "Miasto", "Ulica", "Kod_pocztowy", "nr.budynku", "nr.lokalu")
  	VALUES (4, 'Polska', 'Sopot', 'Podwale', '25-561', 14, 11);

  INSERT INTO public."Adresy"(
  	"Adres_id", "Kraj", "Miasto", "Ulica", "Kod_pocztowy", "nr.budynku", "nr.lokalu")
  	VALUES (5, 'Polska', 'Szczecin', 'Kurierowa', '25-821', 93, 151);

  INSERT INTO public."Adresy"(
  	"Adres_id", "Kraj", "Miasto", "Ulica", "Kod_pocztowy", "nr.budynku", "nr.lokalu")
  	VALUES (6, 'Polska', 'Gdańsk', 'Podlaska', '51-561', 131,15);



    INSERT INTO public."Informacje_przeglądania"(
	"Informacje_przeglądania_id", obserwowane, "wyświetlenia", "pobrania_nr.tel")
	VALUES (1, 52161, 62186, 521);

INSERT INTO public."Informacje_przeglądania"(
	"Informacje_przeglądania_id", obserwowane, "wyświetlenia", "pobrania_nr.tel")
	VALUES (2, 11, 6, 1);

INSERT INTO public."Informacje_przeglądania"(
	"Informacje_przeglądania_id", obserwowane, "wyświetlenia", "pobrania_nr.tel")
	VALUES (3, 13, 10, 5);

INSERT INTO public."Informacje_przeglądania"(
	"Informacje_przeglądania_id", obserwowane, "wyświetlenia", "pobrania_nr.tel")
	VALUES (4, 121, 100, 10);

INSERT INTO public."Informacje_przeglądania"(
	"Informacje_przeglądania_id", obserwowane, "wyświetlenia", "pobrania_nr.tel")
	VALUES (5, 361, 6, 0);





  INSERT INTO public."Wyżywienie"(
	"wyżywienie_id", sniadanie, obiad, kolacja, podwieczorek, "darmowe_przekąski")
	VALUES (1, 'YES', 'YES', 'YES', 'YES', 'NO');

INSERT INTO public."Wyżywienie"(
	"wyżywienie_id", sniadanie, obiad, kolacja, podwieczorek, "darmowe_przekąski")
	VALUES (2, 'YES', 'YES', 'YES', 'NO', 'NO');

INSERT INTO public."Wyżywienie"(
	"wyżywienie_id", sniadanie, obiad, kolacja, podwieczorek, "darmowe_przekąski")
	VALUES (3, 'YES', 'NO', 'YES', 'NO', 'NO');

INSERT INTO public."Wyżywienie"(
	"wyżywienie_id", sniadanie, obiad, kolacja, podwieczorek, "darmowe_przekąski")
	VALUES (4, 'YES', 'NO', 'YES', 'YES', 'NO');

INSERT INTO public."Wyżywienie"(
	"wyżywienie_id", sniadanie, obiad, kolacja, podwieczorek, "darmowe_przekąski")
	VALUES (5, 'NO', 'YES', 'NO', 'YES', 'NO');



  INSERT INTO public."Udogodnienia"(
	"Udogodnienia_id", "Dostep_do_basenu", "zasieg_free_wi-fi", dla_palaczy, "zwierzęta", dzieci, "własna_łazienka", ilosc_osob, "ilosc_metrow^2", ilosc_gwiazdek, "wyżywienie_id")
	VALUES (1, 'YES', 'NO', 'NO', 'YES', 'YES', 'YES',6 , 50, 5, 1);

INSERT INTO public."Udogodnienia"(
	"Udogodnienia_id", "Dostep_do_basenu", "zasieg_free_wi-fi", dla_palaczy, "zwierzęta", dzieci, "własna_łazienka", ilosc_osob, "ilosc_metrow^2", ilosc_gwiazdek, "wyżywienie_id")
	VALUES (2, 'NO', 'YES', 'NO', 'YES', 'NO', 'YES',2 , 15, 3, 4);

INSERT INTO public."Udogodnienia"(
	"Udogodnienia_id", "Dostep_do_basenu", "zasieg_free_wi-fi", dla_palaczy, "zwierzęta", dzieci, "własna_łazienka", ilosc_osob, "ilosc_metrow^2", ilosc_gwiazdek, "wyżywienie_id")
	VALUES (3, 'YES', 'YES', 'NO', 'YES', 'YES', 'YES',3 , 20, 4, 2);

INSERT INTO public."Udogodnienia"(
	"Udogodnienia_id", "Dostep_do_basenu", "zasieg_free_wi-fi", dla_palaczy, "zwierzęta", dzieci, "własna_łazienka", ilosc_osob, "ilosc_metrow^2", ilosc_gwiazdek, "wyżywienie_id")
	VALUES (4, 'NO', 'NO', 'NO', 'NO', 'NO', 'NO',1 , 10, 1, 3);





  INSERT INTO public."Lokal"(
  	"Lokal_id", "nr.pokoju/mieszkania", czy_wolny, "koszt/doba", kaucja, czynsz, opis, "nr.telefonu", "Udogodnienia_id", "Informacje_przeglądania_id")
  	VALUES (1, 521, 'YES', 58,NULL, NULL, 'Piękne mieszkanie z widokiem na wieżę eiffla.', 55511166, 1, 1);

  INSERT INTO public."Lokal"(
  	"Lokal_id", "nr.pokoju/mieszkania", czy_wolny, "koszt/doba", kaucja, czynsz, opis, "nr.telefonu", "Udogodnienia_id", "Informacje_przeglądania_id")
  	VALUES (2, 13, 'NO', 240,NULL , NULL, 'Mili sąsiedzi, miła okolica, czego chcieć więcej?.', 2621166, 2, 2);

  INSERT INTO public."Lokal"(
  	"Lokal_id", "nr.pokoju/mieszkania", czy_wolny, "koszt/doba", kaucja, czynsz, opis, "nr.telefonu", "Udogodnienia_id", "Informacje_przeglądania_id")
  	VALUES (3, 7, 'YES', 10, 500,480 , 'Tanie mieszkanie dla niewymagających.', 162166, 3, 3);




    INSERT INTO public."Atrakcje_w_mieście_odległość"(
  	atrakcja_id, muzeum, aquapark, "plaża", teatr, opera, sklep, restauracja, klub, "siłownia")
  	VALUES (1, 6.4, NULL, NULL, 10.5, NULL, NULL, 0.4, NULL, NULL);

  INSERT INTO public."Atrakcje_w_mieście_odległość"(
  	atrakcja_id, muzeum, aquapark, "plaża", teatr, opera, sklep, restauracja, klub, "siłownia")
  	VALUES (2, 8.4, NULL, 1.1, NULL, NULL, 12.0 , 0.512, NULL, NULL);

  INSERT INTO public."Atrakcje_w_mieście_odległość"(
  	atrakcja_id, muzeum, aquapark, "plaża", teatr, opera, sklep, restauracja, klub, "siłownia")
  	VALUES (3, NULL, 0.8, 1.2, 10.5, 3.3, NULL, 0.405, 5.5, 1.3);



    INSERT INTO public."Adresy-atrakcje"(
  	adres_id, atrakcja_id)
  	VALUES (1, 1);

  	INSERT INTO public."Adresy-atrakcje"(
  	adres_id, atrakcja_id)
  	VALUES (2, 1);

  	INSERT INTO public."Adresy-atrakcje"(
  	adres_id, atrakcja_id)
  	VALUES (3, 3);

  	INSERT INTO public."Adresy-atrakcje"(
  	adres_id, atrakcja_id)
  	VALUES (4, 2);

  	INSERT INTO public."Adresy-atrakcje"(
  	adres_id, atrakcja_id)
  	VALUES (5, 2);



    INSERT INTO public."Mieszkanie_na_wynajem"(
    	"Mieszkanie_na_wynajem_id", "Adres_id", "czy_ogród", "Lokal_id")
    	VALUES (1, 1, 'YES', 1);

    INSERT INTO public."Mieszkanie_na_wynajem"(
    	"Mieszkanie_na_wynajem_id", "Adres_id", "czy_ogród", "Lokal_id")
    	VALUES (2, 3, 'NO', 2);


    INSERT INTO public."Mieszkanie_na_wynajem"(
    	"Mieszkanie_na_wynajem_id", "Adres_id", "czy_ogród", "Lokal_id")
    	VALUES (3, 5, 'YES', 3);



  INSERT INTO public."Hotele"(
"Hotel_id", "Adres_id", "Nazwa_Hotelu", "Lokal_id")
VALUES (1, 2, 'Marina', 2);


INSERT INTO public."Ośrodki_wczasowe"(
	"Ośrodki_wczasowe_id", "Adres_id", "Lokal_id", "Nazwa_Ośrodka")
	VALUES (1, 4, 3, 'Pod lipą');


  INSERT INTO public."Historia_rezerwacji"(
	"Historia_rezerwacji_id", "Data_rezerwacji", "Data_przyjazdu", "Data_wyjazdu", "Kwota", ilosc_dni, zaksiegowany_przelew, "wyżywienie_id")
	VALUES (1, '20.05.2000', '20.06.2000', '25.06.2000', 1200, 5, 'YES', 3);

INSERT INTO public."Historia_rezerwacji"(
	"Historia_rezerwacji_id", "Data_rezerwacji", "Data_przyjazdu", "Data_wyjazdu", "Kwota", ilosc_dni, zaksiegowany_przelew, "wyżywienie_id")
	VALUES (2, '12.04.2001', '28.07.2001', '30.09.2001', 38000, 65, 'NO', 2);

INSERT INTO public."Historia_rezerwacji"(
	"Historia_rezerwacji_id", "Data_rezerwacji", "Data_przyjazdu", "Data_wyjazdu", "Kwota", ilosc_dni, zaksiegowany_przelew, "wyżywienie_id")
	VALUES (3, '13.01.2005', '10.10.2005', '11.10.2001', 200, 1, 'YES', 1);




  INSERT INTO public."Rezerwacje"(
	"użytkownik_id", "Hotel_id", "Ośrodki_wczasowe_id", "Mieszkanie_na_wynajem_id", "Historia_rezerwacji_id")
	VALUES (1, 1, NULL, NULL, 1);

INSERT INTO public."Rezerwacje"(
	"użytkownik_id", "Hotel_id", "Ośrodki_wczasowe_id", "Mieszkanie_na_wynajem_id", "Historia_rezerwacji_id")
	VALUES (3, NULL, 1, NULL, 2);

INSERT INTO public."Rezerwacje"(
	"użytkownik_id", "Hotel_id", "Ośrodki_wczasowe_id", "Mieszkanie_na_wynajem_id", "Historia_rezerwacji_id")
	VALUES (2 ,NULL, NULL , 1, 3);
