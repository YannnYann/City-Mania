package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.BiomeDraft;
import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.draft.InfluenceDraft;
import info.flowersoft.theotown.draft.SpawnInBiomeDefinition;
import info.flowersoft.theotown.draft.TreeDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.MissingDraftException;
import info.flowersoft.theotown.util.json.JSONException;
import io.blueflower.stapel2d.drawing.Color;

/* JADX INFO: loaded from: classes4.dex */
public class TreeDraftLoader extends DraftLoader {
    public static final Color DEFAULT_COLOR = new Color(33, 50, 20);
    public static final Color DEFAULT_COLOR_WINTER = new Color(193, 200, 195);

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"tree"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public TreeDraft load() throws MissingDraftException, JSONException {
        TreeDraft treeDraft = new TreeDraft();
        loadDefaults(treeDraft);
        treeDraft.frames = loadFrames("frames", "frame", treeDraft, treeDraft.frames);
        int[] iArr = ((InfluenceDraft) Drafts.ALL.get("$inf.default")).induceVector;
        treeDraft.influenceInduceVector = iArr;
        treeDraft.influenceInduceVector = loadInfluences(iArr);
        treeDraft.framesPerTree = this.src.optInt("frames per tree", 1);
        boolean zOptBoolean = this.src.optBoolean("auto build", false);
        treeDraft.buildHeight = this.src.optInt("build height", 2);
        treeDraft.supportsSlope = this.src.optBoolean("supports slope", treeDraft.supportsSlope);
        treeDraft.mapColor = optColor("map color", DEFAULT_COLOR);
        treeDraft.mapColorWinter = optColor("map color winter", DEFAULT_COLOR_WINTER);
        int iOptInt = this.src.optInt("price", 50);
        treeDraft.price = iOptInt;
        if (iOptInt < 0 && !treeDraft.isPrivileged()) {
            treeDraft.price = 0;
        }
        String str = treeDraft.water ? "$biome_ocean00" : "$biome_mixed_forest00";
        SpawnInBiomeDefinition[] spawnInBiomeDefinitionArrLoadLegacySpawn = loadLegacySpawn("spawn", treeDraft.biomes, str);
        treeDraft.biomes = spawnInBiomeDefinitionArrLoadLegacySpawn;
        SpawnInBiomeDefinition[] spawnInBiomeDefinitionArrLoadInBiomeSpawners = loadInBiomeSpawners("biome", "biomes", spawnInBiomeDefinitionArrLoadLegacySpawn, new BiomeDraftLoader$$ExternalSyntheticLambda3(), str);
        treeDraft.biomes = spawnInBiomeDefinitionArrLoadInBiomeSpawners;
        if (spawnInBiomeDefinitionArrLoadInBiomeSpawners == null && zOptBoolean) {
            if (treeDraft.land) {
                SpawnInBiomeDefinition spawnInBiomeDefinition = new SpawnInBiomeDefinition();
                spawnInBiomeDefinition.spawnDefinition = TreeDraft.getDefaultSpawnDefinition();
                spawnInBiomeDefinition.biome = (BiomeDraft) Drafts.getOrThrow("$biome_mixed_forest00", BiomeDraft.class);
                treeDraft.addBiome(spawnInBiomeDefinition);
            }
            if (treeDraft.water) {
                SpawnInBiomeDefinition spawnInBiomeDefinition2 = new SpawnInBiomeDefinition();
                spawnInBiomeDefinition2.spawnDefinition = TreeDraft.getDefaultSpawnDefinition();
                spawnInBiomeDefinition2.biome = (BiomeDraft) Drafts.getOrThrow("$biome_ocean00", BiomeDraft.class);
                treeDraft.addBiome(spawnInBiomeDefinition2);
            }
        }
        treeDraft.burnable = this.src.optBoolean("burnable", treeDraft.burnable);
        treeDraft.water = this.src.optBoolean("water", treeDraft.water);
        treeDraft.land = this.src.optBoolean("land", treeDraft.land);
        treeDraft.addPriceDrafts = loadDraftList(this.src, "add price", treeDraft.id, treeDraft.addPriceDrafts);
        if (treeDraft.category == null) {
            treeDraft.category = (CategoryDraft) Drafts.ALL.get("$cat_tree00");
        }
        Drafts.TREES.add(treeDraft);
        return treeDraft;
    }
}
