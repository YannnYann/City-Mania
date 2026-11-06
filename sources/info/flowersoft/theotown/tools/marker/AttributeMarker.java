package info.flowersoft.theotown.tools.marker;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.components.management.attribute.AttributeFactory;
import info.flowersoft.theotown.components.management.attribute.ConcreteAttributeContainer;
import info.flowersoft.theotown.draft.BuildingType;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class AttributeMarker extends BuildingMarker {
    public final int attribute;
    public final int icon;

    @Override // info.flowersoft.theotown.tools.marker.BuildingMarker, info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean markTree(int i, int i2) {
        return false;
    }

    public AttributeMarker(City city, int i) {
        this(city, AttributeFactory.getAttributes().get(i));
    }

    public AttributeMarker(City city, Attribute attribute) {
        super(city);
        this.attribute = AttributeFactory.getIndex(AttributeFactory.getTag(attribute));
        this.icon = attribute.getIcon();
        if (attribute.isHappiness()) {
            this.legend.add(new LegendEntry(city.getTranslator().translate(2932), Colors.GREEN));
            this.legend.add(new LegendEntry(city.getTranslator().translate(2917), Colors.RED));
        } else {
            this.legend.add(new LegendEntry(city.getTranslator().translate(1476), Colors.GREEN));
            this.legend.add(new LegendEntry(city.getTranslator().translate(1994), Colors.RED));
        }
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildingMarker
    public boolean buildingIsInvolved(Building building) {
        return (!building.getBuildingType().isRCIOrDeco() || building.getBuildingType() == BuildingType.DECORATION || building.inConstruction() || building.isEmpty() || building.getAttributeContainer() == null || getInvolvedIntensity(building) < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) ? false : true;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildingMarker
    public float getInvolvedIntensity(Building building) {
        ConcreteAttributeContainer concreteAttributeContainer = (ConcreteAttributeContainer) building.getAttributeContainer();
        return concreteAttributeContainer != null ? concreteAttributeContainer.getValues()[this.attribute] : UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildingMarker, info.flowersoft.theotown.tools.marker.BuildToolMarker
    public int getIcon() {
        return this.icon;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public String getTag() {
        return "AttributeMarker";
    }
}
