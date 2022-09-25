import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;

print("Minecraft.zs Start");

    #Planks
#recipes.removeByRecipeName("notreepunching:saw_planks_*");

    #Glass 
furnace.remove(<minecraft:glass>);
furnace.addRecipe(<minecraft:glass>, <ore:dustGlass>);

solidifier.findRecipe(4, [<metaitem:shape.mold.block>], [<liquid:glass> * 144]).remove(); 
solidifier.recipeBuilder()
    .notConsumable(<metaitem:shape.mold.block>)
    .fluidInputs([<liquid:glass> * 144])
    .outputs(<minecraft:glass> * 1)
    .duration(100)
    .EUt(30)
    .buildAndRegister();

    #Anvil
/*recipes.remove(<minecraft:anvil>);

RecipeBuilder.get("blacksmith")
    .setShaped([
        [<ore:blockIron>, <ore:blockIron>, <ore:blockIron>],
        [<ore:screwIron>, <ore:blockIron>, <ore:screwIron>],
        [<ore:plateIron>, <ore:blockIron>, <ore:plateIron>]
    ])
    .addTool(<ore:craftingToolScrewdriver>, 5)
    .addTool(<ore:craftingToolHardHammer>, 20)
    .addOutput(<minecraft:anvil>)
    .create();*/

    #Sandstone
recipes.remove(<minecraft:sandstone>);

recipes.addShaped(<minecraft:sandstone> * 2, [
    [<ore:sand>, <ore:listAllwater>, <ore:sand>],
    [<ore:sand>, <ore:sand>, <ore:sand>],
    [<ore:sand>, <ore:sand>, <ore:sand>]
]);

    #Red Sandstone
recipes.remove(<minecraft:red_sandstone>);

recipes.addShaped(<minecraft:red_sandstone> * 2, [
    [<minecraft:sand:1>, <ore:listAllwater>, <minecraft:sand:1>],
    [<minecraft:sand:1>, <minecraft:sand:1>, <minecraft:sand:1>],
    [<minecraft:sand:1>, <minecraft:sand:1>, <minecraft:sand:1>]
]);

    #Sticks
recipes.removeByRecipeName("enderio:tweak_stick_from_wood");
recipes.removeByRecipeName("extrautils2:shortcut_stick");
recipes.remove(<natura:sticks:*>);
recipes.remove(<extraplanets:tier11_items:*>);
mods.jei.JEI.removeAndHide(<natura:sticks:*>);
mods.jei.JEI.removeAndHide(<extraplanets:tier11_items:7>);
mods.jei.JEI.removeAndHide(<extraplanets:tier11_items:8>);
mods.jei.JEI.removeAndHide(<extraplanets:tier11_items:9>);
mods.jei.JEI.removeAndHide(<extraplanets:tier11_items:10>);
mods.jei.JEI.removeAndHide(<extraplanets:tier11_items:11>);
mods.jei.JEI.removeAndHide(<extraplanets:tier11_items:12>);

    #Chest
recipes.remove(<minecraft:chest>);

recipes.addShaped(<minecraft:chest>, [
    [<ore:logWood>, <ore:plankWood>, <ore:logWood>],
    [<ore:plankWood>, <minecraft:flint>, <ore:plankWood>],
    [<ore:logWood>, <ore:plankWood>, <ore:logWood>]
]);

    #Furnace
recipes.remove(<minecraft:furnace>);

recipes.addShaped(<minecraft:furnace>, [
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
    [<minecraft:flint>, <minecraft:flint>, /*<notreepunching:fire_starter>,*/ <minecraft:flint>],
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
]);

    #Crafting Table
recipes.remove(<minecraft:crafting_table>);

recipes.addShaped(<minecraft:crafting_table>, [
    [<ore:plankWood>, <ore:plankWood>],
    [<minecraft:flint>, <minecraft:flint>]
]);

    #Wooden Pressure Plate
recipes.removeByRecipeName("extraplanets:wooden_pressure_plate");
recipes.removeByRecipeName("extraplanets:wooden_pressure_plate_alt");
recipes.removeByRecipeName("extraplanets:wooden_pressure_plate_alt_alt");
recipes.removeByRecipeName("extraplanets:wooden_pressure_plate_alt_alt_alt");
recipes.removeByRecipeName("extraplanets:wooden_pressure_plate_alt_alt_alt_alt");
recipes.removeByRecipeName("extraplanets:wooden_pressure_plate_alt_alt_alt_alt_alt");

    #Brick Block
recipes.remove(<minecraft:brick_block>);

recipes.addShaped(<minecraft:brick_block>, [
    [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>],
    [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>],
    [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>]
]);

    #Nether Brick Block
recipes.remove(<minecraft:nether_brick>);

recipes.addShaped(<minecraft:brick_block>, [
    [<minecraft:netherbrick>, <minecraft:netherbrick>, <minecraft:netherbrick>],
    [<minecraft:netherbrick>, <minecraft:netherbrick>, <minecraft:netherbrick>],
    [<minecraft:netherbrick>, <minecraft:netherbrick>, <minecraft:netherbrick>]
]);

    #Ender Eye
recipes.remove(<minecraft:ender_eye>);
//Utils.removeRecipeByOutput(assembler, [<minecraft:ender_eye>], [], true);
//Utils.removeRecipeByOutput(assembler, [<minecraft:ender_eye> * 6], [], true);

reactor.recipeBuilder()
    .inputs(<ore:gemEnderPearl>, <ore:dustBlaze>)
    .outputs(<minecraft:ender_eye>)
    .duration(400).EUt(64).buildAndRegister();

reactor.recipeBuilder()
    .inputs(<ore:gemEnderPearl> * 6, <minecraft:blaze_rod>)
    .outputs(<minecraft:ender_eye> * 6)
    .duration(2500).EUt(96).buildAndRegister();

    #Ladder
recipes.remove(<minecraft:ladder>);

recipes.addShaped(<minecraft:ladder> * 2, [
    [<ore:stickWood>, <ore:craftingToolScrewdriver>, <ore:stickWood>],
    [<ore:string>, <ore:screwWood>, <ore:string>],
    [<ore:stickWood>, <ore:craftingToolSoftHammer>, <ore:stickWood>]
]);
recipes.addShaped(<minecraft:ladder> * 3, [
    [<ore:stickWood>, <ore:craftingToolScrewdriver>, <ore:stickWood>],
    [<ore:string>, <ore:screwIron>, <ore:string>],
    [<ore:stickWood>, <ore:craftingToolSoftHammer>, <ore:stickWood>]
]);

