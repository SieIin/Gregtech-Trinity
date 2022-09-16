import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;

print("GreggyTech.zs Start");

    #Casings

#Table Removal
    recipes.removeByRecipeName("gregtech:casing_mv");
    recipes.removeByRecipeName("gregtech:casing_ev");    
    recipes.removeByRecipeName("gregtech:casing_iv");  
    recipes.removeByRecipeName("gregtech:casing_luv");
    recipes.removeByRecipeName("gregtech:casing_zpm");
    recipes.removeByRecipeName("gregtech:casing_uv");

#Assembler Removal
    assembler.findRecipe(16, [<metaitem:plateAluminium> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();
    assembler.findRecipe(16, [<metaitem:plateTitanium> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();
    assembler.findRecipe(16, [<metaitem:plateTungstenSteel> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();
    assembler.findRecipe(16, [<metaitem:plateRhodiumPlatedPalladium> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();
    assembler.findRecipe(16, [<metaitem:plateNaquadahAlloy> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();
    assembler.findRecipe(16, [<metaitem:plateDarmstadtium> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();

    #Mv Casing
recipes.addShaped(<gregtech:machine_casing:2>, [
    [<metaitem:plateBrimabright>, <metaitem:plateBrimabright>, <metaitem:plateBrimabright>],
    [<metaitem:plateBrimabright>, <ore:craftingToolWrench>, <metaitem:plateBrimabright>],
    [<metaitem:plateBrimabright>, <metaitem:plateBrimabright>, <metaitem:plateBrimabright>]
]);

    #Ev Casing
recipes.addShaped(<gregtech:machine_casing:4>, [
    [<metaitem:plateBt6>, <metaitem:plateBt6>, <metaitem:plateBt6>],
    [<metaitem:plateBt6>, <ore:craftingToolWrench>, <metaitem:plateBt6>],
    [<metaitem:plateBt6>, <metaitem:plateBt6>, <metaitem:plateBt6>]
]);

    #Luv Casing

val LuvC as IIngredient[] = [
    <metaitem:frameHastelloyN>,
    <metaitem:plateDoubleChrome> * 4,
    <metaitem:plateHastelloyN> * 6,
    <metaitem:stickLongChrome> * 4,
    #<modularmaterials:item_casing:1> * 4,
    <metaitem:boltHssg> * 4,
    <metaitem:screwHsse>  * 4
];

assembler.recipeBuilder()
    .inputs(LuvC)
    .property("circuit", 8)
    .outputs([<gregtech:machine_casing:6>])
    .duration(200).EUt(7680).buildAndRegister();

    #ZPM Casing

val ZpmC as IIngredient[] = [
    <metaitem:frameLafium>,
    <metaitem:plateDoubleLafium> * 6,
    <metaitem:plateLafium> * 8,
    <metaitem:stickLongIridium> * 8,
    #<modularmaterials:item_casing:2> * 4,
    <metaitem:boltHssg> * 8,
    <metaitem:screwHsse>  * 8
];

assembler.recipeBuilder()
    .inputs(ZpmC)
    .property("circuit", 8)
    .outputs([<gregtech:machine_casing:7>])
    .duration(400).EUt(30720).buildAndRegister();

    #Uv Casing

val UvC as IIngredient[] = [
    <metaitem:frameHastelloyK243>,
    <metaitem:plateDoubleOsmiridium> * 8,
    <metaitem:plateHastelloyK243> * 12,
    <metaitem:stickLongOsmiridium> * 12, 
    #<modularmaterials:item_casing:3> * 8,
    <metaitem:boltHssg> * 16,
    <metaitem:screwHsse> * 16
];

assembler.recipeBuilder()
    .inputs(UvC)
    .property("circuit", 8)
    .outputs([<gregtech:machine_casing:8>])
    .duration(600).EUt(122880).buildAndRegister();
