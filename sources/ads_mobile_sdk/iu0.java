package ads_mobile_sdk;

import android.view.View;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class iu0 extends ContinuationImpl {
    public ju0 a;
    public /* synthetic */ Object b;
    public final /* synthetic */ ju0 c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public iu0(ju0 ju0Var, Continuation continuation) {
        super(continuation);
        this.c = ju0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.a((View) null, this);
    }
}
