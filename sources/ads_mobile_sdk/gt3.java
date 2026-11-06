package ads_mobile_sdk;

import java.util.Collection;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class gt3 extends ContinuationImpl {
    public lt3 a;
    public Object b;
    public Collection c;
    public Object d;
    public Object e;
    public Integer f;
    public String g;
    public eo2 h;
    public /* synthetic */ Object i;
    public final /* synthetic */ lt3 j;
    public int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gt3(lt3 lt3Var, Continuation continuation) {
        super(continuation);
        this.j = lt3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.i = obj;
        this.k |= Integer.MIN_VALUE;
        return this.j.r(this);
    }
}
