import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyWithChisel = {
    "minecraft:enchanting_table": 2,
    "minecraft:ender_chest": 2,
    /* roots */
    "roots:fey_crafter": 3,
    "roots:grove_stone": 3,
    "roots:offertory_plate": 3,
    "roots:imbuer": 3,
    "roots:pyre": 3,
    "roots:mortar": 3,
} as int[string];

for key, value in copyWithChisel {
    RecipeBuilder.get("mage")
         .setCopy(
            Copy.byName(key)
        )
        .addTool(<ore:artisansChisel>, value)
        .create();
}

val copyWithGrimoire = {
    /* essence crafting */
    "mysticalagriculture:dirt": 4,
    "mysticalagriculture:grass": 4,
    "mysticalagriculture:dirt_1": 4,
    "mysticalagriculture:dirt_2": 4,
    "mysticalagriculture:gravel": 4,
    "mysticalagriculture:mycelium": 4,
    "mysticalagriculture:brown_mushroom": 4,
    "mysticalagriculture:red_mushroom": 4,
    "mysticalagriculture:clay_ball": 4,
    "mysticalagriculture:sand": 4,
    "mysticalagriculture:sand_1": 4,
    "mysticalagriculture:cobblestone": 4,
    "mysticalagriculture:stone": 4,
    "mysticalagriculture:stone_1": 4,
    "mysticalagriculture:stone_2": 4,
    "mysticalagriculture:stone_3": 4,
    "mysticalagriculture:stonebrick": 4,
    "mysticalagriculture:stonebrick_1": 4,
    "mysticalagriculture:stonebrick_2": 4,
    "mysticalagriculture:flint": 4,
    "mysticalagriculture:mossy_cobblestone": 4,
    "mysticalagriculture:vine": 4,
    "mysticalagriculture:cactus": 4,
    "mysticalagriculture:reeds": 4,
    "mysticalagriculture:pumpkin": 4,
    "mysticalagriculture:melon_block": 4,
    "mysticalagriculture:wheat": 4,
    "mysticalagriculture:potato": 4,
    "mysticalagriculture:poisonous_potato": 4,
    "mysticalagriculture:carrot": 4,
    "mysticalagriculture:beetroot": 4,
    "mysticalagriculture:waterlily": 4,
    "mysticalagriculture:dye": 4,
    "mysticalagriculture:apple": 4,
    "mysticalagriculture:tallgrass": 4,
    "mysticalagriculture:sapling": 4,
    "mysticalagriculture:sapling_1": 4,
    "mysticalagriculture:sapling_2": 4,
    "mysticalagriculture:sapling_3": 4,
    "mysticalagriculture:sapling_4": 4,
    "mysticalagriculture:sapling_5": 4,
    "mysticalagriculture:nether_wart": 4,
    "mysticalagriculture:chorus_fruit": 4,
    "mysticalagriculture:water_bucket": 4,
    "mysticalagriculture:snow": 4,
    "mysticalagriculture:ice": 4,
    "mysticalagriculture:packed_ice": 4,
    "mysticalagriculture:lava_bucket": 4,
    "mysticalagriculture:dye_1": 4,
    "mysticalagriculture:dye_2": 4,
    "mysticalagriculture:dye_3": 4,
    "mysticalagriculture:dye_4": 4,
    "mysticalagriculture:dye_5": 4,
    "mysticalagriculture:dye_6": 4,
    "mysticalagriculture:dye_7": 4,
    "mysticalagriculture:dye_8": 4,
    "mysticalagriculture:dye_9": 4,
    "mysticalagriculture:dye_10": 4,
    "mysticalagriculture:dye_11": 4,
    "mysticalagriculture:dye_12": 4,
    "mysticalagriculture:netherrack": 4,
    "mysticalagriculture:soul_sand": 4,
    "mysticalagriculture:nether_brick": 4,
    "mysticalagriculture:coal": 4,
    "mysticalagriculture:rotten_flesh": 4,
    "mysticalagriculture:skull": 4,
} as int[string];

for key, value in copyWithGrimoire {
    RecipeBuilder.get("mage")
         .setCopy(
            Copy.byName(key)
        )
        .addTool(<ore:artisansGrimoire>, value)
        .create();
}