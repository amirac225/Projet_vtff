drop table Identifiants;
drop table HistoriqueOp;
drop table HistoriqueValeurPort;
drop table HistoriqueDetention;

create table Identifiants(
	Login VARCHAR(30) primary key,
	Mdp VARCHAR(30),
	Nom VARCHAR(30),
	Prenom VARCHAR(30),
	email VARCHAR(30),
	Action1 INTEGER,
	Action2 INTEGER,
	Action3 INTEGER,
	Action4 INTEGER,
	Action5 INTEGER,
	Action6 INTEGER,
	Action7 INTEGER,
	Action8 INTEGER,
	Action9 INTEGER,
	Action10 INTEGER,
	Argent INTEGER);

create table HistoriqueOp(
	Login VARCHAR(30) primary key,
	Type VARCHAR(30),
	Jour INTEGER,
	Mois INTEGER,
	Annee INTEGER,
	nombre INTEGER,
	IdAction INTEGER,
	PrixAction INTEGER);

create table HistoriqueValeurPort(
	Login VARCHAR(30) primary key,
	Jour INTEGER,
	Mois INTEGER,
	Annee INTEGER,
	Valeur INTEGER);

create table HistoriqueDetention(
	Login VARCHAR(30) primary key,
	Jour INTEGER,
	Mois INTEGER,
	Annee INTEGER,
	Action1 INTEGER,
	Action2 INTEGER,
	Action3 INTEGER,
	Action4 INTEGER,
	Action5 INTEGER,
	Action6 INTEGER,
	Action7 INTEGER,
	Action8 INTEGER,
	Action9 INTEGER,
	Action10 INTEGER);
