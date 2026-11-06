package info.flowersoft.theotown.draft;

import info.flowersoft.theotown.city.Direction;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class BusStopDraft extends ViewportDraft {
    public Draft[] addPriceDrafts;
    public int[][] animationFGSpotIndices;
    public List<AnimationSpot> animationFGSpots;
    public int[][] animationSpotIndices;
    public List<AnimationSpot> animationSpots;
    public int capacity;
    public long flags;
    public int height;
    public int[] influenceInduceVector;
    public int monthlyPrice;
    public float[] parcelSpeeds;
    public int price;
    public long requiredFlags;
    public int width;
    public long xFlags;
    public float speed = 1.0f;
    public float enterSpeed = 1.0f;
    public float exitSpeed = 1.0f;
    public int minDirs = 0;
    public int maxDirs = 3;
    public boolean symmetricDirs = false;
    public int minLevel = -2;
    public int maxLevel = 16;

    public boolean fitsRoad(long j, int i) {
        int iCountDirections = Direction.countDirections(i);
        if (iCountDirections < this.minDirs || iCountDirections > this.maxDirs) {
            return false;
        }
        if (j == 0 || (j & this.requiredFlags) != 0) {
            return !this.symmetricDirs || Direction.isSymmetric(i);
        }
        return false;
    }
}
