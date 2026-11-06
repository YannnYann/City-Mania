package info.flowersoft.theotown.components.notification;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultPower;
import info.flowersoft.theotown.components.notification.condition.LowPowerCondition;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.util.MinimumSelector;

/* JADX INFO: loaded from: classes4.dex */
public class PowerNotification extends SimpleNotification {
    public final int textId;
    public final float value;

    @Override // info.flowersoft.theotown.components.notification.SimpleNotification, info.flowersoft.theotown.city.components.Notification
    public boolean hasLocation() {
        return true;
    }

    public PowerNotification(City city, int i, float f, float f2) {
        super(city);
        setCondition(new LowPowerCondition(city, f, f2));
        this.textId = i;
        this.value = f;
    }

    @Override // info.flowersoft.theotown.components.notification.SimpleNotification, info.flowersoft.theotown.city.components.Notification
    public String getID() {
        return "$power" + this.value;
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
        DefaultPower defaultPower = (DefaultPower) this.city.getComponent(5);
        MinimumSelector minimumSelector = new MinimumSelector();
        for (int i = 0; i < defaultPower.countNetworks(); i++) {
            minimumSelector.assume(Integer.valueOf(i), -defaultPower.usageRatio(i));
        }
        if (!minimumSelector.hasResult()) {
            return null;
        }
        int iIntValue = ((Integer) minimumSelector.getMinimum()).intValue();
        Building buildingSampleProducer = defaultPower.sampleProducer(iIntValue);
        return buildingSampleProducer == null ? defaultPower.sampleConsumer(iIntValue) : buildingSampleProducer;
    }
}
