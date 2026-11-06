package info.flowersoft.theotown.resources;

import com.badlogic.gdx.utils.IntMap;
import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.util.LEQCounter;
import info.flowersoft.theotown.util.StopWatch;
import io.blueflower.stapel2d.util.IntList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingPeopleCounter {
    public IntMap<List<IntMap<List<LEQCounter>>>> peopleStatPerBasePerLevel;
    public List<ZoneDraft> relevantZones;

    public BuildingPeopleCounter() {
        build();
    }

    public final boolean isSuitable(BuildingDraft buildingDraft) {
        return buildingDraft.autoBuild && buildingDraft.active && buildingDraft.isUnlocked();
    }

    public final void build() {
        StopWatch.start("PeopleCounter");
        this.peopleStatPerBasePerLevel = new IntMap<>();
        ArrayList<ZoneDraft> arrayList = new ArrayList();
        arrayList.add(Zones.getInstance().RESIDENTIAL0);
        arrayList.add(Zones.getInstance().COMMERCIAL0);
        arrayList.add(Zones.getInstance().INDUSTRIAL0);
        this.relevantZones = new ArrayList();
        for (ZoneDraft zoneDraft : Drafts.ZONES) {
            if (zoneDraft.rci) {
                this.relevantZones.add(zoneDraft);
            }
        }
        for (ZoneDraft zoneDraft2 : arrayList) {
            ArrayList arrayList2 = new ArrayList(3);
            arrayList2.add(null);
            arrayList2.add(null);
            arrayList2.add(null);
            this.peopleStatPerBasePerLevel.put(zoneDraft2.tempId, arrayList2);
            for (int i = 0; i < 3; i++) {
                buildForZone(zoneDraft2, i);
            }
        }
        StopWatch.stop("PeopleCounter");
    }

    public final void buildForZone(ZoneDraft zoneDraft, int i) {
        int i2;
        IntMap<List<LEQCounter>> intMap = new IntMap<>();
        this.peopleStatPerBasePerLevel.get(zoneDraft.tempId).set(i, intMap);
        Iterator<ZoneDraft> it = this.relevantZones.iterator();
        while (true) {
            i2 = 0;
            if (!it.hasNext()) {
                break;
            }
            ZoneDraft next = it.next();
            if (zoneDraft.isBaseOf(next)) {
                ArrayList arrayList = new ArrayList(16);
                while (i2 < 16) {
                    arrayList.add(new LEQCounter());
                    i2++;
                }
                intMap.put(next.tempId, arrayList);
            }
        }
        for (BuildingDraft buildingDraft : Drafts.BUILDINGS) {
            if (isSuitable(buildingDraft) && zoneDraft.isBaseOf(buildingDraft.zone) && buildingDraft.level == i + 1) {
                for (ZoneDraft zoneDraft2 : this.relevantZones) {
                    if (zoneDraft2.isSuperiorTo(buildingDraft.zone)) {
                        intMap.get(zoneDraft2.tempId).get(buildingDraft.getMaxSize() - 1).insert(buildingDraft.habitants + buildingDraft.workers);
                    }
                }
            }
        }
        IntList intList = new IntList();
        for (IntMap.Entry<List<LEQCounter>> entry : intMap.entries()) {
            List<LEQCounter> list = entry.value;
            int total = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                total += list.get(i3).getTotal();
            }
            if (total == 0) {
                intList.add(entry.key);
            } else {
                while (list.size() > 0 && list.get(list.size() - 1).getTotal() == 0) {
                    list.remove(list.size() - 1);
                }
            }
        }
        while (i2 < intList.size()) {
            intMap.remove(intList.get(i2));
            i2++;
        }
    }

    public ConcreteCounter getCounter(ZoneDraft zoneDraft, int i) {
        return new ConcreteCounter(this.peopleStatPerBasePerLevel.get(zoneDraft.tempId).get(i), i);
    }

    public class ConcreteCounter {
        public int level;
        public IntMap<List<LEQCounter>> peoplePerSizePerZone;

        public ConcreteCounter(IntMap<List<LEQCounter>> intMap, int i) {
            this.peoplePerSizePerZone = intMap;
            this.level = i;
        }

        public boolean contains(ZoneDraft zoneDraft) {
            return this.peoplePerSizePerZone.containsKey(zoneDraft.tempId);
        }

        public int evaluate(ZoneDraft zoneDraft, int i, int i2, int i3) {
            if (i3 >= i2) {
                return this.peoplePerSizePerZone.get(zoneDraft.tempId).get(i - 1).countInRange(i2, i3);
            }
            return 0;
        }

        public Iterable<BuildingDraft> iterate(final ZoneDraft zoneDraft, final int i, final int i2, final int i3) {
            return new Iterable<BuildingDraft>() { // from class: info.flowersoft.theotown.resources.BuildingPeopleCounter.ConcreteCounter.1
                @Override // java.lang.Iterable
                public Iterator<BuildingDraft> iterator() {
                    return new Iterator<BuildingDraft>() { // from class: info.flowersoft.theotown.resources.BuildingPeopleCounter.ConcreteCounter.1.1
                        public Iterator<BuildingDraft> it = Drafts.BUILDINGS.iterator();
                        public BuildingDraft nextDraft;

                        {
                            consume();
                        }

                        public final void consume() {
                            this.nextDraft = null;
                            while (this.it.hasNext()) {
                                BuildingDraft next = this.it.next();
                                if (BuildingPeopleCounter.this.isSuitable(next) && ConcreteCounter.this.level + 1 == next.level && zoneDraft.isSuperiorTo(next.zone) && i == next.getMaxSize()) {
                                    int i4 = next.habitants + next.workers;
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    if (i2 <= i4 && i4 <= i3) {
                                        this.nextDraft = next;
                                        return;
                                    }
                                }
                            }
                        }

                        @Override // java.util.Iterator
                        public boolean hasNext() {
                            return this.nextDraft != null;
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // java.util.Iterator
                        public BuildingDraft next() {
                            BuildingDraft buildingDraft = this.nextDraft;
                            consume();
                            return buildingDraft;
                        }

                        @Override // java.util.Iterator
                        public void remove() {
                            throw new UnsupportedOperationException("No removal supported!");
                        }
                    };
                }
            };
        }

        public int getMaxSize(ZoneDraft zoneDraft) {
            return this.peoplePerSizePerZone.get(zoneDraft.tempId).size();
        }
    }
}
