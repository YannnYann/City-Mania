package ads_mobile_sdk;

import android.content.Context;
import android.view.View;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt__JobKt;

/* JADX INFO: loaded from: classes.dex */
public final class kd2 extends nc1 {
    public final Context c;
    public final CoroutineContext d;
    public final CoroutineScope e;
    public final ur3 f;
    public final g83 g;
    public final String h;
    public final CompletableJob i;
    public final bj2 j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kd2(Context applicationContext, CoroutineContext uiContext, CoroutineScope backgroundScope, ur3 traceLogger, g83 rootTraceCreator, String gmaVersion) {
        super((s11) null, 3);
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(gmaVersion, "gmaVersion");
        this.c = applicationContext;
        this.d = uiContext;
        this.e = backgroundScope;
        this.f = traceLogger;
        this.g = rootTraceCreator;
        this.h = gmaVersion;
        this.i = JobKt__JobKt.Job$default(null, 1, null);
        this.j = bj2.a("Google", gmaVersion);
    }

    @Override // ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        CoroutineScope coroutineScope = this.e;
        hd2 block = new hd2(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return new q01(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.kd2 r5, kotlin.coroutines.Continuation r6) {
        /*
            r5.getClass()
            boolean r0 = r6 instanceof ads_mobile_sdk.cd2
            if (r0 == 0) goto L16
            r0 = r6
            ads_mobile_sdk.cd2 r0 = (ads_mobile_sdk.cd2) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.c = r1
            goto L1b
        L16:
            ads_mobile_sdk.cd2 r0 = new ads_mobile_sdk.cd2
            r0.<init>(r5, r6)
        L1b:
            java.lang.Object r6 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L35
            if (r2 != r4) goto L2d
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4d
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.ur3 r6 = r5.f
            ads_mobile_sdk.ed2 r2 = new ads_mobile_sdk.ed2
            r2.<init>(r5, r3)
            r0.c = r4
            r6.getClass()
            java.lang.String r5 = "ActivateOmid"
            java.lang.Object r5 = ads_mobile_sdk.ur3.a(r6, r5, r2, r0)
            if (r5 != r1) goto L4d
            return r1
        L4d:
            ads_mobile_sdk.me2 r5 = ads_mobile_sdk.jd2.a
            boolean r5 = r5.a
            if (r5 != 0) goto L59
            java.lang.String r5 = "OMSDK failed to activate."
            r6 = 6
            ads_mobile_sdk.xs3.a(r5, r3, r6)
        L59:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.kd2.a(ads_mobile_sdk.kd2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final String g() {
        return (String) this.f.a("GetOmidVersion", bd2.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.kd2 r6, ads_mobile_sdk.r31 r7, ads_mobile_sdk.xh2 r8, ads_mobile_sdk.x91 r9, ads_mobile_sdk.l40 r10, ads_mobile_sdk.xh2 r11, java.lang.String r12, kotlin.coroutines.Continuation r13) {
        /*
            boolean r1 = r13 instanceof ads_mobile_sdk.uc2
            if (r1 == 0) goto L13
            r1 = r13
            ads_mobile_sdk.uc2 r1 = (ads_mobile_sdk.uc2) r1
            int r2 = r1.j
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L13
            int r2 = r2 - r3
            r1.j = r2
            goto L18
        L13:
            ads_mobile_sdk.uc2 r1 = new ads_mobile_sdk.uc2
            r1.<init>(r6, r13)
        L18:
            java.lang.Object r0 = r1.h
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r1.j
            r4 = 1
            if (r3 == 0) goto L44
            if (r3 != r4) goto L3c
            java.lang.String r6 = r1.g
            ads_mobile_sdk.xh2 r7 = r1.f
            ads_mobile_sdk.l40 r10 = r1.e
            ads_mobile_sdk.x91 r9 = r1.d
            ads_mobile_sdk.xh2 r8 = r1.c
            ads_mobile_sdk.r31 r2 = r1.b
            ads_mobile_sdk.kd2 r1 = r1.a
            kotlin.ResultKt.throwOnFailure(r0)
            r5 = r6
            r3 = r7
            r6 = r8
            r7 = r1
            r8 = r2
            goto L66
        L3c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L44:
            kotlin.ResultKt.throwOnFailure(r0)
            kotlinx.coroutines.CompletableJob r0 = r6.i
            r1.a = r6
            r1.b = r7
            r1.c = r8
            r1.d = r9
            r1.e = r10
            r1.f = r11
            r1.g = r12
            r1.j = r4
            java.lang.Object r0 = r0.join(r1)
            if (r0 != r2) goto L60
            return r2
        L60:
            r3 = r7
            r7 = r6
            r6 = r8
            r8 = r3
            r3 = r11
            r5 = r12
        L66:
            ads_mobile_sdk.me2 r0 = ads_mobile_sdk.jd2.a
            boolean r0 = r0.a
            if (r0 != 0) goto L6e
            r6 = 0
            return r6
        L6e:
            ads_mobile_sdk.ur3 r0 = r7.f
            ads_mobile_sdk.vc2 r1 = new ads_mobile_sdk.vc2
            r12 = r6
            r11 = r9
            r6 = r1
            r13 = r3
            r9 = r5
            r6.<init>(r7, r8, r9, r10, r11, r12, r13)
            java.lang.String r7 = "CreateOmidSession"
            java.lang.Object r6 = r0.a(r7, r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.kd2.a(ads_mobile_sdk.kd2, ads_mobile_sdk.r31, ads_mobile_sdk.xh2, ads_mobile_sdk.x91, ads_mobile_sdk.l40, ads_mobile_sdk.xh2, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.kd2 r7, ads_mobile_sdk.r31 r8, java.lang.String r9, java.lang.String r10, ads_mobile_sdk.l40 r11, ads_mobile_sdk.x91 r12, ads_mobile_sdk.xh2 r13, ads_mobile_sdk.xh2 r14, kotlin.coroutines.Continuation r15) {
        /*
            r0 = r15
            boolean r1 = r0 instanceof ads_mobile_sdk.xc2
            if (r1 == 0) goto L14
            r1 = r0
            ads_mobile_sdk.xc2 r1 = (ads_mobile_sdk.xc2) r1
            int r2 = r1.k
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L14
            int r2 = r2 - r3
            r1.k = r2
            goto L19
        L14:
            ads_mobile_sdk.xc2 r1 = new ads_mobile_sdk.xc2
            r1.<init>(r7, r15)
        L19:
            java.lang.Object r0 = r1.i
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r1.k
            r4 = 1
            if (r3 == 0) goto L48
            if (r3 != r4) goto L40
            ads_mobile_sdk.xh2 r7 = r1.h
            ads_mobile_sdk.xh2 r8 = r1.g
            ads_mobile_sdk.x91 r9 = r1.f
            ads_mobile_sdk.l40 r10 = r1.e
            java.lang.String r2 = r1.d
            java.lang.String r3 = r1.c
            ads_mobile_sdk.r31 r4 = r1.b
            ads_mobile_sdk.kd2 r1 = r1.a
            kotlin.ResultKt.throwOnFailure(r0)
            r6 = r8
            r5 = r9
            r9 = r1
            r8 = r3
            r3 = r10
            r10 = r4
            goto L6e
        L40:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L48:
            kotlin.ResultKt.throwOnFailure(r0)
            kotlinx.coroutines.CompletableJob r0 = r7.i
            r1.a = r7
            r1.b = r8
            r1.c = r9
            r1.d = r10
            r1.e = r11
            r1.f = r12
            r1.g = r13
            r1.h = r14
            r1.k = r4
            java.lang.Object r0 = r0.join(r1)
            if (r0 != r2) goto L66
            return r2
        L66:
            r2 = r10
            r3 = r11
            r5 = r12
            r6 = r13
            r10 = r8
            r8 = r9
            r9 = r7
            r7 = r14
        L6e:
            ads_mobile_sdk.me2 r0 = ads_mobile_sdk.jd2.a
            boolean r0 = r0.a
            if (r0 != 0) goto L76
            r7 = 0
            return r7
        L76:
            ads_mobile_sdk.ur3 r0 = r9.f
            ads_mobile_sdk.yc2 r1 = new ads_mobile_sdk.yc2
            r15 = r7
            r7 = r1
            r11 = r2
            r12 = r3
            r13 = r5
            r14 = r6
            r7.<init>(r8, r9, r10, r11, r12, r13, r14, r15)
            java.lang.String r8 = "CreateJavascriptAdSession"
            java.lang.Object r7 = r0.a(r8, r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.kd2.a(ads_mobile_sdk.kd2, ads_mobile_sdk.r31, java.lang.String, java.lang.String, ads_mobile_sdk.l40, ads_mobile_sdk.x91, ads_mobile_sdk.xh2, ads_mobile_sdk.xh2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Unit a(k9 adSession, View view) {
        Intrinsics.checkNotNullParameter(adSession, "adSession");
        Intrinsics.checkNotNullParameter(view, "view");
        return (Unit) this.f.a("RegisterOmidAdView", new gd2(adSession, view));
    }
}
