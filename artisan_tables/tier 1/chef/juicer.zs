import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyNoSecondary = [
    "harvestcraft:freshmilkitem_cropalmond",
] as string[];

for recipe in copyNoSecondary {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:juiceritem>, null)
    )
    .addTool(<harvestcraft:juiceritem>, 0)
    .create();
}

val copyWithBowl = [
    /* ingredients */
    "harvestcraft:sesameoilitem",
    "harvestcraft:oliveoilitem_x2_listallseed_listallseed",
    "harvestcraft:oliveoilitem_cropwalnut",
    "harvestcraft:oliveoilitem_croptea",
    "harvestcraft:oliveoilitem_cropolive",
    "harvestcraft:oliveoilitem_cropavocado",
    /* sauces + dressings */
    "harvestcraft:soysauceitem_itemsalt",
    "harvestcraft:saladdressingitem_itemsalt",
    "harvestcraft:mustarditem",
    "harvestcraft:mayoitem",
    "harvestcraft:ketchupitem",
] as string[];

for recipe in copyWithBowl {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:juiceritem>, null)
    )
    .setSecondaryIngredients([<minecraft:bowl>])
    .addTool(<harvestcraft:juiceritem>, 0)
    .create();
}

val copyWithBottle = [
    /* smoothies */
    "harvestcraft:strawberrysmoothieitem",
    "harvestcraft:starfruitsmoothieitem",
    "harvestcraft:raspberrysmoothieitem",
    "harvestcraft:pomegranatesmoothieitem",
    "harvestcraft:plumsmoothieitem",
    "harvestcraft:persimmonsmoothieitem",
    "harvestcraft:pearsmoothieitem",
    "harvestcraft:peachsmoothieitem",
    "harvestcraft:papayasmoothieitem",
    "harvestcraft:orangesmoothieitem",
    "harvestcraft:watermelonsmoothieitem",
    "harvestcraft:mangosmoothieitem",
    "harvestcraft:limesmoothieitem",
    "harvestcraft:lemonsmoothieitem",
    "harvestcraft:kiwismoothieitem",
    "harvestcraft:grapesmoothieitem",
    "harvestcraft:grapefruitsmoothieitem",
    "harvestcraft:gooseberrysmoothieitem",
    "harvestcraft:figsmoothieitem",
    "harvestcraft:cranberrysmoothieitem",
    "harvestcraft:coconutsmoothieitem",
    "harvestcraft:cherrysmoothieitem",
    "harvestcraft:blueberrysmoothieitem",
    "harvestcraft:blackberrysmoothieitem",
    "harvestcraft:bananasmoothieitem",
    "harvestcraft:apricotsmoothieitem",
    "harvestcraft:applesmoothieitem",
    /* shakes */
    "harvestcraft:strawberrymilkshakeitem",
    "harvestcraft:pinacoladaitemitem",
    "harvestcraft:durianmilkshakeitem",
    "harvestcraft:chocolatemilkshakeitem",
    "harvestcraft:bananamilkshakeitem",
    /* juice */
    "harvestcraft:cactusfruitjuiceitem",
    "harvestcraft:carrotjuiceitem",
    "harvestcraft:strawberryjuiceitem",
    "harvestcraft:starfruitjuiceitem",
    "harvestcraft:raspberryjuiceitem",
    "harvestcraft:pomegranatejuiceitem",
    "harvestcraft:plumjuiceitem",
    "harvestcraft:persimmonjuiceitem",
    "harvestcraft:pearjuiceitem",
    "harvestcraft:peachjuiceitem",
    "harvestcraft:papayajuiceitem",
    "harvestcraft:orangejuiceitem",
    "harvestcraft:watermelonjuiceitem",
    "harvestcraft:mangojuiceitem",
    "harvestcraft:limejuiceitem",
    "harvestcraft:lemonjuiceitem",
    "harvestcraft:kiwijuiceitem",
    "harvestcraft:grapejuiceitem",
    "harvestcraft:grapefruitjuiceitem",
    "harvestcraft:gooseberryjuiceitem",
    "harvestcraft:figjuiceitem",
    "harvestcraft:cranberryjuiceitem",
    "harvestcraft:coconutmilkitem",
    "harvestcraft:cherryjuiceitem",
    "harvestcraft:blueberryjuiceitem",
    "harvestcraft:blackberryjuiceitem",
    "harvestcraft:apricotjuiceitem",
    "harvestcraft:applejuiceitem",
    /* drinks */
    "harvestcraft:eggnogitem",
    "harvestcraft:hotchocolateitem",
    "harvestcraft:fruitpunchitem",
] as string[];

for recipe in copyWithBottle {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:juiceritem>, null)
    )
    .setSecondaryIngredients([<minecraft:glass_bottle>])
    .addTool(<harvestcraft:juiceritem>, 0)
    .create();
}