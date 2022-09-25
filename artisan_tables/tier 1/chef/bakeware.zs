import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyNoSecondary = [
    /* cookies */
    "harvestcraft:creamcookieitem",
    "harvestcraft:creepercookieitem",
    "harvestcraft:fortunecookieitem",
    "harvestcraft:minecraft_cookie",
    "harvestcraft:peanutbuttercookiesitem",
    "harvestcraft:raisincookiesitem",
    "harvestcraft:sugarcookieitem",
    "harvestcraft:sprinklescupcakeitem",
    "harvestcraft:meringuecookieitem",
    "harvestcraft:lavendershortbreaditem",
    "harvestcraft:gingersnapsitem",
    "harvestcraft:chaoscookieitem",
    "harvestcraft:carrotcupcakeitem",
    "harvestcraft:buttercookieitem",
    /* cupcakes */
    "harvestcraft:chilicupcakeitem",
    "harvestcraft:coffeecupcakeitem",
    "harvestcraft:mintcupcakeitem",
    "harvestcraft:peanutbuttercupcakeitem",
    "harvestcraft:redvelvetcupcakeitem",
    "harvestcraft:vanillacupcakeitem",
    "harvestcraft:strawberrycupcakeitem",
    "harvestcraft:lemoncupcakeitem",
    "harvestcraft:chocolatecupcakeitem",
    "harvestcraft:caramelcupcakeitem",
    /* cakes */
    "harvestcraft:carrotcakeitem",
    "harvestcraft:cheesecakeitem",
    "harvestcraft:chocolatesprinklecakeitem",
    "harvestcraft:fruitcakeitem",
    "harvestcraft:holidaycakeitem",
    "harvestcraft:jaffaitem",
    "harvestcraft:lamingtonitem",
    "harvestcraft:lemondrizzlecakeitem",
    "harvestcraft:pineappleupsidedowncakeitem",
    "harvestcraft:rivermudcakeitem",
    "harvestcraft:redvelvetcakeitem",
    "harvestcraft:mochicakeitem",
    /* pies */
    "harvestcraft:slimepieitem",
    "harvestcraft:mincepieitem",
    /* muffins */
    "harvestcraft:blueberrymuffinitem",
    "harvestcraft:pumpkinmuffinitem",
    "harvestcraft:durianmuffinitem",
    /* desserts misc */
    "harvestcraft:bakedalaskaitem",
    "harvestcraft:baklavaitem",
    "harvestcraft:battenbergitem",
    "harvestcraft:brownieitem",
    "harvestcraft:buttertartitem",
    "harvestcraft:candiedpecansitem",
    "harvestcraft:candiedlemonitem",
    "harvestcraft:cheesedanishitem",
    "harvestcraft:chocolatecaramelfudgeitem",
    "harvestcraft:chocolatecoconutbaritem",
    "harvestcraft:chocolaterollitem",
    "harvestcraft:cinnamonrollitem",
    "harvestcraft:cranberrybaritem",
    "harvestcraft:eggtartitem",
    "harvestcraft:figbaritem",
    "harvestcraft:jamrollitem",
    "harvestcraft:lemonbaritem",
    "harvestcraft:meringuebombeitem",
    "harvestcraft:meringuebrownieitem",
    "harvestcraft:pavlovaitem",
    "harvestcraft:pumpkinoatsconesitem",
    "harvestcraft:smoresitem",
    "harvestcraft:timtamitem",
    "harvestcraft:yorkshirepuddingitem_itemsalt",
    "harvestcraft:tiropitaitem",
    "harvestcraft:strawberrysouffleitem",
    "harvestcraft:honeybunitem_foodhoneydrop",
    /* bread */
    "harvestcraft:banananutbreaditem_itemsalt",
    "harvestcraft:biscuititem",
    "harvestcraft:briochebunitem_x3",
    "harvestcraft:cheeseontoastitem",
    "harvestcraft:cinnamonbreaditem",
    "harvestcraft:croissantitem",
    "harvestcraft:damperitem_itemsalt",
    "harvestcraft:datenutbreaditem",
    "harvestcraft:fairybreaditem",
    "harvestcraft:pumpkinbreaditem",
    "harvestcraft:softpretzelitem_itemsalt",
    "harvestcraft:spicebunitem",
    "harvestcraft:toastitem",
    "harvestcraft:vanillaconchasbreaditem",
    "harvestcraft:walnutraisinbreaditem",
    "harvestcraft:zucchinibreaditem",
    "harvestcraft:gingerbreaditem",
    /* meats */
    "harvestcraft:baconwrappedchiliitem",
    "harvestcraft:baconwrappeddatesitem",
    "harvestcraft:bakedhamitem",
    "harvestcraft:chickencordonbleuitem",
    "harvestcraft:honeysoyribsitem_foodhoneydrop",
    "harvestcraft:maplecandiedbaconitem",
    "harvestcraft:meatloafitem",
    "harvestcraft:pineapplehamitem",
    "harvestcraft:pistachiobakedsalmonitem",
    "harvestcraft:sausagebeanmeltitem",
    "harvestcraft:toadintheholeitem",
    /* pizza */
    "harvestcraft:anchovypepperonipizzaitem",
    "harvestcraft:bbqchickenpizzaitem",
    "harvestcraft:hamandpineapplepizzaitem",
    "harvestcraft:pizzaitem_listallporkraw",
    "harvestcraft:pizzaitem_foodpepperoni",
    /* veggies */
    "harvestcraft:chilipoppersitem",
    "harvestcraft:okrachipsitem_itemsalt",
    "harvestcraft:stuffedchilipeppersitem",
    "harvestcraft:stuffedeggplantitem",
    "harvestcraft:stuffedmushroomitem",
    "harvestcraft:stuffedpepperitem",
    "harvestcraft:veggiestripsitem_itemsalt",
    "harvestcraft:zucchinifriesitem",
    /* snacks */
    "harvestcraft:crackeritem",
    "harvestcraft:crackersitem",
    "harvestcraft:crispyricepuffbarsitem",
    "harvestcraft:fishsticksitem",
    "harvestcraft:friesitem_itemsalt",
    "harvestcraft:potatoskinsitem",
    "harvestcraft:popcornitem",
    /* ingredients */
    "harvestcraft:vanillaitem",
    /* pasta */
    "harvestcraft:timpanoitem",
    /* misc */
    "harvestcraft:cevicheitem",
    "harvestcraft:cornishpastyitem",
    "harvestcraft:enchiladaitem",
] as string[];