recipes.addShaped(<minecraft:ladder> * 6, [
    [<ore:stickWood>, <ore:craftingToolScrewdriver>, <ore:stickWood>],
    [<ore:string>, <ore:screwSteel>, <ore:string>],
    [<ore:stickWood>, <ore:craftingToolSoftHammer>, <ore:stickWood>]
]);

recipes.addShaped(<minecraft:ladder> * 8, [
    [<ore:stickWood>, <ore:craftingToolScrewdriver>, <ore:stickWood>],
    [<ore:string>, <ore:screwTitanium>, <ore:string>],
    [<ore:stickWood>, <ore:craftingToolSoftHammer>, <ore:stickWood>]
]);

recipes.addShaped(<minecraft:ladder> * 12, [
    [<ore:stickWood>, <ore:craftingToolScrewdriver>, <ore:stickWood>],
    [<ore:string>, <ore:screwTungstenSteel>, <ore:string>],
    [<ore:stickWood>, <ore:craftingToolSoftHammer>, <ore:stickWood>]
]);

    #Fence
var FenceRemove as IItemStack[] = [
    #vanila
    <minecraft:fence>, <minecraft:spruce_fence>, <minecraft:birch_fence>,
    <minecraft:jungle_fence>, <minecraft:acacia_fence>, <minecraft:dark_oak_fence>,
    #natura
    <natura:maple_fence>, <natura:silverbell_fence>, <natura:amaranth_fence>,
    <natura:tiger_fence>, <natura:willow_fence>, <natura:eucalyptus_fence>,
    <natura:hopseed_fence>, <natura:sakura_fence>, <natura:redwood_fence>,
    <natura:ghostwood_fence>, <natura:bloodwood_fence>, <natura:fusewood_fence>, 
    <natura:darkwood_fence>,
    #BYG
    <byg:baobab_fence>, <byg:cherry_fence>, <byg:cika_fence>,
    <byg:blue_enchanted_fence>, <byg:great_oak_fence>, <byg:jacaranda_fence>,
    <byg:mangrove_fence>, <byg:maple_fence>, <byg:frozen_oak_fence>,
    <byg:pine_fence>, <byg:skyris_fence>, <byg:willow_fence>,
    <byg:zelkova_fence>, <byg:redwood_fence>, <byg:holly_fence>,
    <byg:rainbow_eucalyptus_fence>, <byg:witch_hazel_fence>, <byg:ebony_fence>,
    <byg:hawthorn_fence>, <byg:rowan_fence>, <byg:ironwood_fence>,
    <byg:fir_fence>, <byg:green_enchanted_fence>, <byg:cypress_fence>,
    <byg:mahogany_fence>, <byg:palm_fence>, <byg:aspen_fence>,
    #betternether
    <betternether:reeds_fence>, <betternether:stalagnate_planks_fence>
    ];

    for i in FenceRemove {
        recipes.remove(i);
    }

var FenceRecipes as IItemStack[IIngredient] = {
    <minecraft:planks> : <minecraft:fence>,
    <minecraft:planks:1> : <minecraft:spruce_fence>,
    <minecraft:planks:2> : <minecraft:birch_fence>,
    <minecraft:planks:3> : <minecraft:jungle_fence>,
    <minecraft:planks:4> : <minecraft:acacia_fence>,
    <minecraft:planks:5> : <minecraft:dark_oak_fence>,
    <natura:overworld_planks> : <natura:maple_fence>,
    <natura:overworld_planks:1> : <natura:silverbell_fence>,
    <natura:overworld_planks:2> : <natura:amaranth_fence>,
    <natura:overworld_planks:3> : <natura:tiger_fence>,
    <natura:overworld_planks:4> : <natura:willow_fence>,
    <natura:overworld_planks:5> : <natura:eucalyptus_fence>,
    <natura:overworld_planks:6> : <natura:hopseed_fence>,
    <natura:overworld_planks:7> : <natura:sakura_fence>,
    <natura:overworld_planks:8> : <natura:redwood_fence>,
    <natura:nether_planks> : <natura:ghostwood_fence>,
    <natura:nether_planks:1> : <natura:bloodwood_fence>,
    <natura:nether_planks:2> : <natura:fusewood_fence>,
    <natura:nether_planks:3> : <natura:darkwood_fence>,
    <byg:baobabplanks> : <byg:baobab_fence> , 
    <byg:cherryplanks> : <byg:cherry_fence>, 
    <byg:cika_fence> : <byg:cika_fence>,
    <byg:enchantedplanks> : <byg:blue_enchanted_fence>, 
    <byg:greatoakplanks> : <byg:great_oak_fence>, 
    <byg:jacarandaplanks> : <byg:jacaranda_fence>,
    <byg:mangroveplanks> : <byg:mangrove_fence>, 
    <byg:mapleplanks> : <byg:maple_fence>, 
    <byg:frozenoakplanks> : <byg:frozen_oak_fence>,
    <byg:pineplanks> : <byg:pine_fence>, 
    <byg:skyrisplanks> : <byg:skyris_fence>, 
    <byg:willowplanks> : <byg:willow_fence>,
    <byg:zelkovaplanks> : <byg:zelkova_fence>, 
    <byg:redwoodplanks> : <byg:redwood_fence>, 
    <byg:hollyplanks> : <byg:holly_fence>,
    <byg:rainboweucalyptusplanks> : <byg:rainbow_eucalyptus_fence>, 
    <byg:witchhazelplanks> : <byg:witch_hazel_fence>, 
    <byg:ebonyplanks> : <byg:ebony_fence>,
    <byg:hawthornplanks> : <byg:hawthorn_fence>, 
    <byg:rowanplanks> : <byg:rowan_fence>, 
    <byg:ironwoodplanks> : <byg:ironwood_fence>,
    <byg:firplanks> : <byg:fir_fence>, 
    <byg:greenenchantedplanks> : <byg:green_enchanted_fence>, 
    <byg:cypressplanks> : <byg:cypress_fence>,
    <byg:mahogany_planks> : <byg:mahogany_fence>, 
    <byg:palm_planks> : <byg:palm_fence>, 
    <byg:aspen_planks> : <byg:aspen_planks>,
    <betternether:stalagnate_planks> : <betternether:stalagnate_planks_fence>,
    <betternether:reeds_block> : <betternether:reeds_fence>
    };

