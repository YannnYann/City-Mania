package info.flowersoft.theotown.components.notification;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Notification;
import info.flowersoft.theotown.city.components.NotificationAction;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.components.disaster.IllnessDisaster;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.MedicAlertTool;
import info.flowersoft.theotown.tools.ToolResolver;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class MedicNotification extends Notification {
    public Building building;
    public boolean oldHasMedic;

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
        return "$medicid";
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public int getIconID() {
        return Resources.PEOPLE_MEDIC;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public String getMessage() {
        if (hasMedic()) {
            return this.city.getTranslator().translate(887);
        }
        return this.city.getTranslator().translate(3122);
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public void update() {
        super.update();
        if (hasMedic() != this.oldHasMedic) {
            this.oldHasMedic = hasMedic();
            rebuild();
        }
    }

    public final boolean hasMedic() {
        return !this.city.getBuildings().getBuildingsOfType(BuildingType.MEDIC).isEmpty();
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public boolean checkCondition() {
        IllnessDisaster illnessDisaster = (IllnessDisaster) ((DefaultCatastrophe) this.city.getComponent(6)).getDisaster(IllnessDisaster.class);
        if (illnessDisaster.isActive()) {
            this.building = illnessDisaster.getBuilding();
        } else {
            this.building = null;
        }
        return this.building != null;
    }

    public MedicNotification(City city) {
        super(city);
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public void onShow() {
        super.onShow();
        this.oldHasMedic = hasMedic();
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public List<NotificationAction> getActions() {
        List<NotificationAction> actions = super.getActions();
        if (hasMedic()) {
            actions.add(1, new NotificationAction(Resources.ICON_CALL_MEDIC, new Runnable() { // from class: info.flowersoft.theotown.components.notification.MedicNotification.1
                @Override // java.lang.Runnable
                public void run() {
                    MedicNotification.this.city.focus(MedicNotification.this.building);
                    MedicNotification.this.city.applyComponent(new MedicAlertTool());
                }
            }));
            return actions;
        }
        actions.add(1, new NotificationAction(Resources.ICON_BUILD, new Runnable() { // from class: info.flowersoft.theotown.components.notification.MedicNotification.2
            @Override // java.lang.Runnable
            public void run() {
                MedicNotification.this.city.applyComponent(new ToolResolver(MedicNotification.this.city).resolve(Drafts.MEDIC.get(0)));
            }
        }));
        return actions;
    }
}
