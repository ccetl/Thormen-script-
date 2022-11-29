/* Config for the Thormen modpack*/
import crafttweaker.api.item.IItemStack;
import mods.jei.JEI;
import crafttweaker.api.recipe.Replacer;
import mods.create.PressingManager;
import crafttweaker.api.recipe.FurnaceRecipeManager;
import crafttweaker.api.fluid.IFluidStack;
/*-------------------------------Support for not supported mods--------------------------*/

/*function addrollingrecipe_(itemIn as IItemStack,outputItem as IItemStack, count as int) as void {
    <recipetype:createaddition:rolling>.addJsonRecipe("customrolling" + itemIn.registryName.path + "sdcs",{
	"input": {
      	"tag": itemIn
	},
	"result": {
		"item": outputItem,
		"count": count
	}
    });
}

function addCrushingRecipe(itemIn as IItemStack,outputItem as IItemStack) as void {
    <recipetype:mekanism:crushing>.addJsonRecipe("custemmekacrushing"+itemIn.registryName.path+outputItem.registryName.path+"dvsvs",{ 
        "input": itemIn,
        "input": outputItem
    });
}                                                                                                                                              //dvsvs to avoid conficts

function addpurifyingRecipe_(itemIn as IItemStack, gasIn as string, outputItem as IItemStack) as void {
    <recipetype:mekanism:purifying>.addJsonRecipe("custompurifying"+itemIn.registryName+"sdfsf",{
        "itemInput": itemIn,
        "gasInput": gasIn,
        "output": outputItem
    });
}

function addmineral_crusher_recipe_(itemIn as IItemStack,outputItem as IItemStack,experience as float)as void{
<recipetype:electrodynamics:mineral_crusher_recipe>.addJsonRecipe("mineral_electro_"+itemIn.registryName.path+"rwgwg",{
    "iteminputs" :{
        "count":1,
        "0":{
        "tag":itemIn,
        "count":itemIn.amount
        }
    },
    "output":{
        "item":outputItem,
        "count":outputItem.amount
    },
    "experience":experience
    });
}*/
/*-------------------------------Beyond Earth--------------------------------------------*/
craftingTable.removeByName("beyond_earth:compressor");
craftingTable.removeByName("beyond_earth_giselle_addon:crafting/advanced_compressor");
JEI.hideIngredient(<item:beyond_earth:compressor>);
JEI.hideIngredient(<item:beyond_earth_giselle_addon:advanced_compressor>);
<recipetype:beyond_earth:compressing>.removeAll();
<recipetype:beyond_earth_giselle_addon:rolling>.removeAll();
/*-------------------------------------AE2------------------------------------------------*/
JEI.hideIngredient(<item:ae2:facade>);
<tag:items:curios:curio>.add(<item:ae2:wireless_terminal>);
<tag:items:curios:curio>.add(<item:ae2:wireless_crafting_terminal>);
/*--------------------------------Chisel & Bits-------------------------------------------*/
JEI.hideIngredient(<item:chiselsandbits:block_bit>);
/*-----------------------------------Copper Plate-----------------------------------------*/
craftingTable.removeByName("immersiveengineering:crafting/plate_copper_hammering");            //remove recipies           
JEI.hideIngredient(<item:immersiveengineering:plate_copper>);
JEI.hideIngredient(<item:create:copper_sheet>);                                                //remove items from JEI
<tag:items:forge:plates/copper>.add(<item:alltheores:copper_plate>);
Replacer.forEverything().replace(<item:create:copper_sheet>,<item:alltheores:copper_plate>).suppressWarnings().execute();                          
/*---------------------------------Iron Plate---------------------------------------------*/
craftingTable.removeByName("immersiveengineering:crafting/plate_iron_hammering");
craftingTable.removeByName("beyond_earth:iron_plate");                                          
craftingTable.removeByName("electrodynamics:plateiron");
JEI.hideIngredient(<item:immersiveengineering:plate_iron>);
JEI.hideIngredient(<item:beyond_earth:iron_plate>);
JEI.hideIngredient(<item:electrodynamics:plateiron>);
JEI.hideIngredient(<item:create:iron_sheet>);
<tag:items:forge:plates/iron>.add(<item:alltheores:iron_plate>);
<tag:items:forge:plates/iron>.remove(<item:immersiveengineering:plate_iron>);
<tag:items:forge:plates/iron>.remove(<item:beyond_earth:iron_plate>);
<tag:items:forge:plates/iron>.remove(<item:electrodynamics:plateiron>);
<tag:items:forge:plates/iron>.remove(<item:create:iron_sheet>);
Replacer.forEverything().replace(<item:immersiveengineering:plate_iron>,<item:alltheores:iron_plate>).suppressWarnings().execute();
Replacer.forEverything().replace(<item:beyond_earth:iron_plate>,<item:alltheores:iron_plate>).suppressWarnings().execute();
Replacer.forEverything().replace(<item:electrodynamics:plateiron>,<item:alltheores:iron_plate>).suppressWarnings().execute();
Replacer.forEverything().replace(<item:create:iron_sheet>,<item:alltheores:iron_plate>).suppressWarnings().execute();
/*----------------------------------Nickel Plate------------------------------------------*/
JEI.hideIngredient(<item:immersiveengineering:plate_nickel>);
<tag:items:forge:plates/nickel>.remove(<item:immersiveengineering:plate_nickel>);
Replacer.forEverything().replace(<item:immersiveengineering:plate_nickel>,<item:alltheores:iron_plate>).suppressWarnings().execute();
/*----------------------------------------Uranium Plate-----------------------------------*/
craftingTable.removeByName("immersiveengineering:crafting/plate_uranium_hammering");
JEI.hideIngredient(<item:immersiveengineering:plate_uranium>);
<tag:items:forge:plates/uranium>.remove(<item:immersiveengineering:plate_uranium>);
Replacer.forEverything().replace(<item:immersiveengineering:plate_uranium>,<item:alltheores:uranium_plate>).suppressWarnings().execute();
/*---------------------------------------Electrum Plate-----------------------------------*/
craftingTable.removeByName("immersiveengineering:crafting/plate_electrum_hammering");
JEI.hideIngredient(<item:immersiveengineering:plate_electrum>);
<tag:items:forge:plates/electrum>.remove(<item:immersiveengineering:plate_electrum>);
Replacer.forEverything().replace(<item:immersiveengineering:plate_electrum>,<item:alltheores:electrum_plate>).suppressWarnings().execute();
/*---------------------------------------Aluminum Plate-----------------------------------*/
craftingTable.removeByName("immersiveengineering:crafting/plate_aluminum_hammering");
JEI.hideIngredient(<item:immersiveengineering:plate_aluminum>);
JEI.hideIngredient(<item:electrodynamics:platealuminum>);
<tag:items:forge:plates/aluminum>.remove(<item:electrodynamics:platealuminum>);
<tag:items:forge:plates/aluminum>.remove(<item:immersiveengineering:plate_aluminum>);
Replacer.forEverything().replace(<item:immersiveengineering:plate_aluminum>,<item:alltheores:aluminum_plate>).suppressWarnings().execute();
Replacer.forEverything().replace(<item:electrodynamics:platealuminum>,<item:alltheores:aluminum_plate>).suppressWarnings().execute();
/*---------------------------------------Lead Plate----------------------------------------*/
craftingTable.removeByName("immersiveengineering:crafting/plate_lead_hammering");
craftingTable.removeByName("electrodynamics:platelead");
JEI.hideIngredient(<item:immersiveengineering:plate_lead>);
JEI.hideIngredient(<item:electrodynamics:platelead>);
<tag:items:forge:plates/lead>.remove(<item:immersiveengineering:plate_lead>);
<tag:items:forge:plates/lead>.remove(<item:electrodynamics:platelead>);
Replacer.forEverything().replace(<item:immersiveengineering:plate_lead>,<item:alltheores:lead_plate>).suppressWarnings().execute();
Replacer.forEverything().replace(<item:electrodynamics:platelead>,<item:alltheores:lead_plate>).suppressWarnings().execute();
/*-------------------------------------Silver Plate----------------------------------------*/
craftingTable.removeByName("immersiveengineering:crafting/plate_silver_hammering");
JEI.hideIngredient(<item:immersiveengineering:plate_silver>);
<tag:items:forge:plates/silver>.remove(<item:immersiveengineering:plate_silver>);
Replacer.forEverything().replace(<item:immersiveengineering:plate_silver>,<item:alltheores:silver_plate>).suppressWarnings().execute();
/*-------------------------------------Constantan Plate------------------------------------*/
craftingTable.removeByName("immersiveengineering:crafting/plate_constantan_hammering");
JEI.hideIngredient(<item:immersiveengineering:plate_constantan>);
<tag:items:forge:plates/constantan>.remove(<item:immersiveengineering:plate_constantan>);
Replacer.forEverything().replace(<item:immersiveengineering:plate_constantan>,<item:alltheores:constantan_plate>).suppressWarnings().execute();
/*-------------------------------------Gold Plate------------------------------------------*/
craftingTable.removeByName("immersiveengineering:crafting/plate_gold_hammering");
JEI.hideIngredient(<item:immersiveengineering:plate_gold>);
JEI.hideIngredient(<item:create:golden_sheet>);
<tag:items:forge:plates/gold>.remove(<item:immersiveengineering:plate_gold>);
<tag:items:forge:plates/gold>.remove(<item:create:golden_sheet>);
Replacer.forEverything().replace(<item:immersiveengineering:plate_gold>,<item:alltheores:gold_plate>).suppressWarnings().execute();
Replacer.forEverything().replace(<item:create:golden_sheet>,<item:alltheores:gold_plate>).suppressWarnings().execute();
/*-------------------------------------Steel Plate-----------------------------------------*/
craftingTable.removeByName("immersiveengineering:crafting/plate_steel_hammering");
craftingTable.removeByName("electrodynamics:platesteel");
JEI.hideIngredient(<item:immersiveengineering:plate_steel>);
JEI.hideIngredient(<item:electrodynamics:platesteel>);
<tag:items:forge:plates/steel>.remove(<item:immersiveengineering:plate_steel>);
<tag:items:forge:plates/steel>.remove(<item:electrodynamics:platesteel>);
Replacer.forEverything().replace(<item:immersiveengineering:plate_steel>,<item:alltheores:steel_plate>).suppressWarnings().execute();
Replacer.forEverything().replace(<item:electrodynamics:platesteel>,<item:alltheores:steel_plate>).suppressWarnings().execute();
/*-------------------------------------Brass Plate-----------------------------------------*/
JEI.hideIngredient(<item:create:brass_sheet>);
<tag:items:forge:plates/brass>.remove(<item:create:brass_sheet>);
Replacer.forEverything().replace(<item:create:brass_sheet>,<item:alltheores:brass_plate>).suppressWarnings().execute();
/*-------------------------------------Bronze Plate----------------------------------------*/
craftingTable.removeByName("electrodynamics:platebronze");
JEI.hideIngredient(<item:electrodynamics:platebronze>);
<tag:items:forge:plates/bronze>.remove(<item:electrodynamics:platebronze>);
Replacer.forEverything().replace(<item:electrodynamics:platebronze>,<item:alltheores:bronze_plate>).suppressWarnings().execute();
/*---------------------------------------Zinc Plate----------------------------------------*/
JEI.hideIngredient(<item:createaddition:zinc_sheet>);
<tag:items:forge:plates/zinc>.remove(<item:createaddition:zinc_sheet>);
Replacer.forEverything().replace(<item:createaddition:zinc_sheet>,<item:alltheores:zinc_plate>).suppressWarnings().execute();
/*-------------------------------------Circuits--------------------------------------------*/
craftingTable.removeByName("electrodynamics:circuitbasic");
craftingTable.removeByName("electrodynamics:circuitadvanced");
craftingTable.removeByName("electrodynamics:circuitelite");
craftingTable.removeByName("electrodynamics:circuitultimate");
JEI.hideIngredient(<item:electrodynamics:circuitbasic>);
JEI.hideIngredient(<item:electrodynamics:circuitadvanced>);
JEI.hideIngredient(<item:electrodynamics:circuitelite>);
JEI.hideIngredient(<item:electrodynamics:circuitultimate>);
/*-------------------------------------Create----------------------------------------------*/
JEI.hideIngredient(<item:createaddition:copper_rod>);

