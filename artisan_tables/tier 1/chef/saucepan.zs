import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyNoSecondary = {
    /* desserts */
    "harvestcraft:candiedgingeritem": 5,
    "harvestcraft:candiedsweetpotatoesitem": 5,
    "harvestcraft:candiedwalnutsitem": 5,
    "harvestcraft:caramelitem": 5,
    "harvestcraft:cherrycoconutchocolatebaritem": 5,
    "harvestcraft:chocolatebaritem_x4": 5,
    "harvestcraft:chocolatecherryitem": 5,
    "harvestcraft:chocolatepuddingitem": 5,
    "harvestcraft:chocolatestrawberryitem": 5,
    "harvestcraft:custarditem": 5,
    "harvestcraft:gummybearsitem": 5,
    "harvestcraft:honeycombchocolatebaritem_foodhoneydrop": 5,
    "harvestcraft:peanutbuttercupitem": 5,
    "harvestcraft:snickersbaritem": 5,
    "harvestcraft:taffyitem_itemsalt": 5,
    "harvestcraft:peppermintitem": 5,
    "harvestcraft:marshmellowchicksitem": 5,
    "harvestcraft:jellybeansitem": 5,
    "harvestcraft:pralineitem": 5,
    /* meats */
    "harvestcraft:charsiuitem_foodhoneydrop": 5,
    "harvestcraft:chocolatebaconitem": 5,
    "harvestcraft:jelliedeelitem": 5,
    "harvestcraft:spicymustardparkitem_itemsalt": 5,
    "harvestcraft:sweetandsourmeatballsitem": 5,
    /* drinks */
    "harvestcraft:pumpkinspicelatteitem": 5,
    /* ingredients */
    "harvestcraft:braisedonionsitem": 5,
    "harvestcraft:butteritem_itemsalt": 5,
    /* misc */
    "harvestcraft:scrambledeggitem": 5,
} as int[string];

for key, value in copyNoSecondary {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:saucepanitem>, null)
    )
    .addTool(<harvestcraft:saucepanitem>, value)
    .create();
}

val copyWithBottle = {
    /* jelly */
    "harvestcraft:watermelonjellyitem": 5,
    "harvestcraft:strawberryjellyitem": 5,
    "harvestcraft:starfruitjellyitem": 5,
    "harvestcraft:raspberryjellyitem": 5,
    "harvestcraft:pomegranatejellyitem": 5,
    "harvestcraft:plumjellyitem": 5,
    "harvestcraft:persimmonjellyitem": 5,
    "harvestcraft:pepperjellyitem": 5,
    "harvestcraft:pearjellyitem": 5,
    "harvestcraft:peachjellyitem": 5,
    "harvestcraft:papayajellyitem": 5,
    "harvestcraft:orangejellyitem": 5,
    "harvestcraft:mangojellyitem": 5,
    "harvestcraft:limejellyitem": 5,
    "harvestcraft:lemonjellyitem": 5,
    "harvestcraft:kiwijellyitem": 5,
    "harvestcraft:grapejellyitem": 5,
    "harvestcraft:grapefruitjellyitem": 5,
    "harvestcraft:gooseberryjellyitem": 5,
    "harvestcraft:figjellyitem": 5,
    "harvestcraft:cranberryjellyitem": 5,
    "harvestcraft:cherryjellyitem": 5,
    "harvestcraft:blueberryjellyitem": 5,
    "harvestcraft:blackberryjellyitem": 5,
    "harvestcraft:apricotjellyitem": 5,
    "harvestcraft:applejellyitem": 5,
    /* drinks */
    "harvestcraft:hotcocoaitem": 5,
    /* ingredients */
    "harvestcraft:bbqsauceitem": 5,
    "harvestcraft:hoisinsauceitem_x9": 5,
    "harvestcraft:oystersauceitem_itemsalt": 5,
    "harvestcraft:sweetandsoursauceitem_x5_foodhoneydrop": 5,
    "harvestcraft:nutellaitem": 5,
} as int[string];

for key, value in copyWithBottle {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:saucepanitem>, null)
    )
    .setSecondaryIngredients([<minecraft:glass_bottle>])
    .addTool(<harvestcraft:saucepanitem>, value)
    .create();
}

val copyWithBowl = {
    /* desserts */
    "harvestcraft:ricepuddingitem": 5,
    "harvestcraft:poachedpearitem": 5,
    /* soup */
    "harvestcraft:hotandsoursoupitem": 5,
    "harvestcraft:vindalooitem": 5,
    /* meats */
    "harvestcraft:cashewchickenitem": 5,
    "harvestcraft:sweetandsourchickenitem": 5,
    "harvestcraft:pitepaltitem_itemsalt": 5,
    "harvestcraft:paneertikkamasalaitem": 5,
    "harvestcraft:orangechickenitem": 5,
    "harvestcraft:kungpaochickenitem": 5,
    /* veggies */
    "harvestcraft:creamedcornitem": 5,
    "harvestcraft:herbbutterparsnipsitem": 5,
    "harvestcraft:mashedsweetpotatoesitem": 5,
    "harvestcraft:spicygreensitem_cropspinach": 5,
    "harvestcraft:spicygreensitem_croppeas": 5,
    "harvestcraft:spicygreensitem_croplettuce": 5,
    "harvestcraft:spicygreensitem_cropbroccoli": 5,
    "harvestcraft:spicygreensitem_cropasparagus": 5,
    /* ingredients */
    "harvestcraft:curryitem_itemsalt": 5,
    "harvestcraft:rouxitem": 5,
} as int[string];

for key, value in copyWithBowl {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:saucepanitem>, null)
    )
    .setSecondaryIngredients([<minecraft:bowl>])
    .addTool(<harvestcraft:saucepanitem>, value)
    .create();
}

val copyWithPlate = {
    /* meats */
    "harvestcraft:honeyglazedhamitem_foodhoneydrop": 5,
    "harvestcraft:sauerbratenitem": 5,
    "harvestcraft:gingerchickenitem_foodhoneydrop": 5,
    /* pasta */
    "harvestcraft:spaghettiitem": 5,
    /* veggies */
    "harvestcraft:glazedcarrotsitem": 5,
    "harvestcraft:honeyglazedcarrotsitem_foodhoneydrop": 5,
} as int[string];

for key, value in copyWithPlate {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:saucepanitem>, null)
    )
    .setSecondaryIngredients([<placeableitems:item_plate>])
    .addTool(<harvestcraft:saucepanitem>, value)
    .create();
}