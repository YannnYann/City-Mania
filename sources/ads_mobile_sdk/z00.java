package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class z00 implements ai1 {
    public final i2 a;
    public final vn b;

    public z00(i2 adConfiguration, vn appStatsTracker) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(appStatsTracker, "appStatsTracker");
        this.a = adConfiguration;
        this.b = appStatsTracker;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object h(Continuation continuation) {
        if (this.a.H0) {
            vn vnVar = this.b;
            synchronized (vnVar.c) {
                vnVar.e++;
            }
        }
        return Unit.INSTANCE;
    }
}