JEI.hideIngredient(<item:create:deepslate_zinc_ore>);
JEI.hideIngredient(<item:create:zinc_block>);
JEI.hideIngredient(<item:create:raw_zinc>);
JEI.hideIngredient(<item:create:zinc_ingot>);
JEI.hideIngredient(<item:create:zinc_nugget>);

<tag:items:forge:ingots/gold>.remove(<item:mca:rose_gold_ingot>);
<tag:items:oc2:tool_materials/gold>.remove(<item:mca:rose_gold_ingot>);

<recipetype:create:pressing>.addRecipe("alltheoresaluminum_ingot_",[<item:alltheores:aluminum_plate>],<item:alltheores:aluminum_ingot>);
<recipetype:create:pressing>.addRecipe("alltheoresiridium_ingot_",[<item:alltheores:iridium_plate>],<item:alltheores:iridium_ingot>);
<recipetype:create:pressing>.addRecipe("alltheoreslead_ingot_",[<item:alltheores:lead_plate>],<item:alltheores:lead_ingot>);
<recipetype:create:pressing>.addRecipe("alltheoresnickel_ingot_",[<item:alltheores:nickel_plate>],<item:alltheores:nickel_ingot>);
<recipetype:create:pressing>.addRecipe("alltheoresosmium_ingot_",[<item:alltheores:osmium_plate>],<item:alltheores:osmium_ingot>);
<recipetype:create:pressing>.addRecipe("alltheoresplatinum_ingot_",[<item:alltheores:platinum_plate>],<item:alltheores:platinum_ingot>);
<recipetype:create:pressing>.addRecipe("alltheoressilver_ingot_",[<item:alltheores:silver_plate>],<item:alltheores:silver_ingot>);
<recipetype:create:pressing>.addRecipe("alltheorestin_ingot_",[<item:alltheores:tin_plate>],<item:alltheores:tin_ingot>);
<recipetype:create:pressing>.addRecipe("alltheoresuranium_ingot_",[<item:alltheores:uranium_plate>],<item:alltheores:uranium_ingot>);
<recipetype:create:pressing>.addRecipe("alltheoreszinc_ingot_",[<item:alltheores:zinc_plate>],<item:alltheores:zinc_ingot>);
<recipetype:create:pressing>.addRecipe("alltheoressteel_ingot_",[<item:alltheores:steel_plate>],<item:alltheores:steel_ingot>);
<recipetype:create:pressing>.addRecipe("alltheoresinvar_ingot_",[<item:alltheores:invar_plate>],<item:alltheores:invar_ingot>);
<recipetype:create:pressing>.addRecipe("alltheoreselectrum_ingot_",[<item:alltheores:electrum_plate>],<item:alltheores:electrum_ingot>);
<recipetype:create:pressing>.addRecipe("alltheoresbronze_ingot_",[<item:alltheores:bronze_plate>],<item:alltheores:bronze_ingot>);
<recipetype:create:pressing>.addRecipe("minecraftiron_ingot_",[<item:alltheores:iron_plate>],<item:minecraft:iron_ingot>);
<recipetype:create:pressing>.addRecipe("minecraftgold_ingot_",[<item:alltheores:gold_plate>],<item:minecraft:gold_ingot>);
<recipetype:create:pressing>.addRecipe("minecraftdiamond_",[<item:alltheores:diamond_plate>],<item:minecraft:diamond>);
<recipetype:create:pressing>.addRecipe("minecraftcopper_ingot_",[<item:alltheores:copper_plate>],<item:minecraft:copper_ingot>);
<recipetype:create:pressing>.addRecipe("alltheoresenderium_ingot_",[<item:alltheores:enderium_plate>],<item:alltheores:enderium_ingot>);
<recipetype:create:pressing>.addRecipe("alltheoreslumium_ingot_",[<item:alltheores:lumium_plate>],<item:alltheores:lumium_ingot>);
<recipetype:create:pressing>.addRecipe("alltheoressignalum_ingot_",[<item:alltheores:signalum_plate>],<item:alltheores:signalum_ingot>);
<recipetype:create:pressing>.addRecipe("alltheoresbrass_ingot_",[<item:alltheores:brass_plate>],<item:alltheores:brass_ingot>);
<recipetype:create:pressing>.addRecipe("alltheoresconstantan_ingot_",[<item:alltheores:constantan_plate>],<item:alltheores:constantan_ingot>);

