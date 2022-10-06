import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyNoSecondary = {
    /* desserts */
    "harvestcraft:applefritteritem": 5,
    "harvestcraft:chilidonutitem": 5,
    "harvestcraft:donutitem": 5,
    "harvestcraft:turkishdelightitem": 5,
    "harvestcraft:marshmellowsitem": 5,
    "harvestcraft:festivalbreaditem": 5,
    /* snacks */
    "harvestcraft:cheesepuffsitem": 5,
    "harvestcraft:chikorollitem": 5,
    "harvestcraft:cornchipsitem_itemsalt": 5,
    "harvestcraft:corndogitem": 5,
    "harvestcraft:eggrollitem": 5,
    "harvestcraft:hotdogitem": 5,
    "harvestcraft:mozzerellasticksitem": 5,
    "harvestcraft:pambitsboxitem": 5,
    "harvestcraft:potatochipsitem": 5,
    /* drinks */
    "harvestcraft:cherrysodaitem": 5,
    "harvestcraft:colasodaitem": 5,
    "harvestcraft:energydrinkitem": 5,
    "harvestcraft:gingeraleitem": 5,
    "harvestcraft:grapesodaitem": 5,
    "harvestcraft:grapefruitsodaitem": 5,
    "harvestcraft:lemonlimesodaitem": 5,
    "harvestcraft:orangesodaitem": 5,
    "harvestcraft:strawberrysodaitem": 5,
    "harvestcraft:vegetablesoupitem": 5,
    "harvestcraft:sweetteaitem": 5,
    "harvestcraft:rootbeeritem": 5,
    /* meals */
    "harvestcraft:cornedbeefitem": 5,
    "harvestcraft:friedchickenitem": 5,
    "harvestcraft:haggisitem": 5,
    "harvestcraft:meatfeastpizzaitem": 5,
    "harvestcraft:monsterfrieddumplingsitem": 5,
    "harvestcraft:potroastitem": 5,
    "harvestcraft:takoyakiitem": 5,
    /* soup */
    "harvestcraft:asparagussoupitem": 5,
    "harvestcraft:blackpaellaitem": 5,
    "harvestcraft:blazingsoupitem": 5,
    "harvestcraft:cactussoupitem": 5,
    "harvestcraft:carrotsopuitem": 5,
    "harvestcraft:celerysoupitem": 5,
    "harvestcraft:chickennoodlesoupitem": 5,
    "harvestcraft:chickengumboitem": 5,
    "harvestcraft:chickenpaellaitem": 5,
    "harvestcraft:creamedbroccolisoupitem": 5,
    "harvestcraft:creamofavocadosoupitem": 5,
    "harvestcraft:cucumbersoupitem": 5,
    "harvestcraft:gardensoupitem": 5,
    "harvestcraft:jambalayaitem": 5,
    "harvestcraft:leekbaconsoupitem": 5,
    "harvestcraft:lambbarleysoupitem": 5,
    "harvestcraft:meatystewitem": 5,
    "harvestcraft:mobsoupitem": 5,
    "harvestcraft:oldworldveggiesoupitem": 5,
    "harvestcraft:onionsoupitem": 5,
    "harvestcraft:peanutsoupitem": 5,
    "harvestcraft:phoitem": 5,
    "harvestcraft:pizzasoupitem": 5,
    "harvestcraft:potatoandleeksoupitem": 5,
    "harvestcraft:potatosoupitem_itemsalt": 5,
    "harvestcraft:pumpkinsoupitem": 5,
    "harvestcraft:ramenitem": 5,
    "harvestcraft:ricesoupitem": 5,
    "harvestcraft:seedsoupitem": 5,
    "harvestcraft:splitpeasoupitem": 5,
    "harvestcraft:spidereyesoupitem": 5,
    "harvestcraft:tomatosoupitem": 5,
    "harvestcraft:turnipsoupitem": 5,
    "harvestcraft:wontonsoupitem": 5,
    /* veggies */
    "harvestcraft:friedonionsitem": 5,
    "harvestcraft:marinatedcucumbersitem": 5,
    "harvestcraft:picklesitem_itemsalt": 5,
    "harvestcraft:pickledonionitem_itemsalt": 5,
    "harvestcraft:pickledbeetsitem_itemsalt": 5,
    "harvestcraft:gerkinitem_itemsalt": 5,
    "harvestcraft:friedgreentomatoesitem": 5,
    /* ingredients */
    "harvestcraft:applesauceitem": 5,
    "harvestcraft:batteredsausageitem": 5,
    "harvestcraft:cheeseitem_itemsalt": 5,
    "harvestcraft:mushroomketchupitem_x5": 5,
    "harvestcraft:mangochutneyitem": 5,
    "harvestcraft:plainyogurtitem_x4 - copy": 5,
    "harvestcraft:saltitem": 5,
    "harvestcraft:sesameballitem": 5,
    "harvestcraft:vinegaritem": 5,
    "harvestcraft:sweetpickleitem": 5,
    "harvestcraft:sugar_foodhoneydrop": 5,
    "harvestcraft:sugar_agave": 5,
    /* misc */
    "harvestcraft:beeswaxitem_x8_cropcandle": 5,
    "harvestcraft:beeswaxitem_cropcandle": 5,
    "harvestcraft:boiledeggitem": 5,
    "harvestcraft:paneeritem_x5": 5,
    "harvestcraft:pemmicanitem_one": 5,
    "harvestcraft:pemmicanitem_two": 5,
    "harvestcraft:shrimptemperaitem": 5,
    "harvestcraft:zeppoleitem": 5,
} as int[string];

