#priority 10
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import mods.inworldcrafting.FluidToItem;
import mods.roots.Fey;

#Throw coarse dirt into water to 'wash' it into gravel
FluidToItem.transform(<minecraft:gravel>, <liquid:water>, [<ore:allCoarseDirt>]);

#Recipe for the aritsan table
val planks = <ore:plankWood>;
val sticks = <ore:stickWood>;
val logs = <ore:logWood>;
recipes.addShapedMirrored("artisan_basic_0", <artisanworktables:worktable:5>, [
    [planks, <minecraft:crafting_table>, planks],
    [planks, planks, planks],
    [logs, sticks, logs]
]);

#Seeds are hard to make
val tier1 = <mysticalagriculture:crafting:0>;
val tier2 = <mysticalagriculture:crafting:1>;
val tier3 = <mysticalagriculture:crafting:2>;
val tier4 = <mysticalagriculture:crafting:3>;
val tier5 = <mysticalagriculture:crafting:4>;
val tier6 = <mysticalagradditions:insanium:0>;
val seed0 = <mysticalagriculture:crafting:16>;
val seed1 = <mysticalagriculture:crafting:17>;
val seed2 = <mysticalagriculture:crafting:18>;
val seed3 = <mysticalagriculture:crafting:19>;
val seed4 = <mysticalagriculture:crafting:20>;
val seed5 = <mysticalagriculture:crafting:21>;
val seed6 = <mysticalagradditions:insanium:1>;


Fey.addRecipe("base_crafting_seed", seed0*2, [
    <roots:stalicripe>, <mysticalagriculture:storage:5>,
    <roots:cloud_berry>, <roots:infernal_bulb>, <roots:dewgonia>
]);

Fey.addRecipe("tier1_crafting_seed", seed1, [
    seed0, tier1, tier1, tier1, tier1,
]);

Fey.addRecipe("tier2_crafting_seed", seed2, [
    seed1, tier2, tier2, tier2, tier2,
]);

Fey.addRecipe("tier3_crafting_seed", seed3, [
    seed2, tier3, tier3, tier3, tier3,
]);

Fey.addRecipe("tier4_crafting_seed", seed4, [
    seed3, tier4, tier4, tier4, tier4,
]);

Fey.addRecipe("tier5_crafting_seed", seed5, [
    seed4, tier5, tier5, tier5, tier5,
]);

Fey.addRecipe("tier6_crafting_seed", seed6, [
    seed5, tier6, tier6, tier6, tier6,
]);

#Mob chunks to include Animania
val allWool = <ore:wool>;
val allFeathers = <ore:feather>;
val allEggs = <ore:egg>;
val beef = <ore:listAllbeefraw>;
val pork = <ore:listAllporkraw>;
val rabbit = <ore:listAllrabbitraw>;

recipes.addShaped("cow_chunk", <mysticalagriculture:chunk:9>, [
    [null, beef, null],
    [beef, <mysticalagriculture:chunk:1>, beef],
    [null, beef, null]
]);

recipes.addShaped("pig_chunk", <mysticalagriculture:chunk:7>, [
    [null, pork, null],
    [pork, <mysticalagriculture:chunk:1>, pork],
    [null, pork, null]
]);

recipes.addShaped("sheep_chunk", <mysticalagriculture:chunk:10>, [
    [null, allWool, null],
    [allWool, <mysticalagriculture:chunk:1>, allWool],
    [null, allWool, null]
]);

recipes.addShaped("chicken_chunk", <mysticalagriculture:chunk:8>, [
    [null, allEggs, null],
    [allFeathers, <mysticalagriculture:chunk:1>, allFeathers],
    [null, allEggs, null]
]);

recipes.addShaped("rabbit_chunk", <mysticalagriculture:chunk:15>, [
    [null, <minecraft:rabbit_hide>, null],
    [rabbit, <mysticalagriculture:chunk:1>, rabbit],
    [null, <minecraft:rabbit_hide>, null]
]);