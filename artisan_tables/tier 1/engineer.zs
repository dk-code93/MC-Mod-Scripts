import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyWithSpanner = {
    /* basic items */
    "minecraft:jukebox": 3,
    "minecraft:tnt": 3,
    /* redstone items */
    "minecraft:repeater": 3,
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
    /* pams machines */
    "harvestcraft:waterfilter": 3,
    "harvestcraft:grinder": 3,
    "harvestcraft:presser": 3,
} as int[string];

for key, value in copyWith {
    RecipeBuilder.get("engineer")
         .setCopy(
            Copy.byName(key)
        )
        .addTool(<ore:artisansSpanner>, value)
        .create();
}