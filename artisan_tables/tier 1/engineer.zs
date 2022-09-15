import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val justCopy = [
    "charm:redstone_sand"
] as string[];

for value in justCopy {
    RecipeBuilder.get("engineer")
         .setCopy(
            Copy.byName(value)
        )
        .create();
}

val copyWithSpanner = {
    /* basic items */
    "minecraft:jukebox": 3,
    "minecraft:tnt": 3,
    /* redstone items */
    "minecraft:repeater": 3,
    "minecraft:noteblock": 3,
    "minecraft:comparator": 3,
    "minecraft:redstone_lamp": 3,
    "minecraft:tripwire_hook": 3,
    "minecraft:dropper": 3,
    "minecraft:dispenser": 3,
    "minecraft:observer": 3,
    "minecraft:daylight_detector": 3,
    "minecraft:piston": 3,
    "natura:common/daylight_detector": 3,
    "quark:repeater": 3,
    "quark:dispenser": 3,
    "quark:redstone_randomizer": 3,
    "quark:rain_detector": 3,
    "quark:redstone_inductor": 3,
    "charm:variable_redstone_lamp": 3,
    "sereneseasons:season_sensor_spring": 3,
    /* pams machines */
    "harvestcraft:waterfilter": 3,
    "harvestcraft:grinder": 3,
    "harvestcraft:presser": 3,
    /* bird crap */
    "exoticbirds:egg_sorter": 3,
    "exoticbirds:egg_incubator": 3,
} as int[string];

for key, value in copyWithSpanner {
    RecipeBuilder.get("engineer")
         .setCopy(
            Copy.byName(key)
        )
        .addTool(<ore:artisansSpanner>, value)
        .create();
}