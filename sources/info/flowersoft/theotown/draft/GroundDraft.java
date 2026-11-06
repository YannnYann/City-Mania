package info.flowersoft.theotown.draft;

import info.flowersoft.theotown.util.ArrayUtil;
import io.blueflower.stapel2d.drawing.Color;

/* JADX INFO: loaded from: classes4.dex */
public class GroundDraft extends ViewportDraft {
    public SpawnInBiomeDefinition[] biomes;
    public boolean blending;
    public int[] borderFrames;
    public Color darkWaterColor;
    public boolean dry;
    public int[] edgeBorderFrames;
    public int[] edgeFrames;
    public int index;
    public boolean isWater;
    public boolean light;
    public Color lightWaterColor;
    public Color mapColor;
    public Color mapColorWinter;
    public boolean snowOverlay;
    public int[] sparkleFrames;
    public int[] texture;
    public int waterAnimMS;
    public int waterSparkleAnimMS;
    public boolean winter;
    public int level = 0;
    public boolean shading = true;
    public int shadingFactor = 4;
    public int slopeShadingFactor = 8;
    public int shadingOffset = -40;
    public int slopeShadingOffset = -20;
    public boolean pollution = true;
    public boolean plantable = true;

    public void addBiome(SpawnInBiomeDefinition spawnInBiomeDefinition) {
        SpawnInBiomeDefinition[] spawnInBiomeDefinitionArr = this.biomes;
        if (spawnInBiomeDefinitionArr == null) {
            this.biomes = new SpawnInBiomeDefinition[]{spawnInBiomeDefinition};
        } else {
            if (ArrayUtil.contains(spawnInBiomeDefinitionArr, spawnInBiomeDefinition)) {
                return;
            }
            this.biomes = (SpawnInBiomeDefinition[]) ArrayUtil.add(this.biomes, spawnInBiomeDefinition);
        }
    }

    public static SpawnDefinition getDefaultSpawnDefinition() {
        SpawnDefinition spawnDefinition = new SpawnDefinition();
        spawnDefinition.offset = 0.1f;
        return spawnDefinition;
    }
}
