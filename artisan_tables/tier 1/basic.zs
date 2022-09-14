import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

#Copying vanilla recipes
val recipesToCopy = [
  /* starter items */
    "minecraft:furnace",
    "minecraft:paper",
    "roots:paper",
    /* basic tools */
    "notreepunching:tools/flint_pickaxe",
    "notreepunching:tools/flint_axe",
    "notreepunching:tools/flint_shovel",
    "notreepunching:tools/flint_hoe",
    "notreepunching:tools/flint_knife",
    "notreepunching:tools/clay_tool",
    "notreepunching:tools/fire_starter",
    "simpledifficulty:campfire",
    "simpledifficulty:charcoal_filter",
    "simpledifficulty:spit",
    "quark:rope",
    /* artisan tools */
    "artisanworktables:recipe.artisans_framing_hammer.flint",
    "artisanworktables:recipe.artisans_cutters.flint",
    "artisanworktables:recipe.artisans_hammer.flint",
    "artisanworktables:recipe.artisans_handsaw.flint",
    "artisanworktables:recipe.artisans_cutting_board.flint",
    "artisanworktables:recipe.artisans_pan.flint",
    "artisanworktables:recipe.artisans_beaker.flint",
    "artisanworktables:recipe.artisans_burner.flint",
    "artisanworktables:recipe.artisans_pencil.flint",
    "artisanworktables:recipe.artisans_tsquare.flint",
    "artisanworktables:recipe.artisans_driver.flint",
    "artisanworktables:recipe.artisans_spanner.flint",
    "artisanworktables:recipe.artisans_lens.flint",
    "artisanworktables:recipe.artisans_sifter.flint",
    "artisanworktables:recipe.artisans_gemcutter.flint",
    "artisanworktables:recipe.artisans_pliers.flint",
    "artisanworktables:recipe.artisans_athame.flint",
    "artisanworktables:recipe.artisans_grimoire.flint",
    "artisanworktables:recipe.artisans_chisel.flint",
    "artisanworktables:recipe.artisans_trowel.flint",
    "artisanworktables:recipe.artisans_carver.flint",
    "artisanworktables:recipe.artisans_razor.flint",
    "artisanworktables:recipe.artisans_compass.flint",
    "artisanworktables:recipe.artisans_quill.flint",
    "artisanworktables:recipe.artisans_needle.flint",
    "artisanworktables:recipe.artisans_shears.flint",
    "artisanworktables:recipe.artisans_punch.flint",
    "artisanworktables:recipe.artisans_groover.flint",
    "artisanworktables:recipe.artisans_mortar.flint",
    "artisanworktables:recipe.artisans_knife.flint",
    "artisanworktables:recipe.artisans_hatchet.flint",
    "artisanworktables:recipe.artisans_file.flint",
    "artisanworktables:recipe.artisans_solderer.flint",
] as string[];

for recipe in recipesToCopy {
    RecipeBuilder.get("basic")
        .setCopy(
            Copy.byName(recipe)
        )
        .create();
}

#Recipes for tier 1 tables
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:wool>, <minecraft:crafting_table>, <ore:wool>],
    [<ore:wool>, <ore:string>, <ore:wool>],
    [<ore:logWood>, <ore:stickWood>, <ore:logWood>]])
  .addTool(<ore:artisansFramingHammer>, 10)
  .addOutput(<artisanworktables:worktable>)
  .setName("artisan_tailor_0")
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plankWood>, <minecraft:crafting_table>, <ore:plankWood>],
    [<ore:plankWood>, <ore:logWood>, <ore:plankWood>],
    [<ore:logWood>, <ore:stickWood>, <ore:logWood>]])
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<artisanworktables:worktable:1>)
  .setName("artisan_carpenter_0")
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:stone_slab:3>, <minecraft:stone_slab:3>, <minecraft:stone_slab:3>],
    [<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>],
    [<ore:logWood>, <ore:stickWood>, <ore:logWood>]])
  .addTool(<ore:artisansTrowel>, 10)
  .addOutput(<artisanworktables:worktable:2>)
  .setName("artisan_mason_0")
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:ingotIron>, <futuremc:smithing_table>, <ore:ingotIron>],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
    [<ore:logWood>, <ore:stickWood>, <ore:logWood>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<artisanworktables:worktable:3>)
  .setName("artisan_blacksmith_0")
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
    [<ore:ingotIron>, <minecraft:redstone>, <ore:ingotIron>],
    [<ore:logWood>, <ore:stickWood>, <ore:logWood>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<artisanworktables:worktable:6>)
  .setName("artisan_engineer_0")
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:dye:4>, <minecraft:obsidian>, <minecraft:dye:4>],
    [<minecraft:dye:4>, <mysticalagriculture:storage:5>, <minecraft:dye:4>],
    [<ore:logWood>, <ore:stickWood>, <ore:logWood>]])
  .addTool(<ore:artisansChisel>, 10)
  .addOutput(<artisanworktables:worktable:7>)
  .setName("artisan_mage_0")
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:bookshelf>, <minecraft:crafting_table>, <minecraft:bookshelf>],
    [<minecraft:bookshelf>, <minecraft:writable_book>, <minecraft:bookshelf>],
    [<ore:logWood>, <ore:stickWood>, <ore:logWood>]])
  .addTool(<ore:artisansTSquare>, 10)
  .addOutput(<artisanworktables:worktable:8>)
  .setName("artisan_scribe_0")
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plankWood>, <ore:dirt>, <ore:plankWood>],
    [<ore:plankWood>, <ore:allHoes>, <ore:plankWood>],
    [<ore:logWood>, <ore:stickWood>, <ore:logWood>]])
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<artisanworktables:worktable:10>)
  .setName("artisan_farmer_0")
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:stone:4>, <ore:artisansCuttingBoard>, <minecraft:stone:4>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:logWood>, <ore:stickWood>, <ore:logWood>]])
  .addTool(<ore:artisansFramingHammer>, 10)
  .addOutput(<artisanworktables:worktable:11>)
  .setName("artisan_chef_0")
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:paper>, <ore:paper>, <ore:paper>],
    [<ore:plankWood>, <ore:artisansTSquare>, <ore:plankWood>],
    [<ore:logWood>, <ore:stickWood>, <ore:logWood>]])
  .addTool(<ore:artisansFramingHammer>, 10)
  .addOutput(<artisanworktables:worktable:12>)
  .setName("artisan_designer_0")
  .create();

RecipeBuilder.get("basic")
  .setShaped([
    [<ore:leather>, <ore:leather>, <ore:leather>],
    [<ore:plankWood>, <ore:artisansCutters>, <ore:plankWood>],
    [<ore:logWood>, <ore:stickWood>, <ore:logWood>]])
  .addTool(<ore:artisansFramingHammer>, 10)
  .addOutput(<artisanworktables:worktable:13>)
  .setName("artisan_tanner_0")
  .create();