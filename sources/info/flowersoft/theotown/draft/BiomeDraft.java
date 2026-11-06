package info.flowersoft.theotown.draft;

/* JADX INFO: loaded from: classes4.dex */
public class BiomeDraft extends Draft {
    public boolean isWater;
    public int tempIndex;
    public boolean spawnable = true;
    public SpawnDefinition spawnDefinition = getDefaultSpawnDefinition();

    public static SpawnDefinition getDefaultSpawnDefinition() {
        return new SpawnDefinition();
    }
}
