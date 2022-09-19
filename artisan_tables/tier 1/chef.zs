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