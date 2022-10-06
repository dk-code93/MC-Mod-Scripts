import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyMixingBowl = {
    /* desserts */
    "harvestcraft:vanillaicecreamitem": 0,
    "harvestcraft:strawberryicecreamitem": 0,
    "harvestcraft:pistachioicecreamitem": 0,
    "harvestcraft:mochaicecreamitem": 0,
    "harvestcraft:cherryicecreamitem": 0,
    "harvestcraft:mochidessertitem": 0,
    "harvestcraft:mintchocolatechipicecreamitem": 0,
    "harvestcraft:chocolateicecreamitem": 0,
    "harvestcraft:caramelicecreamitem": 0,
    "harvestcraft:icecreamitem_itemsalt": 1,
    "harvestcraft:meringueitem": 0,
    "harvestcraft:cottoncandyitem": 0,
    "harvestcraft:chocolateorangeitem": 0,
    "harvestcraft:chilichocolateitem": 0,
    "harvestcraft:berrymeringuenestitem": 0,
    "harvestcraft:bananasplititem": 0,
    /* snacks */
    "harvestcraft:bbqpotatochipsitem": 0,
    "harvestcraft:broccolindipitem": 0,
    "harvestcraft:chipsandsalsaitem": 0,
    "harvestcraft:deluxenachoesitem_foodtortillachips_foodsalsa": 0,
    "harvestcraft:deluxenachoesitem_foodchipsandsalsa": 0,
    "harvestcraft:poutineitem": 0,
    "harvestcraft:cheddarandsourcreampotatochipsitem": 0,
    "harvestcraft:sourcreamandonionpotatochipsitem": 0,
    "harvestcraft:springrollitem": 0,
    "harvestcraft:slimegummiesitem": 0,
    /* breakfast */
    "harvestcraft:chocovoxelsitem": 1,
    "harvestcraft:cornflakesitem": 1,
    "harvestcraft:crispyricepuffcerealitem": 1,
    "harvestcraft:cinnamonappleoatmealitem": 0,
    "harvestcraft:peachesandcreamoatmealitem": 0,
    "harvestcraft:mapleoatmealitem": 0,
    /* salads */
    "harvestcraft:coleslawitem": 1,
    "harvestcraft:peasandceleryitem": 1,
    "harvestcraft:beetsaladitem": 1,
    "harvestcraft:summerradishsaladitem": 1,
    "harvestcraft:ceasarsaladitem": 1,
    "harvestcraft:dandelionsaladitem": 1,
    "harvestcraft:fiestacornsaladitem": 1,
    "harvestcraft:threebeansaladitem": 1,
    "harvestcraft:crayfishsaladitem": 1,
    /* drinks */
    "harvestcraft:cherryslushieitem": 0,
    "harvestcraft:ironbrewitem": 0,
    "harvestcraft:shrimpcocktailitem": 0,
    "harvestcraft:seedenergygelitem": 0,
    "harvestcraft:rootbeerfloatitem": 0,
    "harvestcraft:raspberrymilkshakeitem": 0,
    /* meals */
    "harvestcraft:spagettiandmeatballsitem": 0,
    "harvestcraft:akutuqitem": 1,
    /* pasta */
    "harvestcraft:pastaitem_x5": 0,
    "harvestcraft:pastagardeniaitem": 1,
    /* meats */
    "harvestcraft:creeperwingsitem": 0,
    "harvestcraft:gourmetvenisonpattyitem_itemsalt": 0,
    "harvestcraft:gourmetporkpattyitem_itemsalt": 0,
    "harvestcraft:gourmetmuttonpattyitem_itemsalt": 0,
    "harvestcraft:gourmetbeffpattyitem_itemsalt": 0,
    "harvestcraft:hotwingsitem": 0,
    "harvestcraft:pinkelitem": 0,
    "harvestcraft:netherwingsitem": 0,
    /* ingredients */
    "harvestcraft:batteritem": 0,
    "harvestcraft:doughitem_itemsalt": 0,
    "harvestcraft:heavycreamitem": 1,
    "harvestcraft:mashedpotatoesitem_itemsalt": 0,
    "harvestcraft:salsaitem": 1,
    /* misc */
    "harvestcraft:deviledeggitem": 0,
    "harvestcraft:manjuuitem": 0,
    "harvestcraft:museliitem": 1,
    "harvestcraft:onigiriitem": 0,
} as int[string];

for key, value in copyMixingBowl {
    if (value == 1) {
        RecipeBuilder.get("chef")
         .setCopy(
            Copy.byName(key)
            .replaceInput(<harvestcraft:mixingbowlitem>, null)
        )
        .setSecondaryIngredients([<minecraft:bowl>])
        .addTool(<harvestcraft:mixingbowlitem>, 0)
        .create();
    } else {
        RecipeBuilder.get("chef")
         .setCopy(
            Copy.byName(key)
            .replaceInput(<harvestcraft:mixingbowlitem>, null)
        )
        .addTool(<harvestcraft:mixingbowlitem>, 0)
        .create();
    }
}