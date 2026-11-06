package ads_mobile_sdk;

import android.widget.FrameLayout;
import android.widget.ImageView;
import com.ironsource.C3522b4;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class l62 implements zu1 {
    public final ex0 a;
    public final j12 b;
    public final j53 c;
    public final js1 d;

    public l62(ex0 flags, j12 nativeAdCore, j53 requestType) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(nativeAdCore, "nativeAdCore");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        this.a = flags;
        this.b = nativeAdCore;
        this.c = requestType;
        this.d = new js1();
    }

    public final Unit f() {
        FrameLayout nativeAdView;
        if (this.c != j53.g && this.d.b() && (nativeAdView = ((p32) ((o32) this.d.a("The backing field has not yet been initialized."))).c()) != null) {
            ex0 ex0Var = this.a;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:nas_interaction_ping_enabled_decagon", C3522b4.i.W);
            if (((Boolean) ex0Var.a("gads:nas_interaction_ping_enabled_decagon", Boolean.FALSE, yr.b)).booleanValue()) {
                Map assetViews = ((p32) ((o32) this.d.a("The backing field has not yet been initialized."))).b();
                ImageView.ScaleType mediaviewScaleType = ((p32) ((o32) this.d.a("The backing field has not yet been initialized."))).e();
                if (mediaviewScaleType == null) {
                    mediaviewScaleType = t32.i;
                }
                j12 j12Var = this.b;
                j12Var.getClass();
                Intrinsics.checkNotNullParameter(nativeAdView, "nativeAdView");
                Intrinsics.checkNotNullParameter(assetViews, "assetViews");
                Intrinsics.checkNotNullParameter(mediaviewScaleType, "mediaviewScaleType");
                if (!j12Var.b.getAndSet(true)) {
                    j12Var.b(nativeAdView, mediaviewScaleType, assetViews);
                }
            }
        }
        return Unit.INSTANCE;
    }
}
