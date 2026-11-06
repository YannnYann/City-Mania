package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.VideoController;
import com.google.android.libraries.ads.mobile.sdk.common.VideoOptions;
import com.google.gson.JsonObject;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class q41 implements VideoController {
    public final CoroutineScope a;
    public final r31 b;
    public float c;
    public final boolean d;
    public final CompletableDeferred e;
    public final Object f;
    public float g;
    public float h;
    public k41 i;
    public boolean j;
    public boolean k;
    public VideoController.VideoLifecycleCallbacks l;
    public boolean m;

    public q41(CoroutineScope uiScope, r31 webView, float f, boolean z) {
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(webView, "webView");
        this.a = uiScope;
        this.b = webView;
        this.c = f;
        this.d = z;
        this.e = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        this.f = new Object();
        this.i = k41.b;
        this.m = true;
    }

    public final void a(String str) {
        this.e.complete(str);
    }

    public final Object a(JsonObject jsonObject, String str, Continuation continuation) {
        if (jsonObject == null) {
            jsonObject = new JsonObject();
        }
        jsonObject.addProperty("action", str);
        Object objA = this.b.a(jsonObject, "pubVideoCmd", continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController
    public final VideoController.VideoLifecycleCallbacks getVideoLifecycleCallbacks() {
        VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks;
        synchronized (this.f) {
            videoLifecycleCallbacks = this.l;
        }
        return videoLifecycleCallbacks;
    }

    public final boolean isMuted() {
        boolean z;
        synchronized (this.f) {
            z = this.m;
        }
        return z;
    }

    public final float a() {
        float f;
        synchronized (this.f) {
            f = this.h;
        }
        return f;
    }

    public final void a(float f, k41 playbackState, boolean z, float f2) {
        Intrinsics.checkNotNullParameter(playbackState, "playbackState");
        synchronized (this.f) {
            try {
                this.c = f;
                boolean zIsMuted = isMuted();
                a(z);
                k41 k41Var = this.i;
                this.i = playbackState;
                float f3 = this.h;
                this.h = f2;
                if (Math.abs(f2 - f3) > 1.0E-4f) {
                    this.b.invalidate();
                }
                BuildersKt__Builders_commonKt.launch$default(this.a, null, null, new l41(this, k41Var, playbackState, zIsMuted, z, null), 3, null);
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Object a(VideoOptions videoOptions, ContinuationImpl continuationImpl) {
        Unit unit;
        synchronized (this.f) {
            this.j = videoOptions.getCustomControlsRequested();
            videoOptions.getClickToExpandRequested();
            unit = Unit.INSTANCE;
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("muteStart", videoOptions.getStartMuted() ? "1" : "0");
        jsonObject.addProperty("customControlsRequested", videoOptions.getCustomControlsRequested() ? "1" : "0");
        jsonObject.addProperty("clickToExpandRequested", videoOptions.getClickToExpandRequested() ? "1" : "0");
        Object objA = a(jsonObject, "initialState", continuationImpl);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : unit;
    }

    public final void a(float f) {
        synchronized (this.f) {
            this.g = f;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void a(boolean z) {
        synchronized (this.f) {
            this.m = z;
            Unit unit = Unit.INSTANCE;
        }
    }
}
