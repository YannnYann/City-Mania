package info.flowersoft.theotown.draft;

import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.util.SpecialInt;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class UpgradeDraft extends ViewportDraft {
    public int[][] animationSpotIndices;
    public List<AnimationSpot> animationSpots;
    public int[] aspectCapacity;
    public long buildTime;
    public BuildingDraft.CarSpawnerDraft[] carSpawners;
    public final SpecialInt diamondPrice = new SpecialInt();
    public int[] influenceInduceVector;
    public long monthlyPrice;
    public int[] neededAspectAmount;
    public boolean onlyOne;
    public Draft parent;
    public long power;
    public long price;
    public long water;

    public int getNeededAmount(int i) {
        return Math.max(this.neededAspectAmount[i], 0);
    }

    public int getProvidedAmount(int i) {
        return Math.max(-this.neededAspectAmount[i], 0);
    }
}
