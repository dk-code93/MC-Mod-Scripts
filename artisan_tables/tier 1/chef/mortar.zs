import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyNoSecondary = [
    /* butters */
    "harvestcraft:pistachiobutteritem",
    "harvestcraft:peanutbutteritem",
    "harvestcraft:chestnutbutteritem",
    "harvestcraft:cashewbutteritem",
    "harvestcraft:almondbutteritem",
    /* desserts */
    "harvestcraft:mochiitem",
    "harvestcraft:marzipanitem_foodhoneydrop",
    /* flour */
    "harvestcraft:flouritem_cropwheat",
    "harvestcraft:flouritem_croptaro",
    "harvestcraft:flouritem_cropsoybean",
    "harvestcraft:flouritem_croprye",
    "harvestcraft:flouritem_croprice",
    "harvestcraft:flouritem_cropquinoa",
    "harvestcraft:flouritem_croppotato",
    "harvestcraft:flouritem_croppeas",
    "harvestcraft:flouritem_cropoats",
    "harvestcraft:flouritem_cropmillet",
    "harvestcraft:flouritem_cropcoconut",
    "harvestcraft:flouritem_cropchickpea",
    "harvestcraft:flouritem_cropchestnut",
    "harvestcraft:flouritem_cropcassava",
    "harvestcraft:flouritem_cropbean",
    "harvestcraft:flouritem_cropbarley",
    "harvestcraft:flouritem_cropbanana",
    "harvestcraft:flouritem_cropamaranth",
    "harvestcraft:flouritem_cropalmond",
    /* ingredients */
    "harvestcraft:blackpepperitem",
    "harvestcraft:groundnutmegitem",
    "harvestcraft:groundcinnamonitem",
    "harvestcraft:garammasalaitem_x4",
    "harvestcraft:fivespiceitem_x5",
    "harvestcraft:currypowderitem",
    "harvestcraft:cornmealitem",
    "harvestcraft:cocoapowederitem",
] as string[];

for recipe in copyNoSecondary {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:mortarandpestleitem>, null)
    )
    .addTool(<harvestcraft:mortarandpestleitem>, 0)
    .create();
}

val copyWithBottle = [
    /* ingredients */
    "harvestcraft:misopasteitem_x4_itemsalt",
] as string[];

for recipe in copyWithBottle {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(recipe)
        .replaceInput(<harvestcraft:mortarandpestleitem>, null)
    )
    .setSecondaryIngredients([<minecraft:glass_bottle>])
    .addTool(<harvestcraft:mortarandpestleitem>, 0)
    .create();
}