package ads_mobile_sdk;

import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class u43 {
    public final ex0 a;
    public final tx b;
    public final Mutex c;
    public final LinkedHashMap d;

    public u43(ex0 flags, tx clock) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.a = flags;
        this.b = clock;
        this.c = MutexKt.Mutex$default(false, 1, null);
        this.d = new LinkedHashMap();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.u43 r9, java.lang.String r10, kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instruction units count: 281
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.u43.a(ads_mobile_sdk.u43, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object b(ads_mobile_sdk.u43 r5, java.lang.String r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof ads_mobile_sdk.s43
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.s43 r0 = (ads_mobile_sdk.s43) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.s43 r0 = new ads_mobile_sdk.s43
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            kotlinx.coroutines.sync.Mutex r5 = r0.c
            java.lang.String r6 = r0.b
            ads_mobile_sdk.u43 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4e
        L30:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L38:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.sync.Mutex r7 = r5.c
            r0.a = r5
            r0.b = r6
            r0.c = r7
            r0.f = r3
            java.lang.Object r0 = r7.lock(r4, r0)
            if (r0 != r1) goto L4c
            return r1
        L4c:
            r0 = r5
            r5 = r7
        L4e:
            if (r6 != 0) goto L58
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L56
            r5.unlock(r4)
            return r6
        L56:
            r6 = move-exception
            goto L66
        L58:
            java.util.LinkedHashMap r7 = r0.d     // Catch: java.lang.Throwable -> L56
            java.lang.Object r6 = r7.remove(r6)     // Catch: java.lang.Throwable -> L56
            kotlin.collections.ArrayDeque r6 = (kotlin.collections.ArrayDeque) r6     // Catch: java.lang.Throwable -> L56
            r5.unlock(r4)
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L66:
            r5.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.u43.b(ads_mobile_sdk.u43, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object c(ads_mobile_sdk.u43 r9, java.lang.String r10, kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instruction units count: 265
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.u43.c(ads_mobile_sdk.u43, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object a(String str, xa2 xa2Var) {
        return c(this, str, xa2Var);
    }
}
