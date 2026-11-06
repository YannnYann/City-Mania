package info.flowersoft.theotown.util;

import com.badlogic.gdx.utils.IntIntMap;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.MapArea;
import info.flowersoft.theotown.city.Pathfinding;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Way;
import io.blueflower.stapel2d.util.IntList;

/* JADX INFO: loaded from: classes4.dex */
public class RoadRouteCalculator {
    public boolean abortPending;
    public final City city;
    public final Pathfinding pathfinding;
    public boolean pendingCalculationDone;
    public boolean pendingPathCalculation;
    public Way pendingResult;

    public RoadRouteCalculator(City city) {
        this.city = city;
        Pathfinding pathfinding = new Pathfinding(city);
        this.pathfinding = pathfinding;
        pathfinding.setTrafficFactor(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    public boolean hasPendingCalculation() {
        return this.pendingPathCalculation;
    }

    public boolean hasWorkDone() {
        return this.pendingPathCalculation && this.pendingCalculationDone;
    }

    public boolean wasAborted() {
        return this.abortPending;
    }

    public Way consumeResult() {
        this.pendingPathCalculation = false;
        this.pendingCalculationDone = false;
        return this.pendingResult;
    }

    public void add(MapArea mapArea, MapArea mapArea2, long j) {
        this.pendingPathCalculation = true;
        this.pendingCalculationDone = false;
        this.pendingResult = null;
        this.abortPending = false;
        this.pathfinding.setRoadFlags(j);
        this.pathfinding.addTarget(mapArea2);
        this.pathfinding.addStart(mapArea);
        new Thread(new Runnable() { // from class: info.flowersoft.theotown.util.RoadRouteCalculator$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                RoadRouteCalculator.$r8$lambda$0IqRYLcHp_gMSASAk2qJoZt11zg(this.f$0);
            }
        }).start();
    }

    public static /* synthetic */ void $r8$lambda$0IqRYLcHp_gMSASAk2qJoZt11zg(RoadRouteCalculator roadRouteCalculator) {
        roadRouteCalculator.pathfinding.calculate(1000);
        if (roadRouteCalculator.pathfinding.hasResult()) {
            roadRouteCalculator.pendingResult = roadRouteCalculator.pathfinding.getResult();
        }
        roadRouteCalculator.pendingCalculationDone = true;
    }

    public IntIntMap buildWayAlignmentMap(Way way) {
        int iUnion;
        IntList intList = new IntList();
        int startX = way.getStartX();
        int startY = way.getStartY();
        int startLevel = way.getStartLevel();
        intList.add(PackedInt3.pack(startLevel, startX / 2, startY / 2));
        int dir = way.getDir(0);
        int i = 0;
        while (i < way.size()) {
            int dir2 = way.getDir(i);
            int iDifferenceX = Direction.differenceX(dir2) + startX;
            int iDifferenceY = Direction.differenceY(dir2) + startY;
            int i2 = iDifferenceX / 2;
            int i3 = startX / 2;
            if (i2 != i3 || iDifferenceY / 2 != startY / 2) {
                Road absoluteRoad = this.city.getTiles().getAbsoluteRoad(i3, startY / 2, startLevel);
                if (absoluteRoad != null && absoluteRoad.dLevel == dir) {
                    startLevel++;
                }
                int i4 = iDifferenceY / 2;
                if (this.city.getTiles().getAbsoluteRoad(i2, i4, startLevel) == null && startLevel > -2) {
                    startLevel--;
                }
                intList.add(PackedInt3.pack(startLevel, i2, i4));
            }
            i++;
            dir = dir2;
            startX = iDifferenceX;
            startY = iDifferenceY;
        }
        IntIntMap intIntMap = new IntIntMap();
        for (int i5 = 0; i5 < intList.size(); i5++) {
            int i6 = intList.get(i5);
            int iUnpackX = PackedInt3.unpackX(i6);
            int iUnpackY = PackedInt3.unpackY(i6);
            if (i5 > 0) {
                int i7 = intList.get(i5 - 1);
                iUnion = Direction.union(0, Direction.fromDifferential(PackedInt3.unpackX(i7) - iUnpackX, PackedInt3.unpackY(i7) - iUnpackY));
            } else {
                iUnion = 0;
            }
            if (i5 < intList.size() - 1) {
                int i8 = intList.get(i5 + 1);
                iUnion = Direction.union(iUnion, Direction.fromDifferential(PackedInt3.unpackX(i8) - iUnpackX, PackedInt3.unpackY(i8) - iUnpackY));
            }
            intIntMap.put(i6, iUnion);
        }
        return intIntMap;
    }

    public void clear() {
        this.abortPending = true;
    }

    public void removeLast() {
        this.abortPending = true;
    }
}