for recipe in copyNoSecondary {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:bakewareitem>, null)
    )
    .addTool(<harvestcraft:bakewareitem>, 0)
    .create();
}

/* val copyWithBottle = [

] as string[];

for recipe in copyWithBottle {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:bakewareitem>, null)
    )
    .setSecondaryIngredients([<minecraft:glass_bottle>])
    .addTool(<harvestcraft:bakewareitem>, 0)
    .create();
} */

val copyWithBowl = [
    /* pies */
    "harvestcraft:applepieitem",
    "harvestcraft:blueberrypieitem",
    "harvestcraft:cherrypieitem",
    "harvestcraft:chickenpotpieitem",
    "harvestcraft:cottagepieitem",
    "harvestcraft:gooseberrypieitem",
    "harvestcraft:keylimepieitem",
    "harvestcraft:lemonmeringueitem",
    "harvestcraft:minecraft_pumpkinpie",
    "harvestcraft:patreonpieitem",
    "harvestcraft:raspberrypieitem",
    "harvestcraft:sweetpotatopieitem",
    "harvestcraft:strawberryrhubarbpieitem",
    "harvestcraft:strawberrypieitem",
    "harvestcraft:spinachpieitem",
    "harvestcraft:spidereyepieitem",
    "harvestcraft:shephardspieitem",
    "harvestcraft:pecanpieitem",
    "harvestcraft:gingeredrhubarbtartitem",
    /* desserts misc */
    "harvestcraft:blackberrycobbleritem",
    "harvestcraft:cobblestonecobbleritem",
    "harvestcraft:fruitcrumbleitem",
    "harvestcraft:peachcobbleritem",
    "harvestcraft:raspberrytrifleitem",
    "harvestcraft:sweetpotatosouffleitem",
    "harvestcraft:sunflowerwheatrollsitem_itemsalt",
    /* veggies */
    "harvestcraft:babaganoushitem",
    "harvestcraft:eggplantparmitem",
    "harvestcraft:mushroomrisottoitem",
    "harvestcraft:ovenroastedcaulifloweritem",
    "harvestcraft:roastedrootveggiemedleyitem_cropturnip",
    "harvestcraft:roastedrootveggiemedleyitem_cropsweetpotato",
    "harvestcraft:roastedrootveggiemedleyitem_croprutabaga",
    "harvestcraft:roastedrootveggiemedleyitem_croprhubarb",
    "harvestcraft:roastedrootveggiemedleyitem_cropradish",
    "harvestcraft:roastedrootveggiemedleyitem_croppumpkin",
    "harvestcraft:roastedrootveggiemedleyitem_croppotato",
    "harvestcraft:roastedrootveggiemedleyitem_cropparsnip",
    "harvestcraft:roastedrootveggiemedleyitem_cropbeet",
    /* meats */
    "harvestcraft:meatpieitem",
    /* meals */
    "harvestcraft:chickencelerycasseroleitem",
    "harvestcraft:crawfishetoufeeitem",
    "harvestcraft:greenbeancasseroleitem",
    "harvestcraft:hotdishcasseroleitem",
    "harvestcraft:zucchinibakeitem",
    /* ingredients */
    "harvestcraft:stuffingitem",
] as string[];

for recipe in copyWithBowl {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:bakewareitem>, null)
    )
    .setSecondaryIngredients([<minecraft:bowl>])
    .addTool(<harvestcraft:bakewareitem>, 0)
    .create();
}

val copyWithPlate = [
    /* veggies */
    "harvestcraft:bakedbeetsitem",
    "harvestcraft:bakedturnipsitem_itemsalt",
    "harvestcraft:mushroomlasagnaitem",
    "harvestcraft:tatertotsitem",
    "harvestcraft:roastpotatoesitem_itemsalt",
    /* meats */
    "harvestcraft:chickenparmasanitem",
    "harvestcraft:garlicchickenitem",
    "harvestcraft:honeylemonlambitem_foodhoneydrop",
    "harvestcraft:lambwithmintsauceitem",
    "harvestcraft:lemonchickenitem",
    "harvestcraft:orangeduckitem",
    "harvestcraft:pekingduckitem",
    "harvestcraft:roastchickenitem_itemsalt",
    "harvestcraft:salisburysteakitem",
    "harvestcraft:stuffedduckitem",
    "harvestcraft:sundayroastitem",
    "harvestcraft:tomatoherbchickenitem",
    /* pasta */
    "harvestcraft:lasagnaitem",
    "harvestcraft:zestyzucchiniitem",
] as string[];

for recipe in copyWithPlate {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:bakewareitem>, null)
    )
    .setSecondaryIngredients([<placeableitems:item_plate>])
    .addTool(<harvestcraft:bakewareitem>, 0)
    .create();
}