package info.flowersoft.theotown.city;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.IntIntMap;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Way;
import info.flowersoft.theotown.components.traffic.ParcelPriorityQueue;
import info.flowersoft.theotown.util.PackedInt2;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class Pathfinding {
    public final City city;
    public int doneCalculations;
    public int failedCalculations;
    public final int heigth;
    public final int levelStride;
    public Way result;
    public long roadFlags;
    public final boolean shortcut;
    public final Tiles tiles;
    public final int width;
    public final ArrayList<Parcel> freeParcels = new ArrayList<>();
    public final ParcelPriorityQueue queue = new ParcelPriorityQueue();
    public final IntIntMap markerMap = new IntIntMap();
    public float trafficFactor = 4.0f;
    public final int[] targetBB = new int[4];

    public static int getDifX(int i) {
        if (i == 0) {
            return 1;
        }
        return i == 2 ? -1 : 0;
    }

    public static int getDifY(int i) {
        if (i == 1) {
            return 1;
        }
        return i == 3 ? -1 : 0;
    }

    public Pathfinding(City city) {
        this.city = city;
        this.tiles = city.getTiles();
        resetTargetBB();
        this.shortcut = false;
        int width = city.getWidth();
        this.width = width;
        int height = city.getHeight();
        this.heigth = height;
        this.levelStride = width * height;
    }

    public final void resetTargetBB() {
        int[] iArr = this.targetBB;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        iArr[2] = 0;
        iArr[3] = 0;
    }

    public final void registerToTargetBB(int i, int i2) {
        int[] iArr = this.targetBB;
        iArr[0] = Math.min(iArr[0], i);
        int[] iArr2 = this.targetBB;
        iArr2[1] = Math.min(iArr2[1], i2);
        int[] iArr3 = this.targetBB;
        iArr3[2] = Math.max(iArr3[2], i);
        int[] iArr4 = this.targetBB;
        iArr4[3] = Math.max(iArr4[3], i2);
    }

    public void addStartParcel(int i, int i2, int i3) {
        Road absoluteRoad;
        int i4 = i / 2;
        int i5 = i2 / 2;
        if (!this.city.isValid(i4, i5) || i < 0 || i2 < 0 || (absoluteRoad = this.tiles.getAbsoluteRoad(i4, i5, i3)) == null) {
            return;
        }
        if (addToQueue(i, i2, i3, absoluteRoad, 0)) {
            orMarker(getMarkerIndex(i4, i5, i3), 3 << (((i % 2) + ((i2 % 2) * 2)) * 3));
        }
    }

    public final void orMarker(int i, int i2) {
        IntIntMap intIntMap = this.markerMap;
        intIntMap.put(i, i2 | intIntMap.get(i, 0));
    }

    public void addStart(MapArea mapArea) {
        for (int i = 0; i < mapArea.countParcels(); i++) {
            addStartParcel(mapArea.getParcelX(i), mapArea.getParcelY(i), mapArea.getParcelLevel(i));
        }
    }

    public void addTarget(int i, int i2, int i3) {
        Road absoluteRoad;
        if (!this.city.isValid(i, i2) || (absoluteRoad = this.tiles.getAbsoluteRoad(i, i2, i3)) == null || (absoluteRoad.getFlags() & this.roadFlags) == 0) {
            return;
        }
        int i4 = i * 2;
        int i5 = i2 * 2;
        registerToTargetBB(i4, i5);
        registerToTargetBB(i4 + 1, i5 + 1);
        orMarker(getMarkerIndex(i, i2, i3), 4096);
    }

    public void addTargetParcel(int i, int i2, int i3) {
        int i4 = i / 2;
        int i5 = i2 / 2;
        if (!this.city.isValid(i4, i5) || i < 0 || i2 < 0 || this.tiles.getAbsoluteRoad(i4, i5, i3) == null) {
            return;
        }
        registerToTargetBB(i, i2);
        orMarker(getMarkerIndex(i4, i5, i3), 4096);
    }

    public final int getMarkerIndex(int i, int i2, int i3) {
        return i + (i2 * this.width) + (i3 * this.levelStride);
    }

    public void addTarget(Building building, int i) {
        for (int x = building.getX(); x < building.getX() + building.getWidth(); x++) {
            addTarget(x, building.getY() - 1, i);
            addTarget(x, building.getY() + building.getHeight(), i);
        }
        for (int y = building.getY(); y < building.getY() + building.getHeight(); y++) {
            addTarget(building.getX() - 1, y, i);
            addTarget(building.getX() + building.getWidth(), y, i);
        }
    }

    public void addTarget(MapArea mapArea) {
        for (int i = 0; i < mapArea.countParcels(); i++) {
            addTargetParcel(mapArea.getParcelX(i), mapArea.getParcelY(i), mapArea.getParcelLevel(i));
        }
    }

    public final boolean addToQueue(int i, int i2, int i3, Road road, int i4) {
        Parcel parcelRemove;
        if ((road.getFlags() & this.roadFlags) == 0) {
            return false;
        }
        int[] iArr = this.targetBB;
        int iMax = Math.max(Math.max(iArr[0] - i, i - iArr[2]), 0);
        int[] iArr2 = this.targetBB;
        int iMax2 = (int) (((((iMax + Math.max(Math.max(iArr2[1] - i2, i2 - iArr2[3]), 0)) * ((this.trafficFactor * road.trafficAmount) + 1.0f)) / MathUtils.clamp(road.draft.speed, 0.1f, 4.0f)) * 100.0f) + (i4 * 20));
        if (this.freeParcels.isEmpty()) {
            parcelRemove = new Parcel();
        } else {
            ArrayList<Parcel> arrayList = this.freeParcels;
            parcelRemove = arrayList.remove(arrayList.size() - 1);
        }
        parcelRemove.xy = PackedInt2.pack(i, i2);
        parcelRemove.distance = iMax2;
        parcelRemove.length = i4;
        parcelRemove.level = i3;
        this.queue.add(parcelRemove);
        return true;
    }

    public void setRoadFlags(long j) {
        this.roadFlags = j;
    }

    public void setTrafficFactor(float f) {
        this.trafficFactor = f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x011b, code lost:
    
        r0.result = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0117 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:123:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0100 A[LOOP:2: B:21:0x009a->B:45:0x0100, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01e0 A[PHI: r0
      0x01e0: PHI (r0v5 info.flowersoft.theotown.city.Pathfinding) = (r0v3 info.flowersoft.theotown.city.Pathfinding), (r0v9 info.flowersoft.theotown.city.Pathfinding) binds: [B:79:0x0197, B:85:0x01de] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x021f A[LOOP:3: B:94:0x0217->B:96:0x021f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x022f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void calculate(int r26) {
        /*
            Method dump skipped, instruction units count: 598
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.city.Pathfinding.calculate(int):void");
    }

    public int getFailedCalculations() {
        return this.failedCalculations;
    }

    public int getDoneCalculations() {
        return this.doneCalculations;
    }

    public boolean hasResult() {
        return this.result != null;
    }

    public boolean isShortcut() {
        return this.shortcut;
    }

    public Way getResult() {
        return this.result;
    }
}
