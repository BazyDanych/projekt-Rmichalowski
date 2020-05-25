
CREATE TABLE "Użytkownicy" (
	"Użytkownik_id" serial NOT NULL,
	"Login" varchar(255) NOT NULL,
	"Hasło" varchar(255) NOT NULL,
	"email" varchar(255) NOT NULL,
	"Imię" varchar(255) NOT NULL,
	"Nazwisko" varchar(255) NOT NULL,
	"nr.tel" integer NOT NULL,
	"nr_konta_bank" integer NOT NULL,
	CONSTRAINT "Użytkownicy_pk" PRIMARY KEY ("Użytkownik_id")
) WITH (
  OIDS=FALSE
);




CREATE TABLE "Hotele" (
	"Hotel_id" serial NOT NULL,
	"Adres_id" integer NOT NULL,
	"Nazwa_Hotelu" varchar(255) NOT NULL,
	"Lokal_id" integer NOT NULL,
	CONSTRAINT "Hotele_pk" PRIMARY KEY ("Hotel_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Adresy" (
	"Adres_id" integer NOT NULL,
	"Kraj" varchar(255) NOT NULL,
	"Miasto" varchar(255) NOT NULL,
	"Ulica" varchar(255) NOT NULL,
	"Kod_pocztowy" varchar(255) NOT NULL,
	"nr.budynku" integer NOT NULL,
	"nr.lokalu" integer NOT NULL,
	CONSTRAINT "Adresy_pk" PRIMARY KEY ("Adres_id")
) WITH (
  OIDS=FALSE
);


CREATE TABLE "Ośrodki_wczasowe" (
	"Ośrodki_wczasowe_id" serial NOT NULL,
	"Adres_id" integer NOT NULL,
	"Lokal_id" integer NOT NULL,
	"Nazwa_Ośrodka" varchar(255) NOT NULL,
	CONSTRAINT "Ośrodki_wczasowe_pk" PRIMARY KEY ("Ośrodki wczasowe_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Mieszkanie_na_wynajem" (
	"Mieszkanie_na_wynajem_id" serial NOT NULL,
	"Adres_id" integer NOT NULL,
	"czy_ogród" BOOLEAN NOT NULL,
	"Lokal_id" integer NOT NULL,
	CONSTRAINT "Mieszkanie_na_wynajem_pk" PRIMARY KEY ("Mieszkanie na wynajem_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Rezerwacje" (
	"użytkownik_id" integer NOT NULL,
	"Hotel_id" integer,
	"Ośrodki_wczasowe_id" integer,
	"Mieszkanie_na_wynajem_id" integer,
	"Historia_rezerwacji_id" integer NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Adresy-atrakcje" (
	"adres_id" integer NOT NULL,
	"atrakcja_id" integer NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Lokal" (
	"Lokal_id" integer NOT NULL,
	"nr.pokoju/mieszkania" integer NOT NULL,
	"czy_wolny" BOOLEAN NOT NULL,
	"koszt/doba" FLOAT NOT NULL,
	"kaucja" FLOAT,
	"czynsz" FLOAT,
	"opis" TEXT,
	"nr.telefonu" varchar NOT NULL,
	"Udogodnienia_id" integer NOT NULL,
	"Informacje_przeglądania_id" integer NOT NULL,
	CONSTRAINT "Lokal_pk" PRIMARY KEY ("Lokal_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Udogodnienia" (
	"Udogodnienia_id" serial NOT NULL,
	"Dostep_do_basenu" BOOLEAN NOT NULL,
	"zasieg_free_wi-fi" BOOLEAN NOT NULL,
	"dla_palaczy" BOOLEAN NOT NULL,
	"zwierzęta" BOOLEAN NOT NULL,
	"dzieci" BOOLEAN NOT NULL,
	"własna_łazienka" BOOLEAN NOT NULL,
	"ilosc_osob" integer NOT NULL,
	"ilosc_metrow^2" integer NOT NULL,
	"ilosc_gwiazdek" integer,
	"wyżywienie_id" integer NOT NULL,
	CONSTRAINT "Udogodnienia_pk" PRIMARY KEY ("Udogodnienia_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Historia_rezerwacji" (
	"Historia_rezerwacji_id" serial NOT NULL,
	"Data_rezerwacji" DATE NOT NULL,
	"Data_przyjazdu" DATE NOT NULL,
	"Data_wyjazdu" DATE NOT NULL,
	"Kwota" FLOAT NOT NULL,
	"ilosc_dni" integer NOT NULL,
	"zaksiegowany_przelew" BOOLEAN NOT NULL,
	"wyżywienie_id" integer NOT NULL,
	CONSTRAINT "Historia_rezerwacji_pk" PRIMARY KEY ("Historia rezerwacji_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Wyżywienie" (
	"wyżywienie_id" serial NOT NULL,
	"sniadanie" BOOLEAN NOT NULL,
	"obiad" BOOLEAN NOT NULL,
	"kolacja" BOOLEAN NOT NULL,
	"podwieczorek" BOOLEAN NOT NULL,
	"darmowe_przekąski" BOOLEAN NOT NULL,
	CONSTRAINT "Wyżywienie_pk" PRIMARY KEY ("wyżywienie_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Informacje_przeglądania" (
	"Informacje_przeglądania_id" serial NOT NULL,
	"obserwowane" integer NOT NULL,
	"wyświetlenia" integer NOT NULL,
	"pobrania_nr.tel" integer NOT NULL,
	CONSTRAINT "Informacje_przeglądania_pk" PRIMARY KEY ("Informacje przeglądania_id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "Atrakcje_w_mieście_odległość" (
	"atrakcja_id" serial NOT NULL,
	"muzeum" float,
	"aquapark" float,
	"plaża" float,
	"teatr" float,
	"opera" float,
	"sklep" float,
	"restauracja" float,
	"klub" float,
	"siłownia" float,
	CONSTRAINT "atrakcja_pk" PRIMARY KEY ("atrakcja_id")
) WITH (
  OIDS=FALSE
);





ALTER TABLE "Hotele" ADD CONSTRAINT "Hotele_fk1" FOREIGN KEY ("Adres_id") REFERENCES "Adresy"("Adres_id");
ALTER TABLE "Hotele" ADD CONSTRAINT "Hotele_fk3" FOREIGN KEY ("Lokal_id") REFERENCES "Lokal"("Lokal_id");


ALTER TABLE "Ośrodki wczasowe" ADD CONSTRAINT "Ośrodki wczasowe_fk2" FOREIGN KEY ("Adres_id") REFERENCES "Adresy"("Adres_id");
ALTER TABLE "Ośrodki wczasowe" ADD CONSTRAINT "Ośrodki wczasowe_fk3" FOREIGN KEY ("Lokal_id") REFERENCES "Lokal"("Lokal_id");

ALTER TABLE "Mieszkanie na wynajem" ADD CONSTRAINT "Mieszkanie na wynajem_fk0" FOREIGN KEY ("Adres_id") REFERENCES "Adresy"("Adres_id");
ALTER TABLE "Mieszkanie na wynajem" ADD CONSTRAINT "Mieszkanie na wynajem_fk1" FOREIGN KEY ("Lokal_id") REFERENCES "Lokal"("Lokal_id");

ALTER TABLE "Rezerwacje" ADD CONSTRAINT "Rezerwacje_fk0" FOREIGN KEY ("użytkownik_id") REFERENCES "Użytkownicy"("Użytkownik_id");
ALTER TABLE "Rezerwacje" ADD CONSTRAINT "Rezerwacje_fk1" FOREIGN KEY ("Hotel_id") REFERENCES "Hotele"("Hotel_id");
ALTER TABLE "Rezerwacje" ADD CONSTRAINT "Rezerwacje_fk2" FOREIGN KEY ("Ośrodki wczasowe_id") REFERENCES "Ośrodki wczasowe"("Ośrodki wczasowe_id");
ALTER TABLE "Rezerwacje" ADD CONSTRAINT "Rezerwacje_fk3" FOREIGN KEY ("Mieszkanie na wynajem_id") REFERENCES "Mieszkanie na wynajem"("Mieszkanie na wynajem_id");
ALTER TABLE "Rezerwacje" ADD CONSTRAINT "Rezerwacje_fk4" FOREIGN KEY ("Historia rezerwacji_id") REFERENCES "Historia rezerwacji"("Historia rezerwacji_id");

ALTER TABLE "Adresy-atrakcje" ADD CONSTRAINT "Adresy-atrakcje_fk0" FOREIGN KEY ("adres_id") REFERENCES "Adresy"("Adres_id");
ALTER TABLE "Adresy-atrakcje" ADD CONSTRAINT "Adresy-atrakcje_fk1" FOREIGN KEY ("atrakcja_id") REFERENCES "Atrakcje w mieście odległość"("atrakcja_id");

ALTER TABLE "Lokal" ADD CONSTRAINT "Lokal_fk0" FOREIGN KEY ("Udogodnienia_id") REFERENCES "Udogodnienia"("Udogodnienia_id");
ALTER TABLE "Lokal" ADD CONSTRAINT "Lokal_fk1" FOREIGN KEY ("Informacje przeglądania_id") REFERENCES "Informacje przeglądania"("Informacje przeglądania_id");

ALTER TABLE "Udogodnienia" ADD CONSTRAINT "Udogodnienia_fk0" FOREIGN KEY ("wyżywienie_id") REFERENCES "Wyżywienie"("wyżywienie_id");

ALTER TABLE "Historia rezerwacji" ADD CONSTRAINT "Historia rezerwacji_fk0" FOREIGN KEY ("wyżywienie_id") REFERENCES "Wyżywienie"("wyżywienie_id");
