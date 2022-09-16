#priority -1000

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.mods.IMod;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print("Cleaning.....");

    #AE2 facade hide 
val ae2 as IMod = loadedMods["appliedenergistics2"];
if(!isNull(ae2)) {
    val ae2Items as IItemStack[] = ae2.items;

    for item in ae2Items {
        if(item.displayName has "Cable Facade") {
            mods.jei.JEI.hide(item);
        }
    }
}

val ae2a as IMod = loadedMods["aeadditions"];
if(!isNull(ae2a)) {
    val ae2aItems as IItemStack[] = ae2a.items;

    for item in ae2aItems {
        if(item.displayName has "ME Fluid Pattern") {
            mods.jei.JEI.hide(item);
        }
    }
}

/*    #MysticalAgriculture crops hide
val ma as IMod = loadedMods["mysticalagriculture"];
if(!isNull(ma)) {
    val maItems as IItemStack[] = ma.items;

    for item in maItems {
        if(item.displayName has "Crop") {
            mods.jei.JEI.hide(item);
        }
    }
}

    #Gregicality crops hide
val ga as IMod = loadedMods["gtadditions"];
if(!isNull(ga)) {
    val gaItems as IItemStack[] = ga.items;

    for item in gaItems {
        if(item.displayName has "Crop") {
            mods.jei.JEI.hide(item);
        }
    }
}*/

print("Done!");