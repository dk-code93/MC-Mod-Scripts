import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyNoSecondary = {
    /* butters */
    "harvestcraft:pistachiobutteritem": 4,
    "harvestcraft:peanutbutteritem": 4,
    "harvestcraft:chestnutbutteritem": 4,
    "harvestcraft:cashewbutteritem": 4,
    "harvestcraft:almondbutteritem": 4,
    /* desserts */
    "harvestcraft:mochiitem": 5,
    "harvestcraft:marzipanitem_foodhoneydrop": 5,
    /* flour */
    "harvestcraft:flouritem_cropwheat": 3,
    "harvestcraft:flouritem_croptaro": 3,
    "harvestcraft:flouritem_cropsoybean": 3,
    "harvestcraft:flouritem_croprye": 3,
    "harvestcraft:flouritem_croprice": 3,
    "harvestcraft:flouritem_cropquinoa": 3,
    "harvestcraft:flouritem_croppotato": 3,
    "harvestcraft:flouritem_croppeas": 3,
    "harvestcraft:flouritem_cropoats": 3,
    "harvestcraft:flouritem_cropmillet": 3,
    "harvestcraft:flouritem_cropcoconut": 3,
    "harvestcraft:flouritem_cropchickpea": 3,
    "harvestcraft:flouritem_cropchestnut": 3,
    "harvestcraft:flouritem_cropcassava": 3,
    "harvestcraft:flouritem_cropbean": 3,
    "harvestcraft:flouritem_cropbarley": 3,
    "harvestcraft:flouritem_cropbanana": 3,
    "harvestcraft:flouritem_cropamaranth": 3,
    "harvestcraft:flouritem_cropalmond": 3,
    /* ingredients */
    "harvestcraft:blackpepperitem": 4,
    "harvestcraft:groundnutmegitem": 4,
    "harvestcraft:groundcinnamonitem": 4,
    "harvestcraft:garammasalaitem_x4": 4,
    "harvestcraft:fivespiceitem_x5": 4,
    "harvestcraft:currypowderitem": 4,
    "harvestcraft:cornmealitem": 4,
    "harvestcraft:cocoapowederitem": 4,
} as int[string];

for key, value in copyNoSecondary {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:mortarandpestleitem>, null)
    )
    .addTool(<ore:artisansMortar>, value)
    .create();
}

val copyWithBottle = {
    /* ingredients */
    "harvestcraft:misopasteitem_x4_itemsalt": 5,
} as int[string];

for key, value in copyWithBottle {
    RecipeBuilder.get("chef")
     .setCopy(
        Copy.byName(key)
        .replaceInput(<harvestcraft:mortarandpestleitem>, null)
    )
    .setSecondaryIngredients([<minecraft:glass_bottle>])
    .addTool(<ore:artisansMortar>, value)
    .create();
}