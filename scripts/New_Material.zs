#priority 997

#loader gregtech
import crafttweaker.item.IItemStack;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.Material;
import mods.gregtech.material.Elements;
import mods.gregtech.MaterialFlag;
import mods.gregtech.MaterialFlagBuilder;
import mods.gregtech.MetaItem;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;
import mods.gregtech.material.IMaterialPredicate;
import mods.gregtech.recipe.helpers;

print("New_Material.zs Start");

    #Casing

MaterialFlagBuilder.create("generate_casing")
    .requireFlag("generate_plate").build();

val casing as OrePrefix = OrePrefix.registerOrePrefix("casing", 1);
casing.setGenerationPredicate(function(mat as Material) as bool {
    return mat.hasFlag("generate_casing");  
} as IMaterialPredicate);
casing.createMaterialItem();

<material:lafium>.addFlags("generate_casing");