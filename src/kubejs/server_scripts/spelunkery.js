ServerEvents.tags('item', event => {
  event.remove('spelunkery:blastable_foods', 'minecraft:bread')
  event.remove('spelunkery:smeltable_foods', 'minecraft:bread')
})