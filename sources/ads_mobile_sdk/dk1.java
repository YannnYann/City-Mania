package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class dk1 extends ContinuationImpl {
    public AdLoadCallback a;
    public /* synthetic */ Object b;
    public final /* synthetic */ ek1 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dk1(ek1 ek1Var, Continuation continuation) {
        super(continuation);
        this.c = ek1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.a((ck1) null, (Continuation) this);
    }
}
