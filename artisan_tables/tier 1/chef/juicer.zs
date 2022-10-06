import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyNoSecondary = {
    "harvestcraft:freshmilkitem_cropalmond": 5,
} as int[string];

for key, value in copyNoSecondary {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:juiceritem>, null)
    )
    .addTool(<harvestcraft:juiceritem>, value)
    .create();
}

val copyWithBowl = {
    /* ingredients */
    "harvestcraft:sesameoilitem": 5,
    "harvestcraft:oliveoilitem_x2_listallseed_listallseed": 5,
    "harvestcraft:oliveoilitem_cropwalnut": 5,
    "harvestcraft:oliveoilitem_croptea": 5,
    "harvestcraft:oliveoilitem_cropolive": 5,
    "harvestcraft:oliveoilitem_cropavocado": 5,
    /* sauces + dressings */
    "harvestcraft:soysauceitem_itemsalt": 5,
    "harvestcraft:saladdressingitem_itemsalt": 5,
    "harvestcraft:mustarditem": 5,
    "harvestcraft:mayoitem": 5,
    "harvestcraft:ketchupitem": 5,
} as int[string];

for key, value in copyWithBowl {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:juiceritem>, null)
    )
    .setSecondaryIngredients([<minecraft:bowl>])
    .addTool(<harvestcraft:juiceritem>, value)
    .create();
}

val copyWithBottle = {
    /* smoothies */
    "harvestcraft:strawberrysmoothieitem": 5,
    "harvestcraft:starfruitsmoothieitem": 5,
    "harvestcraft:raspberrysmoothieitem": 5,
    "harvestcraft:pomegranatesmoothieitem": 5,
    "harvestcraft:plumsmoothieitem": 5,
    "harvestcraft:persimmonsmoothieitem": 5,
    "harvestcraft:pearsmoothieitem": 5,
    "harvestcraft:peachsmoothieitem": 5,
    "harvestcraft:papayasmoothieitem": 5,
    "harvestcraft:orangesmoothieitem": 5,
    "harvestcraft:watermelonsmoothieitem": 5,
    "harvestcraft:mangosmoothieitem": 5,
    "harvestcraft:limesmoothieitem": 5,
    "harvestcraft:lemonsmoothieitem": 5,
    "harvestcraft:kiwismoothieitem": 5,
    "harvestcraft:grapesmoothieitem": 5,
    "harvestcraft:grapefruitsmoothieitem": 5,
    "harvestcraft:gooseberrysmoothieitem": 5,
    "harvestcraft:figsmoothieitem": 5,
    "harvestcraft:cranberrysmoothieitem": 5,
    "harvestcraft:coconutsmoothieitem": 5,
    "harvestcraft:cherrysmoothieitem": 5,
    "harvestcraft:blueberrysmoothieitem": 5,
    "harvestcraft:blackberrysmoothieitem": 5,
    "harvestcraft:bananasmoothieitem": 5,
    "harvestcraft:apricotsmoothieitem": 5,
    "harvestcraft:applesmoothieitem": 5,
    /* shakes */
    "harvestcraft:strawberrymilkshakeitem": 5,
    "harvestcraft:pinacoladaitemitem": 5,
    "harvestcraft:durianmilkshakeitem": 5,
    "harvestcraft:chocolatemilkshakeitem": 5,
    "harvestcraft:bananamilkshakeitem": 5,
    /* juice */
    "harvestcraft:cactusfruitjuiceitem": 5,
    "harvestcraft:carrotjuiceitem": 5,
    "harvestcraft:strawberryjuiceitem": 5,
    "harvestcraft:starfruitjuiceitem": 5,
    "harvestcraft:raspberryjuiceitem": 5,
    "harvestcraft:pomegranatejuiceitem": 5,
    "harvestcraft:plumjuiceitem": 5,
    "harvestcraft:persimmonjuiceitem": 5,
    "harvestcraft:pearjuiceitem": 5,
    "harvestcraft:peachjuiceitem": 5,
    "harvestcraft:papayajuiceitem": 5,
    "harvestcraft:orangejuiceitem": 5,
    "harvestcraft:watermelonjuiceitem": 5,
    "harvestcraft:mangojuiceitem": 5,
    "harvestcraft:limejuiceitem": 5,
    "harvestcraft:lemonjuiceitem": 5,
    "harvestcraft:kiwijuiceitem": 5,
    "harvestcraft:grapejuiceitem": 5,
    "harvestcraft:grapefruitjuiceitem": 5,
    "harvestcraft:gooseberryjuiceitem": 5,
    "harvestcraft:figjuiceitem": 5,
    "harvestcraft:cranberryjuiceitem": 5,
    "harvestcraft:coconutmilkitem": 5,
    "harvestcraft:cherryjuiceitem": 5,
    "harvestcraft:blueberryjuiceitem": 5,
    "harvestcraft:blackberryjuiceitem": 5,
    "harvestcraft:apricotjuiceitem": 5,
    "harvestcraft:applejuiceitem": 5,
    /* drinks */
    "harvestcraft:eggnogitem": 5,
    "harvestcraft:hotchocolateitem": 5,
    "harvestcraft:fruitpunchitem": 5,
} as int[string];

for key, value in copyWithBottle {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:juiceritem>, null)
    )
    .setSecondaryIngredients([<minecraft:glass_bottle>])
    .addTool(<harvestcraft:juiceritem>, value)
    .create();
}