for plank, fence in FenceRecipes {
    recipes.addShaped(fence, [
        [<ore:screwWood>, <ore:craftingToolScrewdriver>, <ore:screwWood>],
        [plank, <ore:stickWood>, plank],
        [plank, <ore:stickWood>, plank]
    ]);
    recipes.addShaped(fence * 2, [
        [<ore:screwIron>, <ore:craftingToolScrewdriver>, <ore:screwIron>],
        [plank, <ore:stickWood>, plank],
        [plank, <ore:stickWood>, plank]
    ]);
    recipes.addShaped(fence * 4, [
        [<ore:screwSteel>, <ore:craftingToolScrewdriver>, <ore:screwSteel>],
        [plank, <ore:stickWood>, plank],
        [plank, <ore:stickWood>, plank]
    ]);
    recipes.addShaped(fence * 6, [
        [<ore:screwTitanium>, <ore:craftingToolScrewdriver>, <ore:screwTitanium>],
        [plank, <ore:stickWood>, plank],
        [plank, <ore:stickWood>, plank]
    ]);
    recipes.addShaped(fence * 8, [
        [<ore:screwTungstenSteel>, <ore:craftingToolScrewdriver>, <ore:screwTungstenSteel>],
        [plank, <ore:stickWood>, plank],
        [plank, <ore:stickWood>, plank]
    ]);
}

    #Fence Gate
var GateRemove as IItemStack[] = [
    <minecraft:fence_gate>,
    <minecraft:spruce_fence_gate>,
    <minecraft:birch_fence_gate>,
    <minecraft:jungle_fence_gate>,
    <minecraft:acacia_fence_gate>,
    <minecraft:dark_oak_fence_gate>,
    <natura:maple_fence_gate>,
    <natura:silverbell_fence_gate>,
    <natura:amaranth_fence_gate>,
    <natura:tiger_fence_gate>,
    <natura:willow_fence_gate>,
    <natura:eucalyptus_fence_gate>,
    <natura:hopseed_fence_gate>,
    <natura:sakura_fence_gate>,
    <natura:redwood_fence_gate>,
    <natura:ghostwood_fence_gate>,
    <natura:bloodwood_fence_gate>,
    <natura:fusewood_fence_gate>,
    <natura:darkwood_fence_gate>
    ];

    for i in GateRemove {
        recipes.remove(i);
    }

var FenceGateRecipes as IItemStack[IIngredient] = {
    <minecraft:planks> : <minecraft:fence_gate>,
    <minecraft:planks:1> : <minecraft:spruce_fence_gate>,
    <minecraft:planks:2> : <minecraft:birch_fence_gate>,
    <minecraft:planks:3> : <minecraft:jungle_fence_gate>,
    <minecraft:planks:4> : <minecraft:acacia_fence_gate>,
    <minecraft:planks:5> : <minecraft:dark_oak_fence_gate>,
    <natura:overworld_planks> : <natura:maple_fence_gate>,
    <natura:overworld_planks:1> : <natura:silverbell_fence_gate>,
    <natura:overworld_planks:2> : <natura:amaranth_fence_gate>,
    <natura:overworld_planks:3> : <natura:tiger_fence_gate>,
    <natura:overworld_planks:4> : <natura:willow_fence_gate>,
    <natura:overworld_planks:5> : <natura:eucalyptus_fence_gate>,
    <natura:overworld_planks:6> : <natura:hopseed_fence_gate>,
    <natura:overworld_planks:7> : <natura:sakura_fence_gate>,
    <natura:overworld_planks:8> : <natura:redwood_fence_gate>,
    <natura:nether_planks> : <natura:ghostwood_fence_gate>,
    <natura:nether_planks:1> : <natura:bloodwood_fence_gate>,
    <natura:nether_planks:2> : <natura:fusewood_fence_gate>,
    <natura:nether_planks:3> : <natura:darkwood_fence_gate>,
    };

for plank, fencegate in FenceGateRecipes {
    recipes.addShaped(fencegate, [
        [<ore:stickWood>, plank, <ore:stickWood>],
        [<ore:stickWood>, plank, <ore:stickWood>],
        [<ore:stickWood>, plank, <ore:stickWood>]
    ]);
    recipes.addShaped(fencegate * 2, [
        [<ore:screwIron>, <ore:craftingToolScrewdriver>, <ore:screwIron>],
        [<ore:stickWood>, plank, <ore:stickWood>],
        [<ore:stickWood>, plank, <ore:stickWood>]
    ]);
    recipes.addShaped(fencegate * 4, [
        [<ore:screwSteel>, <ore:craftingToolScrewdriver>, <ore:screwSteel>],
        [<ore:stickWood>, plank, <ore:stickWood>],
        [<ore:stickWood>, plank, <ore:stickWood>]
    ]);
    recipes.addShaped(fencegate * 6, [
        [<ore:screwTitanium>, <ore:craftingToolScrewdriver>, <ore:screwTitanium>],
        [<ore:stickWood>, plank, <ore:stickWood>],
        [<ore:stickWood>, plank, <ore:stickWood>]
    ]);
    recipes.addShaped(fencegate * 8, [
        [<ore:screwTungstenSteel>, <ore:craftingToolScrewdriver>, <ore:screwTungstenSteel>],
        [<ore:stickWood>, plank, <ore:stickWood>],
        [<ore:stickWood>, plank, <ore:stickWood>]
    ]);
}

    #Redstone Lamp
recipes.remove(<minecraft:redstone_lamp>);

recipes.addShaped(<minecraft:redstone_lamp>, [
    [<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>],
    [<minecraft:glass_pane>, <ore:glowstone>, <minecraft:glass_pane>],
    [<minecraft:glass_pane>, <ore:plateRedAlloy>, <minecraft:glass_pane>]
]);

    #Glass pane
recipes.remove(<minecraft:stained_glass_pane:*>);
recipes.remove(<chisel:glasspane:*>);
recipes.remove(<chisel:glasspane1:*>);

