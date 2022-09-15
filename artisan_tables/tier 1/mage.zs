import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val copyWithChisel = {
    "minecraft:enchanting_table": 30,
    "minecraft:ender_chest": 40,
    /* roots */
    "roots:fey_crafter": 20,
    "roots:grove_stone": 30,
    "roots:offertory_plate": 30,
    "roots:imbuer": 30,
    "roots:pyre": 30,
    "roots:mortar": 15,
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
    "mysticalagriculture:dirt": 40,
    "mysticalagriculture:grass": 40,
    "mysticalagriculture:dirt_1": 40,
    "mysticalagriculture:dirt_2": 40,
    "mysticalagriculture:gravel": 40,
    "mysticalagriculture:mycelium": 40,
    "mysticalagriculture:brown_mushroom": 40,
    "mysticalagriculture:red_mushroom": 40,
    "mysticalagriculture:clay_ball": 40,
    "mysticalagriculture:sand": 40,
    "mysticalagriculture:sand_1": 40,
    "mysticalagriculture:cobblestone": 40,
    "mysticalagriculture:stone": 40,
    "mysticalagriculture:stone_1": 40,
    "mysticalagriculture:stone_2": 40,
    "mysticalagriculture:stone_3": 40,
    "mysticalagriculture:stonebrick": 40,
    "mysticalagriculture:stonebrick_1": 40,
    "mysticalagriculture:stonebrick_2": 40,
    "mysticalagriculture:flint": 40,
    "mysticalagriculture:mossy_cobblestone": 40,
    "mysticalagriculture:vine": 40,
    "mysticalagriculture:cactus": 40,
    "mysticalagriculture:reeds": 40,
    "mysticalagriculture:pumpkin": 40,
    "mysticalagriculture:melon_block": 40,
    "mysticalagriculture:wheat": 40,
    "mysticalagriculture:potato": 40,
    "mysticalagriculture:poisonous_potato": 40,
    "mysticalagriculture:carrot": 40,
    "mysticalagriculture:beetroot": 40,
    "mysticalagriculture:waterlily": 40,
    "mysticalagriculture:dye": 40,
    "mysticalagriculture:apple": 40,
    "mysticalagriculture:tallgrass": 40,
    "mysticalagriculture:sapling": 40,
    "mysticalagriculture:sapling_1": 40,
    "mysticalagriculture:sapling_2": 40,
    "mysticalagriculture:sapling_3": 40,
    "mysticalagriculture:sapling_4": 40,
    "mysticalagriculture:sapling_5": 40,
    "mysticalagriculture:nether_wart": 40,
    "mysticalagriculture:chorus_fruit": 40,
    "mysticalagriculture:water_bucket": 40,
    "mysticalagriculture:snow": 40,
    "mysticalagriculture:ice": 40,
    "mysticalagriculture:packed_ice": 40,
    "mysticalagriculture:lava_bucket": 40,
    "mysticalagriculture:dye_1": 40,
    "mysticalagriculture:dye_2": 40,
    "mysticalagriculture:dye_3": 40,
    "mysticalagriculture:dye_4": 40,
    "mysticalagriculture:dye_5": 40,
    "mysticalagriculture:dye_6": 40,
    "mysticalagriculture:dye_7": 40,
    "mysticalagriculture:dye_8": 40,
    "mysticalagriculture:dye_9": 40,
    "mysticalagriculture:dye_10": 40,
    "mysticalagriculture:dye_11": 40,
    "mysticalagriculture:dye_12": 40,
    "mysticalagriculture:netherrack": 40,
    "mysticalagriculture:soul_sand": 40,
    "mysticalagriculture:nether_brick": 40,
    "mysticalagriculture:coal": 40,
    "mysticalagriculture:rotten_flesh": 40,
    "mysticalagriculture:skull": 40,
} as int[string];

for key, value in copyWithGrimoire {
    RecipeBuilder.get("mage")
         .setCopy(
            Copy.byName(key)
        )
        .addTool(<ore:artisansGrimoire>, value)
        .create();
}