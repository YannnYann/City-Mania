package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRefreshCallback;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class py2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ wy2 a;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new py2(this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new py2(this.a, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        wy2 wy2Var = this.a;
        BannerAdRefreshCallback bannerAdRefreshCallback = (BannerAdRefreshCallback) wy2Var.v.getValue(wy2Var, wy2.C[0]);
        if (bannerAdRefreshCallback != null) {
            bannerAdRefreshCallback.onAdRefreshed();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public py2(wy2 wy2Var, Continuation continuation) {
        super(2, continuation);
        this.a = wy2Var;
    }
}
