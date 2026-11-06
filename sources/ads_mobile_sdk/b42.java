package ads_mobile_sdk;

import android.widget.FrameLayout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class b42 {
    public final z32 a;
    public final x32 b;
    public final l62 c;

    public b42(z32 nativeAdViewabilityMonitor, x32 nativeAdViewVisibilityChangedListenerImpl, l62 nativeMediaViewFullyVisibleEventListenerImpl) {
        Intrinsics.checkNotNullParameter(nativeAdViewabilityMonitor, "nativeAdViewabilityMonitor");
        Intrinsics.checkNotNullParameter(nativeAdViewVisibilityChangedListenerImpl, "nativeAdViewVisibilityChangedListenerImpl");
        Intrinsics.checkNotNullParameter(nativeMediaViewFullyVisibleEventListenerImpl, "nativeMediaViewFullyVisibleEventListenerImpl");
        this.a = nativeAdViewabilityMonitor;
        this.b = nativeAdViewVisibilityChangedListenerImpl;
        this.c = nativeMediaViewFullyVisibleEventListenerImpl;
    }

    public final void a(o32 nativeAdViewContainer) {
        Intrinsics.checkNotNullParameter(nativeAdViewContainer, "nativeAdViewContainer");
        this.b.b.a(nativeAdViewContainer);
        this.c.d.a(nativeAdViewContainer);
        FrameLayout targetView = ((p32) nativeAdViewContainer).c();
        if (targetView != null) {
            z32 z32Var = this.a;
            z32Var.getClass();
            Intrinsics.checkNotNullParameter(targetView, "targetView");
            z32Var.i = targetView;
            z32Var.j = true;
            z32Var.a(targetView);
        }
    }
}
