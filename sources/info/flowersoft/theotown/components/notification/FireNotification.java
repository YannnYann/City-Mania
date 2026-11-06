package info.flowersoft.theotown.components.notification;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Notification;
import info.flowersoft.theotown.city.components.NotificationAction;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.components.disaster.FireDisaster;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.FireBrigadeAlertTool;
import info.flowersoft.theotown.tools.ToolResolver;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class FireNotification extends Notification {
    public Building burningBuilding;
    public boolean oldHasFDep;

    @Override // info.flowersoft.theotown.city.components.Notification
    public boolean isCloseable() {
        return true;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public boolean isImportant() {
        return true;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public String getID() {
        return "$burningid";
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public int getIconID() {
        return Resources.PEOPLE_FIREFIGHTER0;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public String getMessage() {
        if (hasFDep()) {
            return this.city.getTranslator().translate(634);
        }
        return this.city.getTranslator().translate(102);
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public void update() {
        super.update();
        boolean zHasFDep = hasFDep();
        boolean z = this.oldHasFDep;
        if (zHasFDep != z) {
            this.oldHasFDep = !z;
            rebuild();
        }
    }

    public final boolean hasFDep() {
        return !this.city.getBuildings().getBuildingsOfType(BuildingType.FIRE_BRIGADE).isEmpty();
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public boolean checkCondition() {
        FireDisaster fireDisaster = (FireDisaster) ((DefaultCatastrophe) this.city.getComponent(6)).getDisaster(FireDisaster.class);
        if (fireDisaster.isActive()) {
            this.burningBuilding = fireDisaster.getBurningBuilding();
        } else {
            this.burningBuilding = null;
        }
        return fireDisaster.isActive();
    }

    public FireNotification(City city) {
        super(city);
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public void onShow() {
        super.onShow();
        this.oldHasFDep = hasFDep();
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public List<NotificationAction> getActions() {
        List<NotificationAction> actions = super.getActions();
        if (hasFDep()) {
            actions.add(1, new NotificationAction(Resources.ICON_CALL_FIREDEPARTMENT, new Runnable() { // from class: info.flowersoft.theotown.components.notification.FireNotification.1
                @Override // java.lang.Runnable
                public void run() {
                    FireNotification.this.city.focus(FireNotification.this.burningBuilding);
                    FireNotification.this.city.applyComponent(new FireBrigadeAlertTool());
                }
            }));
            return actions;
        }
        actions.add(1, new NotificationAction(Resources.ICON_BUILD, new Runnable() { // from class: info.flowersoft.theotown.components.notification.FireNotification.2
            @Override // java.lang.Runnable
            public void run() {
                FireNotification.this.city.applyComponent(new ToolResolver(FireNotification.this.city).resolve(Drafts.FIREBRIGADE.get(0)));
            }
        }));
        return actions;
    }
}
