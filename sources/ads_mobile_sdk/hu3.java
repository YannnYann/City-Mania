package ads_mobile_sdk;

import android.view.View;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class hu3 extends ContinuationImpl {
    public nu3 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ nu3 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hu3(nu3 nu3Var, Continuation continuation) {
        super(continuation);
        this.c = nu3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return nu3.a(this.c, (View) null, (Continuation) this);
    }
}
