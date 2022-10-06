import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyNoSecondary = {
    /* cookies */
    "harvestcraft:creamcookieitem": 5,
    "harvestcraft:creepercookieitem": 5,
    "harvestcraft:fortunecookieitem": 5,
    "harvestcraft:minecraft_cookie": 5,
    "harvestcraft:peanutbuttercookiesitem": 5,
    "harvestcraft:raisincookiesitem": 5,
    "harvestcraft:sugarcookieitem": 5,
    "harvestcraft:sprinklescupcakeitem": 5,
    "harvestcraft:meringuecookieitem": 5,
    "harvestcraft:lavendershortbreaditem": 5,
    "harvestcraft:gingersnapsitem": 5,
    "harvestcraft:chaoscookieitem": 5,
    "harvestcraft:carrotcupcakeitem": 5,
    "harvestcraft:buttercookieitem": 5,
    /* cupcakes */
    "harvestcraft:chilicupcakeitem": 5,
    "harvestcraft:coffeecupcakeitem": 5,
    "harvestcraft:mintcupcakeitem": 5,
    "harvestcraft:peanutbuttercupcakeitem": 5,
    "harvestcraft:redvelvetcupcakeitem": 5,
    "harvestcraft:vanillacupcakeitem": 5,
    "harvestcraft:strawberrycupcakeitem": 5,
    "harvestcraft:lemoncupcakeitem": 5,
    "harvestcraft:chocolatecupcakeitem": 5,
    "harvestcraft:caramelcupcakeitem": 5,
    /* cakes */
    "harvestcraft:carrotcakeitem": 5,
    "harvestcraft:cheesecakeitem": 5,
    "harvestcraft:chocolatesprinklecakeitem": 5,
    "harvestcraft:fruitcakeitem": 5,
    "harvestcraft:holidaycakeitem": 5,
    "harvestcraft:jaffaitem": 5,
    "harvestcraft:lamingtonitem": 5,
    "harvestcraft:lemondrizzlecakeitem": 5,
    "harvestcraft:pineappleupsidedowncakeitem": 5,
    "harvestcraft:rivermudcakeitem": 5,
    "harvestcraft:redvelvetcakeitem": 5,
    "harvestcraft:mochicakeitem": 5,
    /* pies */
    "harvestcraft:slimepieitem": 5,
    "harvestcraft:mincepieitem": 5,
    /* muffins */
    "harvestcraft:blueberrymuffinitem": 5,
    "harvestcraft:pumpkinmuffinitem": 5,
    "harvestcraft:durianmuffinitem": 5,
    /* desserts misc */
    "harvestcraft:bakedalaskaitem": 5,
    "harvestcraft:baklavaitem": 5,
    "harvestcraft:battenbergitem": 5,
    "harvestcraft:brownieitem": 5,
    "harvestcraft:buttertartitem": 5,
    "harvestcraft:candiedpecansitem": 5,
    "harvestcraft:candiedlemonitem": 5,
    "harvestcraft:cheesedanishitem": 5,
    "harvestcraft:chocolatecaramelfudgeitem": 5,
    "harvestcraft:chocolatecoconutbaritem": 5,
    "harvestcraft:chocolaterollitem": 5,
    "harvestcraft:cinnamonrollitem": 5,
    "harvestcraft:cranberrybaritem": 5,
    "harvestcraft:eggtartitem": 5,
    "harvestcraft:figbaritem": 5,
    "harvestcraft:jamrollitem": 5,
    "harvestcraft:lemonbaritem": 5,
    "harvestcraft:meringuebombeitem": 5,
    "harvestcraft:meringuebrownieitem": 5,
    "harvestcraft:pavlovaitem": 5,
    "harvestcraft:pumpkinoatsconesitem": 5,
    "harvestcraft:smoresitem": 5,
    "harvestcraft:timtamitem": 5,
    "harvestcraft:yorkshirepuddingitem_itemsalt": 5,
    "harvestcraft:tiropitaitem": 5,
    "harvestcraft:strawberrysouffleitem": 5,
    "harvestcraft:honeybunitem_foodhoneydrop": 5,
    /* bread */
    "harvestcraft:banananutbreaditem_itemsalt": 5,
    "harvestcraft:biscuititem": 5,
    "harvestcraft:briochebunitem_x3": 5,
    "harvestcraft:cheeseontoastitem": 5,
    "harvestcraft:cinnamonbreaditem": 5,
    "harvestcraft:croissantitem": 5,
    "harvestcraft:damperitem_itemsalt": 5,
    "harvestcraft:datenutbreaditem": 5,
    "harvestcraft:fairybreaditem": 5,
    "harvestcraft:pumpkinbreaditem": 5,
    "harvestcraft:softpretzelitem_itemsalt": 5,
    "harvestcraft:spicebunitem": 5,
    "harvestcraft:toastitem": 5,
    "harvestcraft:vanillaconchasbreaditem": 5,
    "harvestcraft:walnutraisinbreaditem": 5,
    "harvestcraft:zucchinibreaditem": 5,
    "harvestcraft:gingerbreaditem": 5,
    /* meats */
    "harvestcraft:baconwrappedchiliitem": 5,
    "harvestcraft:baconwrappeddatesitem": 5,
    "harvestcraft:bakedhamitem": 5,
    "harvestcraft:chickencordonbleuitem": 5,
    "harvestcraft:honeysoyribsitem_foodhoneydrop": 5,
    "harvestcraft:maplecandiedbaconitem": 5,
    "harvestcraft:meatloafitem": 5,
    "harvestcraft:pineapplehamitem": 5,
    "harvestcraft:pistachiobakedsalmonitem": 5,
    "harvestcraft:sausagebeanmeltitem": 5,
    "harvestcraft:toadintheholeitem": 5,
    /* pizza */
    "harvestcraft:anchovypepperonipizzaitem": 5,
    "harvestcraft:bbqchickenpizzaitem": 5,
    "harvestcraft:hamandpineapplepizzaitem": 5,
    "harvestcraft:pizzaitem_listallporkraw": 5,
    "harvestcraft:pizzaitem_foodpepperoni": 5,
    /* veggies */
    "harvestcraft:chilipoppersitem": 5,
    "harvestcraft:okrachipsitem_itemsalt": 5,
    "harvestcraft:stuffedchilipeppersitem": 5,
    "harvestcraft:stuffedeggplantitem": 5,
    "harvestcraft:stuffedmushroomitem": 5,
    "harvestcraft:stuffedpepperitem": 5,
    "harvestcraft:veggiestripsitem_itemsalt": 5,
    "harvestcraft:zucchinifriesitem": 5,
    /* snacks */
    "harvestcraft:crackeritem": 5,
    "harvestcraft:crackersitem": 5,
    "harvestcraft:crispyricepuffbarsitem": 5,
    "harvestcraft:fishsticksitem": 5,
    "harvestcraft:friesitem_itemsalt": 5,
    "harvestcraft:potatoskinsitem": 5,
    "harvestcraft:popcornitem": 5,
    /* ingredients */
    "harvestcraft:vanillaitem": 5,
    /* pasta */
    "harvestcraft:timpanoitem": 5,
    /* misc */
    "harvestcraft:cevicheitem": 5,
    "harvestcraft:cornishpastyitem": 5,
    "harvestcraft:enchiladaitem": 5,
} as int[string];

