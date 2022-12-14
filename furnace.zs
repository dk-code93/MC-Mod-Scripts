import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val furnaceToRemove = [
    <betteranimalsplus:fried_egg>,
] as IItemStack[];

for item in furnaceToRemove {
    furnace.remove(item);
}

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
    <harvestcraft:grilledasparagusitem>: <harvestcraft:asparagusitem>,
    <harvestcraft:grilledeggplantitem>: <harvestcraft:eggplantitem>,
} as IIngredient[IItemStack];
    
for key, value in furnaceToCreate {
    furnace.addRecipe(key, value, 0.3);
}

furnace.addRecipe(<harvestcraft:grilledmushroomitem>, <ore:listAllmushroom>, 0.3);
furnace.addRecipe(<harvestcraft:ricecakeitem>, <ore:cropRice>, 0.3);
furnace.addRecipe(<harvestcraft:raisinsitem>, <ore:cropGrape>, 0.3);