package info.flowersoft.theotown.tools;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.tools.marker.TrafficMarker;

/* JADX INFO: loaded from: classes4.dex */
public class RemoveTunnelTool extends RemoveTool {
    public RemoveTunnelTool(int i) {
        super(false, false);
        setMarker(null);
        this.removeTunnelLevel = i;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        enterRemoveTunnelMode();
        if (Settings.showTrafficMarkerInRoadTool) {
            setMarker(new TrafficMarker(city) { // from class: info.flowersoft.theotown.tools.RemoveTunnelTool.1
                @Override // info.flowersoft.theotown.tools.marker.TrafficMarker, info.flowersoft.theotown.tools.marker.BuildToolMarker
                public float overlayAlpha(int i, int i2) {
                    if (RemoveTunnelTool.this.tiles.getRoad(i, i2, RemoveTunnelTool.this.removeTunnelLevel) != null) {
                        return 1.0f;
                    }
                    return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                }
            });
        }
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "RemoveTunnel";
    }
}
