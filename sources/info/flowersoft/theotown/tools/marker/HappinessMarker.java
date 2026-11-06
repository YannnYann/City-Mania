package info.flowersoft.theotown.tools.marker;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.management.attribute.ConcreteAttributeContainer;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class HappinessMarker extends BuildingMarker {
    public HappinessMarker(City city) {
        super(city);
        this.legend.add(new LegendEntry(city.getTranslator().translate(2932), Colors.GREEN));
        this.legend.add(new LegendEntry(city.getTranslator().translate(2917), Colors.RED));
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildingMarker
    public boolean buildingIsInvolved(Building building) {
        return building.getBuildingType().isRCIOrDeco() && building.getAttributeContainer() != null;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildingMarker
    public float getInvolvedIntensity(Building building) {
        ConcreteAttributeContainer concreteAttributeContainer = (ConcreteAttributeContainer) building.getAttributeContainer();
        if (concreteAttributeContainer != null) {
            return concreteAttributeContainer.getHappiness();
        }
        return 0.5f;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildingMarker, info.flowersoft.theotown.tools.marker.BuildToolMarker
    public int getIcon() {
        return Resources.ICON_HAPPINESS;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public String getTag() {
        return "HappinessMarker";
    }
}
