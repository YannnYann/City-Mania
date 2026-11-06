package ads_mobile_sdk;

import java.util.Collection;
import java.util.Iterator;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class et3 extends ContinuationImpl {
    public lt3 a;
    public String b;
    public Collection c;
    public Iterator d;
    public Collection e;
    public /* synthetic */ Object f;
    public final /* synthetic */ lt3 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public et3(lt3 lt3Var, Continuation continuation) {
        super(continuation);
        this.g = lt3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.o(this);
    }
}
