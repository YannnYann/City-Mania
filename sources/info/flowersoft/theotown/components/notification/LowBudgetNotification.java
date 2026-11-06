package info.flowersoft.theotown.components.notification;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Notification;
import info.flowersoft.theotown.city.components.NotificationAction;
import info.flowersoft.theotown.components.notification.condition.LowBudgetCondition;
import info.flowersoft.theotown.resources.Resources;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class LowBudgetNotification extends Notification {
    public LowBudgetNotification(City city) {
        super(city, new LowBudgetCondition(1000, city));
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public String getID() {
        return "$lowbudget";
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public int getIconID() {
        return Resources.PEOPLE_JUDGE;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public String getMessage() {
        return this.translator.translate(1513);
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public List<NotificationAction> getActions() {
        return super.getActions();
    }
}
