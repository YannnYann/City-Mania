package ads_mobile_sdk;

import android.content.Context;
import android.os.BatteryManager;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class ps extends ou {
    public final BatteryManager l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ps(ex0 flags, Context context, CoroutineScope backgroundScope, tx clock, g83 rootTraceCreator, f0 activityTracker) {
        super(clock, backgroundScope, rootTraceCreator, flags, activityTracker);
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        this.l = (BatteryManager) context.getSystemService(BatteryManager.class);
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.BATTERY;
    }

    @Override // ads_mobile_sdk.rh3
    public final Object s(Continuation continuation) {
        return new q01(new os(((double) this.l.getIntProperty(4)) / 100.0d, this.l.isCharging()));
    }
}