var GlassPaneRecipes as IItemStack[IIngredient] = {
    <minecraft:stained_glass> : <minecraft:stained_glass_pane>,
    <minecraft:stained_glass:1> : <minecraft:stained_glass_pane:1>,
    <minecraft:stained_glass:2> : <minecraft:stained_glass_pane:2>,
    <minecraft:stained_glass:3> : <minecraft:stained_glass_pane:3>,
    <minecraft:stained_glass:4> : <minecraft:stained_glass_pane:4>,
    <minecraft:stained_glass:5> : <minecraft:stained_glass_pane:5>,
    <minecraft:stained_glass:6> : <minecraft:stained_glass_pane:6>,
    <minecraft:stained_glass:7> : <minecraft:stained_glass_pane:7>,
    <minecraft:stained_glass:8> : <minecraft:stained_glass_pane:8>,
    <minecraft:stained_glass:9> : <minecraft:stained_glass_pane:9>,
    <minecraft:stained_glass:10> : <minecraft:stained_glass_pane:10>,
    <minecraft:stained_glass:11> : <minecraft:stained_glass_pane:11>,
    <minecraft:stained_glass:12> : <minecraft:stained_glass_pane:12>,
    <minecraft:stained_glass:13> : <minecraft:stained_glass_pane:13>,
    <minecraft:stained_glass:14> : <minecraft:stained_glass_pane:14>,
    <chisel:glass> : <chisel:glasspane>,
    <chisel:glass:1> : <chisel:glasspane:1>,
    <chisel:glass:2> : <chisel:glasspane:2>,
    <chisel:glass:3> : <chisel:glasspane:3>,
    <chisel:glass:4> : <chisel:glasspane:4>,
    <chisel:glass:5> : <chisel:glasspane:5>,
    <chisel:glass:6> : <chisel:glasspane:6>,
    <chisel:glass:7> : <chisel:glasspane:7>,
    <chisel:glass:8> : <chisel:glasspane:8>,
    <chisel:glass:9> : <chisel:glasspane:9>,
    <chisel:glass:10> : <chisel:glasspane:10>,
    <chisel:glass:11> : <chisel:glasspane:11>,
    <chisel:glass:12> : <chisel:glasspane:12>,
    <chisel:glass:13> : <chisel:glasspane:13>,
    <chisel:glass:14> : <chisel:glasspane:14>,
    <chisel:glass:15> : <chisel:glasspane:15>,
    <chisel:glass1> : <chisel:glasspane1>,
    <chisel:glass1:1> : <chisel:glasspane1:1>
    };

for glass, glasspane  in GlassPaneRecipes {
    recipes.addShapeless(glasspane * 2, [<ore:craftingToolSaw>, glass]);
}

    #Piston
/*recipes.remove(<minecraft:piston>);

recipes.addShaped(<minecraft:piston>, [
    [<actuallyadditions:block_misc:4>, <actuallyadditions:block_misc:4>, <actuallyadditions:block_misc:4>],
    [<ore:gearSmallIron>, <ore:fenceWood>, <ore:gearSmallIron>],
    [<ore:cobblestone>, <ore:plateRedAlloy>, <ore:cobblestone>]
]);

recipes.addShaped(<minecraft:piston> * 2, [
    [<actuallyadditions:block_misc:4>, <actuallyadditions:block_misc:4>, <actuallyadditions:block_misc:4>],
    [<ore:gearSmallSteel>, <ore:fenceWood>, <ore:gearSmallSteel>],
    [<ore:cobblestone>, <ore:plateRedAlloy>, <ore:cobblestone>]
]);

recipes.addShaped(<minecraft:piston> * 4, [
    [<actuallyadditions:block_misc:4>, <actuallyadditions:block_misc:4>, <actuallyadditions:block_misc:4>],
    [<ore:gearSmallAluminium>, <ore:fenceWood>, <ore:gearSmallAluminium>],
    [<ore:cobblestone>, <ore:plateRedAlloy>, <ore:cobblestone>]
]);

recipes.addShaped(<minecraft:piston> * 8, [
    [<actuallyadditions:block_misc:4>, <actuallyadditions:block_misc:4>, <actuallyadditions:block_misc:4>],
    [<ore:gearSmallStainlessSteel>, <ore:fenceWood>, <ore:gearSmallStainlessSteel>],
    [<ore:cobblestone>, <ore:plateRedAlloy>, <ore:cobblestone>]
]);

recipes.addShaped(<minecraft:piston> * 16, [
    [<actuallyadditions:block_misc:4>, <actuallyadditions:block_misc:4>, <actuallyadditions:block_misc:4>],
    [<ore:gearSmallTitanium>, <ore:fenceWood>, <ore:gearSmallTitanium>],
    [<ore:cobblestone>, <ore:plateRedAlloy>, <ore:cobblestone>]
]);*/

    #Paper
recipes.removeByRecipeName("thermalfoundation:paper");
recipes.removeByRecipeName("mekanism:paper");
recipes.removeByRecipeName("actuallyadditions:recipes23");

recipes.addShapeless(<minecraft:paper> * 2, [<ore:craftingToolKnife>, <minecraft:book>]);

    #Button Stone
recipes.remove(<minecraft:stone_button>);

recipes.addShapeless(<minecraft:stone_button> * 2, [<ore:craftingToolSaw>, <minecraft:stone_pressure_plate>]);

    #Button Wood
recipes.remove(<minecraft:wooden_button>);

recipes.addShapeless(<minecraft:wooden_button> * 2, [<ore:craftingToolSaw>, <minecraft:wooden_pressure_plate>]);

    #Slab

    //GO TO HELL YOU STUPID SLABS
