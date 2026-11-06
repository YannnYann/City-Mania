package info.flowersoft.theotown.draft;

import com.ironsource.mediationsdk.logger.IronSourceError;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class RoadDraft extends ViewportDraft {
    public Draft[] addPriceDrafts;
    public int[][] animationFGSpotIndices;
    public List<AnimationSpot> animationFGSpots;
    public int[][] animationSpotIndices;
    public List<AnimationSpot> animationSpots;
    public int[] bridgeFrames;
    public int bridgePrice;
    public Draft budgetItem;
    public boolean buildZone;
    public List<String> decorationBuildingIds;
    public boolean devoted;
    public int[] dirs;
    public int[][] dirsRightLeftSide;
    public boolean drawGround;
    public long flags;
    public int framesPerBridge;
    public boolean hiddenOnClick;
    public int[] influenceInduceVector;
    public int level;
    public Color mapColor;
    public int maxLevel;
    public int maxSupportedLevel;
    public int minLevel;
    public int minSupportedLevel;
    public int monthlyPrice;
    public List<Transition> onBuiltTransitions;
    public List<Transition> onClickTransitions;
    public List<Transition> onEventTransitions;
    public boolean oneWay;
    public int[] oneWayFrames;
    public boolean overrunnable;
    public float[] parcelSpeeds;
    public int price;
    public List<Transition> randomTransitions;
    public int[] slopeFrames;
    public float speedWinter;
    public int[] trafficLights;
    public List<Transition> transitions;
    public int[] tunnelFrames;
    public int tunnelPrice;
    public int[] waterBorderFrames;
    public long xFlags;
    public ZoneDraft zone;
    public static final byte[][] SIMPLE_PEDESTRIAN_MAP = generatePedestrianRoadPathMap(false, true);
    public static final byte[][] DIAGONAL_PEDESTRIAN_MAP = generatePedestrianRoadPathMap(true, true);
    public static final byte[][] CONNECTED_PEDESTRIAN_MAP = generatePedestrianRoadPathMap(false, false);
    public static final byte[][] CONNECTED_DIAGONAL_PEDESTRIAN_MAP = generatePedestrianRoadPathMap(true, false);
    public int greenPhase = IronSourceError.ERROR_CAPPING_VALIDATION_FAILED;
    public int yellowPhase = 500;
    public float speed = 1.0f;
    public float enterSpeed = 1.0f;
    public float exitSpeed = 1.0f;
    public int pileDistant = 1;
    public int tunnelDiamondPrice = 2;
    public boolean autoJoin = true;
    public boolean allowBusStop = true;
    public boolean allowTransfer = true;
    public boolean allowCrossing = true;
    public boolean connectable = true;
    public int joinGroup = 0;
    public int width = 1;
    public float priceFactor = -1.0f;
    public boolean drawWaterBorders = true;
    public boolean pickable = true;
    public boolean supportsSlope = true;
    public boolean drawInFront = false;
    public boolean allowDiagonal = false;
    public boolean diagonalCars = false;
    public boolean drawWaterGround = false;
    public GroundDraft drawWaterGroundDraft = null;
    public RoadDraft diagonalRoad = null;
    public RoadDraft diagonalRoadOf = null;
    public boolean pedestrians = true;
    public boolean allowRoadCrossing = false;
    public float sidewalkOffset = 0.05f;
    public float sidewalkSize = 0.025f;
    public boolean singlePlacement = false;
    public List<AutoDecoration> decorations = new ArrayList();

    public boolean hasBridge() {
        return this.bridgeFrames != null && this.maxLevel > 0;
    }

    public boolean hasTunnel() {
        return this.tunnelFrames != null;
    }

    public int countBridges() {
        int[] iArr = this.bridgeFrames;
        if (iArr != null) {
            return iArr.length / this.framesPerBridge;
        }
        return 0;
    }

    public void setLeftSideTraffic(boolean z) {
        this.dirs = this.dirsRightLeftSide[z ? 1 : 0];
    }

    public boolean isClickSensitive() {
        return this.onClickTransitions != null;
    }

    public int getIcon() {
        int[] iArr = this.iconFrames;
        if (iArr != null) {
            return iArr[0];
        }
        return Resources.ICON_ROAD;
    }

    public boolean canReplace(RoadDraft roadDraft) {
        return (roadDraft == this || this.level < roadDraft.level || this.diagonalRoad == roadDraft) ? false : true;
    }

    public boolean hasDecorations() {
        List<AutoDecoration> list = this.decorations;
        return list != null && list.size() > 0;
    }

    public static byte[][] generatePedestrianRoadPathMap(boolean z, boolean z2) {
        byte[][] bArr = new byte[64][];
        for (int i = 0; i < 16; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                bArr[(i * 4) + i2] = generatePedestrianParcelPathMap(i, i2, z, z2);
            }
        }
        return bArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0109 A[LOOP:1: B:32:0x0107->B:33:0x0109, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] generatePedestrianParcelPathMap(int r3, int r4, boolean r5, boolean r6) {
        /*
            Method dump skipped, instruction units count: 288
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.draft.RoadDraft.generatePedestrianParcelPathMap(int, int, boolean, boolean):byte[]");
    }

    public static int parcelToParcelR(int i) {
        if (i == 0) {
            return 3;
        }
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 2;
        }
        if (i == 3) {
            return 1;
        }
        throw new IllegalArgumentException("Parcel " + i + " is not a valid parcel index");
    }

    public static class AutoDecoration {
        public int dirsOnly;
        public RoadDecorationDraft draft;
        public int offsetX;
        public int offsetY;
        public int stepX;
        public int stepY;
        public int stride;

        public boolean check(int i, int i2, int i3) {
            int i4 = this.dirsOnly;
            if (i4 > 0 && (i3 & i4) == 0) {
                return false;
            }
            int i5 = i - this.offsetX;
            int i6 = i2 - this.offsetY;
            int i7 = this.stepY;
            return (((i5 * i7) - (this.stride * i6)) % (this.stepX * i7)) + (i6 % i7) == 0;
        }
    }
}
