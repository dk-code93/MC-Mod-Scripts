#priority 99

import crafttweaker.item.IItemStack;

val removeByItem = [
    <mysticalagriculture:crafting:16>,
    <mysticalagriculture:crafting:17>,
    <mysticalagriculture:crafting:18>,
    <mysticalagriculture:crafting:19>,
    <mysticalagriculture:crafting:20>,
    <mysticalagriculture:crafting:21>,
    <mysticalagradditions:insanium:1>,
    /* to be readded as furnace recipes */
    <harvestcraft:toastitem>,
    <harvestcraft:toastedsesameseedsitem>,
    <harvestcraft:toastedcoconutitem>,
    <harvestcraft:roastedpumpkinseedsitem>,
    <harvestcraft:roastedchestnutitem>,
    <harvestcraft:ricecakeitem>,
    <harvestcraft:raisinsitem>,
    <harvestcraft:kalechipsitem>,
    <harvestcraft:driedsoupitem>,
    <harvestcraft:bakedsweetpotatoitem>,
    <harvestcraft:bakedcactusitem>,
    <harvestcraft:vanillaitem>,
    <harvestcraft:popcornitem>,
    <harvestcraft:grilledmushroomitem>,
] as IItemStack[];

for item in removeByItem {
    recipes.remove(item);
}

val removeByName = [
    "harvestcraft:minecraft_bakedpotato",
    "harvestcraft:minecraft_bread",
    "natura:common/bread",
] as string[];

for recipe in removeByName {
    recipes.removeByRecipeName(recipe);
}