var SlabRemove as IItemStack[] = [
    <minecraft:stone_slab:*>,
    <minecraft:wooden_slab:*>,
    <actuallyadditions:block_testifi_bucks_green_slab>,
    <actuallyadditions:block_testifi_bucks_white_slab>,
    <actuallyadditions:block_quartz_slab>,
    <actuallyadditions:block_chiseled_quartz_slab>,
    <actuallyadditions:block_pillar_quartz_slab>,
    <appliedenergistics2:sky_stone_slab>,
    <appliedenergistics2:smooth_sky_stone_slab>,
    <appliedenergistics2:sky_stone_brick_slab>,
    <appliedenergistics2:sky_stone_small_brick_slab>,
    <appliedenergistics2:fluix_slab>,
    <appliedenergistics2:quartz_slab>,
    <appliedenergistics2:chiseled_quartz_slab>,
    <appliedenergistics2:quartz_pillar_slab>,
    <botania:livingwood0slab>,
    <botania:livingwood1slab>,
    <botania:livingrock0slab>,
    <botania:livingrock1slab>,
    <botania:dreamwood0slab>,
    <botania:dreamwood1slab>,
    <botania:quartzslabdarkhalf>,
    <botania:quartzslabmanahalf>,
    <botania:quartzslabblazehalf>,
    <botania:quartzslablavenderhalf>,
    <botania:quartzslabredhalf>,
    <botania:quartzslabelfhalf>,
    <botania:quartzslabsunnyhalf>,
    <botania:biomestonea0slab>,
    <botania:biomestonea1slab>,
    <botania:biomestonea2slab>,
    <botania:biomestonea3slab>,
    <botania:biomestonea4slab>,
    <botania:biomestonea5slab>,
    <botania:biomestonea6slab>,
    <botania:biomestonea7slab>,
    <botania:biomestonea8slab>,
    <botania:biomestonea9slab>,
    <botania:biomestonea10slab>,
    <botania:biomestonea11slab>,
    <botania:biomestonea12slab>,
    <botania:biomestonea13slab>,
    <botania:biomestonea14slab>,
    <botania:biomestonea15slab>,
    <botania:biomestoneb0slab>,
    <botania:biomestoneb1slab>,
    <botania:biomestoneb2slab>,
    <botania:biomestoneb3slab>,
    <botania:biomestoneb4slab>,
    <botania:biomestoneb5slab>,
    <botania:biomestoneb6slab>,
    <botania:biomestoneb7slab>,
    <botania:pavement0slab>,
    <botania:pavement1slab>,
    <botania:pavement2slab>,
    <botania:pavement3slab>,
    <botania:pavement4slab>,
    <botania:pavement5slab>,
    <botania:shimmerrock0slab>,
    <botania:shimmerwoodplanks0slab>,
    <environmentaltech:litherite_slab>,
    <environmentaltech:litherite_paver_slab>,
    <environmentaltech:litherite_brick_slab>,
    <environmentaltech:litherite_tile_slab>,
    <environmentaltech:erodium_slab>,
    <environmentaltech:erodium_paver_slab>,
    <environmentaltech:erodium_brick_slab>,
    <environmentaltech:erodium_tile_slab>,
    <environmentaltech:kyronite_slab>,
    <environmentaltech:kyronite_paver_slab>,
    <environmentaltech:kyronite_brick_slab>,
    <environmentaltech:kyronite_tile_slab>,
    <environmentaltech:pladium_slab>,
    <environmentaltech:pladium_paver_slab>,
    <environmentaltech:pladium_brick_slab>,
    <environmentaltech:pladium_tile_slab>,
    <environmentaltech:ionite_slab>,
    <environmentaltech:ionite_paver_slab>,
    <environmentaltech:ionite_brick_slab>,
    <environmentaltech:ionite_tile_slab>,
    <environmentaltech:aethium_slab>,
    <environmentaltech:aethium_paver_slab>,
    <environmentaltech:aethium_brick_slab>,
    <environmentaltech:aethium_tile_slab>,
    <environmentaltech:lonsdaleite_slab>,
    <environmentaltech:lonsdaleite_paver_slab>,
    <environmentaltech:lonsdaleite_brick_slab>,
    <environmentaltech:lonsdaleite_tile_slab>,
    <galacticraftcore:slab_gc_half:*>,
    <immersiveengineering:stone_decoration_slab:*>,
    <immersiveengineering:treated_wood_slab:*>,
    <immersiveengineering:sheetmetal_slab:*>,
    <immersiveengineering:metal_decoration1_slab:*>,
    <mysticalagriculture:soulstone_slab>,
    <mysticalagriculture:cobbled_soulstone_slab>,
    <mysticalagriculture:soulstone_brick_slab>,
    <natura:colored_grass_slab:*>,
    <natura:overworld_slab:*>,
    <natura:overworld_slab2:*>,
    <natura:nether_slab:*>,
    <twilightforest:aurora_slab>,
    <twilightforest:twilight_oak_slab>,
    <twilightforest:canopy_slab>,
    <twilightforest:mangrove_slab>,
    <twilightforest:dark_slab>,
    <twilightforest:time_slab>,
    <twilightforest:trans_slab>,
    <twilightforest:mine_slab>,
    <twilightforest:sort_slab>
    ];

    for i in SlabRemove {
        recipes.remove(i);
    }

    #WHY NULLPOINT
