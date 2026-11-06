package ads_mobile_sdk;

import java.util.LinkedHashSet;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class el2 extends ContinuationImpl {
    public gl2 a;
    public LinkedHashSet b;
    public /* synthetic */ Object c;
    public final /* synthetic */ gl2 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public el2(gl2 gl2Var, Continuation continuation) {
        super(continuation);
        this.d = gl2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return gl2.a(this.d, this);
    }
}
