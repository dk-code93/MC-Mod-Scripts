#priority 2

import mods.roots.Bark;
import mods.roots.RunicShears;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.item.IItemStack;

#Woods that need bark
val barkToAdd = {
    "sacred_oak_bark": <biomesoplenty:log_0:4>,
    "cherry_bark": <biomesoplenty:log_0:5>,
    "umbran_bark": <biomesoplenty:log_0:6>,
    "fir_bark": <biomesoplenty:log_0:7>,
    "ethereal_bark": <biomesoplenty:log_1:4>,
    "magic_bark": <biomesoplenty:log_1:5>,
    "mangrove_bark": <biomesoplenty:log_1:6>,
    "palm_bark": <biomesoplenty:log_1:7>,
    "redwood_bark": <biomesoplenty:log_2:4>,
    "willow_bark": <biomesoplenty:log_2:5>,
    "pine_bark": <biomesoplenty:log_2:6>,
    "hellbark_bark": <biomesoplenty:log_2:7>,
    "jacaranda_bark": <biomesoplenty:log_3:4>,
    "mahogany_bark": <biomesoplenty:log_3:5>,
    "ebony_bark": <biomesoplenty:log_3:6>,
    "eucalyptus_bark": <biomesoplenty:log_3:7>,
    "redwood_bark": <biomesoplenty:log_3:4>,
    "dead_bark": <biomesoplenty:log_4:5>,
    "maple_bark": <natura:overworld_logs:0>,
    "silverbell_bark": <natura:overworld_logs:1>,
    "amaranth_bark": <natura:overworld_logs:2>,
    "tiger_bark": <natura:overworld_logs:3>,
    "willow_bark": <natura:overworld_logs2:0>,
    "eucalyptus2_bark": <natura:overworld_logs2:1>,
    "hopseed_bark": <natura:overworld_logs2:2>,
    "sakura_bark": <natura:overworld_logs2:3>,
    "redwood2_bark": <natura:redwood_logs:0>
} as IItemStack[string];

for key in barkToAdd {
    Bark.addRecipe(key, barkToAdd[key], <roots:bark_oak>*4);
}

#Runic Shears
val leather = {
    "fey_leather_bull_angus": <entity:animania:bull_angus>,
    "fey_leather_bull_friesian": <entity:animania:bull_friesian>,
    "fey_leather_bull_hereford": <entity:animania:bull_hereford>,
    "fey_leather_bull_highland": <entity:animania:bull_highland>,
    "fey_leather_bull_holstein": <entity:animania:bull_holstein>,
    "fey_leather_bull_jersey": <entity:animania:bull_jersey>,
    "fey_leather_bull_longhorn": <entity:animania:bull_longhorn>,
    "fey_leather_bull_mooshroom": <entity:animania:bull_mooshroom>,
    "fey_leather_cow_angus": <entity:animania:cow_angus>,
    "fey_leather_cow_friesian": <entity:animania:cow_friesian>,
    "fey_leather_cow_hereford": <entity:animania:cow_hereford>,
    "fey_leather_cow_highland": <entity:animania:cow_highland>,
    "fey_leather_cow_holstein": <entity:animania:cow_holstein>,
    "fey_leather_cow_jersey": <entity:animania:cow_jersey>,
    "fey_leather_cow_longhorn": <entity:animania:cow_longhorn>,
    "fey_leather_cow_mooshroom": <entity:animania:cow_mooshroom>,
    "fey_leather_buck_alpine": <entity:animania:buck_alpine>,
    "fey_leather_buck_angora": <entity:animania:buck_angora>,
    "fey_leather_buck_fainting": <entity:animania:buck_fainting>,
    "fey_leather_buck_kiko": <entity:animania:buck_kiko>,
    "fey_leather_buck_kinder": <entity:animania:buck_kinder>,
    "fey_leather_buck_nigerian_dwarf": <entity:animania:buck_nigerian_dwarf>,
    "fey_leather_buck_pygmy": <entity:animania:buck_pygmy>,
    "fey_leather_doe_alpine": <entity:animania:doe_alpine>,
    "fey_leather_doe_angora": <entity:animania:doe_angora>,
    "fey_leather_doe_fainting": <entity:animania:doe_fainting>,
    "fey_leather_doe_kiko": <entity:animania:doe_kiko>,
    "fey_leather_doe_kinder": <entity:animania:doe_kinder>,
    "fey_leather_doe_nigerian_dwarf": <entity:animania:doe_nigerian_dwarf>,
    "fey_leather_doe_pygmy": <entity:animania:doe_pygmy>,
    "fey_leather_sow_duroc": <entity:animania:sow_duroc>,
    "fey_leather_sow_hampshire": <entity:animania:sow_hampshire>,
    "fey_leather_sow_large_black": <entity:animania:sow_large_black>,
    "fey_leather_sow_large_white": <entity:animania:sow_large_white>,
    "fey_leather_sow_old_spot": <entity:animania:sow_old_spot>,
    "fey_leather_sow_yorkshire": <entity:animania:sow_yorkshire>,
    "fey_leather_hog_duroc": <entity:animania:hog_duroc>,
    "fey_leather_hog_hampshire": <entity:animania:hog_hampshire>,
    "fey_leather_hog_large_black": <entity:animania:hog_large_black>,
    "fey_leather_hog_large_white": <entity:animania:hog_large_white>,
    "fey_leather_hog_old_spot": <entity:animania:hog_old_spot>,
    "fey_leather_hog_yorkshire": <entity:animania:hog_yorkshire>
} as IEntityDefinition[string];

for bort in leather {
    RunicShears.addEntityRecipe(bort, <roots:fey_leather>, leather[bort], 30*20);
}