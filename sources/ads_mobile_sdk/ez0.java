package ads_mobile_sdk;

import android.content.Context;
import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import java.util.Optional;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public abstract class ez0 extends yx0 {
    public final f0 P;
    public final v3 Q;
    public boolean R;
    public boolean S;

    /* JADX WARN: Illegal instructions before constructor call */
    public ez0(Context applicationContext, CoroutineScope uiScope, CoroutineContext uiContext, CoroutineScope backgroundScope, CoroutineContext backgroundContext, ex0 flags, ur3 traceLogger, String afmaVersion, j53 requestType, zy commonConfiguration, i2 adConfiguration, f0 activityTracker, v3 adEventEmitter, df2 omidMonitor, o21 gmaUtil, j1 backButtonStateDelegate) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(omidMonitor, "omidMonitor");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(backButtonStateDelegate, "backButtonStateDelegate");
        Optional optionalEmpty = Optional.empty();
        Intrinsics.checkNotNullExpressionValue(optionalEmpty, "empty(...)");
        super(applicationContext, uiScope, uiContext, backgroundScope, backgroundContext, flags, traceLogger, afmaVersion, requestType, commonConfiguration, adConfiguration, omidMonitor, gmaUtil, backButtonStateDelegate, optionalEmpty);
        this.P = activityTracker;
        this.Q = adEventEmitter;
        this.R = true;
        this.S = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0071, code lost:
    
        if (r7.d(r0) == r1) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.ez0 r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.zy0
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.zy0 r0 = (ads_mobile_sdk.zy0) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.zy0 r0 = new ads_mobile_sdk.zy0
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3b
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            goto L74
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            ads_mobile_sdk.ez0 r7 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L4d
        L3b:
            kotlin.ResultKt.throwOnFailure(r8)
            r0.a = r7
            r0.d = r5
            ads_mobile_sdk.r31 r8 = r7.j()
            r8.p = r3
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            if (r8 != r1) goto L4d
            goto L73
        L4d:
            ads_mobile_sdk.ex0 r8 = r7.e
            r8.getClass()
            java.lang.String r2 = "key"
            java.lang.String r5 = "gad:interstitial_notify_publisher_without_delay"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r2)
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
            ads_mobile_sdk.ir r6 = ads_mobile_sdk.yr.b
            java.lang.Object r8 = r8.a(r5, r2, r6)
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 != 0) goto L77
            r0.a = r3
            r0.d = r4
            kotlin.Unit r7 = r7.d(r0)
            if (r7 != r1) goto L74
        L73:
            return r1
        L74:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L77:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ez0.a(ads_mobile_sdk.ez0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.yy0
    public Object b(Continuation continuation) {
        return a(this, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.ez0 r10, kotlin.coroutines.Continuation r11) throws java.lang.Throwable {
        /*
            boolean r0 = r11 instanceof ads_mobile_sdk.az0
            if (r0 == 0) goto L13
            r0 = r11
            ads_mobile_sdk.az0 r0 = (ads_mobile_sdk.az0) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.az0 r0 = new ads_mobile_sdk.az0
            r0.<init>(r10, r11)
        L18:
            java.lang.Object r11 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            ads_mobile_sdk.ez0 r10 = r0.a
            kotlin.ResultKt.throwOnFailure(r11)
            goto L44
        L2b:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L33:
            kotlin.ResultKt.throwOnFailure(r11)
            r0.a = r10
            r0.d = r3
            r10.getClass()
            java.lang.Object r11 = ads_mobile_sdk.yy0.a(r10, r0)
            if (r11 != r1) goto L44
            return r1
        L44:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 == 0) goto L75
            kotlinx.coroutines.CoroutineScope r4 = r10.d
            ads_mobile_sdk.bz0 r11 = new ads_mobile_sdk.bz0
            r0 = 0
            r11.<init>(r10, r0)
            kotlin.coroutines.EmptyCoroutineContext r5 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            java.lang.String r10 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r10)
            java.lang.String r10 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r10)
            java.lang.String r10 = "block"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r10)
            ads_mobile_sdk.ws3 r7 = new ads_mobile_sdk.ws3
            r7.<init>(r11, r0)
            r8 = 2
            r9 = 0
            r6 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r4, r5, r6, r7, r8, r9)
            java.lang.Boolean r10 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r10
        L75:
            r10 = 0
            java.lang.Boolean r10 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r10)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ez0.b(ads_mobile_sdk.ez0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.yy0
    public final Unit d(Continuation continuation) {
        if (this.S && this.m.get()) {
            CoroutineScope coroutineScope = this.d;
            cz0 block = new cz0(this, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.yy0
    public final Object e(Continuation continuation) {
        Object objA = a(new FullScreenContentError(FullScreenContentError.ErrorCode.INTERNAL_ERROR, "There was an internal error when attempting to show fullscreen content.", null), continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.yy0, ads_mobile_sdk.h0
    public final void onStop() {
        o();
    }

    @Override // ads_mobile_sdk.yy0, ads_mobile_sdk.h0
    public Object a(FullScreenContentError fullScreenContentError, Continuation continuation) {
        if (this.S) {
            Object objA = this.Q.a(fullScreenContentError, continuation);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.yx0, ads_mobile_sdk.yy0
    public Object a(View view, Continuation continuation) {
        return a(this, view, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0071, code lost:
    
        if (r6.p(r0) == r1) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.ez0 r6, android.view.View r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.dz0
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.dz0 r0 = (ads_mobile_sdk.dz0) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.dz0 r0 = new ads_mobile_sdk.dz0
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L43
            if (r2 == r5) goto L3d
            if (r2 == r4) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r8)
            goto L74
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            ads_mobile_sdk.ez0 r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L62
        L3d:
            ads_mobile_sdk.ez0 r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L51
        L43:
            kotlin.ResultKt.throwOnFailure(r8)
            r0.a = r6
            r0.d = r5
            java.lang.Object r7 = super.a(r7, r0)
            if (r7 != r1) goto L51
            goto L73
        L51:
            boolean r7 = r6.R
            if (r7 == 0) goto L62
            ads_mobile_sdk.v3 r7 = r6.Q
            r0.a = r6
            r0.d = r4
            java.lang.Object r7 = r7.o(r0)
            if (r7 != r1) goto L62
            goto L73
        L62:
            boolean r7 = r6.S
            if (r7 == 0) goto L77
            ads_mobile_sdk.v3 r6 = r6.Q
            r7 = 0
            r0.a = r7
            r0.d = r3
            java.lang.Object r6 = r6.p(r0)
            if (r6 != r1) goto L74
        L73:
            return r1
        L74:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L77:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ez0.a(ads_mobile_sdk.ez0, android.view.View, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
