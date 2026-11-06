package ads_mobile_sdk;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gn2 implements rh3 {
    public final Context a;
    public final ao0 b;
    public final ex0 c;
    public final zd3 d;

    public gn2(Context context, ao0 displayUtil, ex0 flags, zd3 sharedSettingsDataStore) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(displayUtil, "displayUtil");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(sharedSettingsDataStore, "sharedSettingsDataStore");
        this.a = context;
        this.b = displayUtil;
        this.c = flags;
        this.d = sharedSettingsDataStore;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.PHONE_ORIENTATION;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.rh3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object s(kotlin.coroutines.Continuation r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.fn2
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.fn2 r0 = (ads_mobile_sdk.fn2) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.fn2 r0 = new ads_mobile_sdk.fn2
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            ads_mobile_sdk.gn2 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L63
        L2b:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L33:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.ex0 r7 = r6.c
            r7.getClass()
            java.lang.String r2 = "key"
            java.lang.String r4 = "gads:phone_orientation:enabled"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r2)
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
            ads_mobile_sdk.ir r5 = ads_mobile_sdk.yr.b
            java.lang.Object r7 = r7.a(r4, r2, r5)
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto L96
            ads_mobile_sdk.zd3 r7 = r6.d
            r0.a = r6
            r0.d = r3
            r7.getClass()
            java.lang.Object r7 = ads_mobile_sdk.zd3.b(r7, r0)
            if (r7 != r1) goto L62
            return r1
        L62:
            r0 = r6
        L63:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto L6c
            goto L96
        L6c:
            ads_mobile_sdk.ao0 r7 = r0.b
            android.content.Context r0 = r0.a
            android.content.Context r7 = r7.c(r0)
            android.content.res.Resources r7 = r7.getResources()
            android.content.res.Configuration r7 = r7.getConfiguration()
            int r7 = r7.orientation
            if (r7 == r3) goto L89
            r0 = 2
            if (r7 == r0) goto L86
            ads_mobile_sdk.dn2 r7 = ads_mobile_sdk.dn2.b
            goto L8b
        L86:
            ads_mobile_sdk.dn2 r7 = ads_mobile_sdk.dn2.d
            goto L8b
        L89:
            ads_mobile_sdk.dn2 r7 = ads_mobile_sdk.dn2.c
        L8b:
            ads_mobile_sdk.q01 r0 = new ads_mobile_sdk.q01
            ads_mobile_sdk.en2 r1 = new ads_mobile_sdk.en2
            r1.<init>(r7)
            r0.<init>(r1)
            return r0
        L96:
            ads_mobile_sdk.q01 r7 = new ads_mobile_sdk.q01
            ads_mobile_sdk.en2 r0 = new ads_mobile_sdk.en2
            ads_mobile_sdk.dn2 r1 = ads_mobile_sdk.dn2.b
            r0.<init>(r1)
            r7.<init>(r0)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.gn2.s(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
