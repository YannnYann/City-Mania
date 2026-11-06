package info.flowersoft.theotown.draft;

import com.unity3d.services.UnityAdsConstants;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class SpawnDefinition {
    public int noiseSeed = -1;
    public float noiseScale = 1.0f;
    public float noiseOffset = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    public float noiseFactor = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    public float noiseVariance = 1.0f;
    public float heightCenter = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    public float heightRadius = 1.0f;
    public float heightOffset = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    public float heightFactor = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    public float derivCenter = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    public float derivRadius = 1.0f;
    public float derivOffset = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    public float derivFactor = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    public float offset = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    public float coverage = 1.0f;
    public float precedence = 1.0f;
    public Set<GroundDraft> allowedGroundSet = null;
}
