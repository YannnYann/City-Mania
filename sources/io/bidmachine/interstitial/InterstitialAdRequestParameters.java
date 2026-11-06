package io.bidmachine.interstitial;

import com.explorestack.protobuf.adcom.Placement;
import io.bidmachine.AdPlacementConfig;
import io.bidmachine.FullScreenAdRequestParameters;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.ProtoUtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class InterstitialAdRequestParameters extends FullScreenAdRequestParameters {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InterstitialAdRequestParameters(AdPlacementConfig adPlacementConfig) {
        super(adPlacementConfig);
        Intrinsics.checkNotNullParameter(adPlacementConfig, "adPlacementConfig");
    }

    @Override // io.bidmachine.AdRequestParameters
    public BMError checkPlacement(Placement placement) throws Throwable {
        Intrinsics.checkNotNullParameter(placement, "placement");
        return ProtoUtilsKt.checkInterstitialPlacement(placement);
    }
}
