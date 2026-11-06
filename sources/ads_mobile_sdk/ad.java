package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.banner.AdView;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAd;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class ad extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ AdLoadCallback b;
    public final /* synthetic */ BannerAd c;
    public final /* synthetic */ AdView d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ad(AdLoadCallback adLoadCallback, BannerAd bannerAd, AdView adView, Continuation continuation) {
        super(2, continuation);
        this.b = adLoadCallback;
        this.c = bannerAd;
        this.d = adView;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ad(this.b, this.c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ad) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            a01.a.getClass();
            CoroutineContext coroutineContext = (CoroutineContext) ((vf0) zz0.a()).w.get();
            com.google.android.libraries.ads.mobile.sdk.banner.a aVar = new com.google.android.libraries.ads.mobile.sdk.banner.a(this.d, this.c, null);
            this.a = 1;
            if (BuildersKt.withContext(coroutineContext, aVar, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        this.b.onAdLoaded(this.c);
        return Unit.INSTANCE;
    }
}