<recipetype:create:pressing>.removeByName("create:pressing/gold_ingot");              
<recipetype:create:pressing>.removeByName("create:pressing/copper_ingot");
<recipetype:create:pressing>.removeByName("create:pressing/brass_ingot");
<recipetype:create:pressing>.removeByName("create:pressing/iron_ingot");
<recipetype:create:pressing>.removeByName("createaddition:pressing/zinc_ingot");

/*-------------------------------------ores-----------------------------------------------*/
JEI.hideIngredient(<item:create:zinc_ore>);
JEI.hideIngredient(<item:create:raw_zinc_block>);
JEI.hideIngredient(<item:immersiveengineering:ore_aluminum>);
JEI.hideIngredient(<item:immersiveengineering:deepslate_ore_aluminum>);
JEI.hideIngredient(<item:immersiveengineering:ore_lead>);
JEI.hideIngredient(<item:immersiveengineering:deepslate_ore_lead>);
JEI.hideIngredient(<item:immersiveengineering:ore_silver>);
JEI.hideIngredient(<item:immersiveengineering:deepslate_ore_silver>);
JEI.hideIngredient(<item:immersiveengineering:ore_nickel>);
JEI.hideIngredient(<item:immersiveengineering:deepslate_ore_nickel>);
JEI.hideIngredient(<item:immersiveengineering:ore_uranium>);
JEI.hideIngredient(<item:immersiveengineering:deepslate_ore_uranium>);
JEI.hideIngredient(<item:electrodynamics:deepslateorealuminum>);
JEI.hideIngredient(<item:electrodynamics:orealuminum>);
JEI.hideIngredient(<item:electrodynamics:orefluorite>);
JEI.hideIngredient(<item:electrodynamics:oreuraninite>);
JEI.hideIngredient(<item:electrodynamics:deepslateoreuraninite>);
JEI.hideIngredient(<item:mekanism:tin_ore>);
JEI.hideIngredient(<item:mekanism:deepslate_tin_ore>);
JEI.hideIngredient(<item:mekanism:osmium_ore>);
JEI.hideIngredient(<item:mekanism:deepslate_osmium_ore>);
JEI.hideIngredient(<item:mekanism:uranium_ore>);
JEI.hideIngredient(<item:mekanism:deepslate_fluorite_ore>);
JEI.hideIngredient(<item:mekanism:deepslate_uranium_ore>);
JEI.hideIngredient(<item:mekanism:fluorite_ore>);
JEI.hideIngredient(<item:mekanism:lead_ore>);
JEI.hideIngredient(<item:mekanism:deepslate_lead_ore>);
<tag:items:forge:ores>.remove(<item:create:zinc_ore>);
<tag:items:forge:ores>.remove(<item:create:raw_zinc_block>);
<tag:items:forge:ores>.remove(<item:immersiveengineering:ore_aluminum>);
<tag:items:forge:ores>.remove(<item:immersiveengineering:deepslate_ore_aluminum>);
<tag:items:forge:ores>.remove(<item:immersiveengineering:ore_lead>);
<tag:items:forge:ores>.remove(<item:immersiveengineering:deepslate_ore_lead>);
<tag:items:forge:ores>.remove(<item:immersiveengineering:ore_silver>);
<tag:items:forge:ores>.remove(<item:immersiveengineering:deepslate_ore_silver>);
<tag:items:forge:ores>.remove(<item:immersiveengineering:deepslate_ore_nickel>);
<tag:items:forge:ores>.remove(<item:immersiveengineering:ore_nickel>);
<tag:items:forge:ores>.remove(<item:immersiveengineering:ore_uranium>);
<tag:items:forge:ores>.remove(<item:immersiveengineering:deepslate_ore_uranium>);
<tag:items:forge:ores>.remove(<item:electrodynamics:deepslateorealuminum>);
<tag:items:forge:ores>.remove(<item:electrodynamics:orealuminum>);
<tag:items:forge:ores>.remove(<item:electrodynamics:orefluorite>);
<tag:items:forge:ores>.remove(<item:electrodynamics:oreuraninite>);
<tag:items:forge:ores>.remove(<item:electrodynamics:deepslateoreuraninite>);
<tag:items:forge:ores>.remove(<item:mekanism:tin_ore>);
<tag:items:forge:ores>.remove(<item:mekanism:deepslate_tin_ore>);
<tag:items:forge:ores>.remove(<item:mekanism:osmium_ore>);
<tag:items:forge:ores>.remove(<item:mekanism:deepslate_osmium_ore>);
<tag:items:forge:ores>.remove(<item:mekanism:uranium_ore>);
<tag:items:forge:ores>.remove(<item:mekanism:deepslate_fluorite_ore>);
<tag:items:forge:ores>.remove(<item:mekanism:deepslate_uranium_ore>);
<tag:items:forge:ores>.remove(<item:mekanism:fluorite_ore>);
<tag:items:forge:ores>.remove(<item:mekanism:lead_ore>);
<tag:items:forge:ores>.remove(<item:mekanism:deepslate_lead_ore>);
/*-------------------------------------ingots----------------------------------------------*/
JEI.hideIngredient(<item:immersiveengineering:ingot_aluminum>);
<tag:items:forge:ingots/aluminum>.remove(<item:immersiveengineering:ingot_aluminum>);
<tag:items:forge:ingots>.remove(<item:immersiveengineering:ingot_aluminum>);
Replacer.forEverything().replace(<item:immersiveengineering:ingot_aluminum>,<item:alltheores:aluminum_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:immersiveengineering:ingot_aluminum>);

