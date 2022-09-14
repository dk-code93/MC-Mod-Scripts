#priority 99

import crafttweaker.item.IItemStack;

val removeByItem = [
    <mysticalagriculture:crafting:16>,
    <mysticalagriculture:crafting:17>,
    <mysticalagriculture:crafting:18>,
    <mysticalagriculture:crafting:19>,
    <mysticalagriculture:crafting:20>,
    <mysticalagriculture:crafting:21>,
    <mysticalagradditions:insanium:1>,
] as IItemStack[];

for item in removeByItem {
    recipes.remove(item);
}