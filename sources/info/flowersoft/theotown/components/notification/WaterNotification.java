package info.flowersoft.theotown.components.notification;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultWater;
import info.flowersoft.theotown.components.notification.condition.LowWaterCondition;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.util.MinimumSelector;

/* JADX INFO: loaded from: classes4.dex */
public class WaterNotification extends SimpleNotification {
    public final int textId;
    public final float value;

    @Override // info.flowersoft.theotown.components.notification.SimpleNotification, info.flowersoft.theotown.city.components.Notification
    public boolean hasLocation() {
        return true;
    }

    public WaterNotification(City city, int i, float f, float f2) {
        super(city);
        setCondition(new LowWaterCondition(city, f, f2));
        this.textId = i;
        this.value = f;
    }

    @Override // info.flowersoft.theotown.components.notification.SimpleNotification, info.flowersoft.theotown.city.components.Notification
    public String getID() {
        return "$water" + this.value;
    }

    @Override // info.flowersoft.theotown.components.notification.SimpleNotification, info.flowersoft.theotown.city.components.Notification
    public int getIconID() {
        return Resources.PEOPLE_WORKMAN;
    }

    @Override // info.flowersoft.theotown.components.notification.SimpleNotification, info.flowersoft.theotown.city.components.Notification
    public String getMessage() {
        return this.city.getTranslator().translate(this.textId);
    }

    @Override // info.flowersoft.theotown.components.notification.SimpleNotification, info.flowersoft.theotown.city.components.Notification
    public Building getLocationBuilding() {
        DefaultWater defaultWater = (DefaultWater) this.city.getComponent(8);
        MinimumSelector minimumSelector = new MinimumSelector();
        for (int i = 0; i < defaultWater.countNetworks(); i++) {
            minimumSelector.assume(Integer.valueOf(i), -defaultWater.usageRatio(i));
        }
        if (!minimumSelector.hasResult()) {
            return null;
        }
        int iIntValue = ((Integer) minimumSelector.getMinimum()).intValue();
        Building buildingSampleProducer = defaultWater.sampleProducer(iIntValue);
        return buildingSampleProducer == null ? defaultWater.sampleConsumer(iIntValue) : buildingSampleProducer;
    }
}