JEI.hideIngredient(<item:immersiveengineering:ingot_lead>);
<tag:items:forge:ingots/lead>.remove(<item:immersiveengineering:ingot_lead>);
<tag:items:forge:ingots>.remove(<item:immersiveengineering:ingot_lead>);
Replacer.forEverything().replace(<item:immersiveengineering:ingot_lead>,<item:alltheores:lead_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:immersiveengineering:ingot_lead>);

JEI.hideIngredient(<item:immersiveengineering:ingot_silver>);
<tag:items:forge:ingots/silver>.remove(<item:immersiveengineering:ingot_silver>);
<tag:items:forge:ingots>.remove(<item:immersiveengineering:ingot_silver>);
Replacer.forEverything().replace(<item:immersiveengineering:ingot_silver>,<item:alltheores:silver_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:immersiveengineering:ingot_silver>);

JEI.hideIngredient(<item:immersiveengineering:ingot_nickel>);
<tag:items:forge:ingots/nickel>.remove(<item:immersiveengineering:ingot_nickel>);
<tag:items:forge:ingots>.remove(<item:immersiveengineering:ingot_nickel>);
Replacer.forEverything().replace(<item:immersiveengineering:ingot_nickel>,<item:alltheores:nickel_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:immersiveengineering:ingot_nickel>);

JEI.hideIngredient(<item:immersiveengineering:ingot_uranium>);
<tag:items:forge:ingots/uranium>.remove(<item:immersiveengineering:ingot_uranium>);
<tag:items:forge:ingots>.remove(<item:immersiveengineering:ingot_uranium>);
Replacer.forEverything().replace(<item:immersiveengineering:ingot_uranium>,<item:alltheores:uranium_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:immersiveengineering:ingot_uranium>);

JEI.hideIngredient(<item:immersiveengineering:ingot_constantan>);
<tag:items:forge:ingots/constantan>.remove(<item:immersiveengineering:ingot_constantan>);
<tag:items:forge:ingots>.remove(<item:immersiveengineering:ingot_constantan>);
Replacer.forEverything().replace(<item:immersiveengineering:ingot_constantan>,<item:alltheores:constantan_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:immersiveengineering:ingot_constantan>);

JEI.hideIngredient(<item:immersiveengineering:ingot_electrum>);
<tag:items:forge:ingots/electrum>.remove(<item:immersiveengineering:ingot_electrum>);
<tag:items:forge:ingots>.remove(<item:immersiveengineering:ingot_electrum>);
Replacer.forEverything().replace(<item:immersiveengineering:ingot_electrum>,<item:alltheores:electrum_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:immersiveengineering:ingot_electrum>);

JEI.hideIngredient(<item:immersiveengineering:ingot_steel>);
<tag:items:forge:ingots/steel>.remove(<item:immersiveengineering:ingot_steel>);
<tag:items:forge:ingots>.remove(<item:immersiveengineering:ingot_steel>);
Replacer.forEverything().replace(<item:immersiveengineering:ingot_steel>,<item:alltheores:steel_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:immersiveengineering:ingot_steel>);

JEI.hideIngredient(<item:mekanism:ingot_osmium>);
<tag:items:forge:ingots/osmium>.remove(<item:mekanism:ingot_osmium>);
<tag:items:forge:ingots>.remove(<item:mekanism:ingot_osmium>);
Replacer.forEverything().replace(<item:mekanism:ingot_osmium>,<item:alltheores:osmium_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:mekanism:ingot_osmium>);

JEI.hideIngredient(<item:mekanism:ingot_tin>);
<tag:items:forge:ingots/tin>.remove(<item:mekanism:ingot_tin>);
<tag:items:forge:ingots>.remove(<item:mekanism:ingot_tin>);
Replacer.forEverything().replace(<item:mekanism:ingot_tin>,<item:alltheores:tin_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:mekanism:ingot_tin>);

JEI.hideIngredient(<item:mekanism:ingot_lead>);
<tag:items:forge:ingots/lead>.remove(<item:mekanism:ingot_lead>);
<tag:items:forge:ingots>.remove(<item:mekanism:ingot_lead>);
Replacer.forEverything().replace(<item:mekanism:ingot_lead>,<item:alltheores:lead_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:mekanism:ingot_lead>);

JEI.hideIngredient(<item:mekanism:ingot_uranium>);
<tag:items:forge:ingots/uranium>.remove(<item:mekanism:ingot_uranium>);
<tag:items:forge:ingots>.remove(<item:mekanism:ingot_uranium>);
Replacer.forEverything().replace(<item:mekanism:ingot_uranium>,<item:alltheores:uranium_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:mekanism:ingot_uranium>);

