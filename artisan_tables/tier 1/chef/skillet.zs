import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyNoSecondary = {

} as int[string];

for key, value in copyNoSecondary {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:skilletitem>, null)
    )
    .addTool(<ore:artisansPan>, value)
    .create();
}

val copyWithBottle = {

} as int[string];

for key, value in copyWithBottle {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:skilletitem>, null)
    )
    .setSecondaryIngredients([<minecraft:glass_bottle>])
    .addTool(<ore:artisansPan>, value)
    .create();
}

val copyWithBowl = {

} as int[string];

for key, value in copyWithBowl {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:skilletitem>, null)
    )
    .setSecondaryIngredients([<minecraft:bowl>])
    .addTool(<ore:artisansPan>, value)
    .create();
}

val copyWithPlate = {

} as int[string];

for key, value in copyWithPlate {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:skilletitem>, null)
    )
    .setSecondaryIngredients([<placeableitems:item_plate>])
    .addTool(<ore:artisansPan>, value)
    .create();
}