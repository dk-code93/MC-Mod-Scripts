import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyNoTool = [
    /* decorative blocks */
    "natura:overworld/grass/colored_grass",
    /* misc */
    "quark:horse_whistle",
    "natura:common/wheat_seed_bag",
    "natura:common/carrots_bag",
    "natura:common/potatos_bag",
    "natura:common/nether_wart_bag",
    "natura:common/barley_seed_bag",
    "natura:common/cotton_seed_bag",
    "animania:salt_lick_0",
 ] as string[];

for recipe in copyNoTool {
    RecipeBuilder.get("farmer")
         .setCopy(
            Copy.byName(recipe)
        )
        .create();
}

val copyWithSaw = {
    /* animal supplies */
    "animania:block_trough": 25,
    "animania:item_cart": 30,
    "animania:item_wagon": 30,
    "animania:wheel": 15,
    "animania:bee_hive": 30,
    "animania:cheese_mold": 20,
    "harvestcraft:groundtrap": 20,
    "harvestcraft:watertrap": 20,
    "harvestcraft:apiary": 20,
    /* decorative blocks */
    "quark:reed_block_stairs": 10,
    "quark:reed_block_slab": 10,
    "quark:turf_slab": 10,
} as int[string];

for key, value in copyWithSaw {
    RecipeBuilder.get("farmer")
         .setCopy(
            Copy.byName(key)
        )
        .addTool(<ore:artisansHandsaw>, value)
        .create();
}

val copyWithSolderer = {
    /* animal supplies */
    "animania:block_hamster_wheel": 20,
    "animania:item_tiller": 25,
    "animania:riding_crop": 20,
} as int[string];

for key, value in copyWithSolderer {
    RecipeBuilder.get("farmer")
         .setCopy(
            Copy.byName(key)
        )
        .addTool(<ore:artisansSolderer>, value)
        .create();
}