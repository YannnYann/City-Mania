package ads_mobile_sdk;

import java.util.HashSet;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class b53 {
    public final tx a;
    public final Mutex b;
    public final LinkedHashMap c;
    public final LinkedHashMap d;
    public final HashSet e;

    public b53(tx clock) {
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.a = clock;
        this.b = MutexKt.Mutex$default(false, 1, null);
        this.c = new LinkedHashMap();
        this.d = new LinkedHashMap();
        this.e = new HashSet();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.b53 r6, java.lang.String r7, ads_mobile_sdk.j53 r8, kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof ads_mobile_sdk.v43
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.v43 r0 = (ads_mobile_sdk.v43) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.v43 r0 = new ads_mobile_sdk.v43
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            kotlinx.coroutines.sync.Mutex r6 = r0.c
            java.lang.String r7 = r0.b
            ads_mobile_sdk.b53 r8 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            r5 = r8
            r8 = r6
            r6 = r5
            goto L5b
        L33:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3b:
            kotlin.ResultKt.throwOnFailure(r9)
            r6.getClass()
            java.lang.String r7 = a(r8, r7)
            if (r7 != 0) goto L4a
            ads_mobile_sdk.zr0 r6 = ads_mobile_sdk.zr0.c
            return r6
        L4a:
            kotlinx.coroutines.sync.Mutex r8 = r6.b
            r0.a = r6
            r0.b = r7
            r0.c = r8
            r0.f = r3
            java.lang.Object r9 = r8.lock(r4, r0)
            if (r9 != r1) goto L5b
            return r1
        L5b:
            java.util.LinkedHashMap r6 = r6.d     // Catch: java.lang.Throwable -> L6a
            java.lang.Object r6 = r6.get(r7)     // Catch: java.lang.Throwable -> L6a
            ads_mobile_sdk.hr3 r6 = (ads_mobile_sdk.hr3) r6     // Catch: java.lang.Throwable -> L6a
            if (r6 == 0) goto L6c
            ads_mobile_sdk.zr0 r6 = r6.e     // Catch: java.lang.Throwable -> L6a
            if (r6 != 0) goto L6e
            goto L6c
        L6a:
            r6 = move-exception
            goto L72
        L6c:
            ads_mobile_sdk.zr0 r6 = ads_mobile_sdk.zr0.c     // Catch: java.lang.Throwable -> L6a
        L6e:
            r8.unlock(r4)
            return r6
        L72:
            r8.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.b53.a(ads_mobile_sdk.b53, java.lang.String, ads_mobile_sdk.j53, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object b(ads_mobile_sdk.b53 r6, java.lang.String r7, ads_mobile_sdk.j53 r8, kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof ads_mobile_sdk.w43
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.w43 r0 = (ads_mobile_sdk.w43) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.w43 r0 = new ads_mobile_sdk.w43
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            kotlinx.coroutines.sync.Mutex r6 = r0.c
            java.lang.String r7 = r0.b
            ads_mobile_sdk.b53 r8 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            r5 = r8
            r8 = r6
            r6 = r5
            goto L5e
        L33:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3b:
            kotlin.ResultKt.throwOnFailure(r9)
            r6.getClass()
            java.lang.String r7 = a(r8, r7)
            if (r7 != 0) goto L4d
            r6 = 0
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r6)
            return r6
        L4d:
            kotlinx.coroutines.sync.Mutex r8 = r6.b
            r0.a = r6
            r0.b = r7
            r0.c = r8
            r0.f = r3
            java.lang.Object r9 = r8.lock(r4, r0)
            if (r9 != r1) goto L5e
            return r1
        L5e:
            java.util.LinkedHashMap r6 = r6.d     // Catch: java.lang.Throwable -> L6c
            boolean r6 = r6.containsKey(r7)     // Catch: java.lang.Throwable -> L6c
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r6)     // Catch: java.lang.Throwable -> L6c
            r8.unlock(r4)
            return r6
        L6c:
            r6 = move-exception
            r8.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.b53.b(ads_mobile_sdk.b53, java.lang.String, ads_mobile_sdk.j53, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object c(ads_mobile_sdk.b53 r6, java.lang.String r7, ads_mobile_sdk.j53 r8, kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof ads_mobile_sdk.x43
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.x43 r0 = (ads_mobile_sdk.x43) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.x43 r0 = new ads_mobile_sdk.x43
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            kotlinx.coroutines.sync.Mutex r6 = r0.c
            java.lang.String r7 = r0.b
            ads_mobile_sdk.b53 r8 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L5b
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L38:
            kotlin.ResultKt.throwOnFailure(r9)
            r6.getClass()
            java.lang.String r7 = a(r8, r7)
            if (r7 != 0) goto L47
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L47:
            kotlinx.coroutines.sync.Mutex r8 = r6.b
            r0.a = r6
            r0.b = r7
            r0.c = r8
            r0.f = r3
            java.lang.Object r9 = r8.lock(r4, r0)
            if (r9 != r1) goto L58
            return r1
        L58:
            r5 = r8
            r8 = r6
            r6 = r5
        L5b:
            java.util.LinkedHashMap r9 = r8.c     // Catch: java.lang.Throwable -> L6b
            r9.remove(r7)     // Catch: java.lang.Throwable -> L6b
            java.util.HashSet r8 = r8.e     // Catch: java.lang.Throwable -> L6b
            r8.remove(r7)     // Catch: java.lang.Throwable -> L6b
            r6.unlock(r4)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L6b:
            r7 = move-exception
            r6.unlock(r4)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.b53.c(ads_mobile_sdk.b53, java.lang.String, ads_mobile_sdk.j53, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object d(ads_mobile_sdk.b53 r8, java.lang.String r9, ads_mobile_sdk.j53 r10, kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instruction units count: 227
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.b53.d(ads_mobile_sdk.b53, java.lang.String, ads_mobile_sdk.j53, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object e(ads_mobile_sdk.b53 r8, java.lang.String r9, ads_mobile_sdk.j53 r10, kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instruction units count: 273
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.b53.e(ads_mobile_sdk.b53, java.lang.String, ads_mobile_sdk.j53, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static String a(j53 j53Var, String str) {
        if (str == null || str.length() == 0 || j53Var == null) {
            return null;
        }
        return j53Var + "#" + str;
    }

    public final Object a(j53 j53Var, String str, xa2 xa2Var) {
        return b(this, str, j53Var, xa2Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.b53 r6, com.google.gson.JsonObject r7, java.lang.String r8, ads_mobile_sdk.j53 r9, kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof ads_mobile_sdk.a53
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.a53 r0 = (ads_mobile_sdk.a53) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.a53 r0 = new ads_mobile_sdk.a53
            r0.<init>(r6, r10)
        L18:
            java.lang.Object r10 = r0.e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L40
            if (r2 != r3) goto L38
            kotlinx.coroutines.sync.Mutex r6 = r0.d
            java.lang.String r7 = r0.c
            com.google.gson.JsonObject r8 = r0.b
            ads_mobile_sdk.b53 r9 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            r5 = r9
            r9 = r6
            r6 = r5
            r5 = r8
            r8 = r7
            r7 = r5
            goto L62
        L38:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L40:
            kotlin.ResultKt.throwOnFailure(r10)
            r6.getClass()
            java.lang.String r8 = a(r9, r8)
            if (r8 != 0) goto L4f
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L4f:
            kotlinx.coroutines.sync.Mutex r9 = r6.b
            r0.a = r6
            r0.b = r7
            r0.c = r8
            r0.d = r9
            r0.g = r3
            java.lang.Object r10 = r9.lock(r4, r0)
            if (r10 != r1) goto L62
            return r1
        L62:
            ads_mobile_sdk.hr3 r7 = ads_mobile_sdk.gr3.a(r7)     // Catch: java.lang.Throwable -> L6e
            if (r7 != 0) goto L70
            java.util.LinkedHashMap r6 = r6.d     // Catch: java.lang.Throwable -> L6e
            r6.remove(r8)     // Catch: java.lang.Throwable -> L6e
            goto L77
        L6e:
            r6 = move-exception
            goto L7d
        L70:
            java.util.LinkedHashMap r6 = r6.d     // Catch: java.lang.Throwable -> L6e
            r6.put(r8, r7)     // Catch: java.lang.Throwable -> L6e
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L6e
        L77:
            r9.unlock(r4)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L7d:
            r9.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.b53.a(ads_mobile_sdk.b53, com.google.gson.JsonObject, java.lang.String, ads_mobile_sdk.j53, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object b(j53 j53Var, String str, xa2 xa2Var) {
        return e(this, str, j53Var, xa2Var);
    }
}
