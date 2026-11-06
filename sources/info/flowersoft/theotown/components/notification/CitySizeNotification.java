package info.flowersoft.theotown.components.notification;

import com.ironsource.mediationsdk.logger.IronSourceError;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Notification;
import info.flowersoft.theotown.city.components.People;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.StringFormatter;

/* JADX INFO: loaded from: classes4.dex */
public class CitySizeNotification extends Notification {
    public int size;

    @Override // info.flowersoft.theotown.city.components.Notification
    public boolean isImmersive() {
        return true;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public boolean showOnlyOnce() {
        return true;
    }

    public CitySizeNotification(City city, int i) {
        super(city);
        this.size = i;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public String getID() {
        return "$citysize" + this.size;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public int getIconID() {
        return Resources.PEOPLE_MAYOR;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public String getMessage() {
        return StringFormatter.format(this.city.getTranslator().translate(IronSourceError.ERROR_RV_LOAD_FAIL_DUE_TO_INIT), Integer.valueOf(this.size));
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public boolean checkCondition() {
        return ((People) this.city.getComponent(9)).getPeople() >= this.size;
    }
}
