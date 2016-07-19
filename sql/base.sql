select
pvi.pokemon,
pvi.hp,
pg.base_stamina from pokemon.pokemon_go pg
join pokemon.pokemon_vi pvi
on (pvi.dex)=(pg.pkmn)
order by pvi.pokemon;
