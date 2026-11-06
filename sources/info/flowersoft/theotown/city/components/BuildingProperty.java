package info.flowersoft.theotown.city.components;

import info.flowersoft.theotown.city.objects.Building;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingProperty {
    public Building building;
    public boolean isSet = false;
    public float value;

    public boolean assume(Building building, float f) {
        if (f >= this.value && this.isSet) {
            return false;
        }
        this.building = building;
        this.value = f;
        this.isSet = true;
        return true;
    }

    public boolean isSet() {
        return this.isSet;
    }

    public Building getBuilding() {
        return this.building;
    }

    public float getValue() {
        return this.value;
    }

    public void setTo(BuildingProperty buildingProperty) {
        boolean z = buildingProperty.isSet;
        this.isSet = z;
        if (z) {
            this.building = buildingProperty.building;
            this.value = buildingProperty.value;
        }
    }
}
