package ads_mobile_sdk;

import android.graphics.Rect;
import java.util.Optional;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class tz1 implements b24 {
    public final ix1 a;
    public final Optional b;
    public final CoroutineScope c;
    public final Mutex d;
    public Rect e;

    public tz1(ix1 mraidAfmaDispatcher, Optional optionalWebView, CoroutineScope uiScope) {
        Intrinsics.checkNotNullParameter(mraidAfmaDispatcher, "mraidAfmaDispatcher");
        Intrinsics.checkNotNullParameter(optionalWebView, "optionalWebView");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        this.a = mraidAfmaDispatcher;
        this.b = optionalWebView;
        this.c = uiScope;
        this.d = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.tz1 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.qz1
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.qz1 r0 = (ads_mobile_sdk.qz1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.qz1 r0 = new ads_mobile_sdk.qz1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            kotlinx.coroutines.sync.Mutex r5 = r0.b
            ads_mobile_sdk.tz1 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            r6 = r5
            r5 = r0
            goto L4a
        L30:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L38:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.Mutex r6 = r5.d
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            android.graphics.Rect r5 = r5.e     // Catch: java.lang.Throwable -> L50
            r6.unlock(r4)
            return r5
        L50:
            r5 = move-exception
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.tz1.a(ads_mobile_sdk.tz1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.b24
    public final Object b(ey3 ey3Var, Continuation continuation) {
        return a(this, ey3Var, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.tz1 r11, ads_mobile_sdk.ey3 r12, kotlin.coroutines.Continuation r13) {
        /*
            boolean r0 = r13 instanceof ads_mobile_sdk.rz1
            if (r0 == 0) goto L13
            r0 = r13
            ads_mobile_sdk.rz1 r0 = (ads_mobile_sdk.rz1) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.rz1 r0 = new ads_mobile_sdk.rz1
            r0.<init>(r11, r13)
        L18:
            java.lang.Object r13 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            kotlinx.coroutines.sync.Mutex r11 = r0.c
            ads_mobile_sdk.ey3 r12 = r0.b
            ads_mobile_sdk.tz1 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r13)
            r13 = r11
            r11 = r0
            goto L4e
        L32:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L3a:
            kotlin.ResultKt.throwOnFailure(r13)
            kotlinx.coroutines.sync.Mutex r13 = r11.d
            r0.a = r11
            r0.b = r12
            r0.c = r13
            r0.f = r3
            java.lang.Object r0 = r13.lock(r4, r0)
            if (r0 != r1) goto L4e
            return r1
        L4e:
            java.util.Optional r0 = r11.b     // Catch: java.lang.Throwable -> L7a
            java.lang.Object r0 = kotlin.jvm.optionals.OptionalsKt.getOrNull(r0)     // Catch: java.lang.Throwable -> L7a
            ads_mobile_sdk.r31 r0 = (ads_mobile_sdk.r31) r0     // Catch: java.lang.Throwable -> L7a
            if (r0 != 0) goto L59
            goto L74
        L59:
            android.graphics.Rect r12 = r12.d     // Catch: java.lang.Throwable -> L7a
            android.graphics.Rect r1 = r11.e     // Catch: java.lang.Throwable -> L7a
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r12, r1)     // Catch: java.lang.Throwable -> L7a
            if (r1 == 0) goto L64
            goto L74
        L64:
            r11.e = r12     // Catch: java.lang.Throwable -> L7a
            kotlinx.coroutines.CoroutineScope r5 = r11.c     // Catch: java.lang.Throwable -> L7a
            ads_mobile_sdk.sz1 r8 = new ads_mobile_sdk.sz1     // Catch: java.lang.Throwable -> L7a
            r8.<init>(r11, r0, r12, r4)     // Catch: java.lang.Throwable -> L7a
            r9 = 3
            r10 = 0
            r6 = 0
            r7 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L7a
        L74:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L7a
            r13.unlock(r4)
            return r11
        L7a:
            r0 = move-exception
            r11 = r0
            r13.unlock(r4)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.tz1.a(ads_mobile_sdk.tz1, ads_mobile_sdk.ey3, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