for key, value in copyNoSecondary {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:potitem>, null)
    )
    .addTool(<harvestcraft:potitem>, value)
    .create();
}

val copyWithBowl = {
    /* soup */
    "harvestcraft:bamboosteamedriceitem": 5,
    "harvestcraft:beetsoupitem": 5,
    "harvestcraft:cassouletitem": 5,
    "harvestcraft:chiliitem_croponion": 5,
    "harvestcraft:chiliitem_cropchilipepper": 5,
    "harvestcraft:chiliitem_cropbellpepper": 5,
    "harvestcraft:clamchowderitem_one": 5,
    "harvestcraft:clamchowderitem_two": 5,
    "harvestcraft:chorusfruitsoupitem": 5,
    "harvestcraft:guisoitem": 5,
    "harvestcraft:gumboitem": 5,
    "harvestcraft:stockitem_x3_minecraft_bone": 5,
    "harvestcraft:stockitem_x3_listallveggie": 5,
    "harvestcraft:stockitem_x3_listallmeatraw": 5,
    "harvestcraft:peaandhamsoupitem": 5,
    "harvestcraft:misosoupitem": 5,
    "harvestcraft:minerstewitem": 5,
    "harvestcraft:minecraft_rabbitstew": 5,
    "harvestcraft:minecraft_mushroomstew": 5,
    "harvestcraft:broccolimacitem": 5,
    /* veggies */
    "harvestcraft:steamedpeasitem_itemsalt": 5,
    "harvestcraft:steamedspinachitem": 5,
    /* meals */
    "harvestcraft:dahlitem": 5,
    "harvestcraft:dimsumitem": 5,
    "harvestcraft:succotashitem": 5,
    /* misc */
    "harvestcraft:bakedbeansitem": 5,
    "harvestcraft:beansandriceitem_cropchilipepper": 5,
    "harvestcraft:beansandriceitem_cropbellpepper": 5,
    "harvestcraft:beansandriceitem_croponion": 5,
    "harvestcraft:chickencurryitem": 5,
    "harvestcraft:cranberrysauceitem": 5,
    "harvestcraft:glisteningsaladitem": 5,
    "harvestcraft:gritsitem": 5,
} as int[string];

for key, value in copyWithBowl {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:potitem>, null)
    )
    .setSecondaryIngredients([<minecraft:bowl>])
    .addTool(<harvestcraft:potitem>, value)
    .create();
}

val copyWithBottle = {
    "harvestcraft:kimchiitem_itemsalt": 5,
    /* drinks */
    "harvestcraft:applecideritem": 5,
    "harvestcraft:bubbleteaitem": 5,
    "harvestcraft:bubblywateritem": 5,
    "harvestcraft:coffeeitem": 5,
    "harvestcraft:coconutcreamitem": 5,
    "harvestcraft:dandelionteaitem": 5,
    "harvestcraft:earlgreyteaitem": 5,
    "harvestcraft:greenteaitem": 5,
    "harvestcraft:rosepetalteaitem": 5,
    "harvestcraft:teaitem": 5,
    /* ingredients */
    "harvestcraft:hotsauceitem_x6_itemsalt": 5,
    "harvestcraft:vegemiteitem": 5,
} as int[string];

for key, value in copyWithBottle {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:potitem>, null)
    )
    .setSecondaryIngredients([<minecraft:glass_bottle>])
    .addTool(<harvestcraft:potitem>, value)
    .create();
}

val copyWithPlate = {
    "harvestcraft:cantonesegreensitem_cropcabbage": 5,
    "harvestcraft:cantonesegreensitem_cropbroccoli": 5,
    "harvestcraft:hushpuppiesitem": 5,
    "harvestcraft:kohlundpinkelitem": 5,
    "harvestcraft:szechuaneggplantitem": 5,
    "harvestcraft:shrimpokrahushpuppiesitem": 5,
    "harvestcraft:chimichangaitem": 5,
    /* pasta */
    "harvestcraft:porklomeinitem": 5,
    "harvestcraft:squidinkspaghettiitem": 5,
} as int[string];

for key, value in copyWithPlate {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:potitem>, null)
    )
    .setSecondaryIngredients([<placeableitems:item_plate>])
    .addTool(<harvestcraft:potitem>, value)
    .create();
}