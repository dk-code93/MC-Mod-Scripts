import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyNoSecondary = {
    /* snacks */
    "harvestcraft:potatocakesitem": 4,
    "harvestcraft:sesamesnapsitem": 3,
    /* bread */
    "harvestcraft:cornbreaditem": 5,
    "harvestcraft:naanitem": 3,
    /* breakfast */
    "harvestcraft:asparagusquicheitem": 5,
    "harvestcraft:baconandeggsitem": 5,
    "harvestcraft:baconpancakesitem": 5,
    "harvestcraft:cinnamontoastitem": 4,
    "harvestcraft:cornedbeefbreakfastitem": 15,
    "harvestcraft:frenchtoastitem": 4,
    "harvestcraft:wafflesitem": 4,
    "harvestcraft:pancakesitem": 4,
    "harvestcraft:omeletitem": 4,
    "harvestcraft:mushroomketchupomeletitem": 4,
    /* ingredients */
    "harvestcraft:tortillaitem": 2,
    /* veggies */
    "harvestcraft:omuriceitem": 4,
    /* burgers */
    "harvestcraft:gourmetvenisonburgeritem": 15,
    "harvestcraft:gourmetporkburgeritem": 15,
    "harvestcraft:gourmetmuttonburgeritem": 15,
    "harvestcraft:gourmetbeefburgeritem": 15,
    "harvestcraft:hamburgeritem": 4,
    "harvestcraft:paradiseburgeritem": 7,
    /* sandwiches */
    "harvestcraft:beanburritoitem": 5,
    "harvestcraft:fishsandwichitem": 4,
    "harvestcraft:grilledcheeseitem": 4,
    "harvestcraft:groiledcheesesandwichitem": 5,
    "harvestcraft:montecristosandwichitem": 6,
    "harvestcraft:potatoandcheesepirogiitem": 4,
    "harvestcraft:quesadillaitem": 3,
    "harvestcraft:steakfajitaitem": 5,
    "harvestcraft:toastedwesternitem": 5,
    /* meats */
    "harvestcraft:breadedporkchopitem": 4,
    "harvestcraft:bulgogiitem": 5,
    "harvestcraft:coconutshrmipitem": 4,
    "harvestcraft:potstickersitem": 5,
    "harvestcraft:salmonpattiesitem": 3,
    "harvestcraft:schnitzelitem_listallporkraw": 4,
    "harvestcraft:schnitzelitem_listallmuttonraw": 4,
    "harvestcraft:taiyakiitem": 3,
} as int[string];

for key, value in copyNoSecondary {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:skilletitem>, null)
    )
    .addTool(<ore:artisansPan>, value)
    .create();
}

val copyWithBowl = {
    /* veggies */
    "harvestcraft:veggiestirfryitem_listallveggie": 5,
    "harvestcraft:veggiestirfryitem_listallmushroom": 5,
    "harvestcraft:refriedbeansitem": 3,
    "harvestcraft:okracreoleitem": 5,
    "harvestcraft:hashitem": 4,
    "harvestcraft:friedriceitem": 4,
    /* meats */
    "harvestcraft:escargotitem": 5,
    "harvestcraft:froglegstirfryitem": 5,
    "harvestcraft:generaltsochickenitem": 5,
    "harvestcraft:meatystirfryitem": 4,
    "harvestcraft:teriyakichickenitem_foodhoneydrop": 5,
    "harvestcraft:sardinesinhotsauceitem": 3,
    /* soup */
    "harvestcraft:chickenchowmeinitem": 6,
    "harvestcraft:gyudonitem": 4,
    /* misc */
    "harvestcraft:bimbimbapitem": 4,
    "harvestcraft:cheesyshrimpquinoaitem": 6,
    "harvestcraft:imagawayakiitem": 3,
    "harvestcraft:padthaiitem": 5,
    "harvestcraft:rainbowcurryitem": 5,
} as int[string];

for key, value in copyWithBowl {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:skilletitem>, null)
    )
    .setSecondaryIngredients([<minecraft:bowl>])
    .addTool(<ore:artisansPan>, value)
    .create();
}

val copyWithPlate = {
    /* veggies */
    "harvestcraft:friedpecanokraitem": 4,
    "harvestcraft:potatoesobrienitem": 5,
    /* meats */
    "harvestcraft:bangersandmashitem": 7,
    "harvestcraft:cantonesenoodlesitem": 7,
    "harvestcraft:chickenkatsuitem": 6,
    "harvestcraft:cornedbeefhashitem": 10,
    "harvestcraft:fishdinneritem": 5,
    "harvestcraft:greeneggsandhamitem": 4,
    "harvestcraft:meesuaitem": 6,
    "harvestcraft:mushroomsteakitem": 5,
    "harvestcraft:steakandchipsitem": 5,
    "harvestcraft:springfieldcashewchickenitem": 6,
} as int[string];

for key, value in copyWithPlate {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:skilletitem>, null)
    )
    .setSecondaryIngredients([<placeableitems:item_plate>])
    .addTool(<ore:artisansPan>, value)
    .create();
}