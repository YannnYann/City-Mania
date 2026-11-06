package info.flowersoft.theotown.components.notification;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Notification;
import info.flowersoft.theotown.components.notification.condition.TrueCondition;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.StringFormatter;

/* JADX INFO: loaded from: classes4.dex */
public class WelcomeNotification extends Notification {
    @Override // info.flowersoft.theotown.city.components.Notification
    public boolean showOnlyOnce() {
        return true;
    }

    public WelcomeNotification(City city) {
        super(city, new TrueCondition(city));
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public String getID() {
        return "$welcome";
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public int getIconID() {
        return Resources.PEOPLE_MAYOR;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public String getMessage() {
        return StringFormatter.format(this.city.getTranslator().translate(743), this.city.getName());
    }
}
