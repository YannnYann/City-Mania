package info.flowersoft.theotown.util;

import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.IntSet;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.MapArea;
import info.flowersoft.theotown.city.objects.Way;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ManagedRoadRoute {
    public MapArea pendingArea;
    public IRouteCallback pendingCallback;
    public final long roadFlags;
    public final RoadRouteCalculator routeCalculator;
    public final List<MapArea> stations = new ArrayList();
    public final List<Way> calculatedWays = new ArrayList();
    public final List<IntIntMap> calculatedAlignments = new ArrayList();
    public final List<IntSet> calculatedXYSets = new ArrayList();

    public interface IRouteCallback {
        void onFailed(MapArea mapArea);

        void onSuccess(MapArea mapArea, Way way, IntIntMap intIntMap);
    }

    public ManagedRoadRoute(City city, long j) {
        this.routeCalculator = new RoadRouteCalculator(city);
        this.roadFlags = j;
    }

    public final void ensureNotBusy() {
        if (isBusy()) {
            throw new IllegalStateException("ManagedRoadRoute is busy rn");
        }
    }

    public void addStation(MapArea mapArea) {
        ensureNotBusy();
        this.stations.add(mapArea);
    }

    public void addCalculatedStation(MapArea mapArea, Way way, IntIntMap intIntMap) {
        ensureNotBusy();
        this.stations.add(mapArea);
        if (this.stations.size() > 1) {
            this.calculatedWays.add(way);
            this.calculatedAlignments.add(intIntMap);
            this.calculatedXYSets.add(getXYSetFromAlignment(intIntMap));
        }
    }

    public final IntSet getXYSetFromAlignment(IntIntMap intIntMap) {
        IntIntMap.Keys keys = intIntMap.keys();
        IntSet intSet = new IntSet();
        while (keys.hasNext) {
            int next = keys.next();
            intSet.add(PackedInt2.pack(PackedInt3.unpackX(next), PackedInt3.unpackY(next)));
        }
        return intSet;
    }

    public void removeLastStation() {
        ensureNotBusy();
        this.stations.remove(r0.size() - 1);
        if (this.stations.size() > 0) {
            this.calculatedWays.remove(r0.size() - 1);
            this.calculatedAlignments.remove(r0.size() - 1);
            this.calculatedXYSets.remove(r0.size() - 1);
        }
    }

    public int stationCount() {
        return this.stations.size();
    }

    public void clear() {
        this.routeCalculator.clear();
        this.stations.clear();
        this.calculatedWays.clear();
        this.calculatedAlignments.clear();
        this.calculatedXYSets.clear();
    }

    public void tryAddStation(MapArea mapArea, IRouteCallback iRouteCallback) {
        ensureNotBusy();
        if (this.stations.isEmpty()) {
            iRouteCallback.onSuccess(mapArea, null, null);
            return;
        }
        this.pendingArea = mapArea;
        this.pendingCallback = iRouteCallback;
        this.routeCalculator.add(this.stations.get(this.calculatedWays.size()), mapArea, this.roadFlags);
    }

    public boolean isBusy() {
        return this.routeCalculator.hasPendingCalculation();
    }

    public void update() {
        if (this.routeCalculator.hasWorkDone()) {
            Way wayConsumeResult = this.routeCalculator.consumeResult();
            if (wayConsumeResult != null) {
                this.pendingCallback.onSuccess(this.pendingArea, wayConsumeResult, this.routeCalculator.buildWayAlignmentMap(wayConsumeResult));
            } else {
                this.pendingCallback.onFailed(this.pendingArea);
            }
            this.pendingArea = null;
            this.pendingCallback = null;
        }
        if (!this.routeCalculator.hasPendingCalculation() && this.stations.size() - 1 > this.calculatedWays.size()) {
            tryAddStation(this.stations.get(this.calculatedWays.size() + 1), new IRouteCallback() { // from class: info.flowersoft.theotown.util.ManagedRoadRoute.1
                @Override // info.flowersoft.theotown.util.ManagedRoadRoute.IRouteCallback
                public void onSuccess(MapArea mapArea, Way way, IntIntMap intIntMap) {
                    ManagedRoadRoute.this.calculatedWays.add(way);
                    ManagedRoadRoute.this.calculatedAlignments.add(intIntMap);
                    ManagedRoadRoute.this.calculatedXYSets.add(ManagedRoadRoute.this.getXYSetFromAlignment(intIntMap));
                }

                @Override // info.flowersoft.theotown.util.ManagedRoadRoute.IRouteCallback
                public void onFailed(MapArea mapArea) {
                    ManagedRoadRoute.this.calculatedWays.add(null);
                    ManagedRoadRoute.this.calculatedAlignments.add(null);
                    ManagedRoadRoute.this.calculatedXYSets.add(null);
                }
            });
        }
    }

    public boolean contains(int i, int i2) {
        int iPack = PackedInt2.pack(i, i2);
        for (int i3 = 0; i3 < this.calculatedXYSets.size(); i3++) {
            IntSet intSet = this.calculatedXYSets.get(i3);
            if (intSet != null && intSet.contains(iPack)) {
                return true;
            }
        }
        return false;
    }

    public int getAlignmentOrDefault(int i, int i2, int i3, int i4) {
        int i5;
        int iPack = PackedInt3.pack(i3, i, i2);
        for (int i6 = 0; i6 < this.calculatedAlignments.size(); i6++) {
            IntIntMap intIntMap = this.calculatedAlignments.get(i6);
            if (intIntMap != null && (i5 = intIntMap.get(iPack, -1)) >= 0) {
                return i5;
            }
        }
        return i4;
    }
}
