package info.flowersoft.theotown.components.notification;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.components.management.attribute.AttributeFactory;
import info.flowersoft.theotown.components.management.attribute.EducationHappiness;
import info.flowersoft.theotown.components.management.attribute.FireBrigadeHappiness;
import info.flowersoft.theotown.components.management.attribute.HealthHappiness;
import info.flowersoft.theotown.components.management.attribute.PoliceHappiness;
import info.flowersoft.theotown.components.notification.condition.Condition;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.ToolResolver;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.util.Getter;

/* JADX INFO: loaded from: classes4.dex */
public class UnhappyNotification extends SimpleNotification {
    public Building building;

    public UnhappyNotification(final Attribute attribute, final City city) {
        super(city);
        setId("$unhappy_" + AttributeFactory.getTag(attribute));
        int i = Resources.PEOPLE_OFFICEWORKER;
        if (attribute == AttributeFactory.getAttribute((Class<? extends Attribute>) EducationHappiness.class)) {
            i = Resources.PEOPLE_MANAGER;
        } else if (attribute == AttributeFactory.getAttribute((Class<? extends Attribute>) HealthHappiness.class)) {
            i = Resources.PEOPLE_MEDIC;
        } else if (attribute == AttributeFactory.getAttribute((Class<? extends Attribute>) FireBrigadeHappiness.class)) {
            i = Resources.PEOPLE_FIREFIGHTER1;
        } else if (attribute == AttributeFactory.getAttribute((Class<? extends Attribute>) PoliceHappiness.class)) {
            i = Resources.PEOPLE_OFFICER;
        }
        setIcon(i);
        final String strTranslate = city.getTranslator().translate(attribute.getNameLocalizationId());
        setTextProvider(new Getter<String>() { // from class: info.flowersoft.theotown.components.notification.UnhappyNotification.1
            @Override // io.blueflower.stapel2d.util.Getter
            public String get() {
                return StringFormatter.format(city.getTranslator().translate(1714), strTranslate);
            }
        });
        setCondition(new Condition(city) { // from class: info.flowersoft.theotown.components.notification.UnhappyNotification.2
            @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
            public boolean evaluate() {
                DefaultManagement defaultManagement = (DefaultManagement) this.city.getComponent(3);
                Attribute lowestHappiness = defaultManagement.getLowestHappiness();
                float lowestHappinessValue = defaultManagement.getLowestHappinessValue();
                Building lowestHappinessBuilding = defaultManagement.getLowestHappinessBuilding();
                if (lowestHappiness != attribute || lowestHappinessValue >= 0.2f || (UnhappyNotification.this.building != null && UnhappyNotification.this.building != lowestHappinessBuilding)) {
                    UnhappyNotification.this.building = null;
                    return false;
                }
                UnhappyNotification.this.building = lowestHappinessBuilding;
                return true;
            }
        });
        setLocationBuildingProvider(new Getter<Building>() { // from class: info.flowersoft.theotown.components.notification.UnhappyNotification.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public Building get() {
                return UnhappyNotification.this.building;
            }
        });
        setOnLocationClick(new Runnable() { // from class: info.flowersoft.theotown.components.notification.UnhappyNotification.4
            @Override // java.lang.Runnable
            public void run() {
                city.applyComponent(new ToolResolver(city).resolve(attribute));
            }
        });
    }
}
