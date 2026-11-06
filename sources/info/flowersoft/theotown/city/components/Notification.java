package info.flowersoft.theotown.city.components;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Notification implements Saveable {
    public ActiveCallback activeCallback;
    public City city;
    public boolean closeMe;
    public AbstractCondition condition;
    public int counter;
    public long lastShownDay;
    public float locationY;
    public boolean rebuildMe;
    public Translator translator;

    public interface ActiveCallback {
        boolean isActive();
    }

    public void addSubActions(List<NotificationAction> list) {
    }

    public abstract String getID();

    public abstract int getIconID();

    public abstract String getMessage();

    public boolean hasLocation() {
        return false;
    }

    public boolean hasPosition() {
        return false;
    }

    public boolean isCloseable() {
        return true;
    }

    public boolean isImmersive() {
        return false;
    }

    public boolean isImportant() {
        return false;
    }

    public void onLocationClick() {
    }

    public boolean showOnlyOnce() {
        return false;
    }

    public void update() {
    }

    public Notification(City city) {
        this(city, null);
    }

    public Notification(City city, AbstractCondition abstractCondition) {
        this.city = city;
        this.translator = city.getTranslator();
        this.condition = abstractCondition;
    }

    public String getTitle() {
        return "";
    }

    public boolean checkCondition() {
        ActiveCallback activeCallback = this.activeCallback;
        return (activeCallback == null || activeCallback.isActive()) && this.condition.evaluate();
    }

    public Notification setIsActive(ActiveCallback activeCallback) {
        this.activeCallback = activeCallback;
        return this;
    }

    public float getX() {
        throw new UnsupportedOperationException();
    }

    public float getY() {
        throw new UnsupportedOperationException();
    }

    public void onShow() {
        this.closeMe = false;
        this.rebuildMe = false;
        this.lastShownDay = ((DefaultDate) this.city.getComponent(1)).getAbsoluteDay();
    }

    public void onClose() {
        this.closeMe = true;
        this.counter++;
        this.lastShownDay = ((DefaultDate) this.city.getComponent(1)).getAbsoluteDay();
    }

    public long getLastShownDay() {
        return this.lastShownDay;
    }

    public int getCounter() {
        return this.counter;
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "last shown day":
                    this.lastShownDay = jsonReader.nextLong();
                    break;
                case "condition":
                    jsonReader.beginObject();
                    AbstractCondition abstractCondition = this.condition;
                    if (abstractCondition != null) {
                        abstractCondition.load(jsonReader);
                    }
                    jsonReader.endObject();
                    break;
                case "counter":
                    this.counter = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("counter").value(this.counter);
        jsonWriter.name("last shown day").value(this.lastShownDay);
        if (this.condition != null) {
            jsonWriter.name("condition").beginObject();
            this.condition.save(jsonWriter);
            jsonWriter.endObject();
        }
    }

    public boolean keepOpen() {
        return isImportant() || !isCloseable();
    }

    public boolean closeMe() {
        return this.closeMe;
    }

    public boolean rebuildMe() {
        return this.rebuildMe;
    }

    public String toString() {
        return "Notification: " + getID() + ", counter: " + getCounter();
    }

    public List<NotificationAction> getActions() {
        ArrayList arrayList = new ArrayList();
        if (isCloseable()) {
            if (isImmersive()) {
                arrayList.add(new NotificationAction(Resources.ICON_OK, 1933, new Runnable() { // from class: info.flowersoft.theotown.city.components.Notification.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Notification.this.closeMe = true;
                    }
                }, null));
            } else {
                arrayList.add(new NotificationAction(Resources.ICON_CANCEL, new Runnable() { // from class: info.flowersoft.theotown.city.components.Notification.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Notification.this.closeMe = true;
                    }
                }));
            }
        }
        if (hasLocation()) {
            arrayList.add(new NotificationAction(Resources.ICON_LOCATE, new Runnable() { // from class: info.flowersoft.theotown.city.components.Notification.3
                @Override // java.lang.Runnable
                public void run() {
                    if (Notification.this.hasLocation()) {
                        Notification.this.onLocationClick();
                        Notification notification = Notification.this;
                        notification.city.focus(notification.getLocationX(), Notification.this.getLocationY(), 2.0f);
                    }
                }
            }));
        }
        addSubActions(arrayList);
        return arrayList;
    }

    public void close() {
        this.closeMe = true;
    }

    public void rebuild() {
        this.rebuildMe = true;
    }

    public float getLocationX() {
        if (getLocationBuilding() != null) {
            this.locationY = r0.getY() + ((r0.getHeight() - 1) / 2.0f);
            return r0.getX() + ((r0.getWidth() - 1) / 2.0f);
        }
        this.locationY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public float getLocationY() {
        return this.locationY;
    }

    public Building getLocationBuilding() {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return getID().hashCode();
    }

    public boolean equals(Object obj) {
        return (obj instanceof Notification) && getID().equals(((Notification) obj).getID());
    }
}
