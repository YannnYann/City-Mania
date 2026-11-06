package ads_mobile_sdk;

import android.os.Bundle;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class r20 extends ContinuationImpl {
    public g30 a;
    public Object b;
    public Mutex c;
    public g30 d;
    public Bundle e;
    public boolean f;
    public /* synthetic */ Object g;
    public final /* synthetic */ g30 h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r20(g30 g30Var, Continuation continuation) {
        super(continuation);
        this.h = g30Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return g30.a(this.h, false, false, (Continuation) this);
    }
}
