package io.bidmachine.displays.mapper;

import com.explorestack.protobuf.adcom.Ad;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.internal.C4227k;
import io.bidmachine.util.UtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class DisclaimerDataMapper {
    public final C4227k map(Ad.Display.Native.Asset asset) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        try {
            if (asset.hasDisclaimer()) {
                Ad.Display.Native.Asset.DisclaimerAsset disclaimer = asset.getDisclaimer();
                String text = disclaimer.getText();
                Intrinsics.checkNotNullExpressionValue(text, "it.text");
                return new C4227k(text, UtilsKt.toRatio$default(Integer.valueOf(disclaimer.getPercent()), 100.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 2, null));
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
