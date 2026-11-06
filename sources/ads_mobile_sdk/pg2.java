package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import java.util.Optional;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class pg2 extends ez0 {
    public final Optional T;
    public i04 U;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pg2(Context applicationContext, CoroutineScope uiScope, CoroutineContext uiContext, CoroutineScope backgroundScope, CoroutineContext backgroundContext, ex0 flags, ur3 traceLogger, String afmaVersion, Optional adWebViewContainer, j53 requestType, zy commonConfiguration, i2 adConfiguration, f0 activityTracker, v3 adEventEmitter, df2 omidMonitor, o21 gmaUtil, j1 backButtonStateDelegate) {
        super(applicationContext, uiScope, uiContext, backgroundScope, backgroundContext, flags, traceLogger, afmaVersion, requestType, commonConfiguration, adConfiguration, activityTracker, adEventEmitter, omidMonitor, gmaUtil, backButtonStateDelegate);
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(adWebViewContainer, "adWebViewContainer");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(omidMonitor, "omidMonitor");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(backButtonStateDelegate, "backButtonStateDelegate");
        this.T = adWebViewContainer;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0063, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r5.c, new ads_mobile_sdk.mg2(r5, null), r0) == r1) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.pg2 r5, kotlin.coroutines.Continuation r6) throws java.lang.Throwable {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.lg2
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.lg2 r0 = (ads_mobile_sdk.lg2) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.lg2 r0 = new ads_mobile_sdk.lg2
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r6)
            goto L66
        L2c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L34:
            ads_mobile_sdk.pg2 r5 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4b
        L3a:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.a = r5
            r0.d = r4
            r5.getClass()
            java.lang.Object r6 = ads_mobile_sdk.ez0.b(r5, r0)
            if (r6 != r1) goto L4b
            goto L65
        L4b:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L6b
            r6 = 0
            r0.a = r6
            r0.d = r3
            kotlin.coroutines.CoroutineContext r2 = r5.c
            ads_mobile_sdk.mg2 r3 = new ads_mobile_sdk.mg2
            r3.<init>(r5, r6)
            java.lang.Object r5 = kotlinx.coroutines.BuildersKt.withContext(r2, r3, r0)
            if (r5 != r1) goto L66
        L65:
            return r1
        L66:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r5
        L6b:
            r5 = 0
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pg2.a(ads_mobile_sdk.pg2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.yy0
    public final Object c(Continuation continuation) {
        return a(this, continuation);
    }

    @Override // ads_mobile_sdk.ez0, ads_mobile_sdk.yy0, ads_mobile_sdk.h0
    public final Object a(FullScreenContentError fullScreenContentError, Continuation continuation) {
        return a(this, fullScreenContentError, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x005e, code lost:
    
        if (super.a(r7, r0) == r1) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.pg2 r6, com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.ng2
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.ng2 r0 = (ads_mobile_sdk.ng2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ng2 r0 = new ads_mobile_sdk.ng2
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            goto L61
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError r7 = r0.b
            ads_mobile_sdk.pg2 r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L54
        L3d:
            kotlin.ResultKt.throwOnFailure(r8)
            r0.a = r6
            r0.b = r7
            r0.e = r4
            kotlin.coroutines.CoroutineContext r8 = r6.c
            ads_mobile_sdk.mg2 r2 = new ads_mobile_sdk.mg2
            r2.<init>(r6, r5)
            java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r8, r2, r0)
            if (r8 != r1) goto L54
            goto L60
        L54:
            r0.a = r5
            r0.b = r5
            r0.e = r3
            java.lang.Object r6 = super.a(r7, r0)
            if (r6 != r1) goto L61
        L60:
            return r1
        L61:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pg2.a(ads_mobile_sdk.pg2, com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
