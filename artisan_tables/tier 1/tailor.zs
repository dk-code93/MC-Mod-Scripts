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
    /* quilted wool */
    "quark:quilted_wool": 5,
    "quark:quilted_wool_1": 5,
    "quark:quilted_wool_2": 5,
    "quark:quilted_wool_3": 5,
    "quark:quilted_wool_4": 5,
    "quark:quilted_wool_5": 5,
    "quark:quilted_wool_6": 5,
    "quark:quilted_wool_7": 5,
    "quark:quilted_wool_8": 5,
    "quark:quilted_wool_9": 5,
    "quark:quilted_wool_10": 5,
    "quark:quilted_wool_11": 5,
    "quark:quilted_wool_12": 5,
    "quark:quilted_wool_14": 5,
    "quark:quilted_wool_15": 5,
    "quark:quilted_wool_16": 5,
    "quark:quilted_wool_17": 5,
    "quark:quilted_wool_18": 5,
    "quark:quilted_wool_19": 5,
    "quark:quilted_wool_20": 5,
    "quark:quilted_wool_21": 5,
    "quark:quilted_wool_22": 5,
    "quark:quilted_wool_23": 5,
    "quark:quilted_wool_24": 5,
    "quark:quilted_wool_25": 5,
    "quark:quilted_wool_26": 5,
    "quark:quilted_wool_27": 5,
    "quark:quilted_wool_28": 5,
    "quark:quilted_wool_29": 5,
    "quark:quilted_wool_30": 5,
    "quark:quilted_wool_31": 5,
    "quark:quilted_wool_32": 5,
    "quark:quilted_wool_33": 5,
    "quark:quilted_wool_34": 5,
    "quark:quilted_wool_35": 5,
    "quark:quilted_wool_36": 5,
    "quark:quilted_wool_37": 5,
    "quark:quilted_wool_38": 5,
    "quark:quilted_wool_39": 5,
    "quark:quilted_wool_40": 5,
    "quark:quilted_wool_41": 5,
    "quark:quilted_wool_42": 5,
    "quark:quilted_wool_43": 5,
    "quark:quilted_wool_44": 5,
    "quark:quilted_wool_45": 5,
    "quark:quilted_wool_46": 5,
    "quark:quilted_wool_47": 5,
} as int[string];

for key, value in copyWithNeedle {
    RecipeBuilder.get("tailor")
         .setCopy(
            Copy.byName(key)
        )
        .addTool(<ore:artisansNeedle>, value)
        .create();
}