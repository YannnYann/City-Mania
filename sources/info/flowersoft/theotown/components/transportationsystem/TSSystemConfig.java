package info.flowersoft.theotown.components.transportationsystem;

import com.unity3d.services.UnityAdsConstants;
import io.blueflower.stapel2d.drawing.Color;

/* JADX INFO: loaded from: classes4.dex */
public class TSSystemConfig {
    public Color color;
    public float waiterDecay = 0.8f;
    public float reacherDecay = 0.8f;
    public int stationSearchRadius = 2;
    public int stationRadius = 10;
    public int stationMaxTiles = 64;
    public float passengerFactor = 1.0f;
    public float freightFactor = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    public boolean supportNeighborConnections = true;
}
