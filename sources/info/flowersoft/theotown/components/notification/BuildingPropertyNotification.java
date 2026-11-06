package info.flowersoft.theotown.components.notification;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.components.notification.condition.BuildingPropertyCondition;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingPropertyNotification extends SimpleNotification {
    public final int property;

    @Override // info.flowersoft.theotown.components.notification.SimpleNotification, info.flowersoft.theotown.city.components.Notification
    public boolean hasLocation() {
        return true;
    }

    public BuildingPropertyNotification(City city, int i, float f, float f2) {
        super(city);
        this.property = i;
        setCondition(new BuildingPropertyCondition(city, i, f, f2));
    }

    @Override // info.flowersoft.theotown.components.notification.SimpleNotification, info.flowersoft.theotown.city.components.Notification
    public Building getLocationBuilding() {
        return ((DefaultManagement) this.city.getComponent(3)).getBuildingSurvey().properties[this.property].getBuilding();
    }
}
