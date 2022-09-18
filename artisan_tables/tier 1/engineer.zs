import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val justCopy = [
    "charm:redstone_sand",
    "minecraft:tripwire_hook",
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
    "minecraft:jukebox": 15,
    "minecraft:tnt": 5,
    "minecraft:compass": 15,
    "minecraft:clock": 15,
    "simpledifficulty:thermometer": 15,
    /* redstone items */
    "minecraft:noteblock": 15,
    "minecraft:redstone_lamp": 15,
    "minecraft:dropper": 15,
    "minecraft:dispenser": 15,
    "minecraft:observer": 15,
    "minecraft:piston": 15,
    "quark:dispenser": 15,
    /* pams machines */
    "harvestcraft:waterfilter": 20,
    "harvestcraft:grinder": 20,
    "harvestcraft:presser": 20,
    /* bird crap */
    "exoticbirds:egg_sorter": 20,
    "exoticbirds:egg_incubator": 20,
} as int[string];

for key, value in copyWithSpanner {
    RecipeBuilder.get("engineer")
         .setCopy(
            Copy.byName(key)
            .replaceInput(<minecraft:iron_ingot>, <ore:ingotCopper>)
        )
        .addTool(<ore:artisansSpanner>, value)
        .create();
}

val copyWithSolderer = {
    /* redstone items */
    "minecraft:repeater": 10,
    "minecraft:comparator": 10,
    "quark:repeater": 10,
    "quark:redstone_randomizer": 10,
    "natura:common/daylight_detector": 10,
    "quark:rain_detector": 10,
    "quark:redstone_inductor": 10,
    "charm:variable_redstone_lamp": 10,
    "sereneseasons:season_sensor_spring": 10,
    "minecraft:daylight_detector": 10,
    "minecraft:hopper": 10,
    "quark:hopper": 10,
    "quark:chute": 10,
    /* rails and minecarts */
    "minecraft:minecart": 10,
    "minecraft:rail": 10,
    "minecraft:golden_rail": 10,
    "minecraft:detector_rail": 10,
    "minecraft:activator_rail": 10,
    "quark:hopper_minecart": 10,
    "quark:furnace_minecart": 10,
    "quark:tnt_minecart": 10,
    "quark:chest_minecart": 10,
    /* misc decorative */
    "quark:iron_ladder": 3,
} as int[string];

for key, value in copyWithSolderer {
    RecipeBuilder.get("engineer")
         .setCopy(
            Copy.byName(key)
        )
        .addTool(<ore:artisansSolderer>, value)
        .create();
}