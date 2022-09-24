#priority 998

#loader gregtech
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.MaterialStack;
import mods.gregtech.material.Elements;

print("Material_Port.zs start");

val Polonium = MaterialBuilder(507, "polonium")
    .ingot()
    .color(0xDCE1BA)
    .element("Polonium")
    .iconSet("metallic")
    .build();

val Promethium = MaterialBuilder(508, "promethium")
    .ingot()
    .color(0xE2E2E2)
    .element("Promethium")
    .iconSet("metallic")
    .build();

val Strontium = MaterialBuilder(509, "strontium")
    .ingot()
    .color(0xB1B185)
    .element("Strontium")
    .iconSet("metallic")
    .flags(["generate_plate"])
    .build();

val Rhenium = MaterialBuilder(510, "rhenium")
    .ingot()
    .color(0xA1A5AD)
    .element("Rhenium")
    .iconSet("metallic")
    .flags(["generate_plate", "generate_double_plate", "generate_rod", "generate_small_gear", "generate_gear", "generate_long_rod", "generate_frame"])
    .build();

val Seaborgium = MaterialBuilder(511, "seaborgium")
    .fluid("fluid", false)
    .ingot()
    .element("Seaborgium")
    .color(0x16AFE2)
    .iconSet("shiny")
    .flags(["generate_plate", "generate_double_plate", "generate_rod", "generate_small_gear", "generate_gear", "generate_long_rod", "generate_frame", "generate_bolt_screw"])
    .build();

val Brimabright = MaterialBuilder(501, "brimabright")
    .ingot()
    .color(0x6975D9)
    .components([<material:aluminium> * 5, <material:magnesium> * 1, <material:manganese> * 1])
    .iconSet("shiny")
    .flags(["generate_plate"])
    .build();

val BT6 = MaterialBuilder(502, "bt_6")
    .ingot()
    .color(0x723276)
    .components([<material:titanium> * 40, <material:aluminium> * 6, <material:vanadium> * 5, <material:iron> * 3, <material:carbon> * 1])
    .iconSet("shiny")
    .flags(["generate_plate"])
    .build();

val Technetium = MaterialBuilder(513, "technetium")
    .ingot()
    .color(0x4A4A4B)
    .element("Technetium")
    .iconSet("metallic")
    .flags(["generate_plate"])
    .build();

val Chrome = MaterialRegistry.get("chrome");
    Chrome.addFlags("generate_long_rod");

val Gadolinium = MaterialBuilder(514, "gadolinium")
    .ingot()
    .color(0x4A4A4B)
    .element("Gadolinium")
    .iconSet("metallic")
    .flags(["generate_plate"])
    .build();

val Californium = Elements.add(98, 153, -1, null, "Californium", "Cf", false);

val Hastelloy_X_78 = MaterialBuilder(505, "hastelloy_x_78")
    .fluid("fluid", false)
    .ingot()
    .color(0x5F90C9)
    .components([<material:naquadah_alloy> * 10, <material:rhenium> * 5, <material:naquadria> * 4, <material:gadolinium> * 3, <material:polonium> * 3, <material:strontium> * 2])
    .iconSet("metallic")
    .flags(["generate_plate", "generate_double_plate", "generate_rod", "generate_small_gear", "generate_gear", "generate_long_rod", "generate_frame",])
    .build();

val Hastelloy_K_243 = MaterialBuilder(503, "hastelloy_k_243")
    .fluid("fluid", false)
    .ingot()
    .color(0x9FEC60)
    .components([<material:hastelloy_x_78> * 5, <material:tritanium> * 4, <material:tungsten_carbide> * 4, <material:promethium> * 4, <material:niobium_nitride> * 2])
    .iconSet("metallic")
    .flags(["generate_plate", "generate_double_plate", "generate_rod", "generate_small_gear", "generate_gear", "generate_long_rod", "generate_frame",])
    .build();

val Hastelloy_N = MaterialBuilder(504, "hastelloy_n")
    .fluid("fluid", false)
    .ingot()
    .color(0xBBBBBB)
    .components([<material:yttrium> * 2, <material:molybdenum> * 4, <material:chrome> * 2, <material:titanium> * 2, <material:nickel> * 15])
    .iconSet("metallic")
    .flags(["generate_plate", "generate_double_plate", "generate_rod", "generate_small_gear", "generate_gear", "generate_long_rod", "generate_frame",])
    .build();

val Im = Elements.add(150, 150, -1, null, "Immersite", "Im", false);

val Incoloy_813 = MaterialBuilder(512, "incoloy_813")
    .fluid("fluid", false)
    .ingot()
    .color(0x31A970)
    .components([<material:vanadium_steel> * 4, <material:osmiridium> * 2, <material:technetium> * 3, <material:germanium> * 4, <material:iridium> * 7, <material:duranium> * 5])
    .iconSet("metallic")
    .flags(["generate_plate", "generate_double_plate", "generate_rod", "generate_small_gear", "generate_gear", "generate_long_rod", "generate_frame", "generate_bolt_screw"])
    .build();

val Iridium = MaterialRegistry.get("iridium");
    Iridium.setMaterialRGB(0xF0EDF5);

val Lafium = MaterialBuilder(506, "lafium")
    .fluid("fluid", false)
    .ingot()
    .color(0x0B0B52)
    .components([<material:hastelloy_n> * 8, <material:naquadah> * 4, <material:samarium> * 2, <material:tungsten> * 4, <material:argon> * 2, <material:aluminium> * 6, <material:nickel> * 8, <material:carbon> * 2])
    .iconSet("shiny")
    .flags(["generate_plate", "generate_double_plate", "generate_rod", "generate_frame"])
    .build();

val Phn = Elements.add(300, 300, -1, null, "Phoenixite", "Phn", false);

val Phoenixite= MaterialBuilder(516, "phoenixite")
    .ingot()
    .color(0xFF543D)
    .element("Phoenixite")
    .iconSet("metallic")
    .flags(["generate_plate"])
    .build();

val Ethyleneglycol = MaterialBuilder(515, "ethyleneglycol")
    .fluid("fluid", false)
    .color(0xB0B0B0)
    .components([<material:carbon> * 2, <material:hydrogen> * 6, <material:oxygen> * 2])
    .build();

val Wood = MaterialRegistry.get("wood");
    Wood.addFlags("generate_bolt_screw", "generate_small_gear", "generate_ring");

val Steel = MaterialRegistry.get("steel");
    Steel.addFlags("generate_bolt_screw", "generate_small_gear");
print("Matrial_Port.zs end");
