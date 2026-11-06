package info.flowersoft.theotown.components.notification.condition;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.BuildCommandResult;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.draft.ZoneDraft;

/* JADX INFO: loaded from: classes4.dex */
public class ZoneNeededCondition extends Condition {
    public boolean state;
    public ZoneDraft zone;

    public ZoneNeededCondition(City city, ZoneDraft zoneDraft) {
        super(city);
        this.zone = zoneDraft;
        this.state = false;
    }

    @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
    public boolean evaluate() {
        BuildCommandResult lastBuildResult = ((DefaultManagement) this.city.getComponent(3)).getLastBuildResult();
        if (lastBuildResult != null && lastBuildResult.getZone() == this.zone) {
            if (!lastBuildResult.isRemove() && lastBuildResult.getPressure() > 10.0f && lastBuildResult.getArea() == 0 && !lastBuildResult.isSuccessful()) {
                this.state = true;
            } else if (lastBuildResult.isSuccessful()) {
                this.state = false;
            }
        }
        return this.state;
    }
}
