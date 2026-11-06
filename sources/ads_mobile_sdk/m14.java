package ads_mobile_sdk;

import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class m14 extends ContinuationImpl {
    public Object a;
    public Object b;
    public rr3 c;
    public rr3 d;
    public /* synthetic */ Object e;
    public final /* synthetic */ r14 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m14(r14 r14Var, Continuation continuation) {
        super(continuation);
        this.f = r14Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.b((List) null, this);
    }
}
