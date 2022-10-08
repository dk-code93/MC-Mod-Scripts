import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyNoTool = [
    "mysticalworld:book",
    "ancientbeasts:bestiarium",
    "animania:animania_manual",
] as string[];

for value in copyNoTool {
    RecipeBuilder.get("engineer")
         .setCopy(
            Copy.byName(value)
        )
        .create();
}

val copyWithQuill = {
    "waystones:return_scroll": 30,
    "waystones:bound_scroll": 30,
    "waystones:warp_scroll": 30,
} as int[string];

for key, value in copyWithQuill {
    RecipeBuilder.get("engineer")
         .setCopy(
            Copy.byName(key)
        )
        .addTool(<ore:artisansQuill>, value)
        .create();
}