JEI.hideIngredient(<item:electrodynamics:ingotlead>);
<tag:items:forge:ingots/lead>.remove(<item:electrodynamics:ingotlead>);
<tag:items:forge:ingots>.remove(<item:electrodynamics:ingotlead>);
Replacer.forEverything().replace(<item:electrodynamics:ingotlead>,<item:alltheores:lead_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:electrodynamics:ingotlead>);

JEI.hideIngredient(<item:electrodynamics:ingotsteel>);
<tag:items:forge:ingots/steel>.remove(<item:electrodynamics:ingotsteel>);
<tag:items:forge:ingots>.remove(<item:electrodynamics:ingotsteel>);
Replacer.forEverything().replace(<item:electrodynamics:ingotsteel>,<item:alltheores:steel_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:electrodynamics:ingotsteel>);

JEI.hideIngredient(<item:mekanism:ingot_steel>);
<tag:items:forge:ingots/steel>.remove(<item:mekanism:ingot_steel>);
<tag:items:forge:ingots>.remove(<item:mekanism:ingot_steel>);
Replacer.forEverything().replace(<item:mekanism:ingot_steel>,<item:alltheores:steel_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:mekanism:ingot_steel>);

JEI.hideIngredient(<item:electrodynamics:ingotsilver>);
<tag:items:forge:ingots/silver>.remove(<item:electrodynamics:ingotsilver>);
<tag:items:forge:ingots>.remove(<item:electrodynamics:ingotsilver>);
Replacer.forEverything().replace(<item:electrodynamics:ingotsilver>,<item:alltheores:silver_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:electrodynamics:ingotsilver>);

JEI.hideIngredient(<item:electrodynamics:ingottin>);
<tag:items:forge:ingots/tin>.remove(<item:electrodynamics:ingottin>);
<tag:items:forge:ingots>.remove(<item:electrodynamics:ingottin>);
Replacer.forEverything().replace(<item:electrodynamics:ingottin>,<item:alltheores:tin_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:electrodynamics:ingottin>);

JEI.hideIngredient(<item:electrodynamics:ingotbronze>);
<tag:items:forge:ingots/bronze>.remove(<item:electrodynamics:ingotbronze>);
<tag:items:forge:ingots>.remove(<item:electrodynamics:ingotbronze>);
Replacer.forEverything().replace(<item:electrodynamics:ingotbronze>,<item:alltheores:bronze_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:electrodynamics:ingotbronze>);

JEI.hideIngredient(<item:electrodynamics:ingotaluminum>);
<tag:items:forge:ingots/aluminum>.remove(<item:electrodynamics:ingotaluminum>);
<tag:items:forge:ingots>.remove(<item:electrodynamics:ingotaluminum>);
Replacer.forEverything().replace(<item:electrodynamics:ingotaluminum>,<item:alltheores:aluminum_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:electrodynamics:ingotaluminum>);

JEI.hideIngredient(<item:mekanism:ingot_bronze>);
<tag:items:forge:ingots/bronze>.remove(<item:mekanism:ingot_bronze>);
<tag:items:forge:ingots>.remove(<item:mekanism:ingot_bronze>);
Replacer.forEverything().replace(<item:mekanism:ingot_bronze>,<item:alltheores:bronze_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:mekanism:ingot_bronze>);

JEI.hideIngredient(<item:beyond_earth:steel_ingot>);
<tag:items:forge:ingots/steel>.remove(<item:beyond_earth:steel_ingot>);
<tag:items:forge:ingots>.remove(<item:beyond_earth:steel_ingot>);
Replacer.forEverything().replace(<item:beyond_earth:steel_ingot>,<item:alltheores:steel_ingot>).suppressWarnings().execute();
craftingTable.remove(<item:beyond_earth:steel_ingot>);

JEI.hideIngredient(<item:create:brass_ingot>);
<tag:items:forge:ingots/brass>.remove(<item:create:brass_ingot>);
/*-------------------------------------Raw-------------------------------------------------*/
JEI.hideIngredient(<item:immersiveengineering:raw_aluminum>);
craftingTable.remove(<item:immersiveengineering:raw_aluminum>);

JEI.hideIngredient(<item:immersiveengineering:raw_lead>);
craftingTable.remove(<item:immersiveengineering:raw_lead>);

JEI.hideIngredient(<item:immersiveengineering:raw_silver>);
craftingTable.remove(<item:immersiveengineering:raw_silver>);

JEI.hideIngredient(<item:immersiveengineering:raw_nickel>);
craftingTable.remove(<item:immersiveengineering:raw_nickel>);

JEI.hideIngredient(<item:immersiveengineering:raw_uranium>);
craftingTable.remove(<item:immersiveengineering:raw_uranium>);

JEI.hideIngredient(<item:mekanism:raw_tin>);
craftingTable.remove(<item:mekanism:raw_tin>);

JEI.hideIngredient(<item:mekanism:raw_osmium>);
craftingTable.remove(<item:mekanism:raw_osmium>);

JEI.hideIngredient(<item:mekanism:raw_lead>);
craftingTable.remove(<item:mekanism:raw_lead>);

JEI.hideIngredient(<item:mekanism:raw_uranium>);
craftingTable.remove(<item:mekanism:raw_uranium>);

JEI.hideIngredient(<item:electrodynamics:raworesilver>);
craftingTable.remove(<item:electrodynamics:raworesilver>);

JEI.hideIngredient(<item:electrodynamics:raworelead>);
craftingTable.remove(<item:electrodynamics:raworelead>);

JEI.hideIngredient(<item:electrodynamics:raworetin>);
craftingTable.remove(<item:electrodynamics:raworetin>);

JEI.hideIngredient(<item:electrodynamics:raworeuranium>);
craftingTable.remove(<item:electrodynamics:raworeuranium>);
/*-------------------------------------Blocks----------------------------------------------*///temporary
JEI.hideIngredient(<item:electrodynamics:resourceblockaluminum>);
craftingTable.remove(<item:electrodynamics:resourceblockaluminum>);

JEI.hideIngredient(<item:electrodynamics:resourceblocksteel>);
craftingTable.remove(<item:electrodynamics:resourceblocksteel>);

JEI.hideIngredient(<item:electrodynamics:resourceblockbronze>);
craftingTable.remove(<item:electrodynamics:resourceblockbronze>);

JEI.hideIngredient(<item:electrodynamics:resourceblockbronze>);
craftingTable.remove(<item:electrodynamics:resourceblockbronze>);

JEI.hideIngredient(<item:electrodynamics:resourceblocklead>);
craftingTable.remove(<item:electrodynamics:resourceblocklead>);

JEI.hideIngredient(<item:electrodynamics:resourceblocktin>);
craftingTable.remove(<item:electrodynamics:resourceblocktin>);

