package ads_mobile_sdk;

import android.content.Context;
import android.hardware.SensorManager;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class b61 implements rh3 {
    public final ex0 a;
    public final zd3 b;
    public final SensorManager c;

    public b61(Context context, ex0 flags, zd3 sharedSettingsDataStore) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(sharedSettingsDataStore, "sharedSettingsDataStore");
        this.a = flags;
        this.b = sharedSettingsDataStore;
        Object systemService = context.getSystemService("sensor");
        this.c = systemService instanceof SensorManager ? (SensorManager) systemService : null;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.HAND_HELD;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d8, code lost:
    
        if (r8 == r1) goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.rh3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object s(kotlin.coroutines.Continuation r8) {
        /*
            Method dump skipped, instruction units count: 245
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.b61.s(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
