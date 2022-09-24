import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyNoSecondary = [

] as string[];

for recipe in copyNoSecondary {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:bakewareitem>, null)
    )
    .addTool(<harvestcraft:bakewareitem>, 0)
    .create();
}

val copyWithBottle = [

] as string[];

for recipe in copyWithBottle {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:bakewareitem>, null)
    )
    .setSecondaryIngredients([<minecraft:glass_bottle>])
    .addTool(<harvestcraft:bakewareitem>, 0)
    .create();
}

val copyWithBowl = [

] as string[];

for recipe in copyWithBowl {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:bakewareitem>, null)
    )
    .setSecondaryIngredients([<minecraft:bowl>])
    .addTool(<harvestcraft:bakewareitem>, 0)
    .create();
}

val copyWithPlate = [

] as string[];

for recipe in copyWithPlate {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:bakewareitem>, null)
    )
    .setSecondaryIngredients([<placeableitems:item_plate>])
    .addTool(<harvestcraft:bakewareitem>, 0)
    .create();
}