var NVSlabRecipes as IItemStack[IIngredient] = {
    <minecraft:quartz_block> : <minecraft:stone_slab:7>,
    <minecraft:planks> : <minecraft:wooden_slab>,
    <minecraft:planks:1> : <minecraft:wooden_slab:1>,
    <minecraft:planks:2> : <minecraft:wooden_slab:2>,
    <minecraft:planks:3> : <minecraft:wooden_slab:3>,
    <minecraft:planks:4> : <minecraft:wooden_slab:4>,
    <minecraft:planks:5> : <minecraft:wooden_slab:5>,
    <actuallyadditions:block_testifi_bucks_green_wall> : <actuallyadditions:block_testifi_bucks_green_slab>,
    <actuallyadditions:block_testifi_bucks_white_wall> : <actuallyadditions:block_testifi_bucks_white_slab>,
    <actuallyadditions:block_misc:2> : <actuallyadditions:block_quartz_slab>,
    <actuallyadditions:block_misc:1> : <actuallyadditions:block_chiseled_quartz_slab>,
    <actuallyadditions:block_misc> : <actuallyadditions:block_pillar_quartz_slab>,
    <appliedenergistics2:sky_stone_block> : <appliedenergistics2:sky_stone_slab>,
    <appliedenergistics2:smooth_sky_stone_block> :<appliedenergistics2:smooth_sky_stone_slab>,
    <appliedenergistics2:sky_stone_brick> : <appliedenergistics2:sky_stone_brick_slab>,
    <appliedenergistics2:sky_stone_small_brick> : <appliedenergistics2:sky_stone_small_brick_slab>,
    <appliedenergistics2:fluix_block> : <appliedenergistics2:fluix_slab>,
    <appliedenergistics2:quartz_block> : <appliedenergistics2:quartz_slab>,
    <appliedenergistics2:chiseled_quartz_block> : <appliedenergistics2:chiseled_quartz_slab>,
    <appliedenergistics2:quartz_pillar> : <appliedenergistics2:quartz_pillar_slab>,
    <botania:livingwood> : <botania:livingwood0slab>,
    <botania:livingwood:1> : <botania:livingwood1slab>,
    <botania:livingrock> : <botania:livingrock0slab>,
    <botania:livingrock:1> : <botania:livingrock1slab>,
    <botania:dreamwood> : <botania:dreamwood0slab>,
    <botania:dreamwood:1> : <botania:dreamwood1slab>,
    <botania:quartztypedark> : <botania:quartzslabdarkhalf>,
    <botania:quartztypemana> : <botania:quartzslabmanahalf>,
    <botania:quartztypeblaze> : <botania:quartzslabblazehalf>,
    <botania:quartztypelavender> : <botania:quartzslablavenderhalf>,
    <botania:quartztypered> : <botania:quartzslabredhalf>,
    <botania:quartztypeelf> : <botania:quartzslabelfhalf>,
    <botania:quartztypesunny> : <botania:quartzslabsunnyhalf>,
    <botania:biomestonea> : <botania:biomestonea0slab>,
    <botania:biomestonea:1> : <botania:biomestonea1slab>,
    <botania:biomestonea:2> : <botania:biomestonea2slab>,
    <botania:biomestonea:3> : <botania:biomestonea3slab>,
    <botania:biomestonea:4> : <botania:biomestonea4slab>,
    <botania:biomestonea:5> : <botania:biomestonea5slab>,
    <botania:biomestonea:6> : <botania:biomestonea6slab>,
    <botania:biomestonea:7> : <botania:biomestonea7slab>,
    <botania:biomestonea:8> : <botania:biomestonea8slab>,
    <botania:biomestonea:9> : <botania:biomestonea9slab>,
    <botania:biomestonea:10> : <botania:biomestonea10slab>,
    <botania:biomestonea:11> : <botania:biomestonea11slab>,
    <botania:biomestonea:12> : <botania:biomestonea12slab>,
    <botania:biomestonea:13> : <botania:biomestonea13slab>,
    <botania:biomestonea:14> : <botania:biomestonea14slab>,
    <botania:biomestonea:15> : <botania:biomestonea15slab>,
    <botania:biomestoneb> : <botania:biomestoneb0slab>,
    <botania:biomestoneb:1> : <botania:biomestoneb1slab>,
    <botania:biomestoneb:2> : <botania:biomestoneb2slab>,
    <botania:biomestoneb:3> : <botania:biomestoneb3slab>,
    <botania:biomestoneb:4> : <botania:biomestoneb4slab>,
    <botania:biomestoneb:5> : <botania:biomestoneb5slab>,
    <botania:biomestoneb:6> : <botania:biomestoneb6slab>,
    <botania:biomestoneb:7> : <botania:biomestoneb7slab>,
    <botania:pavement> : <botania:pavement0slab>,
    <botania:pavement:1> : <botania:pavement1slab>,
    <botania:pavement:2> : <botania:pavement2slab>,
    <botania:pavement:3> : <botania:pavement3slab>,
    <botania:pavement:4> : <botania:pavement4slab>,
    <botania:pavement:5> : <botania:pavement5slab>,
    <botania:shimmerrock> : <botania:shimmerrock0slab>,
    <botania:shimmerwoodplanks> : <botania:shimmerwoodplanks0slab>,
    <environmentaltech:litherite> : <environmentaltech:litherite_slab>,
    <environmentaltech:litherite_paver> : <environmentaltech:litherite_paver_slab>,
    <environmentaltech:litherite_bricks> : <environmentaltech:litherite_brick_slab>,
    <environmentaltech:litherite_tiles> :<environmentaltech:litherite_tile_slab>,
    <environmentaltech:erodium> : <environmentaltech:erodium_slab>,
    <environmentaltech:erodium_paver> : <environmentaltech:erodium_paver_slab>,
    <environmentaltech:erodium_bricks> : <environmentaltech:erodium_brick_slab>,
    <environmentaltech:erodium_tiles> : <environmentaltech:erodium_tile_slab>,
    <environmentaltech:kyronite> : <environmentaltech:kyronite_slab>,
    <environmentaltech:kyronite_paver> : <environmentaltech:kyronite_paver_slab>,
    <environmentaltech:kyronite_bricks> : <environmentaltech:kyronite_brick_slab>,
    <environmentaltech:kyronite_tiles> : <environmentaltech:kyronite_tile_slab>,
    <environmentaltech:pladium> : <environmentaltech:pladium_slab>,
    <environmentaltech:pladium_paver> : <environmentaltech:pladium_paver_slab>,
    <environmentaltech:pladium_bricks> : <environmentaltech:pladium_brick_slab>,
    <environmentaltech:pladium_tiles> : <environmentaltech:pladium_tile_slab>,
    <environmentaltech:ionite> : <environmentaltech:ionite_slab>,
    <environmentaltech:ionite_paver> : <environmentaltech:ionite_paver_slab>,
    <environmentaltech:ionite_bricks> : <environmentaltech:ionite_brick_slab>,
    <environmentaltech:ionite_tiles> : <environmentaltech:ionite_tile_slab>,
    <environmentaltech:aethium> : <environmentaltech:aethium_slab>,
    <environmentaltech:aethium_paver> : <environmentaltech:aethium_paver_slab>,
    <environmentaltech:aethium_bricks> : <environmentaltech:aethium_brick_slab>,
    <environmentaltech:aethium_tiles> : <environmentaltech:aethium_tile_slab>,
    <environmentaltech:lonsdaleite> : <environmentaltech:lonsdaleite_slab>,
    <environmentaltech:lonsdaleite_paver> : <environmentaltech:lonsdaleite_paver_slab>,
    <environmentaltech:lonsdaleite_bricks> : <environmentaltech:lonsdaleite_brick_slab>,
    <environmentaltech:lonsdaleite_tiles> : <environmentaltech:lonsdaleite_tile_slab>,
    <galacticraftcore:basic_block_core:3> : <galacticraftcore:slab_gc_half>,
    <galacticraftcore:basic_block_core:4> : <galacticraftcore:slab_gc_half:1>,
    <galacticraftcore:basic_block_moon:4> : <galacticraftcore:slab_gc_half:2>,
    <galacticraftcore:basic_block_moon:14> : <galacticraftcore:slab_gc_half:3>,
    <galacticraftplanets:venus:4> : <galacticraftcore:slab_gc_half:4>,
    <galacticraftplanets:mars:7> : <galacticraftcore:slab_gc_half:5>,
    <galacticraftplanets:asteroids_block:6> : <galacticraftcore:slab_gc_half:6>,
    <immersiveengineering:stone_decoration> : <immersiveengineering:stone_decoration_slab>,
    <immersiveengineering:stone_decoration:1> : <immersiveengineering:stone_decoration_slab:1>,
    <immersiveengineering:stone_decoration:2> : <immersiveengineering:stone_decoration_slab:2>,
    <immersiveengineering:stone_decoration:4> : <immersiveengineering:stone_decoration_slab:4>,
    <immersiveengineering:stone_decoration:5> : <immersiveengineering:stone_decoration_slab:5>,
    <immersiveengineering:stone_decoration:6> : <immersiveengineering:stone_decoration_slab:6>,
    <immersiveengineering:stone_decoration:7> : <immersiveengineering:stone_decoration_slab:7>,
    <immersiveengineering:stone_decoration:10> : <immersiveengineering:stone_decoration_slab:10>,
    <immersiveengineering:treated_wood> : <immersiveengineering:treated_wood_slab>,
    <immersiveengineering:treated_wood:1> : <immersiveengineering:treated_wood_slab:1>,
    <immersiveengineering:treated_wood:2> : <immersiveengineering:treated_wood_slab:2>,
    <immersiveengineering:sheetmetal> : <immersiveengineering:sheetmetal_slab>,
    <immersiveengineering:sheetmetal:1> : <immersiveengineering:sheetmetal_slab:1>,
    <immersiveengineering:sheetmetal:2> : <immersiveengineering:sheetmetal_slab:2>,
    <immersiveengineering:sheetmetal:3> : <immersiveengineering:sheetmetal_slab:3>,
    <immersiveengineering:sheetmetal:4> : <immersiveengineering:sheetmetal_slab:4>,
    <immersiveengineering:sheetmetal:5> : <immersiveengineering:sheetmetal_slab:5>,
    <immersiveengineering:sheetmetal:6> : <immersiveengineering:sheetmetal_slab:6>,
    <immersiveengineering:sheetmetal:7> : <immersiveengineering:sheetmetal_slab:7>,
    <immersiveengineering:sheetmetal:8> : <immersiveengineering:sheetmetal_slab:8>,
    <immersiveengineering:sheetmetal:9> : <immersiveengineering:sheetmetal_slab:9>,
    <immersiveengineering:sheetmetal:10> : <immersiveengineering:sheetmetal_slab:10>,
    <immersiveengineering:metal_decoration1:1> : <immersiveengineering:metal_decoration1_slab:1>,
    <immersiveengineering:metal_decoration1:2> : <immersiveengineering:metal_decoration1_slab:2>,
    <immersiveengineering:metal_decoration1:3> : <immersiveengineering:metal_decoration1_slab:3>,
    <immersiveengineering:metal_decoration1:5> : <immersiveengineering:metal_decoration1_slab:5>,
    <immersiveengineering:metal_decoration1:6> : <immersiveengineering:metal_decoration1_slab:6>,
    <immersiveengineering:metal_decoration1:7> : <immersiveengineering:metal_decoration1_slab:7>,
    <mysticalagriculture:soulstone> : <mysticalagriculture:soulstone_slab>,
    <mysticalagriculture:soulstone:1> : <mysticalagriculture:cobbled_soulstone_slab>,
    <mysticalagriculture:soulstone:3> : <mysticalagriculture:soulstone_brick_slab>,
    <natura:colored_grass> : <natura:colored_grass_slab>,
    <natura:colored_grass:1> : <natura:colored_grass_slab:1>,
    <natura:colored_grass:2> : <natura:colored_grass_slab:2>,
    <natura:overworld_planks> : <natura:overworld_slab>,
    <natura:overworld_planks:1> : <natura:overworld_slab:1>,
    <natura:overworld_planks:2> : <natura:overworld_slab:2>,
    <natura:overworld_planks:3> : <natura:overworld_slab:3>,
    <natura:overworld_planks:4> : <natura:overworld_slab:4>,
    <natura:overworld_planks:5> : <natura:overworld_slab2>,
    <natura:overworld_planks:6> : <natura:overworld_slab2:1>,
    <natura:overworld_planks:7> : <natura:overworld_slab2:2>,
    <natura:overworld_planks:8> : <natura:overworld_slab2:3>,
    <natura:nether_planks> : <natura:nether_slab>,
    <natura:nether_planks:1> : <natura:nether_slab:1>,
    <natura:nether_planks:2> : <natura:nether_slab:2>,
    <natura:nether_planks:3> : <natura:nether_slab:3>,
    <twilightforest:aurora_block> : <twilightforest:aurora_slab>,
    <twilightforest:twilight_oak_planks> : <twilightforest:twilight_oak_slab>,
    <twilightforest:canopy_planks> : <twilightforest:canopy_slab>,
    <twilightforest:mangrove_planks> : <twilightforest:mangrove_slab>,
    <twilightforest:dark_planks> : <twilightforest:dark_slab>,
    <twilightforest:time_planks> : <twilightforest:time_slab>,
    <twilightforest:trans_planks> : <twilightforest:trans_slab>,
    <twilightforest:mine_planks> : <twilightforest:mine_slab>,
    <twilightforest:sort_planks> : <twilightforest:sort_slab>,
    };

