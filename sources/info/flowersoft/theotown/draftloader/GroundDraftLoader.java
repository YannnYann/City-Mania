package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.BiomeDraft;
import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.draft.GroundDraft;
import info.flowersoft.theotown.draft.SpawnDefinition;
import info.flowersoft.theotown.draft.SpawnInBiomeDefinition;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.MissingDraftException;
import info.flowersoft.theotown.util.json.JSONException;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.util.Getter;

/* JADX INFO: loaded from: classes4.dex */
public class GroundDraftLoader extends DraftLoader {
    public static final ImageHandleResolver EDGE_HANDLE = new ImageHandleResolver() { // from class: info.flowersoft.theotown.draftloader.GroundDraftLoader.1
        @Override // info.flowersoft.theotown.draftloader.ImageHandleResolver
        public int getHandleX(int i, int i2, int i3) {
            return 0;
        }

        @Override // info.flowersoft.theotown.draftloader.ImageHandleResolver
        public int getHandleY(int i, int i2, int i3) {
            return 9;
        }
    };

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"ground"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public GroundDraft load() throws MissingDraftException, JSONException {
        GroundDraft groundDraft;
        GroundDraft groundDraft2 = (GroundDraft) getDraft(this.src, GroundDraft.class, new Getter() { // from class: info.flowersoft.theotown.draftloader.GroundDraftLoader$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return new GroundDraft();
            }
        });
        loadDefaults(groundDraft2);
        int[] iArrLoadFrames = loadFrames("frames", "frame", groundDraft2, groundDraft2.frames);
        groundDraft2.frames = iArrLoadFrames;
        if (iArrLoadFrames == null || iArrLoadFrames.length == 0) {
            throw new JSONException("Ground " + groundDraft2.id + " has to provide frames");
        }
        int[] iArrLoadFrames2 = loadFrames("sparkle frames", "sparkle frame", groundDraft2, groundDraft2.sparkleFrames);
        groundDraft2.sparkleFrames = iArrLoadFrames2;
        if (iArrLoadFrames2 != null && iArrLoadFrames2.length == 0) {
            groundDraft2.sparkleFrames = null;
        }
        ImageHandleResolver imageHandleResolver = EDGE_HANDLE;
        groundDraft2.edgeFrames = loadFrames("edge frames", "edge frame", imageHandleResolver, groundDraft2, groundDraft2.edgeFrames);
        groundDraft2.isWater = this.src.optBoolean("water", groundDraft2.isWater);
        groundDraft2.light = this.src.optBoolean("light", groundDraft2.light);
        int iOptInt = this.src.optInt("level", groundDraft2.level);
        groundDraft2.level = iOptInt;
        if (iOptInt < 0 || iOptInt > 1) {
            throw new IllegalArgumentException("Ground level has to be in {0, 1} but was " + groundDraft2.level + " in " + groundDraft2.id);
        }
        if (iOptInt > 0 && groundDraft2.isWater) {
            throw new IllegalArgumentException("Ground level " + groundDraft2.level + " cannot be water as defined in " + groundDraft2.id);
        }
        if (iOptInt == 0) {
            int[] iArr = groundDraft2.edgeFrames;
            if (iArr == null || iArr.length == 0) {
                throw new JSONException("Ground " + groundDraft2.id + " has to provide edge frames");
            }
            if (iArr.length == 1) {
                int i = iArr[0];
                groundDraft2.edgeFrames = new int[]{i, i};
            }
        }
        if (groundDraft2.isWater || iOptInt != 0) {
            groundDraft = groundDraft2;
        } else {
            groundDraft2.borderFrames = loadFrames("border frames", "border frame", groundDraft2, groundDraft2.borderFrames);
            int[] iArrLoadFrames3 = loadFrames("edge border frames", "edge border frame", imageHandleResolver, groundDraft2, groundDraft2.edgeBorderFrames);
            groundDraft = groundDraft2;
            groundDraft.edgeBorderFrames = iArrLoadFrames3;
            int[] iArr2 = groundDraft.borderFrames;
            if (iArr2 == null || iArr2.length == 0) {
                throw new JSONException("Ground " + groundDraft.id + " has to provide 16 border frames");
            }
            if (iArrLoadFrames3 == null || iArrLoadFrames3.length == 0) {
                throw new JSONException("Ground " + groundDraft.id + " has to provide 32 edge border frames");
            }
            groundDraft.borderFrames = extendArray(iArr2, 16);
            groundDraft.edgeBorderFrames = extendArray(groundDraft.edgeBorderFrames, 32);
        }
        GroundDraft groundDraft3 = (GroundDraft) Drafts.getOld(groundDraft);
        if (groundDraft3 != null) {
            if (groundDraft3.isWater) {
                Drafts.WATER_TILES.remove(groundDraft3);
            } else {
                Drafts.LAND_TILES.remove(groundDraft3);
            }
            Drafts.GROUNDS.remove(groundDraft3);
        }
        if (groundDraft.isWater) {
            Drafts.WATER_TILES.add(groundDraft);
        } else {
            Drafts.LAND_TILES.add(groundDraft);
        }
        Drafts.GROUNDS.add(groundDraft);
        String str = groundDraft.isWater ? "$biome_ocean00" : "$biome_mixed_forest00";
        SpawnInBiomeDefinition[] spawnInBiomeDefinitionArrLoadLegacySpawn = loadLegacySpawn("spawn", groundDraft.biomes, str);
        groundDraft.biomes = spawnInBiomeDefinitionArrLoadLegacySpawn;
        SpawnInBiomeDefinition[] spawnInBiomeDefinitionArrLoadInBiomeSpawners = loadInBiomeSpawners("biome", "biomes", spawnInBiomeDefinitionArrLoadLegacySpawn, new BiomeDraftLoader$$ExternalSyntheticLambda1(), str);
        groundDraft.biomes = spawnInBiomeDefinitionArrLoadInBiomeSpawners;
        if (spawnInBiomeDefinitionArrLoadInBiomeSpawners != null || !this.src.optBoolean("auto build", false)) {
            if (!this.src.optBoolean("auto build", true)) {
                groundDraft.biomes = null;
            }
        } else {
            SpawnInBiomeDefinition spawnInBiomeDefinition = new SpawnInBiomeDefinition();
            spawnInBiomeDefinition.spawnDefinition = new SpawnDefinition();
            spawnInBiomeDefinition.biome = (BiomeDraft) Drafts.getOrThrow(str, BiomeDraft.class);
            groundDraft.addBiome(spawnInBiomeDefinition);
        }
        groundDraft.mapColor = groundDraft.isWater ? new Color(39, 68, 93) : new Color(68, 96, 48);
        groundDraft.mapColorWinter = groundDraft.isWater ? new Color(39, 68, 93) : new Color(239, 239, 239);
        groundDraft.mapColor = optColor("map color", groundDraft.mapColor);
        groundDraft.mapColorWinter = optColor("map color winter", groundDraft.mapColorWinter);
        groundDraft.dry = this.src.optBoolean("dry", groundDraft.dry);
        groundDraft.shading = this.src.optBoolean("shading", groundDraft.shading);
        groundDraft.shadingFactor = this.src.optInt("shading factor", groundDraft.shadingFactor);
        groundDraft.slopeShadingFactor = this.src.optInt("slope shading factor", groundDraft.slopeShadingFactor);
        groundDraft.shadingOffset = this.src.optInt("shading offset", groundDraft.shadingOffset);
        groundDraft.slopeShadingOffset = this.src.optInt("slope shading offset", groundDraft.slopeShadingOffset);
        GroundDraft groundDraft4 = groundDraft;
        groundDraft4.texture = loadFrames("texture", "textures", ImageHandleResolver.TOP_LEFT, groundDraft4, groundDraft.texture);
        groundDraft4.winter = this.src.optBoolean("winter", groundDraft4.winter);
        groundDraft4.pollution = this.src.optBoolean("pollution", groundDraft4.pollution);
        groundDraft4.plantable = this.src.optBoolean("plantable", groundDraft4.plantable);
        groundDraft4.blending = this.src.optBoolean("blending", groundDraft4.blending);
        groundDraft4.snowOverlay = this.src.optBoolean("snow overlay", groundDraft4.snowOverlay);
        if (groundDraft4.isWater) {
            groundDraft4.lightWaterColor = optColor("light water color", groundDraft4.lightWaterColor);
            groundDraft4.darkWaterColor = optColor("dark water color", groundDraft4.darkWaterColor);
            if (groundDraft4.lightWaterColor == null) {
                groundDraft4.lightWaterColor = new Color(200, 240, 255);
            }
            if (groundDraft4.darkWaterColor == null) {
                groundDraft4.darkWaterColor = new Color(0, 0, 30);
            }
            groundDraft4.waterAnimMS = (int) (200.0d / this.src.optDouble("water speed", 1.0d));
            groundDraft4.waterSparkleAnimMS = (int) (500.0d / this.src.optDouble("water sparkle speed", 1.0d));
        }
        if (groundDraft4.category == null) {
            groundDraft4.category = (CategoryDraft) Drafts.get("$cat_terrain00", CategoryDraft.class);
        }
        return groundDraft4;
    }
}
