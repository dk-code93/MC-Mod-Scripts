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
    "harvestcraft:applejellysandwichitem": 5,
    "harvestcraft:blackberryjellysandwichitem": 5,
    "harvestcraft:blueberryjellysandwichitem": 5,
    "harvestcraft:cherryjellysandwichitem": 5,
    "harvestcraft:cranberryjellysandwichitem": 5,
    "harvestcraft:kiwijellysandwichitem": 5,
    "harvestcraft:lemonjellysandwichitem": 5,
    "harvestcraft:limejellysandwichitem": 5,
    "harvestcraft:mangojellysandwichitem": 5,
    "harvestcraft:orangejellysandwichitem": 5,
    "harvestcraft:papayajellysandwichitem": 5,
    "harvestcraft:peachjellysandwichitem": 5,
    "harvestcraft:pomegranatejellysandwichitem": 5,
    "harvestcraft:raspberryjellysandwichitem": 5,
    "harvestcraft:starfruitjellysandwichitem": 5,
    "harvestcraft:strawberryjellysandwichitem": 5,
    "harvestcraft:watermelonjellysandwichitem": 5,
    "harvestcraft:apricotjellysandwichitem": 5,
    "harvestcraft:figjellysandwichitem": 5,
    "harvestcraft:grapefruitjellysandwichitem": 5,
    "harvestcraft:persimmonjellysandwichitem": 5,
    "harvestcraft:gooseberryjellysandwichitem": 5,
    "harvestcraft:pearjellysandwichitem": 5,
    "harvestcraft:plumjellysandwichitem": 5,
    "harvestcraft:honeysandwichitem": 5,
    /* misc sandwhiches */
    "harvestcraft:hamandcheesesandwichitem": 5,
    "harvestcraft:toastsandwichitem": 5,
    "harvestcraft:peanutbutterbananasandwichitem": 5,
    "harvestcraft:friedbolognasandwichitem": 5,
    "harvestcraft:bolognasandwichitem": 5,
    "harvestcraft:tunafishsandwichitem": 5,
    "harvestcraft:hamsweetpicklesandwichitem": 5,
    "harvestcraft:meatloafsandwichitem": 5,
    "harvestcraft:cucumbersandwichitem": 5,
    /* sausage items */
    "harvestcraft:sausageitem_itemsalt": 3,
    "harvestcraft:sausagerollitem": 3,
    /* pizza items */
    "harvestcraft:supremepizzaitem": 8,
    "harvestcraft:pizzasliceitem_supremepizzaitem_x14": 5,
    "harvestcraft:pizzasliceitem_pizzaitem_x11": 5,
    "harvestcraft:pizzasliceitem_meatfeastpizzaitem_x24": 5,
    "harvestcraft:pizzasliceitem_hamandpineapplepizzaitem_x9": 5,
    "harvestcraft:pizzasliceitem_anchovypepperonipizzaitem_x13 - copy (2)": 5,
    /* veggie items */
    "harvestcraft:vegetarianlettucewrapitem": 5,
    /* salads */
    "harvestcraft:potatosaladitem": 5,
    "harvestcraft:eggsaladitem": 5,
    "harvestcraft:fruitsaladitem": 5,
    "harvestcraft:springsaladitem": 5,
    "harvestcraft:cucumbersaladitem": 5,
    "harvestcraft:beetsaladitem": 5,
    "harvestcraft:summerradishsaladitem": 5,
    "harvestcraft:sunflowerbroccolisaladitem": 5,
    "harvestcraft:mixedsaladitem": 5,
    "harvestcraft:citrussaladitem": 5,
    "harvestcraft:tunasaladitem": 5,
    "harvestcraft:berryvinaigrettesaladitem": 5,
    "harvestcraft:fiestacornsaladitem": 5,
    "harvestcraft:threebeansaladitem": 5,
    "harvestcraft:crayfishsaladitem": 5,
    "harvestcraft:nopalessaladitem_cactusfruit": 5,
    "harvestcraft:nopalessaladitem_cactus": 5,
    "harvestcraft:dandelionsaladitem": 5,
    "harvestcraft:glisteningsaladitem": 5,
    /* tofu items */
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