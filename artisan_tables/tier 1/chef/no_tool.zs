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
    /* desserts */
    "harvestcraft:spumoniicecreamitem_x3",
    "harvestcraft:neopolitanicecreamitem_x3",
    /* yogurt */
    "harvestcraft:vanillayogurtitem",
    "harvestcraft:strawberryyogurtitem",
    "harvestcraft:starfruityogurtitem",
    "harvestcraft:raspberryyogurtitem",
    "harvestcraft:pumpkinyogurtitem",
    "harvestcraft:pomegranateyogurtitem",
    "harvestcraft:plumyogurtitem",
    "harvestcraft:plainyogurtyogurtitem_x4",
    "harvestcraft:pineappleyogurtitem",
    "harvestcraft:persimmonyogurtitem",
    "harvestcraft:pearyogurtitem",
    "harvestcraft:peachyogurtitem",
    "harvestcraft:papayayogurtitem",
    "harvestcraft:orangeyogurtitem",
    "harvestcraft:melonyogurtitem",
    "harvestcraft:mangoyogurtitem",
    "harvestcraft:limeyogurtitem",
    "harvestcraft:lemonyogurtitem",
    "harvestcraft:kiwiyogurtitem",
    "harvestcraft:grapeyogurtitem",
    "harvestcraft:grapefruityogurtitem",
    "harvestcraft:gooseberryyogurtitem",
    "harvestcraft:figyogurtitem",
    "harvestcraft:cranberryyogurtitem",
    "harvestcraft:coconutyogurtitem",
    "harvestcraft:chocolateyogurtitem",
    "harvestcraft:cherryyogurtitem",
    "harvestcraft:blueberryyogurtitem",
    "harvestcraft:blackberryyogurtitem",
    "harvestcraft:bananayogurtitem",
    "harvestcraft:apricotyogurtitem",
    "harvestcraft:appleyogurtitem",
] as string[];

for recipe in copyNoTool {
    RecipeBuilder.get("chef")
         .setCopy(
            Copy.byName(recipe)
        )
        .create();
}

#Plate recipe
RecipeBuilder.get("chef")
  .setShaped([
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]])
  .addOutput(<placeableitems:item_plate> * 4)
  .setName("placable_plate")
  .create();

/* Pams Cooking Tools */
RecipeBuilder.get("chef")
   .setCopy(
      Copy.byName("harvestcraft:tool_cuttingboarditem")
  )
  .addTool(<ore:artisansHandsaw>, 20)
  .create();

RecipeBuilder.get("chef")
   .setCopy(
      Copy.byName("harvestcraft:tool_juiceritem")
  )
  .addTool(<ore:artisansSolderer>, 20)
  .create();

val cookingToolsHammer = [
  "harvestcraft:tool_potitem",
  "harvestcraft:tool_skilletitem",
  "harvestcraft:tool_saucepanitem",
  "harvestcraft:tool_bakewareitem",
] as string[];

for recipe in cookingToolsHammer {
  RecipeBuilder.get("chef")
         .setCopy(
            Copy.byName(recipe)
        )
        .addTool(<ore:artisansHammer>, 20)
        .create();
}

val cookingToolsCarver = [
  "harvestcraft:tool_mortarandpestleitem",
  "harvestcraft:tool_mixingbowlitem",
] as string[];

for recipe in cookingToolsCarver {
  RecipeBuilder.get("chef")
         .setCopy(
            Copy.byName(recipe)
        )
        .addTool(<ore:artisansCarver>, 20)
        .create();
}