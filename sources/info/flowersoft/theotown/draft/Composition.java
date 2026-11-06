package info.flowersoft.theotown.draft;

import com.google.android.gms.common.api.Api;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.draft.requirement.DraftRequirement;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class Composition {
    public final int height;
    public int[][] tilesXY;
    public final int width;
    public List<CompositeBuilding> buildings = new ArrayList();
    public List<CompositeRoad> roads = new ArrayList();
    public List<CompositeRoadDecoration> roadDecorations = new ArrayList();
    public List<CompositeTree> trees = new ArrayList();
    public List<CompositeBusStop> busStops = new ArrayList();
    public boolean finalized = false;

    public static class CompositeBuilding {
        public BuildingDraft draft;
        public int frame;
        public int x;
        public int y;
    }

    public static class CompositeBusStop {
        public BusStopDraft draft;
        public int level;
        public int x;
        public int y;
    }

    public static class CompositeRoadDecoration {
        public RoadDecorationDraft draft;
        public int level;
        public int x;
        public int y;
    }

    public static class CompositeTree {
        public TreeDraft draft;
        public int frame;
        public int x;
        public int y;
    }

    public Composition(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public int getWidth(int i) {
        if (i == 0 || i == 2) {
            return this.width;
        }
        return this.height;
    }

    public int getHeight(int i) {
        if (i == 0 || i == 2) {
            return this.height;
        }
        return this.width;
    }

    public int toVisualX(int i, int i2, int i3) {
        if (i3 == 0) {
            return i;
        }
        if (i3 == 1) {
            return i2;
        }
        if (i3 == 2) {
            return (this.width - 1) - i;
        }
        if (i3 != 3) {
            return 0;
        }
        return (this.height - 1) - i2;
    }

    public int toVisualY(int i, int i2, int i3) {
        if (i3 == 0) {
            return i2;
        }
        if (i3 == 1) {
            return (this.width - 1) - i;
        }
        if (i3 == 2) {
            return (this.height - 1) - i2;
        }
        if (i3 != 3) {
            return 0;
        }
        return i;
    }

    public int getRoadAlignment(int i, int i2, int i3) {
        int iAxis;
        int i4 = 0;
        for (int i5 = 0; i5 < this.roads.size(); i5++) {
            CompositeRoad compositeRoad = this.roads.get(i5);
            if (compositeRoad.length > 1) {
                if (compositeRoad.x0 == i && compositeRoad.x1 == i && i2 >= Math.min(compositeRoad.y0, compositeRoad.y1) && i2 <= Math.max(compositeRoad.y0, compositeRoad.y1) && i3 >= Math.min(compositeRoad.l0, compositeRoad.l1) && i3 <= Math.max(compositeRoad.l0, compositeRoad.l1)) {
                    int i6 = compositeRoad.y0;
                    if (i2 == i6 && i3 == compositeRoad.l0) {
                        iAxis = compositeRoad.dir;
                    } else {
                        int i7 = compositeRoad.y1;
                        if (i2 == i7 && i3 == compositeRoad.l1) {
                            iAxis = Direction.opposite(compositeRoad.dir);
                        } else if (i2 != i6 && i2 != i7) {
                            iAxis = Direction.axis(compositeRoad.dir);
                        }
                    }
                    i4 |= iAxis;
                } else if (compositeRoad.y0 == i2 && compositeRoad.y1 == i2 && i >= Math.min(compositeRoad.x0, compositeRoad.x1) && i <= Math.max(compositeRoad.x0, compositeRoad.x1) && i3 >= Math.min(compositeRoad.l0, compositeRoad.l1) && i3 <= Math.max(compositeRoad.l0, compositeRoad.l1)) {
                    int i8 = compositeRoad.x0;
                    if (i == i8 && i3 == compositeRoad.l0) {
                        iAxis = compositeRoad.dir;
                    } else {
                        int i9 = compositeRoad.x1;
                        if (i == i9 && i3 == compositeRoad.l1) {
                            iAxis = Direction.opposite(compositeRoad.dir);
                        } else if (i != i8 && i != i9) {
                            iAxis = Direction.axis(compositeRoad.dir);
                        }
                    }
                    i4 |= iAxis;
                }
            }
        }
        return i4;
    }

    public int getRoadDirectionIndex(int i, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7 = 0;
        for (int i8 = 0; i8 < this.roads.size(); i8++) {
            CompositeRoad compositeRoad = this.roads.get(i8);
            if (compositeRoad.length > 1) {
                if (compositeRoad.x0 == i && compositeRoad.x1 == i && i2 >= Math.min(compositeRoad.y0, compositeRoad.y1) && i2 <= Math.max(compositeRoad.y0, compositeRoad.y1) && i3 >= Math.min(compositeRoad.l0, compositeRoad.l1) && i3 <= Math.max(compositeRoad.l0, compositeRoad.l1)) {
                    int i9 = compositeRoad.y0;
                    if ((i2 == i9 && i3 == compositeRoad.l0) || ((i2 == (i6 = compositeRoad.y1) && i3 == compositeRoad.l1) || (i2 != i9 && i2 != i6))) {
                        i7 = compositeRoad.dir;
                    }
                } else if (compositeRoad.y0 == i2 && compositeRoad.y1 == i2 && i >= Math.min(compositeRoad.x0, compositeRoad.x1) && i <= Math.max(compositeRoad.x0, compositeRoad.x1) && i3 >= Math.min(compositeRoad.l0, compositeRoad.l1) && i3 <= Math.max(compositeRoad.l0, compositeRoad.l1) && ((i == (i4 = compositeRoad.x0) && i3 == compositeRoad.l0) || ((i == (i5 = compositeRoad.x1) && i3 == compositeRoad.l1) || (i != i4 && i != i5)))) {
                    i7 = compositeRoad.dir;
                }
            }
        }
        return Direction.toIndex(i7);
    }

    public int[] listXY(int i) {
        return this.tilesXY[i];
    }

    public CompositeBuilding getBuilding(int i, int i2) {
        for (int i3 = 0; i3 < this.buildings.size(); i3++) {
            CompositeBuilding compositeBuilding = this.buildings.get(i3);
            int iMax = Math.max(compositeBuilding.frame, 0);
            int i4 = compositeBuilding.x;
            if (i >= i4 && i2 >= compositeBuilding.y && i < i4 + compositeBuilding.draft.getWidth(iMax) && i2 < compositeBuilding.y + compositeBuilding.draft.getHeight(iMax)) {
                return compositeBuilding;
            }
        }
        return null;
    }

    public CompositeTree getTree(int i, int i2) {
        for (int i3 = 0; i3 < this.trees.size(); i3++) {
            CompositeTree compositeTree = this.trees.get(i3);
            if (i == compositeTree.x && i2 == compositeTree.y) {
                return compositeTree;
            }
        }
        return null;
    }

    public boolean hasRoad(int i, int i2) {
        for (int i3 = 0; i3 < this.roads.size(); i3++) {
            if (this.roads.get(i3).contains(i, i2)) {
                return true;
            }
        }
        return false;
    }

    public CompositeRoad getRoad(int i, int i2, int i3) {
        CompositeRoad compositeRoad = null;
        for (int i4 = 0; i4 < this.roads.size(); i4++) {
            CompositeRoad compositeRoad2 = this.roads.get(i4);
            if (compositeRoad2.contains(i, i2) && compositeRoad2.levels[compositeRoad2.getIndex(i, i2)] == i3 && (compositeRoad == null || compositeRoad2.draft.canReplace(compositeRoad.draft))) {
                compositeRoad = compositeRoad2;
            }
        }
        return compositeRoad;
    }

    public int getRoadUpDir(int i, int i2, int i3) {
        CompositeRoad road = getRoad(i, i2, i3);
        if (road != null) {
            return road.dirs[road.getIndex(i, i2)];
        }
        return 0;
    }

    public int getMinRoadLevel(int i, int i2) {
        int iMin = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        for (int i3 = 0; i3 < this.roads.size(); i3++) {
            CompositeRoad compositeRoad = this.roads.get(i3);
            if (compositeRoad.contains(i, i2)) {
                iMin = Math.min(iMin, compositeRoad.levels[compositeRoad.getIndex(i, i2)]);
            }
        }
        return iMin;
    }

    public int getMaxRoadLevel(int i, int i2) {
        int iMax = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < this.roads.size(); i3++) {
            CompositeRoad compositeRoad = this.roads.get(i3);
            if (compositeRoad.contains(i, i2)) {
                iMax = Math.max(iMax, compositeRoad.levels[compositeRoad.getIndex(i, i2)]);
            }
        }
        return iMax;
    }

    public CompositeRoadDecoration getRoadDecoration(int i, int i2, int i3) {
        for (int i4 = 0; i4 < this.roadDecorations.size(); i4++) {
            CompositeRoadDecoration compositeRoadDecoration = this.roadDecorations.get(i4);
            if (i == compositeRoadDecoration.x && i2 == compositeRoadDecoration.y && i3 == compositeRoadDecoration.level) {
                return compositeRoadDecoration;
            }
        }
        return null;
    }

    public CompositeBusStop getBusStop(int i, int i2, int i3) {
        for (int i4 = 0; i4 < this.busStops.size(); i4++) {
            CompositeBusStop compositeBusStop = this.busStops.get(i4);
            if (i == compositeBusStop.x && i2 == compositeBusStop.y && i3 == compositeBusStop.level) {
                return compositeBusStop;
            }
        }
        return null;
    }

    public void addBuilding(BuildingDraft buildingDraft, int i, int i2, int i3) {
        assertNotFinalized();
        assertLocation(i, i2);
        assertLocation((buildingDraft.getWidth(Math.max(i3, 0)) + i) - 1, (buildingDraft.getHeight(Math.max(i3, 0)) + i2) - 1);
        CompositeBuilding compositeBuilding = new CompositeBuilding();
        compositeBuilding.draft = buildingDraft;
        compositeBuilding.x = i;
        compositeBuilding.y = i2;
        compositeBuilding.frame = i3;
        this.buildings.add(compositeBuilding);
    }

    public void addRoad(RoadDraft roadDraft, int i, int i2, int i3, int i4, boolean z, int i5, int i6) {
        assertNotFinalized();
        assertLocation(i, i2);
        assertLocation(i3, i4);
        if (i != i3 && i2 != i4) {
            throw new IllegalArgumentException("Road must be axis aligned");
        }
        if (Math.min(i5, i6) < roadDraft.minSupportedLevel || Math.max(i5, i6) > roadDraft.maxSupportedLevel) {
            throw new IllegalArgumentException("Invalid road level");
        }
        CompositeRoad compositeRoad = new CompositeRoad();
        compositeRoad.draft = roadDraft;
        compositeRoad.x0 = i;
        compositeRoad.y0 = i2;
        compositeRoad.x1 = i3;
        compositeRoad.y1 = i4;
        int i7 = i3 - i;
        int i8 = i4 - i2;
        compositeRoad.dir = Direction.fromDifferential(i7, i8);
        int iMax = Math.max(Math.abs(i7), Math.abs(i8)) + 1;
        compositeRoad.length = iMax;
        compositeRoad.join = z;
        compositeRoad.l0 = i5;
        compositeRoad.l1 = i6;
        compositeRoad.levels = new int[iMax];
        compositeRoad.dirs = new int[iMax];
        int iMin = Math.min(Math.max(i6 - i5, -1), 1);
        int i9 = 0;
        while (true) {
            int i10 = compositeRoad.length;
            if (i9 >= i10) {
                break;
            }
            compositeRoad.levels[i9] = compositeRoad.l1 - (Math.max(((i10 - 1) - i9) + (iMin == -1 ? -1 : 0), 0) * iMin);
            int i11 = compositeRoad.l1;
            int i12 = compositeRoad.l0;
            if (i11 > i12) {
                int[] iArr = compositeRoad.levels;
                iArr[i9] = Math.max(iArr[i9], i12);
            }
            int i13 = compositeRoad.l1;
            int i14 = compositeRoad.l0;
            if (i13 < i14) {
                int[] iArr2 = compositeRoad.levels;
                iArr2[i9] = Math.min(iArr2[i9], i14);
            }
            i9++;
        }
        int i15 = 1;
        while (i15 < compositeRoad.length - 1) {
            int[] iArr3 = compositeRoad.levels;
            int i16 = iArr3[i15];
            int i17 = i15 + 1;
            if (i16 < iArr3[i17]) {
                compositeRoad.dirs[i15] = 1;
            } else if (i16 < iArr3[i15 - 1]) {
                compositeRoad.dirs[i15] = -1;
            }
            i15 = i17;
        }
        this.roads.add(compositeRoad);
    }

    public void addRoadDecoration(RoadDecorationDraft roadDecorationDraft, int i, int i2, int i3) {
        assertNotFinalized();
        assertLocation(i, i2);
        CompositeRoadDecoration compositeRoadDecoration = new CompositeRoadDecoration();
        compositeRoadDecoration.draft = roadDecorationDraft;
        compositeRoadDecoration.x = i;
        compositeRoadDecoration.y = i2;
        compositeRoadDecoration.level = i3;
        this.roadDecorations.add(compositeRoadDecoration);
    }

    public void addBusStop(BusStopDraft busStopDraft, int i, int i2, int i3) {
        assertNotFinalized();
        assertLocation(i, i2);
        CompositeBusStop compositeBusStop = new CompositeBusStop();
        compositeBusStop.draft = busStopDraft;
        compositeBusStop.x = i;
        compositeBusStop.y = i2;
        compositeBusStop.level = i3;
        this.busStops.add(compositeBusStop);
    }

    public void addTree(TreeDraft treeDraft, int i, int i2, int i3) {
        assertNotFinalized();
        assertLocation(i, i2);
        CompositeTree compositeTree = new CompositeTree();
        compositeTree.draft = treeDraft;
        compositeTree.x = i;
        compositeTree.y = i2;
        compositeTree.frame = i3;
        this.trees.add(compositeTree);
    }

    public void finish(boolean z) {
        this.tilesXY = new int[4][];
        int iTurnCCW = 6;
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            this.tilesXY[i2] = listTiles(this.width, this.height, Direction.differenceX(iTurnCCW), Direction.differenceY(iTurnCCW));
            iTurnCCW = Direction.turnCCW(iTurnCCW);
        }
        if (z) {
            while (i < this.buildings.size()) {
                if (this.buildings.get(i).draft.isFinal()) {
                    this.buildings.remove(i);
                    i--;
                }
                i++;
            }
        }
        this.finalized = true;
    }

    public int getPrice() {
        assertFinalized();
        int i = 0;
        for (int i2 = 0; i2 < this.buildings.size(); i2++) {
            i = (int) (((long) i) + this.buildings.get(i2).draft.price);
        }
        for (int i3 = 0; i3 < this.roads.size(); i3++) {
            i += this.roads.get(i3).draft.price;
        }
        for (int i4 = 0; i4 < this.roadDecorations.size(); i4++) {
            i += this.roadDecorations.get(i4).draft.price;
        }
        for (int i5 = 0; i5 < this.busStops.size(); i5++) {
            i += this.busStops.get(i5).draft.price;
        }
        for (int i6 = 0; i6 < this.trees.size(); i6++) {
            i += this.trees.get(i6).draft.price;
        }
        return i;
    }

    public int getMonthlyPrice() {
        assertFinalized();
        int i = 0;
        for (int i2 = 0; i2 < this.buildings.size(); i2++) {
            i = (int) (((long) i) + this.buildings.get(i2).draft.monthlyPrice);
        }
        for (int i3 = 0; i3 < this.roads.size(); i3++) {
            i += this.roads.get(i3).draft.monthlyPrice;
        }
        for (int i4 = 0; i4 < this.busStops.size(); i4++) {
            i += this.busStops.get(i4).draft.monthlyPrice;
        }
        return i;
    }

    public int[] getInfluenceInduceVector() {
        assertFinalized();
        int length = InfluenceType.cachedValues().length;
        int[] iArr = new int[length];
        for (int i = 0; i < this.buildings.size(); i++) {
            BuildingDraft buildingDraft = this.buildings.get(i).draft;
            addVector(iArr, buildingDraft.influenceInduceVector, buildingDraft.getArea());
        }
        for (int i2 = 0; i2 < this.roads.size(); i2++) {
            addVector(iArr, this.roads.get(i2).draft.influenceInduceVector, 1);
        }
        for (int i3 = 0; i3 < this.trees.size(); i3++) {
            addVector(iArr, this.trees.get(i3).draft.influenceInduceVector, 1);
        }
        for (int i4 = 0; i4 < this.busStops.size(); i4++) {
            addVector(iArr, this.busStops.get(i4).draft.influenceInduceVector, 1);
        }
        int i5 = this.width * this.height;
        for (int i6 = 0; i6 < length; i6++) {
            iArr[i6] = ((iArr[i6] + i5) - 1) / i5;
        }
        return iArr;
    }

    public static void addVector(int[] iArr, int[] iArr2, int i) {
        for (int i2 = 0; i2 < iArr2.length; i2++) {
            iArr[i2] = iArr[i2] + (iArr2[i2] * i);
        }
    }

    public List<DraftRequirement> collectRequirements() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.buildings.size(); i++) {
            BuildingDraft buildingDraft = this.buildings.get(i).draft;
            if (buildingDraft.hasRequirement()) {
                arrayList.add(buildingDraft.getRequirement());
            }
        }
        for (int i2 = 0; i2 < this.roads.size(); i2++) {
            RoadDraft roadDraft = this.roads.get(i2).draft;
            if (roadDraft.hasRequirement()) {
                arrayList.add(roadDraft.getRequirement());
            }
        }
        for (int i3 = 0; i3 < this.roadDecorations.size(); i3++) {
            RoadDecorationDraft roadDecorationDraft = this.roadDecorations.get(i3).draft;
            if (roadDecorationDraft.hasRequirement()) {
                arrayList.add(roadDecorationDraft.getRequirement());
            }
        }
        for (int i4 = 0; i4 < this.busStops.size(); i4++) {
            BusStopDraft busStopDraft = this.busStops.get(i4).draft;
            if (busStopDraft.hasRequirement()) {
                arrayList.add(busStopDraft.getRequirement());
            }
        }
        for (int i5 = 0; i5 < this.trees.size(); i5++) {
            TreeDraft treeDraft = this.trees.get(i5).draft;
            if (treeDraft.hasRequirement()) {
                arrayList.add(treeDraft.getRequirement());
            }
        }
        return arrayList;
    }

    public final void assertFinalized() {
        if (!this.finalized) {
            throw new IllegalStateException("Composition is not finalized yet!");
        }
    }

    public final void assertNotFinalized() {
        if (this.finalized) {
            throw new IllegalStateException("Composition is already finalized!");
        }
    }

    public final void assertLocation(int i, int i2) {
        if (i < 0 || i2 < 0 || i >= this.width || i2 >= this.height) {
            throw new IllegalArgumentException("Location is out of composition!");
        }
    }

    public static int[] listTiles(int i, int i2, int i3, int i4) {
        int[] iArr = new int[i * 2 * i2];
        if (i > 0 && i2 > 0) {
            int i5 = -i3;
            int iMax = Math.max(Math.min(i3 * UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS, i - 1), 0);
            int iMax2 = Math.max(Math.min(i4 * UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS, i2 - 1), 0);
            int i6 = 0;
            while (true) {
                if (iMax < 0 || iMax2 < 0 || iMax >= i || iMax2 >= i2) {
                    while (true) {
                        iMax += i4;
                        iMax2 += i5;
                        if (iMax < 0 || iMax2 < 0 || iMax >= i || iMax2 >= i2) {
                            break;
                        }
                        int i7 = i6 + 1;
                        iArr[i6] = iMax;
                        i6 += 2;
                        iArr[i7] = iMax2;
                    }
                    iMax += i5;
                    int i8 = 0;
                    while (true) {
                        if ((iMax >= 0 && iMax2 >= 0 && iMax < i && iMax2 < i2) || i8 >= i + i2) {
                            break;
                        }
                        iMax -= i4;
                        iMax2 -= i5;
                        i8++;
                    }
                    if (i8 >= i + i2) {
                        break;
                    }
                } else {
                    iMax -= i4;
                    iMax2 -= i5;
                }
            }
        }
        return iArr;
    }

    public static class CompositeRoad {
        public int dir;
        public int[] dirs;
        public RoadDraft draft;
        public boolean join;
        public int l0;
        public int l1;
        public int length;
        public int[] levels;
        public int x0;
        public int x1;
        public int y0;
        public int y1;

        public int getIndex(int i, int i2) {
            int i3 = i - this.x0;
            int i4 = i2 - this.y0;
            if (i3 != 0 && i4 != 0) {
                return -1;
            }
            if (i3 != 0) {
                return i3 * Direction.differenceX(this.dir);
            }
            if (i4 != 0) {
                return i4 * Direction.differenceY(this.dir);
            }
            return 0;
        }

        public boolean contains(int i, int i2) {
            if (this.x0 != i || this.x1 != i || i2 < Math.min(this.y0, this.y1) || i2 > Math.max(this.y0, this.y1)) {
                return this.y0 == i2 && this.y1 == i2 && i >= Math.min(this.x0, this.x1) && i <= Math.max(this.x0, this.x1);
            }
            return true;
        }

        public int getAlign() {
            return this.dir & 15;
        }
    }
}
