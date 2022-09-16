#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;

    #Hastelloy-N

val HN as IIngredient[] = [
    <metaitem:dustNickel> * 15,
    <metaitem:dustMolybdenum> * 4, 
    <metaitem:dustYttrium> * 2, 
    <metaitem:dustChrome> * 2, 
    <metaitem:dustTitanium> * 2,
    <metaitem:circuit.integrated>.withTag({Configuration: 5})
];

mixer.recipeBuilder()
    .inputs(HN)
    .outputs([<metaitem:dustHastelloyN> * 25])
    .duration(1626).EUt(30).buildAndRegister();
    
    #Hastelloy-X78

val HX78 as IIngredient[] = [
    <metaitem:dustNaquadahAlloy> * 10, 
    <metaitem:dustRhenium> * 5, 
    <metaitem:dustNaquadria> * 4, 
    <metaitem:dustGadolinium> * 3, 
    <metaitem:dustPolonium> * 3, 
    #<metaitem:dustStrontium> * 2,
    <metaitem:circuit.integrated>.withTag({Configuration: 8})
];

mixer.recipeBuilder()
    .inputs(HX78)
    .outputs([<metaitem:dustHastelloyX78> * 30])
    .duration(6570).EUt(30).buildAndRegister();