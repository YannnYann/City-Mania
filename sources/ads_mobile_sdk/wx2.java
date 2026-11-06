package ads_mobile_sdk;

import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class wx2 extends ContinuationImpl {
    public yx2 a;
    public String b;
    public List c;
    public /* synthetic */ Object d;
    public final /* synthetic */ yx2 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wx2(yx2 yx2Var, Continuation continuation) {
        super(continuation);
        this.e = yx2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a((String) null, this);
    }
}
