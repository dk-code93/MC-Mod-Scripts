import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val furnaceToCreate = {
    <harvestcraft:popcornitem>: <harvestcraft:cornitem>,
    <harvestcraft:toastitem>: <minecraft:bread>,
    <harvestcraft:toastedsesameseedsitem>: <harvestcraft:sesameseedsitem>,
    <harvestcraft:toastedcoconutitem>: <harvestcraft:coconutitem>,
    <harvestcraft:roastedpumpkinseedsitem>: <minecraft:pumpkin_seeds>,
    <harvestcraft:roastedchestnutitem>: <harvestcraft:chestnutitem>,
    <harvestcraft:kalechipsitem>: <harvestcraft:kaleitem>,
    <harvestcraft:driedsoupitem>: <harvestcraft:stockitem>,
    <harvestcraft:bakedsweetpotatoitem>: <harvestcraft:sweetpotatoitem>,
    <harvestcraft:bakedcactusitem>: <minecraft:cactus>,
    <harvestcraft:vanillaitem>: <harvestcraft:vanillabeanitem>,
} as IIngredient[IItemStack];
    
for key, value in furnaceToCreate {
    furnace.addRecipe(key, value, 2);
}

furnace.addRecipe(<harvestcraft:ricecakeitem>, <ore:cropRice>, 2);
furnace.addRecipe(<harvestcraft:raisinsitem>, <ore:cropGrape>, 2);

    /* : <harvestcraft:riceitem>,
    : <harvestcraft:> */