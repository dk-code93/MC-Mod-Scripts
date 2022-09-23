import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyNoSecondary = [
    /* desserts */
    "harvestcraft:applefritteritem",
    "harvestcraft:chilidonutitem",
    "harvestcraft:donutitem",
    "harvestcraft:turkishdelightitem",
    "harvestcraft:marshmellowsitem",
    "harvestcraft:festivalbreaditem",
    /* snacks */
    "harvestcraft:cheesepuffsitem",
    "harvestcraft:chikorollitem",
    "harvestcraft:cornchipsitem_itemsalt",
    "harvestcraft:corndogitem",
    "harvestcraft:eggrollitem",
    "harvestcraft:hotdogitem",
    "harvestcraft:mozzerellasticksitem",
    "harvestcraft:pambitsboxitem",
    "harvestcraft:potatochipsitem",
    /* drinks */
    "harvestcraft:cherrysodaitem",
    "harvestcraft:colasodaitem",
    "harvestcraft:energydrinkitem",
    "harvestcraft:gingeraleitem",
    "harvestcraft:grapesodaitem",
    "harvestcraft:grapefruitsodaitem",
    "harvestcraft:lemonlimesodaitem",
    "harvestcraft:orangesodaitem",
    "harvestcraft:strawberrysodaitem",
    "harvestcraft:vegetablesoupitem",
    "harvestcraft:sweetteaitem",
    "harvestcraft:rootbeeritem",
    /* meals */
    "harvestcraft:cornedbeefitem",
    "harvestcraft:friedchickenitem",
    "harvestcraft:haggisitem",
    "harvestcraft:meatfeastpizzaitem",
    "harvestcraft:monsterfrieddumplingsitem",
    "harvestcraft:potroastitem",
    "harvestcraft:takoyakiitem",
    /* soup */
    "harvestcraft:asparagussoupitem",
    "harvestcraft:blackpaellaitem",
    "harvestcraft:blazingsoupitem",
    "harvestcraft:cactussoupitem",
    "harvestcraft:carrotsopuitem",
    "harvestcraft:celerysoupitem",
    "harvestcraft:chickennoodlesoupitem",
    "harvestcraft:chickengumboitem",
    "harvestcraft:chickenpaellaitem",
    "harvestcraft:creamedbroccolisoupitem",
    "harvestcraft:creamofavocadosoupitem",
    "harvestcraft:cucumbersoupitem",
    "harvestcraft:gardensoupitem",
    "harvestcraft:jambalayaitem",
    "harvestcraft:leekbaconsoupitem",
    "harvestcraft:lambbarleysoupitem",
    "harvestcraft:meatystewitem",
    "harvestcraft:mobsoupitem",
    "harvestcraft:oldworldveggiesoupitem",
    "harvestcraft:onionsoupitem",
    "harvestcraft:peanutsoupitem",
    "harvestcraft:phoitem",
    "harvestcraft:pizzasoupitem",
    "harvestcraft:potatoandleeksoupitem",
    "harvestcraft:potatosoupitem_itemsalt",
    "harvestcraft:pumpkinsoupitem",
    "harvestcraft:ramenitem",
    "harvestcraft:ricesoupitem",
    "harvestcraft:seedsoupitem",
    "harvestcraft:splitpeasoupitem",
    "harvestcraft:spidereyesoupitem",
    "harvestcraft:tomatosoupitem",
    "harvestcraft:turnipsoupitem",
    "harvestcraft:wontonsoupitem",
    /* veggies */
    "harvestcraft:friedonionsitem",
    "harvestcraft:marinatedcucumbersitem",
    "harvestcraft:picklesitem_itemsalt",
    "harvestcraft:pickledonionitem_itemsalt",
    "harvestcraft:pickledbeetsitem_itemsalt",
    "harvestcraft:gerkinitem_itemsalt",
    "harvestcraft:friedgreentomatoesitem",
    /* ingredients */
    "harvestcraft:applesauceitem",
    "harvestcraft:batteredsausageitem",
    "harvestcraft:cheeseitem_itemsalt",
    "harvestcraft:mushroomketchupitem_x5",
    "harvestcraft:mangochutneyitem",
    "harvestcraft:plainyogurtitem_x4 - copy",
    "harvestcraft:saltitem",
    "harvestcraft:sesameballitem",
    "harvestcraft:vinegaritem",
    "harvestcraft:sweetpickleitem",
    "harvestcraft:sugar_foodhoneydrop",
    "harvestcraft:sugar_agave",
    /* misc */
    "harvestcraft:beeswaxitem_x8_cropcandle",
    "harvestcraft:beeswaxitem_cropcandle",
    "harvestcraft:boiledeggitem",
    "harvestcraft:paneeritem_x5",
    "harvestcraft:pemmicanitem_one",
    "harvestcraft:pemmicanitem_two",
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
    "harvestcraft:bamboosteamedriceitem",
    "harvestcraft:beetsoupitem",
    "harvestcraft:cassouletitem",
    "harvestcraft:chiliitem_croponion",
    "harvestcraft:chiliitem_cropchilipepper",
    "harvestcraft:chiliitem_cropbellpepper",
    "harvestcraft:clamchowderitem_one",
    "harvestcraft:clamchowderitem_two",
    "harvestcraft:chorusfruitsoupitem",
    "harvestcraft:guisoitem",
    "harvestcraft:gumboitem",
    "harvestcraft:stockitem_x3_minecraft_bone",
    "harvestcraft:stockitem_x3_listallveggie",
    "harvestcraft:stockitem_x3_listallmeatraw",
    "harvestcraft:peaandhamsoupitem",
    "harvestcraft:misosoupitem",
    "harvestcraft:minerstewitem",
    "harvestcraft:minecraft_rabbitstew",
    "harvestcraft:minecraft_mushroomstew",
    "harvestcraft:broccolimacitem",
    /* veggies */
    "harvestcraft:steamedpeasitem_itemsalt",
    "harvestcraft:steamedspinachitem",
    /* meals */
    "harvestcraft:dahlitem",
    "harvestcraft:dimsumitem",
    "harvestcraft:succotashitem",
    /* misc */
    "harvestcraft:bakedbeansitem",
    "harvestcraft:beansandriceitem_cropchilipepper",
    "harvestcraft:beansandriceitem_cropbellpepper",
    "harvestcraft:beansandriceitem_croponion",
    "harvestcraft:chickencurryitem",
    "harvestcraft:cranberrysauceitem",
    "harvestcraft:glisteningsaladitem",
    "harvestcraft:gritsitem",
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
    "harvestcraft:kimchiitem_itemsalt",
    /* drinks */
    "harvestcraft:applecideritem",
    "harvestcraft:bubbleteaitem",
    "harvestcraft:bubblywateritem",
    "harvestcraft:coffeeitem",
    "harvestcraft:coconutcreamitem",
    "harvestcraft:dandelionteaitem",
    "harvestcraft:earlgreyteaitem",
    "harvestcraft:greenteaitem",
    "harvestcraft:rosepetalteaitem",
    "harvestcraft:teaitem",
    /* ingredients */
    "harvestcraft:hotsauceitem_x6_itemsalt",
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
    "harvestcraft:cantonesegreensitem_cropcabbage",
    "harvestcraft:cantonesegreensitem_cropbroccoli",
    "harvestcraft:hushpuppiesitem",
    "harvestcraft:kohlundpinkelitem",
    "harvestcraft:szechuaneggplantitem",
    "harvestcraft:shrimpokrahushpuppiesitem",
    "harvestcraft:chimichangaitem",
    /* pasta */
    "harvestcraft:porklomeinitem",
    "harvestcraft:squidinkspaghettiitem",
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