import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyNoSecondary = [
    /* desserts */
    "harvestcraft:candiedgingeritem",
    "harvestcraft:candiedsweetpotatoesitem",
    "harvestcraft:candiedwalnutsitem",
    "harvestcraft:caramelitem",
    "harvestcraft:cherrycoconutchocolatebaritem",
    "harvestcraft:chocolatebaritem_x4",
    "harvestcraft:chocolatecherryitem",
    "harvestcraft:chocolatepuddingitem",
    "harvestcraft:chocolatestrawberryitem",
    "harvestcraft:custarditem",
    "harvestcraft:gummybearsitem",
    "harvestcraft:honeycombchocolatebaritem_foodhoneydrop",
    "harvestcraft:peanutbuttercupitem",
    "harvestcraft:snickersbaritem",
    "harvestcraft:taffyitem_itemsalt",
    "harvestcraft:peppermintitem",
    "harvestcraft:marshmellowchicksitem",
    "harvestcraft:jellybeansitem",
    "harvestcraft:pralineitem",
    /* meats */
    "harvestcraft:charsiuitem_foodhoneydrop",
    "harvestcraft:chocolatebaconitem",
    "harvestcraft:jelliedeelitem",
    "harvestcraft:spicymustardparkitem_itemsalt",
    "harvestcraft:sweetandsourmeatballsitem",
    /* drinks */
    "harvestcraft:pumpkinspicelatteitem",
    /* ingredients */
    "harvestcraft:braisedonionsitem",
    "harvestcraft:butteritem_itemsalt",
    /* misc */
    "harvestcraft:scrambledeggitem",
] as string[];

for recipe in copyNoSecondary {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:saucepanitem>, null)
    )
    .addTool(<harvestcraft:saucepanitem>, 0)
    .create();
}

val copyWithBottle = [
    /* jelly */
    "harvestcraft:watermelonjellyitem",
    "harvestcraft:strawberryjellyitem",
    "harvestcraft:starfruitjellyitem",
    "harvestcraft:raspberryjellyitem",
    "harvestcraft:pomegranatejellyitem",
    "harvestcraft:plumjellyitem",
    "harvestcraft:persimmonjellyitem",
    "harvestcraft:pepperjellyitem",
    "harvestcraft:pearjellyitem",
    "harvestcraft:peachjellyitem",
    "harvestcraft:papayajellyitem",
    "harvestcraft:orangejellyitem",
    "harvestcraft:mangojellyitem",
    "harvestcraft:limejellyitem",
    "harvestcraft:lemonjellyitem",
    "harvestcraft:kiwijellyitem",
    "harvestcraft:grapejellyitem",
    "harvestcraft:grapefruitjellyitem",
    "harvestcraft:gooseberryjellyitem",
    "harvestcraft:figjellyitem",
    "harvestcraft:cranberryjellyitem",
    "harvestcraft:cherryjellyitem",
    "harvestcraft:blueberryjellyitem",
    "harvestcraft:blackberryjellyitem",
    "harvestcraft:apricotjellyitem",
    "harvestcraft:applejellyitem",
    /* drinks */
    "harvestcraft:hotcocoaitem",
    /* ingredients */
    "harvestcraft:bbqsauceitem",
    "harvestcraft:hoisinsauceitem_x9",
    "harvestcraft:oystersauceitem_itemsalt",
    "harvestcraft:sweetandsoursauceitem_x5_foodhoneydrop",
    "harvestcraft:nutellaitem",
] as string[];

for recipe in copyWithBottle {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:saucepanitem>, null)
    )
    .setSecondaryIngredients([<minecraft:glass_bottle>])
    .addTool(<harvestcraft:saucepanitem>, 0)
    .create();
}

val copyWithBowl = [
    /* desserts */
    "harvestcraft:ricepuddingitem",
    "harvestcraft:poachedpearitem",
    /* soup */
    "harvestcraft:hotandsoursoupitem",
    "harvestcraft:vindalooitem",
    /* meats */
    "harvestcraft:cashewchickenitem",
    "harvestcraft:sweetandsourchickenitem",
    "harvestcraft:pitepaltitem_itemsalt",
    "harvestcraft:paneertikkamasalaitem",
    "harvestcraft:orangechickenitem",
    "harvestcraft:kungpaochickenitem",
    /* veggies */
    "harvestcraft:creamedcornitem",
    "harvestcraft:herbbutterparsnipsitem",
    "harvestcraft:mashedsweetpotatoesitem",
    "harvestcraft:spicygreensitem_cropspinach",
    "harvestcraft:spicygreensitem_croppeas",
    "harvestcraft:spicygreensitem_croplettuce",
    "harvestcraft:spicygreensitem_cropbroccoli",
    "harvestcraft:spicygreensitem_cropasparagus",
    /* ingredients */
    "harvestcraft:curryitem_itemsalt",
    "harvestcraft:rouxitem",
] as string[];

for recipe in copyWithBowl {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:saucepanitem>, null)
    )
    .setSecondaryIngredients([<minecraft:bowl>])
    .addTool(<harvestcraft:saucepanitem>, 0)
    .create();
}

val copyWithPlate = [
    /* meats */
    "harvestcraft:honeyglazedhamitem_foodhoneydrop",
    "harvestcraft:sauerbratenitem",
    "harvestcraft:gingerchickenitem_foodhoneydrop",
    /* pasta */
    "harvestcraft:spaghettiitem",
    /* veggies */
    "harvestcraft:glazedcarrotsitem",
    "harvestcraft:honeyglazedcarrotsitem_foodhoneydrop",
] as string[];

for recipe in copyWithPlate {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:saucepanitem>, null)
    )
    .setSecondaryIngredients([<placeableitems:item_plate>])
    .addTool(<harvestcraft:saucepanitem>, 0)
    .create();
}