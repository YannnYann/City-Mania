package ads_mobile_sdk;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class lc2 {
    public final Context a;
    public final int b;
    public final long c;
    public final zw3 d;
    public final Mutex e;
    public boolean f;

    public lc2(Context context, int i, long j, zw3 userAgentProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        this.a = context;
        this.b = i;
        this.c = j;
        this.d = userAgentProvider;
        this.e = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.lc2 r12, kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instruction units count: 276
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.lc2.a(ads_mobile_sdk.lc2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
