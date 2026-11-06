package info.flowersoft.theotown.components.notification;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Notification;
import info.flowersoft.theotown.city.components.NotificationAction;
import info.flowersoft.theotown.components.notification.condition.DelayedConditionDecorator;
import info.flowersoft.theotown.components.notification.condition.ZoneNeededCondition;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.BuildTool;
import info.flowersoft.theotown.tools.ToolResolver;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ZoneNeededNotification extends Notification {
    public int textId;
    public ZoneDraft zone;

    public ZoneNeededNotification(City city, ZoneDraft zoneDraft, int i, int i2) {
        super(city, new DelayedConditionDecorator(new ZoneNeededCondition(city, zoneDraft), i2));
        this.zone = zoneDraft;
        this.textId = i;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public String getID() {
        return "$neededzone" + this.zone;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public int getIconID() {
        return Resources.PEOPLE_MANAGER;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public String getMessage() {
        return this.translator.translate(this.textId);
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public List<NotificationAction> getActions() {
        List<NotificationAction> actions = super.getActions();
        final BuildTool buildToolResolve = new ToolResolver(this.city).resolve(this.zone);
        actions.add(new NotificationAction(buildToolResolve.getIcon(), new Runnable() { // from class: info.flowersoft.theotown.components.notification.ZoneNeededNotification.1
            @Override // java.lang.Runnable
            public void run() {
                ZoneNeededNotification.this.city.applyComponent(buildToolResolve);
            }
        }));
        return actions;
    }
}
