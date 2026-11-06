package ads_mobile_sdk;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.google.gson.JsonObject;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public final class tk0 implements nr3 {
    public final CoroutineScope a;
    public final ok0 b;
    public final ex0 c;
    public final String d;
    public final String e;
    public final JsonObject f;
    public final ks3 g;
    public PointF h;
    public PointF i;
    public qk0 j;
    public final int k;
    public Job l;

    public tk0(Context context, CoroutineScope backgroundScope, ok0 debugDialogManager, ex0 flags, String str, String str2, JsonObject jsonObject, ks3 traceMetaSet) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(debugDialogManager, "debugDialogManager");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        this.a = backgroundScope;
        this.b = debugDialogManager;
        this.c = flags;
        this.d = str;
        this.e = str2;
        this.f = jsonObject;
        this.g = traceMetaSet;
        this.h = new PointF(-1.0f, -1.0f);
        this.i = new PointF(-1.0f, -1.0f);
        this.j = qk0.d;
        this.k = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0085, code lost:
    
        if (ads_mobile_sdk.ok0.a(r1, r2, r3, r4, r5, r6) == r0) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.tk0 r7, kotlin.coroutines.Continuation r8) {
        /*
            r7.getClass()
            boolean r0 = r8 instanceof ads_mobile_sdk.sk0
            if (r0 == 0) goto L17
            r0 = r8
            ads_mobile_sdk.sk0 r0 = (ads_mobile_sdk.sk0) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L17
            int r1 = r1 - r2
            r0.d = r1
        L15:
            r6 = r0
            goto L1d
        L17:
            ads_mobile_sdk.sk0 r0 = new ads_mobile_sdk.sk0
            r0.<init>(r7, r8)
            goto L15
        L1d:
            java.lang.Object r8 = r6.b
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.d
            r2 = 1
            r3 = 2
            if (r1 == 0) goto L3f
            if (r1 == r2) goto L39
            if (r1 != r3) goto L31
            kotlin.ResultKt.throwOnFailure(r8)
            goto L88
        L31:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L39:
            ads_mobile_sdk.tk0 r7 = r6.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L6a
        L3f:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.ex0 r8 = r7.c
            r8.getClass()
            kotlin.time.Duration$Companion r1 = kotlin.time.Duration.Companion
            kotlin.time.DurationUnit r1 = kotlin.time.DurationUnit.SECONDS
            java.lang.String r4 = "key"
            java.lang.String r5 = "gads:debug_hold_gesture:time_millis"
            kotlin.time.Duration r1 = ads_mobile_sdk.wm2.a(r3, r1, r5, r4)
            ads_mobile_sdk.sr r4 = ads_mobile_sdk.yr.j
            java.lang.Object r8 = r8.a(r5, r1, r4)
            kotlin.time.Duration r8 = (kotlin.time.Duration) r8
            long r4 = r8.m2906unboximpl()
            r6.a = r7
            r6.d = r2
            java.lang.Object r8 = kotlinx.coroutines.DelayKt.m2937delayVtjQ1oo(r4, r6)
            if (r8 != r0) goto L6a
            goto L87
        L6a:
            ads_mobile_sdk.qk0 r8 = ads_mobile_sdk.qk0.c
            r7.j = r8
            ads_mobile_sdk.ok0 r1 = r7.b
            java.lang.String r2 = r7.d
            r8 = r3
            java.lang.String r3 = r7.e
            com.google.gson.JsonObject r4 = r7.f
            ads_mobile_sdk.ks3 r5 = r7.g
            r7 = 0
            r6.a = r7
            r6.d = r8
            r1.getClass()
            java.lang.Object r7 = ads_mobile_sdk.ok0.a(r1, r2, r3, r4, r5, r6)
            if (r7 != r0) goto L88
        L87:
            return r0
        L88:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.tk0.a(ads_mobile_sdk.tk0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final boolean a(float f, float f2, float f3, float f4) {
        return Math.abs(this.h.x - f) < ((float) this.k) && Math.abs(this.h.y - f2) < ((float) this.k) && Math.abs(this.i.x - f3) < ((float) this.k) && Math.abs(this.i.y - f4) < ((float) this.k);
    }

    public final void a(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int actionMasked = event.getActionMasked();
        int historySize = event.getHistorySize();
        int pointerCount = event.getPointerCount();
        if (actionMasked == 0) {
            this.j = qk0.a;
            this.h = new PointF(event.getX(), event.getY());
            return;
        }
        qk0 qk0Var = this.j;
        if (qk0Var == qk0.d) {
            return;
        }
        if (qk0Var == qk0.a && actionMasked == 5) {
            this.j = qk0.b;
            this.i = new PointF(event.getX(1), event.getY(1));
            CoroutineScope coroutineScope = this.a;
            rk0 block = new rk0(this, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            this.l = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            return;
        }
        if (qk0Var == qk0.b) {
            if (pointerCount == 2) {
                if (actionMasked != 2) {
                    return;
                }
                boolean z = false;
                int i = 0;
                while (true) {
                    if (i >= historySize) {
                        break;
                    }
                    if (!a(event.getHistoricalX(0, i), event.getHistoricalY(0, i), event.getHistoricalX(1, i), event.getHistoricalY(1, i))) {
                        z = true;
                        break;
                    }
                    i++;
                }
                if (a(event.getX(), event.getY(), event.getX(1), event.getY(1)) && !z) {
                    return;
                }
            }
            Job job = this.l;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, null, 1, null);
            }
            this.j = qk0.d;
        }
    }
}
