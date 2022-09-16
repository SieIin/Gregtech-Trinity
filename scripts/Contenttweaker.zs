#priority 1004
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.BlockPos;
import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.Commands;
import mods.contenttweaker.IItemColorSupplier;

var bedrockiumblock = VanillaFactory.createBlock("bedrockiumblock", <blockmaterial:rock>);
bedrockiumblock.blockSoundType = <soundtype:stone>;
bedrockiumblock.register();

var steelbar = VanillaFactory.createItem("steelbar");
steelbar.register();

var SFC = VanillaFactory.createBlock("stellarforge_casing", <blockmaterial:iron>);
SFC.setBlockHardness(5.0);
SFC.setBlockResistance(5.0);
SFC.setToolClass("wrench");
SFC.setToolLevel(1);
SFC.setBlockSoundType(<soundtype:metal>);
SFC.register();

var fusionmk2 = VanillaFactory.createBlock("fusionmk2", <blockmaterial:iron>);
fusionmk2.setBlockHardness(5.0);
fusionmk2.setBlockResistance(5.0);
fusionmk2.setToolClass("wrench");
fusionmk2.setToolLevel(1);
fusionmk2.setBlockSoundType(<soundtype:metal>);
fusionmk2.register();