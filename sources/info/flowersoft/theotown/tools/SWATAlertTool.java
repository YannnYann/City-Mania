package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.components.actionplace.ActionPlaceType;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.marker.InfluenceMarker;

/* JADX INFO: loaded from: classes4.dex */
public class SWATAlertTool extends AlertTool {
    public SWATAlertTool() {
        super(ActionPlaceType.SWAT);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return getAlertId();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        setMarker(new InfluenceMarker(city, InfluenceType.POLICE));
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return "SWAT";
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_CALL_POLICE;
    }

    public static String getAlertId() {
        return "$alert_swat00";
    }
}
