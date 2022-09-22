import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyNoTool = [
    /* bowls */
    "minecraft:bowl",
    "natura:nether/bowls/ghostwood_bowl",
    "natura:nether/bowls/bloodwood_bowl",
    "natura:nether/bowls/darkwood_bowl",
    "natura:nether/bowls/fusewood_bowl",
    /* salads */
    "harvestcraft:strawberrysaladitem",
    "harvestcraft:grapesaladitem",
] as string[];

for recipe in copyNoTool {
    RecipeBuilder.get("chef")
         .setCopy(
            Copy.byName(recipe)
        )
        .create();
}

val copyWithCuttingBoard = {
    /* pb & j */
    "harvestcraft:applejellysandwichitem": 3,
    "harvestcraft:blackberryjellysandwichitem": 3,
    "harvestcraft:blueberryjellysandwichitem": 3,
    "harvestcraft:cherryjellysandwichitem": 3,
    "harvestcraft:cranberryjellysandwichitem": 3,
    "harvestcraft:kiwijellysandwichitem": 3,
    "harvestcraft:lemonjellysandwichitem": 3,
    "harvestcraft:limejellysandwichitem": 3,
    "harvestcraft:mangojellysandwichitem": 3,
    "harvestcraft:orangejellysandwichitem": 3,
    "harvestcraft:papayajellysandwichitem": 3,
    "harvestcraft:peachjellysandwichitem": 3,
    "harvestcraft:pomegranatejellysandwichitem": 3,
    "harvestcraft:raspberryjellysandwichitem": 3,
    "harvestcraft:starfruitjellysandwichitem": 3,
    "harvestcraft:strawberryjellysandwichitem": 3,
    "harvestcraft:watermelonjellysandwichitem": 3,
    "harvestcraft:apricotjellysandwichitem": 3,
    "harvestcraft:figjellysandwichitem": 3,
    "harvestcraft:grapefruitjellysandwichitem": 3,
    "harvestcraft:persimmonjellysandwichitem": 3,
    "harvestcraft:gooseberryjellysandwichitem": 3,
    "harvestcraft:pearjellysandwichitem": 3,
    "harvestcraft:plumjellysandwichitem": 3,
    "harvestcraft:honeysandwichitem": 3,
    /* misc sandwhiches */
    "harvestcraft:cheesesteakitem": 3,
    "harvestcraft:bltitem": 3,
    "harvestcraft:epicbltitem": 3,
    "harvestcraft:hamandcheesesandwichitem": 3,
    "harvestcraft:toastsandwichitem": 3,
    "harvestcraft:peanutbutterbananasandwichitem": 3,
    "harvestcraft:friedbolognasandwichitem": 3,
    "harvestcraft:bolognasandwichitem": 3,
    "harvestcraft:tunafishsandwichitem": 3,
    "harvestcraft:hamsweetpicklesandwichitem": 3,
    "harvestcraft:meatloafsandwichitem": 3,
    "harvestcraft:cucumbersandwichitem": 3,
    "harvestcraft:bbqpulledporkitem": 3,
    "harvestcraft:footlongitem_listallbeefcooked": 3,
    "harvestcraft:footlongitem_listallporkcooked": 3,
    "harvestcraft:footlongitem_listallchickencooked": 3,
    "harvestcraft:mettbrotchenitem": 3,
    /* sausage items */
    "harvestcraft:sausageitem_itemsalt": 3,
    "harvestcraft:sausagerollitem": 3,
    /* pizza items */
    "harvestcraft:supremepizzaitem": 4,
    "harvestcraft:pizzasliceitem_supremepizzaitem_x14": 5,
    "harvestcraft:pizzasliceitem_pizzaitem_x11": 5,
    "harvestcraft:pizzasliceitem_meatfeastpizzaitem_x24": 5,
    "harvestcraft:pizzasliceitem_hamandpineapplepizzaitem_x9": 5,
    "harvestcraft:pizzasliceitem_anchovypepperonipizzaitem_x13 - copy (2)": 5,
    /* wraps */
    "harvestcraft:vegetarianlettucewrapitem": 3,
    "harvestcraft:porklettucewrapitem": 3,
    "harvestcraft:fishlettucewrapitem": 3,
    /* salads */
    "harvestcraft:potatosaladitem": 3,
    "harvestcraft:eggsaladitem": 3,
    "harvestcraft:fruitsaladitem": 3,
    "harvestcraft:springsaladitem": 3,
    "harvestcraft:cucumbersaladitem": 3,
    "harvestcraft:sunflowerbroccolisaladitem": 3,
    "harvestcraft:mixedsaladitem": 3,
    "harvestcraft:citrussaladitem": 3,
    "harvestcraft:tunasaladitem": 3,
    "harvestcraft:berryvinaigrettesaladitem": 3,
    "harvestcraft:nopalessaladitem_cactusfruit": 3,
    "harvestcraft:nopalessaladitem_cactus": 3,
    /* raw tofu */
    "harvestcraft:rawtofuttonitem": 3,
    "harvestcraft:rawtofurkeyitem": 3,
    "harvestcraft:rawtofuduckitem": 3,
    "harvestcraft:rawtofishitem": 3,
    "harvestcraft:rawtofickenitem": 3,
    "harvestcraft:rawtofenisonitem": 3,
    "harvestcraft:rawtofeegitem": 3,
    "harvestcraft:rawtofeakitem": 3,
    "harvestcraft:rawtofaconitem": 3,
    "harvestcraft:rawtofabbititem": 3,
    /* tacos */
    "harvestcraft:tacoitem": 3,
    "harvestcraft:fishtacoitem": 3,
    "harvestcraft:randomtacoitem": 3,
    /* burritos */
    "harvestcraft:avocadoburritoitem_listallchicken": 3,
    "harvestcraft:avocadoburritoitem_listallporkcooked": 3,
    "harvestcraft:breakfastburritoitem": 3,
    /* burgers */
    "harvestcraft:onionhamburgeritem": 3,
    "harvestcraft:coleslawburgeritem": 3,
    "harvestcraft:beetburgeritem": 3,
    "harvestcraft:mcpamitem_foodpickles": 3,
    /* meals */
    "harvestcraft:southernstylebreakfastitem": 4,
    "harvestcraft:ploughmanslunchitem": 4,
    "harvestcraft:deluxechickencurryitem": 4,
    "harvestcraft:chickendinneritem": 4,
    "harvestcraft:spaghettidinneritem": 4,
    "harvestcraft:thankfuldinneritem": 4,
    "harvestcraft:koreandinneritem": 4,
    /* desserts */
    "harvestcraft:merveilleuxitem": 3,
    "harvestcraft:meringuerouladeitem": 3,
    "harvestcraft:honeybreaditem_drophoney": 3,
    "harvestcraft:honeybreaditem_foodhoneydrop": 3,
    "harvestcraft:fruitcreamfestivalbreaditem": 3,
    "harvestcraft:etonmessitem": 3,
    "harvestcraft:applesnowitem": 3,
    "harvestcraft:saltedcaramelitem_dustsalt": 3,
} as int[string];

for key, value in copyWithCuttingBoard {
    RecipeBuilder.get("chef")
         .setCopy(
            Copy.byName(key)
            .replaceInput(<harvestcraft:cuttingboarditem>, null)
        )
        .addTool(<ore:artisansCuttingBoard>, value)
        .create();
}

#Plate recipe
RecipeBuilder.get("chef")
  .setShaped([
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]])
  .addOutput(<placeableitems:item_plate> * 4)
  .setName("placable_plate")
  .create();

val copyMixingBowl = {
    /* salads */
    "harvestcraft:beetsaladitem": 1,
    "harvestcraft:summerradishsaladitem": 1,
    "harvestcraft:ceasarsaladitem": 1,
    "harvestcraft:dandelionsaladitem": 1,
    "harvestcraft:glisteningsaladitem": 1,
    "harvestcraft:fiestacornsaladitem": 1,
    "harvestcraft:threebeansaladitem": 1,
    "harvestcraft:crayfishsaladitem": 1,
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