for key, value in copyNoSecondary {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:bakewareitem>, null)
    )
    .addTool(<harvestcraft:bakewareitem>, value)
    .create();
}

val copyWithBowl = {
    /* pies */
    "harvestcraft:applepieitem": 5,
    "harvestcraft:blueberrypieitem": 5,
    "harvestcraft:cherrypieitem": 5,
    "harvestcraft:chickenpotpieitem": 5,
    "harvestcraft:cottagepieitem": 5,
    "harvestcraft:gooseberrypieitem": 5,
    "harvestcraft:keylimepieitem": 5,
    "harvestcraft:lemonmeringueitem": 5,
    "harvestcraft:minecraft_pumpkinpie": 5,
    "harvestcraft:patreonpieitem": 5,
    "harvestcraft:raspberrypieitem": 5,
    "harvestcraft:sweetpotatopieitem": 5,
    "harvestcraft:strawberryrhubarbpieitem": 5,
    "harvestcraft:strawberrypieitem": 5,
    "harvestcraft:spinachpieitem": 5,
    "harvestcraft:spidereyepieitem": 5,
    "harvestcraft:shephardspieitem": 5,
    "harvestcraft:pecanpieitem": 5,
    "harvestcraft:gingeredrhubarbtartitem": 5,
    /* desserts misc */
    "harvestcraft:blackberrycobbleritem": 5,
    "harvestcraft:cobblestonecobbleritem": 5,
    "harvestcraft:fruitcrumbleitem": 5,
    "harvestcraft:peachcobbleritem": 5,
    "harvestcraft:raspberrytrifleitem": 5,
    "harvestcraft:sweetpotatosouffleitem": 5,
    "harvestcraft:sunflowerwheatrollsitem_itemsalt": 5,
    /* veggies */
    "harvestcraft:babaganoushitem": 5,
    "harvestcraft:eggplantparmitem": 5,
    "harvestcraft:mushroomrisottoitem": 5,
    "harvestcraft:ovenroastedcaulifloweritem": 5,
    "harvestcraft:roastedrootveggiemedleyitem_cropturnip": 5,
    "harvestcraft:roastedrootveggiemedleyitem_cropsweetpotato": 5,
    "harvestcraft:roastedrootveggiemedleyitem_croprutabaga": 5,
    "harvestcraft:roastedrootveggiemedleyitem_croprhubarb": 5,
    "harvestcraft:roastedrootveggiemedleyitem_cropradish": 5,
    "harvestcraft:roastedrootveggiemedleyitem_croppumpkin": 5,
    "harvestcraft:roastedrootveggiemedleyitem_croppotato": 5,
    "harvestcraft:roastedrootveggiemedleyitem_cropparsnip": 5,
    "harvestcraft:roastedrootveggiemedleyitem_cropbeet": 5,
    /* meats */
    "harvestcraft:meatpieitem": 5,
    /* meals */
    "harvestcraft:chickencelerycasseroleitem": 5,
    "harvestcraft:crawfishetoufeeitem": 5,
    "harvestcraft:greenbeancasseroleitem": 5,
    "harvestcraft:hotdishcasseroleitem": 5,
    "harvestcraft:zucchinibakeitem": 5,
    /* ingredients */
    "harvestcraft:stuffingitem": 5,
} as int[string];

