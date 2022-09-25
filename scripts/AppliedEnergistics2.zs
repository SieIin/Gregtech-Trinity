import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;
import mods.appliedenergistics2.Grinder;

    #Remove Grindstone and its tab
mods.jei.JEI.removeAndHide(<appliedenergistics2:grindstone>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:crank>);

    #Circuits

    #Calculation
press.recipeBuilder()
	.inputs(<ore:crystalPureCertusQuartz>)
	.notConsumable(<appliedenergistics2:material:13>)
    .outputs(<appliedenergistics2:material:16>)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

    #Engineering
press.recipeBuilder()
	.inputs(<ore:plateDiamond>)
	.notConsumable(<appliedenergistics2:material:14>)
    .outputs(<appliedenergistics2:material:17>)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

    #Logic
press.recipeBuilder()
	.inputs(<ore:plateGold>)
	.notConsumable(<appliedenergistics2:material:15>)
    .outputs(<appliedenergistics2:material:18>)
    .duration(400)
    .EUt(120)
    .buildAndRegister();