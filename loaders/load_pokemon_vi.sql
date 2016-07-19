begin;

drop table if exists pokemon.pokemon_vi;

create table pokemon.pokemon_vi (
	dex				integer,
	pokemon				text,
	form				text,
	type1				text,
	type2				text,
	abilities1			text,
	abilities2			text,
	hidden_ability			text,
	evolution_details		text,
	egg_group1			text,
	egg_group2			text,
	hp				integer,
	atk				integer,
	def				integer,
	sp_atk				integer,
	sp_def				integer,
	speed				integer,
	total				integer,
	pokemon_xy			boolean,
	pokemon_oras			boolean
);

copy pokemon.pokemon_vi from '/tmp/pokemon.csv' csv header;

delete from pokemon.pokemon_vi
where form is not null;

delete from pokemon.pokemon_vi
where dex>151;

alter table pokemon.pokemon_vi
add primary key (dex);

commit;
