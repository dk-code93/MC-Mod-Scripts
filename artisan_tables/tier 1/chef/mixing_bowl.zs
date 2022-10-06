import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyNoSecondary = {
    /* desserts */
    "harvestcraft:vanillaicecreamitem": 5,
    "harvestcraft:strawberryicecreamitem": 5,
    "harvestcraft:pistachioicecreamitem": 5,
    "harvestcraft:mochaicecreamitem": 5,
    "harvestcraft:cherryicecreamitem": 5,
    "harvestcraft:mochidessertitem": 5,
    "harvestcraft:mintchocolatechipicecreamitem": 5,
    "harvestcraft:chocolateicecreamitem": 5,
    "harvestcraft:caramelicecreamitem": 5,
    "harvestcraft:meringueitem": 5,
    "harvestcraft:cottoncandyitem": 5,
    "harvestcraft:chocolateorangeitem": 5,
    "harvestcraft:chilichocolateitem": 5,
    "harvestcraft:berrymeringuenestitem": 5,
    "harvestcraft:bananasplititem": 5,
    /* snacks */
    "harvestcraft:bbqpotatochipsitem": 5,
    "harvestcraft:broccolindipitem": 5,
    "harvestcraft:chipsandsalsaitem": 5,
    "harvestcraft:deluxenachoesitem_foodtortillachips_foodsalsa": 5,
    "harvestcraft:deluxenachoesitem_foodchipsandsalsa": 5,
    "harvestcraft:poutineitem": 5,
    "harvestcraft:cheddarandsourcreampotatochipsitem": 5,
    "harvestcraft:sourcreamandonionpotatochipsitem": 5,
    "harvestcraft:springrollitem": 5,
    "harvestcraft:slimegummiesitem": 5,
    /* breakfast */
    "harvestcraft:cinnamonappleoatmealitem": 5,
    "harvestcraft:peachesandcreamoatmealitem": 5,
    "harvestcraft:mapleoatmealitem": 5,
    /* drinks */
    "harvestcraft:cherryslushieitem": 5,
    "harvestcraft:ironbrewitem": 5,
    "harvestcraft:shrimpcocktailitem": 5,
    "harvestcraft:seedenergygelitem": 5,
    "harvestcraft:rootbeerfloatitem": 5,
    "harvestcraft:raspberrymilkshakeitem": 5,
    /* meals */
    "harvestcraft:spagettiandmeatballsitem": 5,
    /* pasta */
    "harvestcraft:pastaitem_x5": 5,
    /* meats */
    "harvestcraft:creeperwingsitem": 5,
    "harvestcraft:gourmetvenisonpattyitem_itemsalt": 5,
    "harvestcraft:gourmetporkpattyitem_itemsalt": 5,
    "harvestcraft:gourmetmuttonpattyitem_itemsalt": 5,
    "harvestcraft:gourmetbeffpattyitem_itemsalt": 5,
    "harvestcraft:hotwingsitem": 5,
    "harvestcraft:pinkelitem": 5,
    "harvestcraft:netherwingsitem": 5,
    /* ingredients */
    "harvestcraft:batteritem": 5,
    "harvestcraft:doughitem_itemsalt": 5,
    "harvestcraft:mashedpotatoesitem_itemsalt": 5,
    /* misc */
    "harvestcraft:deviledeggitem": 5,
    "harvestcraft:manjuuitem": 5,
    "harvestcraft:onigiriitem": 5,
} as int[string];

for key, value in copyNoSecondary {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:mixingbowlitem>, null)
    )
    .addTool(<harvestcraft:mixingbowlitem>, value)
    .create();
}

val copyWithBowl = {
    "harvestcraft:icecreamitem_itemsalt": 5,
    "harvestcraft:chocovoxelsitem": 5,
    "harvestcraft:cornflakesitem": 5,
    "harvestcraft:crispyricepuffcerealitem": 5,
    "harvestcraft:coleslawitem": 5,
    "harvestcraft:peasandceleryitem": 5,
    "harvestcraft:beetsaladitem": 5,
    "harvestcraft:summerradishsaladitem": 5,
    "harvestcraft:ceasarsaladitem": 5,
    "harvestcraft:dandelionsaladitem": 5,
    "harvestcraft:fiestacornsaladitem": 5,
    "harvestcraft:threebeansaladitem": 5,
    "harvestcraft:crayfishsaladitem": 5,
    "harvestcraft:akutuqitem": 5,
    "harvestcraft:pastagardeniaitem": 5,
    "harvestcraft:heavycreamitem": 5,
    "harvestcraft:salsaitem": 5,
    "harvestcraft:museliitem": 5,
} as int[string];

for key, value in copyWithBowl {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:mixingbowlitem>, null)
    )
    .setSecondaryIngredients([<minecraft:bowl>])
    .addTool(<harvestcraft:mixingbowlitem>, value)
    .create();
}