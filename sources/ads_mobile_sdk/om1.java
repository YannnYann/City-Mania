package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoaderCallback;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class om1 extends ContinuationImpl {
    public NativeAdLoaderCallback a;
    public /* synthetic */ Object b;
    public final /* synthetic */ pm1 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public om1(pm1 pm1Var, Continuation continuation) {
        super(continuation);
        this.c = pm1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.a((xz1) null, (Continuation) this);
    }
}
