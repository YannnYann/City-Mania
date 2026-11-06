package info.flowersoft.theotown.components.notification.condition;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.BuildingProperty;
import info.flowersoft.theotown.components.management.DefaultManagement;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingPropertyCondition extends Condition {
    public final int property;
    public final float threshold;
    public boolean triggered;
    public final float untriggerThreshold;

    public BuildingPropertyCondition(City city, int i, float f, float f2) {
        super(city);
        this.property = i;
        this.threshold = f;
        this.untriggerThreshold = f2;
    }

    @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
    public boolean evaluate() {
        boolean z = false;
        if (this.city.isUber()) {
            return false;
        }
        BuildingProperty buildingProperty = ((DefaultManagement) this.city.getComponent(3)).getBuildingSurvey().properties[this.property];
        if ((buildingProperty.isSet() && buildingProperty.getValue() <= this.threshold && !buildingProperty.getBuilding().inConstruction()) || (this.triggered && buildingProperty.isSet() && buildingProperty.getValue() <= this.untriggerThreshold && !buildingProperty.getBuilding().inConstruction())) {
            z = true;
        }
        this.triggered = z;
        return z;
    }
}
