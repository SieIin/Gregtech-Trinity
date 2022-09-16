import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;

print("Assemblyline.zs Start");

    #Void Ore Miner T1
recipes.remove(<environmentaltech:void_ore_miner_cont_1>);

val VOMT1 as IIngredient[] = [
    <metaitem:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 64,
    <metaitem:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 64,
    <metaitem:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 64,
    <metaitem:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 64,
    <metaitem:boltTritanium> * 24,
    <metaitem:screwSeaborgium> * 16,
    <metaitem:gearHssg> * 4,
    <metaitem:electric.motor.uv> * 4,
    <ore:circuitUv> * 4,
    <metaitem:emitter.uv>,
    <metaitem:sensor.uv>,
    <metaitem:large_miner.ev>,
    <metaitem:large_miner.iv>,
    <metaitem:large_miner.luv>
];

assemblyline.recipeBuilder()
    .inputs(VOMT1)
    .fluidInputs([<liquid:polybenzimidazole> * 4608, <liquid:hastelloy_n> * 1152])
    .outputs(<environmentaltech:void_ore_miner_cont_1>)
    .duration(600).EUt(320000).buildAndRegister();

val VOMT2 as IIngredient[] = [
    <metaitem:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 64,
    <metaitem:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 64,
    <metaitem:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 64,
    <metaitem:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 64,
    <metaitem:screwIncoloy813> * 64,
    <metaitem:screwIncoloy813> * 64,
    <metaitem:stickNaquadahAlloy> * 16,
    <metaitem:electric.motor.uhv> * 8,
    //<metaitem:plateEnrichednaquadahalloy> * 8
    <metaitem:plateRuridit> * 8,
    <ore:circuitUhv> * 4,
    <metaitem:gearIncoloy813> * 4,
    <metaitem:sensor.uhv> * 2,
    <environmentaltech:void_ore_miner_cont_1>
];

assemblyline.recipeBuilder()
    .inputs(VOMT2)
    .fluidInputs([<liquid:soldering_alloy> * 3888/*<liquid:polybenzimidazole> * 4608, <liquid:hastelloy_n> * 1152*/])
    .outputs(<environmentaltech:void_ore_miner_cont_2>)
    .duration(600).EUt(1000000).buildAndRegister();