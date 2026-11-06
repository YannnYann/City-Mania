package ads_mobile_sdk;

import android.os.SystemClock;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class cy implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        tx clock = (tx) this.a.get();
        Intrinsics.checkNotNullParameter(clock, "clock");
        clock.getClass();
        return Long.valueOf(SystemClock.elapsedRealtime());
    }

    public cy(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
