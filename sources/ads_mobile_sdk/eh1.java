package ads_mobile_sdk;

import android.content.Context;
import android.os.RemoteException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class eh1 {
    public final Context a;
    public dh1 b;

    public eh1(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = context;
    }

    public final f23 a() {
        try {
            dh1 dh1Var = this.b;
            if (dh1Var == null || dh1Var.a != 2 || dh1Var.d == null || dh1Var.e == null) {
                return null;
            }
            return dh1Var.a();
        } catch (RemoteException unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(ads_mobile_sdk.rh1 r9) {
        /*
            Method dump skipped, instruction units count: 228
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.eh1.a(ads_mobile_sdk.rh1):void");
    }
}
