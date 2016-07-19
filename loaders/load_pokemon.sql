begin;

drop table if exists pokemon.pokemon;

create table pokemon.pokemon (
	pkmn				integer,
	base_stamina	      		integer,
	base_attack	      		integer,
	base_defense	      		integer,
	type1				text,
	type2		      		text,
	base_capture_rate     		float,
	base_flee_rate	      		float,
	collision_radius_m    		float,
	collision_height_m    		float,
	collision_head_radius_m		float,
	movement_type			text,
	movement_timer_s		float,
	jump_time_s			float,
	attack_timer_s			float,
	quick_move_s			text,
	cinematic_move_s		text,
	anim_time			text,
	evolution			text,
	evolution_pip_s			text,
	pokemon_class			text,
	pokedex_height_m		float,
	pokedex_weight_kg		float,
	height_std_dev			float,
	weight_std_dev			float,
	family_id			text,
	candy_to_evolve			integer,
	primary key (pkmn)
);

copy pokemon.pokemon from '/tmp/pokemon.tsv' with delimiter as E'\t' csv header;

commit;
