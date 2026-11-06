package info.flowersoft.theotown.city;

import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.draft.UpgradeDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.SortedList;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingList extends AbstractList<Building> {
    public static final SortedList.Interpreter<Building> BUILDING_INTERPRETER = new SortedList.Interpreter<Building>() { // from class: info.flowersoft.theotown.city.BuildingList.1
        @Override // info.flowersoft.theotown.util.SortedList.Interpreter
        public int interprete(Building building) {
            return building.getX();
        }
    };
    public final Map<BuildingType, SortedList<Building>> baseTypedBuildings;
    public final SortedList<Building> buildings;
    public final Map<BuildingDraft, SortedList<Building>> draftBuildings;
    public final List<Listener> listeners;
    public int maxBuildHeight;
    public boolean notifyListeners;
    public final SortedList<Building> rciBuildings;
    public final SortedList<Building> rciCarBuildings;
    public final Map<BuildingType, SortedList<Building>> typedBuildings;

    public interface Listener {
        void add(Building building);

        void finished(Building building);

        void remove(Building building);

        void upgraded(Building building, UpgradeDraft upgradeDraft);
    }

    public BuildingList() {
        SortedList.Interpreter<Building> interpreter = BUILDING_INTERPRETER;
        this.buildings = new SortedList<>(interpreter);
        this.typedBuildings = new EnumMap(BuildingType.class);
        this.baseTypedBuildings = new EnumMap(BuildingType.class);
        this.draftBuildings = new HashMap(Drafts.BUILDINGS.size());
        this.rciBuildings = new SortedList<>(interpreter);
        this.rciCarBuildings = new SortedList<>(interpreter);
        this.listeners = new ArrayList();
        this.notifyListeners = true;
        this.maxBuildHeight = 0;
        for (BuildingType buildingType : BuildingType.values()) {
            Map<BuildingType, SortedList<Building>> map = this.typedBuildings;
            SortedList.Interpreter<Building> interpreter2 = BUILDING_INTERPRETER;
            map.put(buildingType, new SortedList<>(interpreter2));
            if (!this.baseTypedBuildings.containsKey(buildingType.getBaseType())) {
                this.baseTypedBuildings.put(buildingType.getBaseType(), new SortedList<>(interpreter2));
            }
        }
        Iterator<BuildingDraft> it = Drafts.BUILDINGS.iterator();
        while (it.hasNext()) {
            this.draftBuildings.put(it.next(), new SortedList<>(BUILDING_INTERPRETER));
        }
    }

    public boolean isNotifyListeners() {
        return this.notifyListeners;
    }

    public void setNotifyListeners(boolean z) {
        this.notifyListeners = z;
    }

    public void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    public void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    @Override // java.util.AbstractList, java.util.List
    public Building get(int i) {
        return this.buildings.get(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.buildings.size();
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Building building) {
        this.buildings.add(building);
        registerBuilding(building);
    }

    @Override // java.util.AbstractList, java.util.List
    public Building remove(int i) {
        Building buildingRemove = this.buildings.remove(i);
        if (buildingRemove != null) {
            unregisterBuilding(buildingRemove);
        }
        return buildingRemove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        Building building = (Building) obj;
        boolean zRemove = this.buildings.remove(building);
        unregisterBuilding(building);
        return zRemove;
    }

    public final void registerBuilding(Building building) {
        BuildingDraft draft = building.getDraft();
        this.typedBuildings.get(draft.buildingType).add(building);
        this.baseTypedBuildings.get(draft.buildingType.getBaseType()).add(building);
        this.draftBuildings.get(draft).add(building);
        if (draft.buildingType.isRCIOrDeco()) {
            this.rciBuildings.add(building);
        }
        if (draft.rciCars != 0) {
            this.rciCarBuildings.add(building);
        }
        this.maxBuildHeight = Math.max(this.maxBuildHeight, building.getDraft().buildHeight);
        if (this.notifyListeners) {
            for (int i = 0; i < this.listeners.size(); i++) {
                this.listeners.get(i).add(building);
            }
        }
    }

    public final void unregisterBuilding(Building building) {
        BuildingDraft draft = building.getDraft();
        this.typedBuildings.get(draft.buildingType).remove(building);
        this.baseTypedBuildings.get(draft.buildingType.getBaseType()).remove(building);
        this.draftBuildings.get(draft).remove(building);
        if (draft.buildingType.isRCIOrDeco()) {
            this.rciBuildings.remove(building);
        }
        if (draft.rciCars != 0) {
            this.rciCarBuildings.remove(building);
        }
        if (this.notifyListeners) {
            for (int i = 0; i < this.listeners.size(); i++) {
                this.listeners.get(i).remove(building);
            }
        }
    }

    public SortedList<Building> getBuildingsOfType(BuildingType buildingType) {
        return this.typedBuildings.get(buildingType);
    }

    public SortedList<Building> getBuildingsOfBaseType(BuildingType buildingType) {
        return this.typedBuildings.get(buildingType.getBaseType());
    }

    public SortedList<Building> getBuildingsOfDraft(BuildingDraft buildingDraft) {
        Objects.requireNonNull(buildingDraft);
        return this.draftBuildings.get(buildingDraft);
    }

    public SortedList<Building> getRciBuildings() {
        return this.rciBuildings;
    }

    public SortedList<Building> getRciCarBuildings() {
        return this.rciCarBuildings;
    }

    public int getMaxBuildHeight() {
        return this.maxBuildHeight;
    }

    public SortedList<Building> getSorted() {
        return this.buildings;
    }

    public void onBuildingFinished(Building building) {
        if (this.notifyListeners) {
            for (int i = 0; i < this.listeners.size(); i++) {
                this.listeners.get(i).finished(building);
            }
        }
    }

    public void onBuildingUpgraded(Building building, UpgradeDraft upgradeDraft) {
        if (this.notifyListeners) {
            for (int i = 0; i < this.listeners.size(); i++) {
                this.listeners.get(i).upgraded(building, upgradeDraft);
            }
        }
    }
}
