package ads_mobile_sdk;

import com.ironsource.C3522b4;
import java.util.LinkedHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class s93 implements ai1, vm2 {
    public final e01 a;
    public final j53 b;
    public final ex0 c;
    public final o93 d;
    public final Mutex e;
    public final AtomicBoolean f;
    public final AtomicBoolean g;
    public final AtomicBoolean h;
    public final i80 i;
    public final LinkedHashMap j;

    public s93(String afmaVersion, i2 adConfiguration, o21 gmaUtil, e01 httpClient, j53 requestType, ex0 flags) {
        String str;
        String str2;
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = httpClient;
        this.b = requestType;
        this.c = flags;
        o93 o93Var = adConfiguration.o0;
        this.d = o93Var;
        this.e = MutexKt.Mutex$default(false, 1, null);
        this.f = new AtomicBoolean(false);
        this.g = new AtomicBoolean(false);
        this.h = new AtomicBoolean(false);
        i80 i80VarH = ra0.v().h();
        vc1 vc1Var = adConfiguration.J;
        String str3 = "";
        i80 i80VarC = i80VarH.c((vc1Var == null || (str2 = vc1Var.c) == null) ? "" : str2);
        vc1 vc1Var2 = adConfiguration.J;
        if (vc1Var2 != null && (str = vc1Var2.c) != null) {
            str3 = str;
        }
        i80 i80VarB = i80VarC.b(str3);
        j80 j80VarV = k80.v();
        Intrinsics.checkNotNullExpressionValue(j80VarV, "newBuilder(...)");
        qx qxVarA = px.a(j80VarV);
        qxVarA.a(o93Var.a);
        Unit unit = Unit.INSTANCE;
        i80 i80VarA = i80VarB.a(qxVarA.a());
        z90 z90VarV = aa0.v();
        Intrinsics.checkNotNullExpressionValue(z90VarV, "newBuilder(...)");
        sx sxVarA = rx.a(z90VarV);
        sxVarA.a(afmaVersion);
        sxVarA.a(gmaUtil.c());
        this.i = i80VarA.a(sxVarA.a());
        this.j = new LinkedHashMap();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.s93 r16, java.lang.String r17, ads_mobile_sdk.w90 r18, java.util.Map r19, kotlin.coroutines.Continuation r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 350
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.s93.a(ads_mobile_sdk.s93, java.lang.String, ads_mobile_sdk.w90, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00dd, code lost:
    
        if (ads_mobile_sdk.e01.a(r1, r9, (kotlin.time.Duration) null, false, (kotlin.coroutines.Continuation) r5, 30) == r0) goto L44;
     */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object s(kotlin.coroutines.Continuation r9) {
        /*
            Method dump skipped, instruction units count: 231
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.s93.s(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.vm2
    public final Object b(Continuation continuation) {
        Object objS = s(continuation);
        return objS == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objS : Unit.INSTANCE;
    }

    public final Object b(String str, Continuation continuation) throws Throwable {
        f01.b("Blocked click action", null);
        this.h.set(true);
        Object objA = a(this, str, w90.AD_RESOURCE_AUTO_CLICK_DESTINATION, MapsKt__MapsKt.emptyMap(), continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    public final boolean f() {
        j53 j53Var;
        ex0 ex0Var = this.c;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:native_click_protection:enabled", C3522b4.i.W);
        return (!((Boolean) ex0Var.a("gads:native_click_protection:enabled", Boolean.FALSE, yr.b)).booleanValue() && ((j53Var = this.b) == j53.i || j53Var == j53.g)) || !this.d.d || this.g.get();
    }

    @Override // ads_mobile_sdk.ai1
    public final Object a(Continuation continuation) {
        Object objS = s(continuation);
        return objS == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objS : Unit.INSTANCE;
    }

    public final Object a(String str, xg2 xg2Var) {
        return a(this, str, xg2Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.s93 r5, java.lang.String r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof ads_mobile_sdk.r93
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.r93 r0 = (ads_mobile_sdk.r93) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.r93 r0 = new ads_mobile_sdk.r93
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
            ads_mobile_sdk.s93 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4e
        L30:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L38:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.sync.Mutex r7 = r5.e
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
            ads_mobile_sdk.i80 r7 = r0.i     // Catch: java.lang.Throwable -> L59
            r7.a(r6)     // Catch: java.lang.Throwable -> L59
            r5.unlock(r4)
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L59:
            r6 = move-exception
            r5.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.s93.a(ads_mobile_sdk.s93, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
