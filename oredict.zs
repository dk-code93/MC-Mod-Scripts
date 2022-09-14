#priority 100

import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

#coarse dirt
val dirts = [
    <minecraft:dirt:1>,
    <biomesoplenty:dirt:8>,
    <biomesoplenty:dirt:9>,
    <biomesoplenty:dirt:10>
] as IItemStack[];

val coarseDirtDict = <ore:allCoarseDirt>;

coarseDirtDict.addItems(dirts);

#hoes
val hoes = [
    <minecraft:iron_hoe>,
    <minecraft:golden_hoe>,
    <minecraft:diamond_hoe>,
    <futuremc:netherite_hoe>,
    <mysticalworld:copper_hoe>,
    <mysticalworld:silver_hoe>,
    <mysticalworld:amethyst_hoe>,
    <notreepunching:hoe/flint>,
    <roots:living_hoe>,
] as IItemStack[];

val hoeDict = <ore:allHoes>;

hoeDict.addItems(hoes);

#tier 2 tools
val framingHammers2 = [
    <artisanworktables:artisans_framing_hammer_iron>,
    <artisanworktables:artisans_framing_hammer_copper>,
    <artisanworktables:artisans_framing_hammer_silver>,
    <artisanworktables:artisans_framing_hammer_gold>,
    <artisanworktables:artisans_framing_hammer_diamond>,
] as IItemStack[];

val t2frameHammers = <ore:framingHammersTier2>;

t2frameHammers.addItems(framingHammers2);