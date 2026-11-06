package ads_mobile_sdk;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class tm0 extends Lambda implements Function0 {
    public final /* synthetic */ an0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tm0(an0 an0Var) {
        super(0);
        this.a = an0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    @Override // kotlin.jvm.functions.Function0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invoke() {
        /*
            r2 = this;
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.NoSuchMethodError -> L18
            r1 = 30
            if (r0 < r1) goto L18
            ads_mobile_sdk.an0 r0 = r2.a     // Catch: java.lang.NoSuchMethodError -> L18
            android.content.Context r0 = r0.c     // Catch: java.lang.NoSuchMethodError -> L18
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch: java.lang.NoSuchMethodError -> L18
            java.lang.String r1 = "com.google.android.play.feature.HPE_EXPERIENCE"
            boolean r0 = r0.hasSystemFeature(r1)     // Catch: java.lang.NoSuchMethodError -> L18
            if (r0 == 0) goto L18
            r0 = 1
            goto L19
        L18:
            r0 = 0
        L19:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.tm0.invoke():java.lang.Object");
    }
}
