import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyWithNeedle = {
    /* leather items */
    "minecraft:leather_helmet": 5,
    "minecraft:leather_chestplate": 5,
    "minecraft:leather_leggings": 5,
    "minecraft:leather_boots": 5,
    /* backpacks */
    "improvedbackpacks:item.bound_leather": 5,
    "improvedbackpacks:item.backpack": 10,
    /* cloaks n capes */
    "betteranimalsplus:wolf_cape_classic": 7,
    "betteranimalsplus:wolf_cape_timber": 7,
    "betteranimalsplus:wolf_cape_black": 7,
    "betteranimalsplus:wolf_cape_arctic": 7,
    "betteranimalsplus:wolf_cape_brown": 7,
    "betteranimalsplus:wolf_cape_red": 7,
    "betteranimalsplus:bear_cape_brown": 7,
    "betteranimalsplus:bear_cape_black": 7,
    "betteranimalsplus:bear_cape_kermode": 7,
} as int[string];

for key, value in copyWithNeedle {
    RecipeBuilder.get("tanner")
         .setCopy(
            Copy.byName(key)
        )
        .addTool(<ore:artisansNeedle>, value)
        .create();
}