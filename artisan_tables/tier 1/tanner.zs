import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyWithNeedle = {
    /* leather items */
    "minecraft:leather_helmet": 20,
    "minecraft:leather_chestplate": 20,
    "minecraft:leather_leggings": 20,
    "minecraft:leather_boots": 20,
    "ancientbeasts:scale_armor": 20,
    "ancientbeasts:scale_hood": 20,
    "ancientbeasts:charred_cloak": 20,
    "harvestcraft:hardenedleatherhelmitem": 20,
    "harvestcraft:hardenedleatherchestitem": 20,
    "harvestcraft:hardenedleatherleggingsitem": 20,
    "harvestcraft:hardenedleatherbootsitem": 20,
    "natura:tools/entities/imp_leather_helmet": 20,
    "natura:tools/entities/imp_leather_leggings": 20,
    "natura:tools/entities/imp_leather_boots": 20,
    "natura:tools/entities/imp_leather_chestplate": 20,
    /* backpacks */
    "improvedbackpacks:item.bound_leather": 10,
    "improvedbackpacks:item.backpack": 35,
    /* cloaks n capes */
    "betteranimalsplus:wolf_cape_classic": 20,
    "betteranimalsplus:wolf_cape_timber": 20,
    "betteranimalsplus:wolf_cape_black": 20,
    "betteranimalsplus:wolf_cape_arctic": 20,
    "betteranimalsplus:wolf_cape_brown": 20,
    "betteranimalsplus:wolf_cape_red": 20,
    "betteranimalsplus:bear_cape_brown": 20,
    "betteranimalsplus:bear_cape_black": 20,
    "betteranimalsplus:bear_cape_kermode": 20,
} as int[string];

for key, value in copyWithNeedle {
    RecipeBuilder.get("tanner")
         .setCopy(
            Copy.byName(key)
        )
        .addTool(<ore:artisansNeedle>, value)
        .create();
}

val copyWithChisel = {
    /* backpack upgrades */
    "improvedbackpacks:blank_upgrade_1": 25,
    "improvedbackpacks:blank_upgrade_2": 25,
    "improvedbackpacks:item.upgrade": 30,
    "improvedbackpacks:item.upgrade.storage_stone": 35,
} as int[string];

for key, value in copyWithChisel {
    RecipeBuilder.get("tanner")
         .setCopy(
            Copy.byName(key)
        )
        .addTool(<ore:artisansChisel>, value)
        .create();
}