for block, slab  in NVSlabRecipes {
    recipes.addShapeless(slab * 2, [<ore:craftingToolSaw>, block]);

    saw.recipeBuilder()
        .inputs(block)
        .fluidInputs(<liquid:water> * 5)
        .outputs(slab * 2)
        .duration(200)
        .EUt(8)
        .buildAndRegister();

    saw.recipeBuilder()
        .inputs(block)
        .fluidInputs(<liquid:distilled_water> * 3)
        .outputs(slab * 2)
        .duration(100)
        .EUt(8)
        .buildAndRegister();

    saw.recipeBuilder()
        .inputs(block)
        .fluidInputs(<liquid:lubricant> * 1)
        .outputs(slab * 2)
        .duration(50)
        .EUt(8)
        .buildAndRegister();
}

var VSlabRecipes as IItemStack[IIngredient] = {
    <minecraft:stone> : <minecraft:stone_slab>,
    <minecraft:sandstone> : <minecraft:stone_slab:1>,
    <minecraft:cobblestone> : <minecraft:stone_slab:3>,
    <minecraft:brick_block> : <minecraft:stone_slab:4>,
    <minecraft:stonebrick> : <minecraft:stone_slab:5>,
    <minecraft:nether_brick> : <minecraft:stone_slab:6>,
    };
    for block, slab  in VSlabRecipes {
        recipes.addShapeless(slab * 2, [<ore:craftingToolSaw>, block]);
    }

    #Iron Door
recipes.remove(<minecraft:iron_door>);

recipes.addShaped(<minecraft:iron_door>, [
    [<ore:plateIron>, <minecraft:iron_bars>, <ore:craftingToolHardHammer>],
    [<ore:plateIron>, <ore:ringSteel>, <ore:screwSteel>],
    [<ore:plateIron>, <ore:plateIron>, <ore:craftingToolScrewdriver>]
]);

