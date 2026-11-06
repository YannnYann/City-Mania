package ads_mobile_sdk;

import android.app.Activity;
import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class lp3 implements zx0 {
    public final CoroutineScope a;
    public final v3 b;
    public final no3 c;
    public final np3 d;
    public final f0 e;
    public final AtomicBoolean f;

    public lp3(CoroutineScope backgroundScope, v3 adEventEmitter, no3 thirdPartyEventEmitter, np3 thirdPartyFullscreenShowMethod, f0 activityTracker) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(thirdPartyEventEmitter, "thirdPartyEventEmitter");
        Intrinsics.checkNotNullParameter(thirdPartyFullscreenShowMethod, "thirdPartyFullscreenShowMethod");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        this.a = backgroundScope;
        this.b = adEventEmitter;
        this.c = thirdPartyEventEmitter;
        this.d = thirdPartyFullscreenShowMethod;
        this.e = activityTracker;
        this.f = new AtomicBoolean(false);
    }

    @Override // ads_mobile_sdk.zx0
    public final void a(Context context, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (this.f.getAndSet(true)) {
            f01.a("This ad has already been shown.", (Throwable) null);
            xs3.a(this.a, new ip3(this, null));
            xs3.a("The ad has already been shown", null, 6);
            return;
        }
        if (context instanceof Activity) {
            this.e.a((Activity) context, r.e);
        }
        try {
            this.d.showAd(context);
            CoroutineScope coroutineScope = this.a;
            kp3 block = new kp3(this, null);
            EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context2, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context2, null, new ws3(block, null), 2, null);
        } catch (Exception e) {
            xs3.a("Mediation Fullscreen Ad failed to show.", e, 4);
            xs3.a(this.a, new jp3(this, null));
        }
    }
}
