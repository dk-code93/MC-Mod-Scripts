import mods.artisanworktables.builder.Copy;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

val recipesToCopy = [
    /* storage blocks */
    "minecraft:coal_block",
    "minecraft:hay_block",
    "minecraft:lapis_block",
    "minecraft:iron_block",
    "minecraft:gold_block",
    "minecraft:diamond_block",
    "minecraft:slime",
    "minecraft:clay",
    "minecraft:nether_wart_block",
    "minecraft:emerald_block",
    "minecraft:redstone_block",
    "minecraft:quartz_block",
    "minecraft:melon_block",
    "biomesoplenty:amethyst_block",
    "biomesoplenty:ruby_block",
    "biomesoplenty:peridot_block",
    "biomesoplenty:topaz_block",
    "biomesoplenty:tanzanite_block",
    "biomesoplenty:malachite_block",
    "biomesoplenty:sapphire_block",
    "biomesoplenty:amber_block",
    "biomesoplenty:mud",
    "charm:gunpowder_block",
    "charm:ender_pearl_block",
    "charm:rotten_flesh_block",
    "quark:biotite_block",
    "quark:charcoal_block",
    "quark:reed_block",
    "quark:sugar_block",
    "mysticalworld:silver_ingot_to_block",
    "mysticalworld:copper_ingot_to_block",
    "mysticalworld:amethyst_gem_to_block",
    "mysticalworld:pearl_block",
    "mysticalagriculture:core/compression/storage/inferium_essence_block_to",
    "mysticalagriculture:core/compression/storage/pudentium_essence_block_to",
    "mysticalagriculture:core/compression/storage/intermedium_essence_block_to",
    "mysticalagriculture:core/compression/storage/superium_essence_block_to",
    "mysticalagriculture:core/compression/storage/supremium_essence_block_to",
    "mysticalagradditions:insanium_essence_block_to",
    "simpledifficulty:block_ice_packed",
] as string[];

for recipe in recipesToCopy {
    RecipeBuilder.get("all")
        .setCopy(
            Copy.byName(recipe)
        )
        .create();
}
