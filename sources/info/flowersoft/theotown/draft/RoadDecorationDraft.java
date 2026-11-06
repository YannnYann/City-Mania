package info.flowersoft.theotown.draft;

import info.flowersoft.theotown.city.Direction;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class RoadDecorationDraft extends Draft {
    public int[][] animationFGSpotIndices;
    public List<AnimationSpot> animationFGSpots;
    public int[][] animationSpotIndices;
    public List<AnimationSpot> animationSpots;
    public int[] dirs;
    public long flags;
    public int lineStepping;
    public String occupationGroup;
    public List<Transition> onBuiltTransitions;
    public List<Transition> onClickTransitions;
    public List<Transition> onEventTransitions;
    public float[] parcelSpeeds;
    public RoadDraft previewRoad;
    public int price;
    public List<Transition> randomTransitions;
    public long removeFlags;
    public long removeXFlags;
    public long requiredFlags;
    public List<Transition> transitions;
    public long xFlags;
    public float speed = 1.0f;
    public float enterSpeed = 1.0f;
    public float exitSpeed = 1.0f;
    public int minDirs = 0;
    public int maxDirs = 4;
    public boolean symmetricDirs = false;
    public int minLevel = -2;
    public int maxLevel = 16;
    public boolean lineTool = false;
    public boolean exclusive = false;
    public boolean allowRoadCrossing = false;
    public float sidewalkOffset = -1.0f;
    public float sidewalkSize = -1.0f;

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
