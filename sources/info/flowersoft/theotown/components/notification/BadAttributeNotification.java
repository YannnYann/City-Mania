package info.flowersoft.theotown.components.notification;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.city.components.BuildingSurvey;
import info.flowersoft.theotown.city.components.Notification;
import info.flowersoft.theotown.components.BuildCommandResult;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.components.notification.condition.Condition;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.StringFormatter;

/* JADX INFO: loaded from: classes4.dex */
class BadAttributeNotification extends Notification {
    public int level;
    public Attribute reason;
    public ZoneDraft zone;

    @Override // info.flowersoft.theotown.city.components.Notification
    public boolean showOnlyOnce() {
        return true;
    }

    public BadAttributeNotification(City city) {
        super(city);
        this.condition = new Condition(city) { // from class: info.flowersoft.theotown.components.notification.BadAttributeNotification.1
            @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
            public boolean evaluate() {
                DefaultManagement defaultManagement = (DefaultManagement) this.city.getComponent(3);
                BuildCommandResult lastBuildResult = defaultManagement.getLastBuildResult();
                BuildingSurvey buildingSurvey = defaultManagement.getBuildingSurvey();
                if (lastBuildResult != null && buildingSurvey != null) {
                    if (BadAttributeNotification.this.zone != null) {
                        if (lastBuildResult.getZone() == BadAttributeNotification.this.zone && lastBuildResult.getLevel() == BadAttributeNotification.this.level && (lastBuildResult.isSuccessful() || lastBuildResult.getBadAttribute() != BadAttributeNotification.this.reason)) {
                            BadAttributeNotification.this.zone = null;
                        }
                    } else if (!lastBuildResult.isSuccessful() && lastBuildResult.hasNoSpace() && lastBuildResult.getArea() > 0 && lastBuildResult.getBadAttribute() != null) {
                        int residentialSpace = buildingSurvey.getResidentialSpace(lastBuildResult.getLevel(), 1);
                        if (lastBuildResult.getZone() == Zones.getInstance().COMMERCIAL0) {
                            residentialSpace = buildingSurvey.getShoppingPlaces(lastBuildResult.getLevel(), 1);
                        }
                        if (lastBuildResult.getZone() == Zones.getInstance().INDUSTRIAL0) {
                            residentialSpace = buildingSurvey.getProducers(lastBuildResult.getLevel(), 1);
                        }
                        if (residentialSpace == 0 && lastBuildResult.getZone() == Zones.getInstance().RESIDENTIAL0 && lastBuildResult.getBadAttribute().isVisible()) {
                            BadAttributeNotification.this.zone = lastBuildResult.getZone();
                            BadAttributeNotification.this.level = lastBuildResult.getLevel();
                            BadAttributeNotification.this.reason = lastBuildResult.getBadAttribute();
                        }
                    }
                }
                return BadAttributeNotification.this.zone != null;
            }
        };
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public String getID() {
        StringBuilder sb = new StringBuilder();
        sb.append("$badattribdetected");
        Attribute attribute = this.reason;
        sb.append(attribute != null ? attribute.getIndex() : -1);
        return sb.toString();
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public int getIconID() {
        return Resources.PEOPLE_MANAGER;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public String getMessage() {
        int i = this.level;
        int i2 = i == 1 ? 2167 : 2168;
        if (i == 2) {
            i2 = 2170;
        }
        return StringFormatter.format(this.translator.translate(3240), this.translator.translate(this.reason.getNameLocalizationId()), this.translator.translate(i2));
    }
}
