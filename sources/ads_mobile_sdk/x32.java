package ads_mobile_sdk;

import android.widget.FrameLayout;
import android.widget.ImageView;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class x32 implements xd {
    public final j12 a;
    public final js1 b;

    public x32(j12 nativeAdCore) {
        Intrinsics.checkNotNullParameter(nativeAdCore, "nativeAdCore");
        this.a = nativeAdCore;
        this.b = new js1();
    }

    @Override // ads_mobile_sdk.xd
    public final Object b(boolean z, Continuation continuation) {
        FrameLayout nativeAdView;
        if (z && this.b.b() && (nativeAdView = ((p32) ((o32) this.b.a("The backing field has not yet been initialized."))).c()) != null) {
            Map assetViews = ((p32) ((o32) this.b.a("The backing field has not yet been initialized."))).b();
            ImageView.ScaleType mediaviewScaleType = ((p32) ((o32) this.b.a("The backing field has not yet been initialized."))).e();
            if (mediaviewScaleType == null) {
                mediaviewScaleType = t32.i;
            }
            j12 j12Var = this.a;
            j12Var.getClass();
            Intrinsics.checkNotNullParameter(nativeAdView, "nativeAdView");
            Intrinsics.checkNotNullParameter(assetViews, "assetViews");
            Intrinsics.checkNotNullParameter(mediaviewScaleType, "mediaviewScaleType");
            if (!j12Var.a.getAndSet(true)) {
                j12Var.a(nativeAdView, mediaviewScaleType, assetViews);
            }
        }
        return Unit.INSTANCE;
    }
}
