import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyWithNeedle = {
    /* beds */
    "minecraft:white_bed": 10,
    "minecraft:orange_bed": 10,
    "minecraft:magenta_bed": 10,
    "minecraft:cyan_bed": 10,
    "minecraft:yellow_bed": 10,
    "minecraft:lime_bed": 10,
    "minecraft:pink_bed": 10,
    "minecraft:gray_bed": 10,
    "minecraft:light_gray_bed": 10,
    "minecraft:light_blue_bed": 10,
    "minecraft:purple_bed": 10,
    "minecraft:blue_bed": 10,
    "minecraft:brown_bed": 10,
    "minecraft:green_bed": 10,
    "minecraft:red_bed": 10,
    "minecraft:black_bed": 10,
    /* banners */
    "minecraft:white_banner": 15,
    "minecraft:orange_banner": 15,
    "minecraft:magenta_banner": 15,
    "minecraft:cyan_banner": 15,
    "minecraft:yellow_banner": 15,
    "minecraft:lime_banner": 15,
    "minecraft:pink_banner": 15,
    "minecraft:gray_banner": 15,
    "minecraft:light_gray_banner": 15,
    "minecraft:light_blue_banner": 15,
    "minecraft:purple_banner": 15,
    "minecraft:blue_banner": 15,
    "minecraft:brown_banner": 15,
    "minecraft:green_banner": 15,
    "minecraft:red_banner": 15,
    "minecraft:black_banner": 15,
    /* armor */
    "simpledifficulty:wool_helmet": 20,
    "simpledifficulty:wool_chestplate": 20,
    "simpledifficulty:wool_leggings": 20,
    "simpledifficulty:wool_boots": 20,
    "simpledifficulty:ice_helmet": 20,
    "simpledifficulty:ice_chestplate": 20,
    "simpledifficulty:ice_leggings": 20,
    "simpledifficulty:ice_boots": 20,
} as int[string];

for key, value in copyWithNeedle {
    RecipeBuilder.get("tailor")
         .setCopy(
            Copy.byName(key)
        )
        .addTool(<ore:artisansNeedle>, value)
        .create();
}