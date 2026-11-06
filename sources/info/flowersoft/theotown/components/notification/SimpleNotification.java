package info.flowersoft.theotown.components.notification;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.AbstractCondition;
import info.flowersoft.theotown.city.components.Notification;
import info.flowersoft.theotown.city.components.NotificationAction;
import info.flowersoft.theotown.city.objects.Building;
import io.blueflower.stapel2d.util.Getter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class SimpleNotification extends Notification {
    public final List<NotificationAction> actions;
    public boolean closeable;
    public int[] currentLocation;
    public int icon;
    public String id;
    public boolean immersive;
    public boolean important;
    public float[] location;
    public Building locationBuilding;
    public Getter<Building> locationBuildingProvider;
    public Getter<float[]> locationProvider;
    public Runnable onClose;
    public Runnable onLocationClick;
    public boolean once;
    public String text;
    public int textId;
    public Getter<String> textProvider;
    public String title;
    public int titleId;

    public SimpleNotification(City city) {
        super(city);
        this.actions = new ArrayList();
        this.closeable = true;
        this.id = "no id set";
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public String getID() {
        return this.id;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public int getIconID() {
        return this.icon;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public String getMessage() {
        Getter<String> getter = this.textProvider;
        if (getter != null) {
            return getter.get();
        }
        String str = this.text;
        return str == null ? this.translator.translate(this.textId) : str;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public String getTitle() {
        String str = this.title;
        return str == null ? this.translator.translate(this.titleId) : str;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public boolean showOnlyOnce() {
        return this.once;
    }

    public void setShowOnlyOnce(boolean z) {
        this.once = z;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public boolean isImmersive() {
        return this.immersive;
    }

    public void setImmersive(boolean z) {
        this.immersive = z;
    }

    public void setTitle(int i) {
        this.titleId = i;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setIcon(int i) {
        this.icon = i;
    }

    public void setText(String str) {
        this.text = str;
    }

    public void setText(int i) {
        this.text = null;
        this.textId = i;
    }

    public void setTextProvider(Getter<String> getter) {
        this.textProvider = getter;
    }

    public void setCondition(AbstractCondition abstractCondition) {
        this.condition = abstractCondition;
    }

    public void setOnLocationClick(Runnable runnable) {
        this.onLocationClick = runnable;
    }

    public void setLocationBuildingProvider(Getter<Building> getter) {
        this.locationBuildingProvider = getter;
    }

    public void setLocationProvider(Getter<float[]> getter) {
        this.locationProvider = getter;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public void onLocationClick() {
        super.onLocationClick();
        Runnable runnable = this.onLocationClick;
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public boolean hasLocation() {
        Getter<Building> getter = this.locationBuildingProvider;
        this.locationBuilding = getter != null ? getter.get() : null;
        Getter<float[]> getter2 = this.locationProvider;
        float[] fArr = getter2 != null ? getter2.get() : null;
        this.location = fArr;
        if (this.currentLocation != null) {
            if (fArr == null) {
                this.location = new float[2];
            }
            float[] fArr2 = this.location;
            fArr2[0] = r3[0];
            fArr2[1] = r3[1];
        }
        if (this.location == null && this.locationBuilding != null) {
            this.location = new float[]{super.getLocationX(), super.getLocationY()};
        }
        return this.location != null;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public float getLocationX() {
        float[] fArr = this.location;
        return fArr != null ? fArr[0] : super.getLocationX();
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public float getLocationY() {
        float[] fArr = this.location;
        return fArr != null ? fArr[1] : super.getLocationY();
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public Building getLocationBuilding() {
        return this.locationBuilding;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public void addSubActions(List<NotificationAction> list) {
        super.addSubActions(list);
        list.addAll(this.actions);
    }

    public void addAction(NotificationAction notificationAction) {
        this.actions.add(notificationAction);
    }

    public void clearActions() {
        this.actions.clear();
    }

    public void setImportant(boolean z) {
        this.important = z;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public boolean isImportant() {
        return this.important;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public boolean isCloseable() {
        return this.closeable;
    }

    public void setCloseable(boolean z) {
        this.closeable = z;
    }

    public void setOnClose(Runnable runnable) {
        this.onClose = runnable;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public void onClose() {
        super.onClose();
        Runnable runnable = this.onClose;
        if (runnable != null) {
            runnable.run();
        }
    }
}
