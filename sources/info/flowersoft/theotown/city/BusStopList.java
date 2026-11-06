package info.flowersoft.theotown.city;

import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.draft.BusStopDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.SortedList;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class BusStopList extends AbstractList<BusStop> {
    public SortedList<BusStop> list = new SortedList<>(new SortedList.Interpreter() { // from class: info.flowersoft.theotown.city.BusStopList$$ExternalSyntheticLambda0
        @Override // info.flowersoft.theotown.util.SortedList.Interpreter
        public final int interprete(Object obj) {
            return ((BusStop) obj).getX();
        }
    });
    public final Map<BusStopDraft, SortedList<BusStop>> listsByDraft = new HashMap(Drafts.BUILDINGS.size());
    public final List<Listener> listeners = new ArrayList();

    public interface Listener {
        void add(BusStop busStop);

        void remove(BusStop busStop);
    }

    public BusStopList() {
        Iterator<BusStopDraft> it = Drafts.BUSSTOPS.iterator();
        while (it.hasNext()) {
            this.listsByDraft.put(it.next(), new SortedList<>(new SortedList.Interpreter() { // from class: info.flowersoft.theotown.city.BusStopList$$ExternalSyntheticLambda0
                @Override // info.flowersoft.theotown.util.SortedList.Interpreter
                public final int interprete(Object obj) {
                    return ((BusStop) obj).getX();
                }
            }));
        }
    }

    public SortedList<BusStop> getSorted() {
        return this.list;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(BusStop busStop) {
        boolean zAdd = this.list.add(busStop);
        register(busStop);
        return zAdd;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, BusStop busStop) {
        throw new UnsupportedOperationException("Cannot add to bus stop list by index");
    }

    @Override // java.util.AbstractList, java.util.List
    public BusStop remove(int i) {
        BusStop busStopRemove = this.list.remove(i);
        unregister(busStopRemove);
        return busStopRemove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        boolean zRemove = this.list.remove(obj);
        if (zRemove) {
            unregister((BusStop) obj);
        }
        return zRemove;
    }

    @Override // java.util.AbstractList, java.util.List
    public BusStop get(int i) {
        return this.list.get(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.list.size();
    }

    public SortedList<BusStop> getOfDraft(BusStopDraft busStopDraft) {
        Objects.requireNonNull(busStopDraft);
        return this.listsByDraft.get(busStopDraft);
    }

    public void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    public void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    public final void register(BusStop busStop) {
        this.listsByDraft.get(busStop.getDraft()).add(busStop);
        for (int i = 0; i < this.listeners.size(); i++) {
            this.listeners.get(i).add(busStop);
        }
    }

    public final void unregister(BusStop busStop) {
        this.listsByDraft.get(busStop.getDraft()).remove(busStop);
        for (int i = 0; i < this.listeners.size(); i++) {
            this.listeners.get(i).remove(busStop);
        }
    }
}