JEI.hideIngredient(<item:mekanism:block_osmium>);
craftingTable.remove(<item:mekanism:block_osmium>);

JEI.hideIngredient(<item:mekanism:block_tin>);
craftingTable.remove(<item:mekanism:block_tin>);

JEI.hideIngredient(<item:mekanism:block_lead>);
craftingTable.remove(<item:mekanism:block_lead>);

JEI.hideIngredient(<item:mekanism:block_uranium>);
craftingTable.remove(<item:mekanism:block_uranium>);

JEI.hideIngredient(<item:mekanism:block_bronze>);
craftingTable.remove(<item:mekanism:block_bronze>);

JEI.hideIngredient(<item:immersiveengineering:storage_aluminum>);
craftingTable.remove(<item:immersiveengineering:storage_aluminum>);

JEI.hideIngredient(<item:immersiveengineering:storage_lead>);
craftingTable.remove(<item:immersiveengineering:storage_lead>);

JEI.hideIngredient(<item:immersiveengineering:storage_silver>);
craftingTable.remove(<item:immersiveengineering:storage_silver>);

JEI.hideIngredient(<item:immersiveengineering:storage_nickel>);
craftingTable.remove(<item:immersiveengineering:storage_nickel>);

JEI.hideIngredient(<item:immersiveengineering:storage_constantan>);
craftingTable.remove(<item:immersiveengineering:storage_constantan>);

JEI.hideIngredient(<item:immersiveengineering:storage_steel>);
craftingTable.remove(<item:immersiveengineering:storage_steel>);
/*----------------------------------raw blocks---------------------------------------------*/
JEI.hideIngredient(<item:mekanism:block_raw_uranium>);
craftingTable.remove(<item:mekanism:block_raw_uranium>);

JEI.hideIngredient(<item:mekanism:block_raw_lead>);
craftingTable.remove(<item:mekanism:block_raw_lead>);

JEI.hideIngredient(<item:mekanism:block_raw_osmium>);
craftingTable.remove(<item:mekanism:block_raw_osmium>);

JEI.hideIngredient(<item:mekanism:block_raw_tin>);
craftingTable.remove(<item:mekanism:block_raw_tin>);

JEI.hideIngredient(<item:immersiveengineering:raw_block_uranium>);
craftingTable.remove(<item:immersiveengineering:raw_block_uranium>);

JEI.hideIngredient(<item:immersiveengineering:raw_block_nickel>);
craftingTable.remove(<item:immersiveengineering:raw_block_nickel>);

JEI.hideIngredient(<item:immersiveengineering:raw_block_silver>);
craftingTable.remove(<item:immersiveengineering:raw_block_silver>);

JEI.hideIngredient(<item:immersiveengineering:raw_block_lead>);
craftingTable.remove(<item:immersiveengineering:raw_block_lead>);

JEI.hideIngredient(<item:immersiveengineering:raw_block_lead>);
craftingTable.remove(<item:immersiveengineering:raw_block_lead>);

JEI.hideIngredient(<item:electrodynamics:raworeblocktin>);
craftingTable.remove(<item:electrodynamics:raworeblocktin>);

JEI.hideIngredient(<item:electrodynamics:raworeblocklead>);
craftingTable.remove(<item:electrodynamics:raworeblocklead>);

JEI.hideIngredient(<item:electrodynamics:raworeblocksilver>);
craftingTable.remove(<item:electrodynamics:raworeblocksilver>);
/*-------------------------------------Nuggets---------------------------------------------*/
JEI.hideIngredient(<item:create:brass_nugget>);
craftingTable.remove(<item:create:brass_ingot>);
<tag:items:forge:nuggets/brass>.remove(<item:create:brass_nugget>);

JEI.hideIngredient(<item:beyond_earth:steel_nugget>);
craftingTable.remove(<item:beyond_earth:steel_nugget>);

JEI.hideIngredient(<item:electrodynamics:nuggettin>);
craftingTable.remove(<item:electrodynamics:nuggettin>);

JEI.hideIngredient(<item:electrodynamics:nuggetsilver>);
craftingTable.remove(<item:electrodynamics:nuggetsilver>);

JEI.hideIngredient(<item:electrodynamics:nuggetcopper>);
craftingTable.remove(<item:electrodynamics:nuggetcopper>);

JEI.hideIngredient(<item:electrodynamics:nuggetsteel>);
craftingTable.remove(<item:electrodynamics:nuggetsteel>);

JEI.hideIngredient(<item:immersiveengineering:nugget_copper>);
craftingTable.remove(<item:immersiveengineering:nugget_copper>);

JEI.hideIngredient(<item:immersiveengineering:nugget_aluminum>);
craftingTable.remove(<item:immersiveengineering:nugget_aluminum>);

JEI.hideIngredient(<item:immersiveengineering:nugget_lead>);
craftingTable.remove(<item:immersiveengineering:nugget_lead>);

JEI.hideIngredient(<item:immersiveengineering:nugget_silver>);
craftingTable.remove(<item:immersiveengineering:nugget_silver>);

JEI.hideIngredient(<item:immersiveengineering:nugget_nickel>);
craftingTable.remove(<item:immersiveengineering:nugget_nickel>);

JEI.hideIngredient(<item:immersiveengineering:nugget_uranium>);
craftingTable.remove(<item:immersiveengineering:nugget_uranium>);

JEI.hideIngredient(<item:immersiveengineering:nugget_constantan>);
craftingTable.remove(<item:immersiveengineering:nugget_constantan>);

JEI.hideIngredient(<item:immersiveengineering:nugget_electrum>);
craftingTable.remove(<item:immersiveengineering:nugget_electrum>);

JEI.hideIngredient(<item:immersiveengineering:nugget_steel>);
craftingTable.remove(<item:immersiveengineering:nugget_steel>);

JEI.hideIngredient(<item:mekanism:nugget_bronze>);
craftingTable.remove(<item:mekanism:nugget_bronze>);

JEI.hideIngredient(<item:mekanism:nugget_steel>);
craftingTable.remove(<item:mekanism:nugget_steel>);

JEI.hideIngredient(<item:mekanism:nugget_osmium>);
craftingTable.remove(<item:mekanism:nugget_osmium>);

JEI.hideIngredient(<item:mekanism:nugget_tin>);
craftingTable.remove(<item:mekanism:nugget_tin>);

JEI.hideIngredient(<item:mekanism:nugget_lead>);
craftingTable.remove(<item:mekanism:nugget_lead>);

