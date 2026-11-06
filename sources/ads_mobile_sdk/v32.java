package ads_mobile_sdk;

import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import com.google.gson.JsonObject;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class v32 implements r41 {
    public final j12 a;

    public v32(j12 nativeAdCore) {
        Intrinsics.checkNotNullParameter(nativeAdCore, "nativeAdCore");
        this.a = nativeAdCore;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_NATIVE_AD_VIEW_SIGNALS;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        JsonObject jsonObject;
        j12 j12VarR;
        o32 o32Var = (o32) this.a.c.get();
        if (o32Var != null) {
            p32 p32Var = (p32) o32Var;
            synchronized (p32Var) {
                if (p32Var.d.get()) {
                    jsonObject = new JsonObject();
                } else {
                    InternalNativeAd internalNativeAd = p32Var.i;
                    if (internalNativeAd != null && (j12VarR = internalNativeAd.r()) != null) {
                        FrameLayout frameLayout = p32Var.b;
                        LinkedHashMap linkedHashMap = p32Var.h;
                        ImageView.ScaleType scaleType = p32Var.f;
                        if (scaleType == null) {
                            scaleType = t32.i;
                        }
                        jsonObject = j12VarR.a(frameLayout, scaleType, linkedHashMap);
                    } else {
                        jsonObject = new JsonObject();
                    }
                }
            }
        } else {
            jsonObject = new JsonObject();
        }
        Object objA = r31Var.a(jsonObject, "nativeAdViewSignalsReady", continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }
}