for key, value in copyWithBowl {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:bakewareitem>, null)
    )
    .setSecondaryIngredients([<minecraft:bowl>])
    .addTool(<harvestcraft:bakewareitem>, value)
    .create();
}

val copyWithPlate = {
    /* veggies */
    "harvestcraft:bakedbeetsitem": 5,
    "harvestcraft:bakedturnipsitem_itemsalt": 5,
    "harvestcraft:mushroomlasagnaitem": 5,
    "harvestcraft:tatertotsitem": 5,
    "harvestcraft:roastpotatoesitem_itemsalt": 5,
    /* meats */
    "harvestcraft:chickenparmasanitem": 5,
    "harvestcraft:garlicchickenitem": 5,
    "harvestcraft:honeylemonlambitem_foodhoneydrop": 5,
    "harvestcraft:lambwithmintsauceitem": 5,
    "harvestcraft:lemonchickenitem": 5,
    "harvestcraft:orangeduckitem": 5,
    "harvestcraft:pekingduckitem": 5,
    "harvestcraft:roastchickenitem_itemsalt": 5,
    "harvestcraft:salisburysteakitem": 5,
    "harvestcraft:stuffedduckitem": 5,
    "harvestcraft:sundayroastitem": 5,
    "harvestcraft:tomatoherbchickenitem": 5,
    /* pasta */
    "harvestcraft:lasagnaitem": 5,
    "harvestcraft:zestyzucchiniitem": 5,
} as int[string];

for key, value in copyWithPlate {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:bakewareitem>, null)
    )
    .setSecondaryIngredients([<placeableitems:item_plate>])
    .addTool(<harvestcraft:bakewareitem>, value)
    .create();
}