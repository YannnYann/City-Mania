package info.flowersoft.theotown.store;

import com.badlogic.gdx.utils.IntIntMap;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.city.objects.FlyingObject;
import info.flowersoft.theotown.city.objects.Pipe;
import info.flowersoft.theotown.city.objects.Rail;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Ship;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.city.objects.Wire;
import info.flowersoft.theotown.cityloader.LocalPluginManifest;
import info.flowersoft.theotown.components.DefaultTraffic;
import info.flowersoft.theotown.components.traffic.CarTrafficHandler;
import info.flowersoft.theotown.components.traffic.FlyingTrafficHandler;
import info.flowersoft.theotown.components.traffic.ShipTrafficHandler;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.RoadDecorationDraft;
import info.flowersoft.theotown.util.SafeListAccessor;
import io.blueflower.stapel2d.util.IntList;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class CityPluginsExtractor {

    public static class Result {
        public List<String> ids;
        public Map<String, Integer> localPluginOccurrences;
        public IntList pluginIdsAndOccurrences;

        public Result(IntList intList, Map<String, Integer> map, List<String> list) {
            this.pluginIdsAndOccurrences = intList;
            this.localPluginOccurrences = map;
            this.ids = list;
        }
    }

    public static Result collectUsedPlugins(City city) {
        Tiles tiles = city.getTiles();
        IntIntMap intIntMap = new IntIntMap();
        HashMap map = new HashMap();
        HashSet hashSet = new HashSet();
        synchronized (city) {
            try {
                for (Building building : city.getBuildings()) {
                    if (building != null) {
                        considerDraft(building.getDraft(), intIntMap, map, hashSet);
                    }
                }
                for (Road road : city.getRoads()) {
                    if (road != null) {
                        considerDraft(road.draft, intIntMap, map, hashSet);
                        for (int iCountDecorations = road.countDecorations() - 1; iCountDecorations >= 0; iCountDecorations--) {
                            RoadDecorationDraft decoration = road.getDecoration(iCountDecorations);
                            if (decoration != null) {
                                considerDraft(decoration, intIntMap, map, hashSet);
                            }
                        }
                    }
                }
                for (Rail rail : city.getRails()) {
                    if (rail != null) {
                        considerDraft(rail.getDraft(), intIntMap, map, hashSet);
                    }
                }
                for (Wire wire : city.getWires()) {
                    if (wire != null) {
                        considerDraft(wire.getDraft(), intIntMap, map, hashSet);
                    }
                }
                for (Pipe pipe : city.getPipes()) {
                    if (pipe != null) {
                        considerDraft(pipe.getDraft(), intIntMap, map, hashSet);
                    }
                }
                for (int i = 0; i < city.getHeight(); i++) {
                    for (int i2 = 0; i2 < city.getWidth(); i2++) {
                        Tree tree = tiles.getTree(i2, i);
                        if (tree != null) {
                            considerDraft(tree.getDraft(), intIntMap, map, hashSet);
                        }
                        considerDraft(tiles.getGround(i2, i).getDraft(), intIntMap, map, hashSet);
                    }
                }
                DefaultTraffic defaultTraffic = (DefaultTraffic) city.getComponent(7);
                Iterator it = new SafeListAccessor(((CarTrafficHandler) defaultTraffic.getTrafficHandler(CarTrafficHandler.class)).getCars()).iterator();
                while (it.hasNext()) {
                    considerDraft(((Car) it.next()).draft, intIntMap, map, hashSet);
                }
                Iterator it2 = new SafeListAccessor(((FlyingTrafficHandler) defaultTraffic.getTrafficHandler(FlyingTrafficHandler.class)).getFlyingObjects()).iterator();
                while (it2.hasNext()) {
                    considerDraft(((FlyingObject) it2.next()).getDraft(), intIntMap, map, hashSet);
                }
                Iterator it3 = new SafeListAccessor(((ShipTrafficHandler) defaultTraffic.getTrafficHandler(ShipTrafficHandler.class)).getShips()).iterator();
                while (it3.hasNext()) {
                    considerDraft(((Ship) it3.next()).getDraft(), intIntMap, map, hashSet);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        IntList intList = new IntList(intIntMap.size * 2);
        IntIntMap.Entries entries = intIntMap.entries();
        while (entries.hasNext()) {
            IntIntMap.Entry next = entries.next();
            intList.add(next.key);
            intList.add(next.value);
        }
        ArrayList arrayList = new ArrayList(hashSet.size());
        Iterator it4 = hashSet.iterator();
        while (it4.hasNext()) {
            arrayList.add((String) it4.next());
        }
        return new Result(intList, map, arrayList);
    }

    public static void considerDraft(Draft draft, IntIntMap intIntMap, Map<String, Integer> map, Set<String> set) {
        if (draft.pluginId > 0) {
            if (!ManagedPluginsController.getInstance().isPermanent(draft.pluginId)) {
                intIntMap.getAndIncrement(draft.pluginId, 0, 1);
            }
        } else {
            LocalPluginManifest localPluginManifest = draft.manifest;
            if (localPluginManifest != null) {
                Integer num = map.get(localPluginManifest.getId());
                if (num == null) {
                    num = 0;
                }
                map.put(draft.manifest.getId(), Integer.valueOf(num.intValue() + 1));
            }
        }
        if (draft.parentFile != null) {
            if (draft.pluginId == 0 || !ManagedPluginsController.getInstance().isPermanent(draft.pluginId)) {
                set.add(draft.id);
            }
        }
    }
}
