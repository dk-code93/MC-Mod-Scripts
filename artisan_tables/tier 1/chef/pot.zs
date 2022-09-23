import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyNoSecondary = [
    /* desserts */
    "harvestcraft:turkishdelightitem",
    /* drinks */
    "harvestcraft:strawberrysodaitem",
    "harvestcraft:vegetablesoupitem",
    "harvestcraft:sweetteaitem",
    "harvestcraft:rootbeeritem",
    /* meals */
    "harvestcraft:potroastitem",
    "harvestcraft:takoyakiitem",
    /* soup */
    "harvestcraft:pumpkinsoupitem",
    "harvestcraft:ramenitem",
    "harvestcraft:ricesoupitem",
    "harvestcraft:seedsoupitem",
    "harvestcraft:splitpeasoupitem",
    "harvestcraft:spidereyesoupitem",
    "harvestcraft:tomatosoupitem",
    "harvestcraft:turnipsoupitem",
    "harvestcraft:wontonsoupitem",
    /* ingredients */
    "harvestcraft:saltitem",
    "harvestcraft:sesameballitem",
    "harvestcraft:vinegaritem",
    "harvestcraft:sweetpickleitem",
    "harvestcraft:sugar_foodhoneydrop",
    "harvestcraft:sugar_agave",
    /* misc */
    "harvestcraft:shrimptemperaitem",
    "harvestcraft:zeppoleitem",
] as string[];

for recipe in copyNoSecondary {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:potitem>, null)
    )
    .addTool(<harvestcraft:potitem>, 0)
    .create();
}

val copyWithBowl = [
    /* soup */
    "harvestcraft:stockitem_x3_minecraft_bone",
    "harvestcraft:stockitem_x3_listallveggie",
    "harvestcraft:stockitem_x3_listallmeatraw",
    /* veggies */
    "harvestcraft:steamedpeasitem_itemsalt",
    "harvestcraft:steamedspinachitem",
    /* meals */
    "harvestcraft:succotashitem",
] as string[];

for recipe in copyWithBowl {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:potitem>, null)
    )
    .setSecondaryIngredients([<minecraft:bowl>])
    .addTool(<harvestcraft:potitem>, 0)
    .create();
}

val copyWithBottle = [
    /* drinks */
    "harvestcraft:rosepetalteaitem",
    "harvestcraft:teaitem",
    /* ingredients */
    "harvestcraft:vegemiteitem",
] as string[];

for recipe in copyWithBottle {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:potitem>, null)
    )
    .setSecondaryIngredients([<minecraft:glass_bottle>])
    .addTool(<harvestcraft:potitem>, 0)
    .create();
}

val copyWithPlate = [
    /* meals */
    "harvestcraft:szechuaneggplantitem",
    "harvestcraft:squidinkspaghettiitem",
    "harvestcraft:shrimpokrahushpuppiesitem",
] as string[];

for recipe in copyWithPlate {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:potitem>, null)
    )
    .setSecondaryIngredients([<placeableitems:item_plate>])
    .addTool(<harvestcraft:potitem>, 0)
    .create();
}