JEI.hideIngredient(<item:mekanism:nugget_uranium>);
craftingTable.remove(<item:mekanism:nugget_uranium>);
/*-------------------------------------Gears-----------------------------------------------*/
craftingTable.removeByName("electrodynamics:gearbronze");
craftingTable.removeByName("electrodynamics:gearcopper");
craftingTable.removeByName("electrodynamics:geariron");
craftingTable.removeByName("electrodynamics:gearsteel");
craftingTable.removeByName("electrodynamics:geartin");
Replacer.forEverything().replace(<item:electrodynamics:gearbronze>,<item:alltheores:bronze_gear>).suppressWarnings().execute();
Replacer.forEverything().replace(<item:electrodynamics:gearsteel>,<item:alltheores:steel_gear>).suppressWarnings().execute();
Replacer.forEverything().replace(<item:electrodynamics:geartin>,<item:alltheores:tin_gear>).suppressWarnings().execute();
Replacer.forEverything().replace(<item:electrodynamics:gearcopper>,<item:alltheores:copper_gear>).suppressWarnings().execute();
Replacer.forEverything().replace(<item:electrodynamics:geariron>,<item:alltheores:iron_gear>).suppressWarnings().execute();
JEI.hideIngredient(<item:electrodynamics:gearbronze>);
JEI.hideIngredient(<item:electrodynamics:gearsteel>);
JEI.hideIngredient(<item:electrodynamics:geartin>);
JEI.hideIngredient(<item:electrodynamics:gearcopper>);
JEI.hideIngredient(<item:electrodynamics:geariron>);
/*-------------------------------------Dusts-----------------------------------------------*/
craftingTable.removeByName("alltheores:uranium_dust_from_hammer_crushing");
craftingTable.removeByName("alltheores:uranium_dust_from_hammer_ingot_crushing");
craftingTable.removeByName("immersiveengineering:crafting/electrum_mix");
craftingTable.removeByName("immersiveengineering:crafting/constantan_mix");
craftingTable.removeByName("immersiveengineering:crafting/hammercrushing_nickel");
craftingTable.removeByName("immersiveengineering:crafting/raw_hammercrushing_nickel");
craftingTable.removeByName("immersiveengineering:crafting/hammercrushing_nickel");
craftingTable.removeByName("immersiveengineering:crafting/raw_hammercrushing_nickel");
craftingTable.removeByName("alltheores:netherite_dust_from_hammer_crushing");
JEI.hideIngredient(<item:immersiveengineering:dust_wood>);
JEI.hideIngredient(<item:immersiveengineering:dust_sulfur>);
JEI.hideIngredient(<item:immersiveengineering:dust_saltpeter>);
JEI.hideIngredient(<item:electrodynamics:dustobsidian>);
JEI.hideIngredient(<item:alltheores:dirty_aluminum_dust>);
JEI.hideIngredient(<item:createaddition:diamond_grit>);
JEI.hideIngredient(<item:immersiveengineering:dust_gold>);
JEI.hideIngredient(<item:immersiveengineering:dust_iron>);
JEI.hideIngredient(<item:immersiveengineering:dust_steel>);
JEI.hideIngredient(<item:immersiveengineering:dust_electrum>);
JEI.hideIngredient(<item:immersiveengineering:dust_constantan>);
JEI.hideIngredient(<item:immersiveengineering:dust_uranium>);
JEI.hideIngredient(<item:immersiveengineering:dust_nickel>);
JEI.hideIngredient(<item:immersiveengineering:dust_lead>);
JEI.hideIngredient(<item:immersiveengineering:dust_silver>);
JEI.hideIngredient(<item:immersiveengineering:dust_aluminum>);
JEI.hideIngredient(<item:immersiveengineering:dust_copper>);
JEI.hideIngredient(<item:alltheores:lead_dust>);
JEI.hideIngredient(<item:alltheores:dirty_osmium_dust>);
JEI.hideIngredient(<item:electrodynamics:dustsilver>);

JEI.hideIngredient(<item:electrodynamics:dustiron>);
JEI.hideIngredient(<item:electrodynamics:dustgold>);
JEI.hideIngredient(<item:electrodynamics:dustcopper>);
JEI.hideIngredient(<item:electrodynamics:duststeel>);
JEI.hideIngredient(<item:electrodynamics:dustlead>);
JEI.hideIngredient(<item:electrodynamics:dustbronze>);
JEI.hideIngredient(<item:electrodynamics:dustsulfur>);
JEI.hideIngredient(<item:alltheores:netherite_dust>);
JEI.hideIngredient(<item:electrodynamics:dustnetherite>);

JEI.hideIngredient(<item:alltheores:uranium_dust>);
JEI.hideIngredient(<item:alltheores:tin_dust>);
JEI.hideIngredient(<item:alltheores:lead_dust>);
JEI.hideIngredient(<item:alltheores:iron_dust>);
JEI.hideIngredient(<item:alltheores:copper_dust>);
JEI.hideIngredient(<item:alltheores:gold_dust>);
JEI.hideIngredient(<item:alltheores:steel_dust>);
JEI.hideIngredient(<item:alltheores:bronze_dust>);

//JEI.hideIngredient(<item:>);

<tag:items:forge:dusts/iron>.remove(<item:electrodynamics:dustiron>);
<tag:items:forge:dusts/gold>.remove(<item:electrodynamics:dustgold>);
<tag:items:forge:dusts/copper>.remove(<item:electrodynamics:dustcopper>);
<tag:items:forge:dusts/steel>.remove(<item:electrodynamics:duststeel>);
<tag:items:forge:dusts/lead>.remove(<item:electrodynamics:dustlead>);
<tag:items:forge:dusts/bronze>.remove(<item:electrodynamics:dustbronze>);
<tag:items:forge:dusts/sulfur>.remove(<item:electrodynamics:dustsulfur>);
<tag:items:forge:dusts/netherite>.remove(<item:electrodynamics:dustnetherite>);
<tag:items:forge:dusts/silver>.remove(<item:electrodynamics:dustsilver>);
<tag:items:forge:dusts/obsidian>.remove(<item:electrodynamics:dustobsidian>);

<tag:items:forge:dusts/netherite>.remove(<item:alltheores:netherite_dust>);
<tag:items:forge:dusts/uranium>.remove(<item:alltheores:uranium_dust>);
<tag:items:forge:dusts/tin>.remove(<item:alltheores:tin_dust>);
<tag:items:forge:dusts/osmium>.remove(<item:alltheores:osmium_dust>);
<tag:items:forge:dusts/lead>.remove(<item:alltheores:lead_dust>);
<tag:items:forge:dusts/iron>.remove(<item:alltheores:iron_dust>);
<tag:items:forge:dusts/copper>.remove(<item:alltheores:copper_dust>);
<tag:items:forge:dusts/gold>.remove(<item:alltheores:gold_dust>);
<tag:items:forge:dusts/diamond>.remove(<item:alltheores:diamond_dust>);
<tag:items:forge:dusts/steel>.remove(<item:alltheores:steel_dust>);
<tag:items:forge:dusts/bronze>.remove(<item:alltheores:bronze_dust>);

