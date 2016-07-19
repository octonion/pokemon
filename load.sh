#!/bin/bash

cmd="psql template1 --tuples-only --command \"select count(*) from pg_database where datname = 'pokemon';\""

db_exists=`eval $cmd`
 
if [ $db_exists -eq 0 ] ; then
   cmd="createdb pokemon"
   eval $cmd
fi

psql pokemon -f schema/pokemon.sql

cp data/GAME_MASTER_POKEMON_v0_2.tsv /tmp/pokemon.tsv
psql pokemon -f loaders/load_pokemon_go.sql
rm /tmp/pokemon.tsv

cp data/pokemon_vi.csv /tmp/pokemon.csv
psql pokemon -f loaders/load_pokemon_vi.sql
rm /tmp/pokemon.csv

exit
