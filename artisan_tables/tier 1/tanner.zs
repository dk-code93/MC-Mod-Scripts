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