<tag:items:forge:dusts/wood>.remove(<item:immersiveengineering:dust_wood>);
<tag:items:forge:dusts/sulfur>.remove(<item:immersiveengineering:dust_sulfur>);
//<tag:items:forge:dusts/salpeter>.remove(<items:immersiveengineering:dust_saltpeter>);
<tag:items:forge:dusts/gold>.remove(<item:immersiveengineering:dust_gold>);
<tag:items:forge:dusts/iron>.remove(<item:immersiveengineering:dust_iron>);
<tag:items:forge:dusts/steel>.remove(<item:immersiveengineering:dust_steel>);
<tag:items:forge:dusts/electrum>.remove(<item:immersiveengineering:dust_electrum>);
<tag:items:forge:dusts/constantan>.remove(<item:immersiveengineering:dust_constantan>);
<tag:items:forge:dusts/uranium>.remove(<item:immersiveengineering:dust_uranium>);
<tag:items:forge:dusts/nickel>.remove(<item:immersiveengineering:dust_nickel>);
<tag:items:forge:dusts/lead>.remove(<item:immersiveengineering:dust_lead>);
<tag:items:forge:dusts/silver>.remove(<item:immersiveengineering:dust_silver>);
<tag:items:forge:dusts/aluminum>.remove(<item:immersiveengineering:dust_aluminum>);
<tag:items:forge:dusts/copper>.remove(<item:immersiveengineering:dust_copper>);
//<tag:items:forge:dust>.remove(<item:immersiveengineering:>);

furnace.remove(<item:mekanism:ingot_steel>);
furnace.addJsonRecipe("steel1", {ingredient:{item:<item:mekanism:dust_steel>.registryName},result:<item:alltheores:steel_ingot>.registryName,experience:0.35 as float, cookingtime:100});

furnace.remove(<item:mekanism:ingot_tin>);
furnace.addJsonRecipe("tin1", {ingredient:{item:<item:mekanism:dust_tin>.registryName},result:<item:alltheores:tin_ingot>.registryName,experience:0.35 as float, cookingtime:100});
furnace.remove(<item:electrodynamics:ingottin>);

furnace.remove(<item:mekanism:ingot_osmium>);
furnace.addJsonRecipe("osmium1", {ingredient:{item:<item:mekanism:dust_osmium>.registryName},result:<item:alltheores:osmium_ingot>.registryName,experience:0.35 as float, cookingtime:100});

furnace.remove(<item:mekanism:ingot_uranium>);
furnace.addJsonRecipe("uranium1", {ingredient:{item:<item:mekanism:dust_uranium>.registryName},result:<item:alltheores:uranium_ingot>.registryName,experience:0.35 as float, cookingtime:100});

furnace.remove(<item:mekanism:ingot_lead>);
furnace.addJsonRecipe("lead1", {ingredient:{item:<item:mekanism:dust_lead>.registryName},result:<item:alltheores:lead_ingot>.registryName,experience:0.35 as float, cookingtime:100});

furnace.remove(<item:mekanism:ingot_bronze>);
furnace.addJsonRecipe("bronze", {ingredient:{item:<item:mekanism:dust_bronze>.registryName},result:<item:alltheores:bronze_ingot>.registryName,experience:0.35 as float, cookingtime:100});

/*JEI.hideIngredient(<item:mekanism:dust_uranium>);
//mods.mekanism.enrichment.addRecipe(<item:mekanism:dirty_dust_uranium>,<item:alltheores:uranium_dust>);
//mods.mekanism.enrichment.removeRecipe(<item:mekanism:dirty_dust_uranium>);
furnace.remove(<item:mekanism:ingot_uranium>);*/

<tag:items:forge:dusts/tin>.remove(<item:electrodynamics:dusttin>);
/*-------------------------------------Rods------------------------------------------------*/
craftingTable.removeByName("immersiveengineering:crafting/stick_aluminum");
craftingTable.removeByName("immersiveengineering:crafting/stick_iron");
craftingTable.removeByName("immersiveengineering:crafting/stick_steel");
craftingTable.removeByName("alltheores:steel_rod");
JEI.hideIngredient(<item:createaddition:iron_rod>);
JEI.hideIngredient(<item:createaddition:gold_rod>);
JEI.hideIngredient(<item:createaddition:brass_rod>);
JEI.hideIngredient(<item:immersiveengineering:stick_iron>);
JEI.hideIngredient(<item:immersiveengineering:stick_steel>);
JEI.hideIngredient(<item:immersiveengineering:stick_aluminum>);
JEI.hideIngredient(<item:alltheores:steel_rod>);
/*-------------------------------------Mekanism--------------------------------------------*/
craftingTable.removeByName("mekanism:charcoal");
JEI.hideIngredient(<item:mekanism:block_charcoal>);

<tag:items:curios:back>.add(<item:mekanism:jetpack>);
/*-------------------------------------OC II-----------------------------------------------*/
/*craftingTable.addShaped("oc_missing",<item:oc2:computer>,[
[<item:minecraft:iron_ingot>,<item:oc2:bus_cable>,<item:minecraft:iron_ingot>],
[<item:oc2:bus_cable>,<item:oc2:transistor>,<item:oc2:bus_cable>],
[<item:minecraft:iron_ingot>,<item:oc2:bus_cable>,<item:minecraft:iron_ingot>]]);*/
/*-------------------------------------Wands-----------------------------------------------*/
craftingTable.removeByName("constructionwand:core_destruction");
craftingTable.removeByName("constructionwand:infinity_wand");
craftingTable.addShaped("infinitywand", <item:constructionwand:infinity_wand>,[
    [<item:minecraft:air>,<item:minecraft:air>,<item:minecraft:glass>],
    [<item:minecraft:air>,<item:nuclearscience:fuelleuo2>,<item:minecraft:air>],
    [<item:nuclearscience:fuelleuo2>,<item:minecraft:air>,<item:minecraft:air>]]);
craftingTable.addShaped("deconstruction_core",<item:constructionwand:core_destruction>,[
    [<item:minecraft:glass>,<item:minecraft:glass>,<item:minecraft:glass>],
    [<item:minecraft:glass>,<item:mekanism:pellet_polonium>,<item:minecraft:glass>],
    [<item:minecraft:glass>,<item:minecraft:glass>,<item:minecraft:glass>]]);
/*-------------------------------------Minecraft--------------------------------------------*/
craftingTable.addShapeless("stick_log_a",<item:minecraft:stick>*16, [<tag:items:minecraft:logs>,<tag:items:minecraft:logs>]);