recipes.addShaped(<minecraft:iron_door> * 2, [
    [<ore:plateIron>, <contenttweaker:steelbar>, <ore:craftingToolHardHammer>],
    [<ore:plateIron>, <ore:ringSteel>, <ore:screwSteel>],
    [<ore:plateIron>, <ore:plateIron>, <ore:craftingToolScrewdriver>]
]);

    #Wooden Door
recipes.remove(<ore:doorWood>);

var DoorRecipes as IItemStack[IIngredient] = {
    <minecraft:planks> : <minecraft:wooden_door>,
    <minecraft:planks:1> : <minecraft:spruce_door>,
    <minecraft:planks:2> : <minecraft:birch_door>,
    <minecraft:planks:3> : <minecraft:jungle_door>,
    <minecraft:planks:4> : <minecraft:acacia_door>,
    <minecraft:planks:5> : <minecraft:dark_oak_door>,
    <natura:overworld_planks> : <natura:overworld_doors:6>,
    <natura:overworld_planks:1> : <natura:overworld_doors:7>,
    <natura:overworld_planks:3> : <natura:overworld_doors:5>,
    <natura:overworld_planks:4> : <natura:overworld_doors>,
    <natura:overworld_planks:5> : <natura:overworld_doors>,
    <natura:overworld_planks:6> : <natura:overworld_doors:1>,
    <natura:overworld_planks:7> : <natura:overworld_doors:2>,
    <natura:overworld_planks:8> : <natura:overworld_doors:3>,
    <natura:redwood_logs> : <natura:overworld_doors:4>,
    <natura:nether_planks> : <natura:nether_doors>,
    <natura:nether_planks:1> : <natura:nether_doors:1>,
    <natura:nether_planks:2> : <natura:nether_doors:3>,
    <natura:nether_planks:3> : <natura:nether_doors:2>
};

for planks, door in DoorRecipes {
    recipes.addShaped(door, [
        [planks, planks, <ore:craftingToolScrewdriver>],
        [planks, <ore:ringIron>, <ore:screwIron>],
        [planks, planks, <ore:craftingToolSaw>]
    ]);

    recipes.addShaped(door, [
        [planks, planks, <ore:craftingToolScrewdriver>],
        [planks, <ore:ringCopper>, <ore:screwCopper>],
        [planks, planks, <ore:craftingToolSaw>]
    ]);
}

    #Redstone Torch
recipes.remove(<minecraft:redstone_torch>);

recipes.addShaped(<minecraft:redstone_torch>, [
    [<ore:dustRedstone>],
    [<minecraft:torch>]
]);

    #Redstone Repeater
recipes.remove(<minecraft:repeater>);

recipes.addShaped(<minecraft:repeater>, [
    [<ore:screwIron>, <ore:craftingToolScrewdriver>, <ore:screwIron>],
    [<minecraft:redstone_torch>, <projectred-transmission:wire>, <minecraft:redstone_torch>],
    [<projectred-core:resource_item>, <projectred-core:resource_item>, <projectred-core:resource_item>]
]);

    #Comparator
recipes.remove(<minecraft:comparator>);

recipes.addShaped(<minecraft:comparator>, [
    [<ore:screwIron>, <minecraft:redstone_torch>, <ore:screwIron>],
    [<minecraft:redstone_torch>, <ore:plateNetherQuartz>, <minecraft:redstone_torch>],
    [<projectred-core:resource_item>, <ore:craftingToolScrewdriver>, <projectred-core:resource_item>]
]);

recipes.addShaped(<minecraft:comparator>, [
    [<ore:screwIron>, <minecraft:redstone_torch>, <ore:screwIron>],
    [<minecraft:redstone_torch>, <ore:plateCertusQuartz>, <minecraft:redstone_torch>],
    [<projectred-core:resource_item>, <ore:craftingToolScrewdriver>, <projectred-core:resource_item>]
]);

recipes.addShaped(<minecraft:comparator>, [
    [<ore:screwIron>, <minecraft:redstone_torch>, <ore:screwIron>],
    [<minecraft:redstone_torch>, <ore:plateQuartzite>, <minecraft:redstone_torch>],
    [<projectred-core:resource_item>, <ore:craftingToolScrewdriver>, <projectred-core:resource_item>]
]);

    #Bed
recipes.remove(<ore:bed>);

var BedColor as IItemStack[IIngredient] = {
    <minecraft:carpet> : <minecraft:bed>,
    <minecraft:carpet:1> : <minecraft:bed:1>,
    <minecraft:carpet:2> : <minecraft:bed:2>,
    <minecraft:carpet:3> : <minecraft:bed:3>,
    <minecraft:carpet:4> : <minecraft:bed:4>,
    <minecraft:carpet:5> : <minecraft:bed:5>,
    <minecraft:carpet:6> : <minecraft:bed:6>,
    <minecraft:carpet:7> : <minecraft:bed:7>,
    <minecraft:carpet:8> : <minecraft:bed:8>,
    <minecraft:carpet:9> : <minecraft:bed:9>,
    <minecraft:carpet:10> : <minecraft:bed:10>,
    <minecraft:carpet:11> : <minecraft:bed:11>,
    <minecraft:carpet:12> : <minecraft:bed:12>,
    <minecraft:carpet:13> : <minecraft:bed:13>,
    <minecraft:carpet:14> : <minecraft:bed:14>,
    <minecraft:carpet:15> : <minecraft:bed:15>,
};

    for wool, bed  in BedColor {
        recipes.addShaped(bed, [
        [wool, wool, wool],
        [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
        [<ore:fenceWood>, <ore:craftingToolSoftHammer>, <ore:fenceWood>]
        ]);
    }

    #Shield
recipes.removeByRecipeName("aether_legacy:shield_from_skyroot");

    #Rail
recipes.removeByRecipeName("mekanism:rail");

    #Trapdoor
recipes.removeByRecipeName("aether_legacy:skyroot_trapdoor");
recipes.removeByRecipeName("betternether:stalagnate_planks_trapdoor");
recipes.removeByRecipeName("extraplanets:trapdoor");
recipes.removeByRecipeName("extraplanets:trapdoor_alt");
recipes.removeByRecipeName("extraplanets:trapdoor_alt_alt");
recipes.removeByRecipeName("extraplanets:trapdoor_alt_alt_alt");
recipes.removeByRecipeName("extraplanets:trapdoor_alt_alt_alt_alt");
recipes.removeByRecipeName("extraplanets:trapdoor_alt_alt_alt_alt_alt");

print("Minecraft.zs End"); 