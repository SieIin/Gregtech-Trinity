#priority 998
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;

print("-------------- Ore Dictionary Start --------------");

	#WHAT DA FUCK HOW CAN IT USED FOR RECIPE?????
var StickUnify as IItemStack[][IOreDictEntry] = {
	<ore:stickWood> : [
		<byg:aspenstickpile>
	]
};

for oreDictEntry, items in StickUnify {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

	#Aluminium unify
<ore:plateAluminum>.add(<metaitem:plateAluminium>);

	#Constantan unify with Cupronickel
<ore:ingotCupronickel>.add(<immersiveengineering:metal:6>);
<ore:ingotCupronickel>.add(<thermalfoundation:material:164>);
<ore:plateCupronickel>.add(<immersiveengineering:metal:36>);
<ore:plateCupronickel>.add(<thermalfoundation:material:356>);

	#Add Carbon Fiber Plate to Carbon Plate
<ore:plateCarbon>.add(<metaitem:carbon.plate>);

    #Blocks

var blocksUnify as IItemStack[][IOreDictEntry] = {

	#blockAluminum
	<ore:blockAluminum>: [
		<thermalfoundation:storage:4>,
		<immersiveengineering:storage:1>,
        <nuclearcraft:ingot_block:12>,
        <galacticraftcore:basic_block_core:11>
	],

	#blockBronze
	<ore:blockBronze> : [
		<thermalfoundation:storage_alloy:3>,
		<mekanism:basicblock:1>
	],

	#blockCobalt
	<ore:blockCobalt> : [
        <galaxyspace:decoblocks:4>
	],

	#blockCopper
	<ore:blockCopper> : [
		<thermalfoundation:storage>,
		<mekanism:basicblock:12>,
        <immersiveengineering:storage>,
		<nuclearcraft:ingot_block>,
        <galacticraftcore:basic_block_core:9>
	],

	#blockCharcoal
	<ore:blockCharcoal> : [
        <thermalfoundation:storage_resource>,
		<mekanism:basicblock:3>,
		<actuallyadditions:block_misc:5>
	],

	#blockConstantan
	<ore:blockConstantan> : [
		<thermalfoundation:storage_alloy:4>,
		<immersiveengineering:storage:6>
	],

	#blockElectrum
	<ore:blockElectrum> : [
		<thermalfoundation:storage_alloy:1>,
        <immersiveengineering:storage:6>
	],

	#blockInvar
	<ore:blockInvar> : [
		<thermalfoundation:storage_alloy:2>
	],

	#blockIridium
	<ore:blockIridium> : [
		<thermalfoundation:storage:7>
	],

	#blockLead
	<ore:blockLead> : [
		<thermalfoundation:storage:3>,
        <immersiveengineering:storage:2>,
        <nuclearcraft:ingot_block:2>,
        <galacticraftplanets:venus:12>
	],

    #blockLithium
    <ore:blockLithium> : [
        <nuclearcraft:ingot_block:6>
    ],

    #blockMagnesium
    <ore:blockMagnesium> : [
        <nuclearcraft:ingot_block:7>,
        <galaxyspace:decoblocks:6>,
        <extraplanets:saturn:7>
    ],

    #blockManganese
    <ore:blockManganese> : [
        <nuclearcraft:ingot_block:11>
    ],

	#blockNickel
	<ore:blockNickel> : [
		<thermalfoundation:storage:5>,
        <immersiveengineering:storage:4>,
        <galaxyspace:decoblocks:5>,
        <extraplanets:jupiter>
	],

	#blockPlatinum
	<ore:blockPlatinum> : [
		<thermalfoundation:storage:6>,
        <extraplanets:kepler22b:14>
	],

	#blockSilver
	<ore:blockSilver> : [
		<thermalfoundation:storage:2>
	],

	#blockSteel
	<ore:blockSteel> : [
		<thermalfoundation:storage_alloy>,
		<mekanism:basicblock:5>,
        <immersiveengineering:storage:3>,
        <nuclearcraft:ingot_block>
	],

	#blockTin
	<ore:blockTin> : [
		<thermalfoundation:storage:1>,
		<mekanism:basicblock:13>,
		<nuclearcraft:ingot_block:1>,
        <galacticraftcore:basic_block_core:10>
	],

	#blockTitanium
	<ore:blockTitanium> : [
		<galacticraftplanets:asteroids_block:7>
	],

    #blockThorium
    <ore:blockThorium> : [
        <nuclearcraft:ingot_block:3>
    ],

    #blockUranium
    <ore:blockUranium> : [
        <immersiveengineering:storage:5>,
        <nuclearcraft:ingot_block:4>
    ],

    #blockZirconium
    <ore:blockZirconium> : [
        <nuclearcraft:ingot_block:10>
    ]
};

for oreDictEntry, items in blocksUnify {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

	
	#Ingot

var ingotsUnify as IItemStack[][IOreDictEntry] = {

	#ingotAluminium
	<ore:ingotAluminium> : [
		<galacticraftcore:basic_item:5>,
		<immersiveengineering:metal:1>,
		<nuclearcraft:ingot:12>,
		<techreborn:ingot>,
		<thermalfoundation:material:132>
	],

	#ingotBrass
	<ore:ingotBrass> : [
		<techreborn:ingot:1>
	],

	#ingotBronze 
	<ore:ingotBronze> : [
		<mekanism:ingot:2>,
		<nuclearcraft:alloy>,
		<techreborn:ingot:2>,
		<thermalfoundation:material:163>
	],

	#ingotChrome
	<ore:ingotChrome> : [
		<techreborn:ingot:3>
	],
	
	#ingotCobalt
	<ore:ingotCobalt> : [
		<galaxyspace:ingots>,
	],

	#ingotCopper
	<ore:ingotCopper> : [
		<galacticraftcore:basic_item:3>,
		<immersiveengineering:metal>,
		<mekanism:ingot:5>,
		<nuclearcraft:ingot>,
		<projectred-core:resource_item:100>,
		<techreborn:ingot:4>,
		<thermalfoundation:material:128>
	],

	#ingotElectrum
	<ore:ingotElectrum> : [
		<immersiveengineering:metal:7>,
		<techreborn:ingot:5>,
		<thermalfoundation:material:161>
	],

	#ingotLead
	<ore:ingotLead> : [
		<extraplanets:ingot_lead>,
		<galacticraftplanets:basic_item_venus:1>,
		<immersiveengineering:metal:2>,
		<nuclearcraft:ingot:2>,
		<techreborn:ingot:8>,
		<thermalfoundation:material:131>
	],

	#ingotIridium
	<ore:ingotIridium> : [
		<techreborn:ingot:7>,
		<thermalfoundation:material:135>
	],

	#ingotInvar
	<ore:ingotInvar> : [
		<techreborn:ingot:6>,
		<thermalfoundation:material:162>
	],

	#ingotManganese
	<ore:ingotManganese> : [
		<nuclearcraft:ingot:11>
	],

	#ingotNickel
	<ore:ingotNickel> : [
		<extraplanets:tier5_items:7>,
		<galaxyspace:ingots:2>,
		<immersiveengineering:metal:4>,	
		<techreborn:ingot:9>,
		<thermalfoundation:material:133>
	],

	#ingotOsmium
	<ore:ingotOsmium> : [
		<mekanism:ingot:1>
	],

	#ingotPalladium
	<ore:ingotPalladium> : [
		<extraplanets:tier5_items:5>
	],

	#ingotPlatinum
	<ore:ingotPlatinum> : [
		<extraplanets:tier11_items:5>,
		<techreborn:ingot:10>,
		<thermalfoundation:material:134>
	],

	#ingotPlutonium
	<ore:ingotPlutonium> : [
		<techreborn:ingot:25>
	],

	#ingotSilver
	<ore:ingotSilver> : [
		<immersiveengineering:metal:3>,
		<nuclearcraft:ingot:13>,
		<projectred-core:resource_item:102>,
		<techreborn:ingot:11>,
		<thermalfoundation:material:130>
	],

	#ingotSilicon
	<ore:ingotSilicon>: [
		
	],

	#ingotSteel
	<ore:ingotSteel> : [
		<immersiveengineering:metal:8>,
		<mekanism:ingot:4>,
		<nuclearcraft:alloy:5>,
		<techreborn:ingot:12>,
		<thermalfoundation:material:160>
	],

	#ingotThroium
	<ore:ingotThroium> : [
		<nuclearcraft:ingot:3>,
		<techreborn:ingot:23>
	],

	#ingotTin
	<ore:ingotTin> : [
		<galacticraftcore:basic_item:4>,
		<mekanism:ingot:6>,
		<nuclearcraft:ingot:1>,
		<projectred-core:resource_item:101>,
		<techreborn:ingot:13>,
		<thermalfoundation:material:129>
	],

	#ingotTitanium
	<ore:ingotTitanium> : [
		<galacticraftplanets:item_basic_asteroids>,
		<techreborn:ingot:14>
	],

	#ingotTungsten
	<ore:ingotTungsten> : [
		<extraplanets:tier9_items:5>,
		<techreborn:ingot:15>
	],

	#ingotTungstenSteel
	<ore:ingotTungstenSteel> : [
		<techreborn:ingot:17>
	],

	#ingotUranium
	<ore:ingotUranium> : [
		<extraplanets:ingot_uranium>,
		<immersiveengineering:metal:5>,
		<nuclearcraft:ingot:4>,
		<techreborn:ingot:24>
	],

	#ingotZinc
	<ore:ingotZinc> : [
		<extraplanets:tier8_items:5>,
		<techreborn:ingot:18>
	]
};

for oreDictEntry, items in ingotsUnify {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}


	#Plate

var platesUnify as IItemStack[][IOreDictEntry] = {

	#plateAluminum
	<ore:plateAluminum> : [
		<immersiveengineering:metal:31>,
		<industrialupgrade:itemplates:1>,
		<techreborn:plates:17>,
		<thermalfoundation:material:324>
	],


	#plateBronze
	<ore:plateBronze> : [
		<ic2:plate>,
		<techreborn:plates:19>,
		<thermalfoundation:material:355>
	],

	#plateBrass
	<ore:plateBrass> : [
		<techreborn:plates:18>
	],

	#plateCarbon 
	<ore:plateCarbon> : [
		<techreborn:plates:2>
	],

	#plateChrome
	<ore:plateChrome> : [
		<techreborn:plates:20>
	],

	#plateConstantan
	<ore:plateConstantan> : [
		<immersiveengineering:metal:36>,
		<thermalfoundation:material:356>
	],
	
	#plateCopper
	<ore:plateCopper> : [
		<ic2:plate:1>,
		<immersiveengineering:metal:30>,
		<techreborn:plates:21>,
		<thermalfoundation:material:320>
	],

	#plateDiamond
	<ore:plateDiamond> : [
		<techreborn:plates:5>
	],

	#plateElectrum
	<ore:plateElectrum> : [
		<industrialupgrade:itemplates:13>,
		<immersiveengineering:metal:37>,
		<techreborn:plates:22>,
		<thermalfoundation:material:353>
	],

	#plateEmerald
	<ore:plateEmerald> : [
		<techreborn:plates:6>
	],

	#plateEnderium
	<ore:plateEnderium> : [
	],

	#plateGold
	<ore:plateGold> : [
		<ic2:plate:2>,
		<immersiveengineering:metal:40>,
		<techreborn:plates:1>,
		<thermalfoundation:material:33>
	],

	#plateInvar
	<ore:plateInvar> : [
		<techreborn:plates:23>,
		<thermalfoundation:material:354>
	],

	#plateIridium
	<ore:plateIridium> : [
		<industrialupgrade:itemplates:17>,
		<techreborn:plates:24>,
		<thermalfoundation:material:327>
	],

	#plateIron
	<ore:plateIron> : [
		<ic2:plate:3>,
		<immersiveengineering:metal:39>,
		<techreborn:plates>,
		<thermalfoundation:material:32>
	],

	#plateLapis
	<ore:plateLapis> : [
		<ic2:plate:4>
	],

	#plateLazurite
	<ore:plateLazurite> : [
		<techreborn:plates:10>
	],

	#plateLead
	<ore:plateLead> : [
		<ic2:plate:5>,
		<immersiveengineering:metal:32>,
		<techreborn:plates:25>,
		<thermalfoundation:material:323>
	],

	#plateLumium
	<ore:plateLumium> : [
	],


	#plateNickel
	<ore:plateNickel> : [
		<immersiveengineering:metal:34>,
		<techreborn:plates:26>,
		<thermalfoundation:material:325>
	],

	#platePlatinum
	<ore:platePlatinum> : [
		<techreborn:plates:27>,
		<thermalfoundation:material:326>
	],

	#plateRuby
	<ore:plateRuby> : [
		<techreborn:plates:12>
	],

	#plateSapphire
	<ore:plateSapphire> : [
		<techreborn:plates:13>
	],

	#plateSignalum
	<ore:plateSignalum> : [
	],

	#plateSilicon
	<ore:plateSilicon> : [
		<techreborn:plates:11>
	],

	#plateSilver
	<ore:plateSilver> : [
		<immersiveengineering:metal:33>,
		<techreborn:plates:28>,
		<thermalfoundation:material:322>
	],

	#plateSteel
	<ore:plateSteel> : [
		<ic2:plate:7>,
		<immersiveengineering:metal:38>,
		<techreborn:plates:29>,
		<thermalfoundation:material:352>
	],

	#plateTin
	<ore:plateTin> : [
		<ic2:plate:8>,
		<techreborn:plates:30>,
		<thermalfoundation:material:321>
	],

	#plateTitanium
	<ore:plateTitanium> : [
		<techreborn:plates:31>
	],
	
	#plateTungsten
	<ore:plateTitanium> : [
		<techreborn:plates:32>
	],

	#plateUranium
	<ore:plateUranium> : [
		<immersiveengineering:metal:35>
	],

	#plateZinc
	<ore:plateZinc> : [
		<techreborn:plates:34>
	]
};

for oreDictEntry, items in platesUnify {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

var exileCompressed as IItemStack[][IOreDictEntry] = {

	#plateBronze
	<ore:plateBronze> : [
		<galacticraftcore:basic_item:10>
	],

	#plateCobalt
	<ore:plateCobalt> : [
		<galaxyspace:compressed_plates:1>
	],

	#plateCopper
	<ore:plateCopper> : [
		<galacticraftcore:basic_item:6>
	],

	#plateIron
	<ore:plateIron> : [
		<galacticraftcore:basic_item:11>
	],

	#plateMagnesium
	<ore:plateMagnesium> : [
		<galaxyspace:compressed_plates:2>
	],

	#plateNickel
	<ore:plateNickel> : [
		<galaxyspace:compressed_plates:3>
	],
	
	#plateSteel
	<ore:plateSteel> : [
		<galacticraftcore:basic_item:9>
	],

	#plateTin
	<ore:plateTin> : [
		<galacticraftcore:basic_item:7>
	],

	#plateTitanium 
	<ore:plateTitanium>: [
		<galacticraftplanets:item_basic_asteroids:6>
	],
};

for oreDictEntry, items in exileCompressed {
	oreDictEntry.removeItems(items);
}

	#Ores

var oresUnify as IItemStack[][IOreDictEntry] = {

	#oreAluminium
	<ore:oreAluminium> : [
		<galacticraftcore:basic_block_core:7>
		],

	#oreCoal
	<ore:oreCoal> : [
		<minecraft:coal_ore>
	],

	#oreCobalt
	<ore:cobalt> : [
		<galaxyspace:gsores>
	],

	#oreCopper
	<ore:oreCopper> : [
		<galacticraftcore:basic_block_core:5>,
		<immersiveengineering:ore>,
		<mekanism:oreblock:1>,
		<nuclearcraft:ore>,
		<techreborn:ore2>,
		<thermalfoundation:ore>
	],

	#oreDiamond
	<ore:oreDiamond> : [
		<minecraft:diamond_ore>
	],

	#oreEmerald
	<ore:oreEmerald> : [
		<minecraft:emerald_ore>
	],

	#oreGold
	<ore:oreGold> : [
		<minecraft:gold_ore>
	],

	#oreIridium
	<ore:oreIridium> : [
		<techreborn:ore:1>,
		<thermalfoundation:ore:7>
	],

	#oreIron
	<ore:oreIron> : [
		<minecraft:iron_ore>
	],

	#oreLapis
	<ore:oreLapis> : [
		<minecraft:lapis_ore>
	],

	#oreLead
	<ore:oreLead>: [
		<extraplanets:ore_lead>,
		<immersiveengineering:ore:2>,
		<nuclearcraft:ore:2>,
		<techreborn:ore:12>,
		<thermalfoundation:ore:3>
	],

	#oreNetherQuartz
	<ore:oreNetherQuartz> : [
		<minecraft:quartz_ore>
	],

	#oreNickel
	<ore:oreNickel> : [
		<galaxyspace:gsores:1>,
		<immersiveengineering:ore:4>,
		<thermalfoundation:ore:5>
	],

	#orePlatinum
	<ore:orePlatinum> : [
		<thermalfoundation:ore:6>
	],

	#oreRedstone
	<ore:oreRedstone> : [
		<minecraft:redstone_ore>
	],

	#oreQuartz
	<ore:oreQuartz>: [
		<minecraft:quartz_ore>
	],

	#oreTin
	<ore:oreTin> : [
		<galacticraftcore:basic_block_core:6>,
		<mekanism:oreblock:2>,
		<nuclearcraft:ore:1>,
		<techreborn:ore2:1>,
		<thermalfoundation:ore:1>
	],

	#oreSilver
	<ore:oreSilver> : [
		<immersiveengineering:ore:3>,
		<techreborn:ore:13>,
		<thermalfoundation:ore:2>
	],

	#oreUranium
	<ore:oreUranium> : [
		<galaxyspace:gsores:2>,
		<immersiveengineering:ore:5>,
		<nuclearcraft:ore:4>
	]

};

for oreDictEntry, items in oresUnify {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

var dustsUnify as IItemStack[][IOreDictEntry] = {

	#dustAluminium
	<ore:dustAluminium> : [
		<thermalfoundation:material:68>
	],

	#dustAluminum
	<ore:dustAluminum>: [
		<thermalfoundation:material:68>
	],

	#dustBronze
	<ore:dustBronze> : [
		<thermalfoundation:material:99>
	],

	#dustCertusQuartz
	<ore:dustCertusQuartz> : [
		<appliedenergistics2:material:2>
	],
	#dustCharcoal
	<ore:dustCharcoal> : [
		<thermalfoundation:material:769>
	],

	#dustCoal
	<ore:dustCoal> : [
		<enderio:item_material:23>,
		<actuallyadditions:item_dust:6>,
		<thermalfoundation:material:768>
	],

	#dustCobalt
	<ore:dustCobalt> : [
		<enderio:item_material:31>
	],

	#dustConstantan
	<ore:dustConstantan> : [
		<thermalfoundation:material:100>
	],

	#dustCopper
	<ore:dustCopper>: [
		<enderio:item_material:26>,
		<mekanism:dust:3>,
		<thermalfoundation:material:64>
	],

	#dustDiamond
	<ore:dustDiamond> : [
		<mekanism:otherdust>,
		<actuallyadditions:item_dust:2>
	],

	#dustElectrum
	<ore:dustElectrum> : [
		<thermalfoundation:material:97>
	],

	#dustEnderPearl
	<ore:dustEnderPearl> : [
		<appliedenergistics2:material:46>,
		<appliedenergistics2:material:46>
	],

	#dustEmerald
	<ore:dustEmerald> : [
		<actuallyadditions:item_dust:3>
	],

	#dustEnderium
	<ore:dustEnderium> : [
		<thermalfoundation:material:103>
	],

	#dustGold
	<ore:dustGold> : [
		<actuallyadditions:item_dust:1>,
		<appliedenergistics2:material:51>,
		<enderio:item_material:25>,
		<mekanism:dust:1>,
		<thermalfoundation:material:1>
	],

	#dustIron
	<ore:dustIron>: [
		<mekanism:dust>,
		<enderio:item_material:24>,
		<actuallyadditions:item_dust>,
		<appliedenergistics2:material:49>,
		<thermalfoundation:material>
	],

	#dustLapis
	<ore:dustLapis> : [
		<actuallyadditions:item_dust:4>,
		<enderio:item_material:32>
	],

	#dustLead
	<ore:dustLead>: [
		<mekanism:dust:6>,
		<thermalfoundation:material:67>
	],

	#dustLumium
	<ore:dustLumium> : [
		<thermalfoundation:material:102>
	],

	#dustInvar
	<ore:dustInvar> : [
		<thermalfoundation:material:98>
	],

	#dustIridium
	<ore:dustIridium> : [
		<thermalfoundation:material:71>
	],

	#dustNetherQuartz
	<ore:dustNetherQuartz> : [
		<enderio:item_material:33>,
		<actuallyadditions:item_dust:5>,
		<appliedenergistics2:material:3>
	],

	#dustNickel
	<ore:dustNickel> : [
		<thermalfoundation:material:69>
	],

	#dustObsidian
	<ore:dustObsidian> : [
		<enderio:item_material:29>,
		<mekanism:otherdust:6>,
		<thermalfoundation:material:770>
	],

	#dustPlatinum
	<ore:dustPlatinum> : [
		<thermalfoundation:material:70>
	],

	#dustQuartz
	<ore:dustQuartz> : [
		<appliedenergistics2:material:3>,
		<actuallyadditions:item_dust:5>
	],

	#dustSaltpeter
	<ore:dustSaltpeter> : [
		<thermalfoundation:material:772>
	],

	#dustSignalum
	<ore:dustSignalum>: [
		<thermalfoundation:material:101>
	],

	#dustSilver
	<ore:dustSilver>: [
		<mekanism:dust:5>,
		<thermalfoundation:material:66>
	],

	#dustSilicon
	<ore:dustSilicon>: [
	],

	#dustSteel
	<ore:dustSteel> : [
		<thermalfoundation:material:96>,
		<mekanism:otherdust:1>
	],

	#dustSulur
	<ore:dustSulfur>: [
		<thermalfoundation:material:771>,
		<mekanism:otherdust:3>,
	],

	#dustTin
	<ore:dustTin>: [
		<enderio:item_material:27>,
		<mekanism:dust:4>,
		<thermalfoundation:material:65>
	],

	#dustTitanium
	<ore:dustTitanium> : [
	]

};

for oreDictEntry, items in dustsUnify {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}


/*var plateUnify as IItemStack[][IOreDictEntry] = {

	#plateAluminium
	<ore:plateAluminium>: [
		
	]

};

for oreDictEntry, items in plateUnify {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}*/
