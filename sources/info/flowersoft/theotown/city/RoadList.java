package info.flowersoft.theotown.city;

import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.SortedList;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class RoadList extends AbstractConnectionList<Road> {
    public final Map<RoadDraft, SortedList<Road>> draftRoads;
    public final List<Listener> listeners = new ArrayList();
    public int maxLevel;
    public int minLevel;
    public final SortedList<Road> railRoads;
    public final SortedList<Road> roads;

    public interface Listener {
        void add(Road road);

        void remove(Road road);
    }

    public RoadList() {
        SortedList.Interpreter<Road> interpreter = new SortedList.Interpreter<Road>() { // from class: info.flowersoft.theotown.city.RoadList.1
            @Override // info.flowersoft.theotown.util.SortedList.Interpreter
            public int interprete(Road road) {
                return road.getX();
            }
        };
        this.roads = new SortedList<>(interpreter);
        this.draftRoads = new HashMap(Drafts.ROADS.size());
        Iterator<RoadDraft> it = Drafts.ROADS.iterator();
        while (it.hasNext()) {
            this.draftRoads.put(it.next(), new SortedList<>(interpreter));
        }
        this.railRoads = new SortedList<>(interpreter);
    }

    public void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    public void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    @Override // info.flowersoft.theotown.city.AbstractConnectionList, java.util.AbstractList, java.util.List
    public Road get(int i) {
        return this.roads.get(i);
    }

    @Override // info.flowersoft.theotown.city.AbstractConnectionList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.roads.size();
    }

    @Override // info.flowersoft.theotown.city.AbstractConnectionList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Road road) {
        super.add(road);
        this.roads.add(road);
        registerRoad(road);
        return true;
    }

    public int getMinLevel() {
        return this.minLevel;
    }

    public int getMaxLevel() {
        return this.maxLevel;
    }

    @Override // info.flowersoft.theotown.city.AbstractConnectionList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        int iIndexOf = this.roads.indexOf(obj);
        return iIndexOf >= 0 && iIndexOf < this.roads.size() && remove(iIndexOf) != null;
    }

    @Override // info.flowersoft.theotown.city.AbstractConnectionList, java.util.AbstractList, java.util.List
    public Road remove(int i) {
        super.remove(this.roads.get(i));
        Road roadRemove = this.roads.remove(i);
        if (roadRemove != null) {
            unregisterRoad(roadRemove);
        }
        return roadRemove;
    }

    public final void registerRoad(Road road) {
        this.minLevel = Math.min(this.minLevel, road.level);
        this.maxLevel = Math.max(this.maxLevel, road.level);
        this.draftRoads.get(road.draft).add(road);
        if (isRailRoad(road)) {
            this.railRoads.add(road);
        }
        for (int i = 0; i < this.listeners.size(); i++) {
            this.listeners.get(i).add(road);
        }
    }

    public final void unregisterRoad(Road road) {
        this.draftRoads.get(road.draft).remove(road);
        if (isRailRoad(road)) {
            this.railRoads.remove(road);
        }
        for (int i = 0; i < this.listeners.size(); i++) {
            this.listeners.get(i).remove(road);
        }
    }

    public final boolean isRailRoad(Road road) {
        return (road.draft.flags & 4360) != 0;
    }

    public SortedList<Road> getRoadsOfDraft(RoadDraft roadDraft) {
        return this.draftRoads.get(roadDraft);
    }

    public SortedList<Road> getSorted() {
        return this.roads;
    }

    public SortedList<Road> getRailRoads() {
        return this.railRoads;
    }

    @Override // info.flowersoft.theotown.city.AbstractConnectionList
    public boolean hasConnection(Road road) {
        return road.hasConnection();
    }
}
