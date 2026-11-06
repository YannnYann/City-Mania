package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.components.actionplace.ActionPlaceType;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.marker.InfluenceMarker;
import info.flowersoft.theotown.util.DraftLocalizer;

/* JADX INFO: loaded from: classes4.dex */
public class GarbageAlertTool extends AlertTool {
    public GarbageAlertTool() {
        super(ActionPlaceType.GARBAGE);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return getAlertId();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        setMarker(new InfluenceMarker(city, InfluenceType.WASTE_DISPOSAL));
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return new DraftLocalizer(this.city).getTitle(getId());
    }

    public static String getAlertId() {
        return "$alert_garbage00";
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_WASTE_DISPOSAL;
    }
}
