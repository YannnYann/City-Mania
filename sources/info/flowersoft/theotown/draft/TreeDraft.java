package info.flowersoft.theotown.draft;

import info.flowersoft.theotown.util.ArrayUtil;
import io.blueflower.stapel2d.drawing.Color;

/* JADX INFO: loaded from: classes4.dex */
public class TreeDraft extends ViewportDraft {
    public Draft[] addPriceDrafts;
    public SpawnInBiomeDefinition[] biomes;
    public int buildHeight;
    public int framesPerTree;
    public int[] influenceInduceVector;
    public Color mapColor;
    public Color mapColorWinter;
    public int price;
    public boolean supportsSlope = true;
    public boolean burnable = true;
    public boolean water = false;
    public boolean land = true;

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
        spawnDefinition.noiseFactor = 0.5f;
        return spawnDefinition;
    }
}
