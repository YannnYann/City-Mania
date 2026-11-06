package ads_mobile_sdk;

import android.view.View;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d92 implements r41 {
    public final j12 a;
    public final s02 b;

    public d92(j12 nativeAdCore, s02 nativeAdAssets) {
        Intrinsics.checkNotNullParameter(nativeAdCore, "nativeAdCore");
        Intrinsics.checkNotNullParameter(nativeAdAssets, "nativeAdAssets");
        this.a = nativeAdCore;
        this.b = nativeAdAssets;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_NATIVE_VIDEO_CLICKED;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        p32 p32Var;
        View viewB;
        q02 q02Var = this.b.b;
        int i = q02Var == null ? -1 : c92.a[q02Var.ordinal()];
        if (i != -1) {
            if (i == 1) {
                o32 o32Var = (o32) this.a.c.get();
                if (o32Var != null && (viewB = (p32Var = (p32) o32Var).b("3010")) != null) {
                    p32Var.onClick(viewB);
                }
            } else if (i == 2) {
                this.a.a("_videoMediaView");
            }
            return Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }
}
