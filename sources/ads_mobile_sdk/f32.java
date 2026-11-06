package ads_mobile_sdk;

import android.widget.FrameLayout;
import android.widget.ImageView;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public abstract class f32 {
    public static g32 a(g83 rootTraceCreator, ks3 traceMetaSet, k32 nativeAdUtil, FrameLayout frameLayout, Map assetViews, ImageView.ScaleType mediaviewScaleType) {
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(nativeAdUtil, "nativeAdUtil");
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(mediaviewScaleType, "mediaviewScaleType");
        s11 s11Var = s11.CUI_NAME_NATIVE_AD_SIGNAL;
        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(rootTraceCreator, s11Var, listEmptyList, traceMetaSet);
            try {
                g32 g32Var = new g32(nativeAdUtil.a(frameLayout, mediaviewScaleType, assetViews), nativeAdUtil.c(frameLayout), nativeAdUtil.b(frameLayout), nativeAdUtil.a(frameLayout), nativeAdUtil.a());
                CloseableKt.closeFinally(tu2VarA, null);
                return g32Var;
            } catch (Throwable th) {
                try {
                    tu2VarA.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        tu2VarA.a(th);
                    }
                    if (th instanceof TimeoutCancellationException) {
                        throw new i21(th);
                    }
                    if (th instanceof CancellationException) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                } finally {
                }
            }
        } else {
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
            try {
                g32 g32Var2 = new g32(nativeAdUtil.a(frameLayout, mediaviewScaleType, assetViews), nativeAdUtil.c(frameLayout), nativeAdUtil.b(frameLayout), nativeAdUtil.a(frameLayout), nativeAdUtil.a());
                CloseableKt.closeFinally(rr3VarA, null);
                return g32Var2;
            } catch (Throwable th2) {
                try {
                    rr3VarA.b(th2);
                    if (th2 instanceof v24) {
                        throw th2;
                    }
                    if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                        rr3VarA.a(th2);
                    }
                    if (th2 instanceof TimeoutCancellationException) {
                        throw new i21(th2);
                    }
                    if (th2 instanceof CancellationException) {
                        throw new wz0(th2);
                    }
                    if (th2 instanceof w01) {
                        throw th2;
                    }
                    throw new b01(th2);
                } finally {
                }
            }
        }
    }
}
