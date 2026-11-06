package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.VideoController;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class l41 extends SuspendLambda implements Function2 {
    public final /* synthetic */ q41 a;
    public final /* synthetic */ k41 b;
    public final /* synthetic */ k41 c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ boolean e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l41(q41 q41Var, k41 k41Var, k41 k41Var2, boolean z, boolean z2, Continuation continuation) {
        super(2, continuation);
        this.a = q41Var;
        this.b = k41Var;
        this.c = k41Var2;
        this.d = z;
        this.e = z2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new l41(this.a, this.b, this.c, this.d, this.e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((l41) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Unit unit;
        VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks;
        VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks2;
        VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks3;
        VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks4;
        VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks5;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        q41 q41Var = this.a;
        Object obj2 = q41Var.f;
        k41 k41Var = this.b;
        k41 k41Var2 = this.c;
        boolean z = this.d;
        boolean z2 = this.e;
        synchronized (obj2) {
            boolean z3 = k41Var != k41Var2;
            try {
                boolean z4 = q41Var.k;
                boolean z5 = !z4 && k41Var2 == k41.c;
                boolean z6 = z3 && k41Var2 == k41.c;
                boolean z7 = z3 && k41Var2 == k41.d;
                boolean z8 = z3 && k41Var2 == k41.e;
                boolean z9 = z != z2;
                q41Var.k = z4 || z5;
                if (z5 && (videoLifecycleCallbacks5 = q41Var.getVideoLifecycleCallbacks()) != null) {
                    videoLifecycleCallbacks5.onVideoStart();
                }
                if (z6 && (videoLifecycleCallbacks4 = q41Var.getVideoLifecycleCallbacks()) != null) {
                    videoLifecycleCallbacks4.onVideoPlay();
                }
                if (z7 && (videoLifecycleCallbacks3 = q41Var.getVideoLifecycleCallbacks()) != null) {
                    videoLifecycleCallbacks3.onVideoPause();
                }
                if (z8 && (videoLifecycleCallbacks2 = q41Var.getVideoLifecycleCallbacks()) != null) {
                    videoLifecycleCallbacks2.onVideoEnd();
                }
                if (z9 && (videoLifecycleCallbacks = q41Var.getVideoLifecycleCallbacks()) != null) {
                    videoLifecycleCallbacks.onVideoMute(z2);
                }
                unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return unit;
    }
}
