package ads_mobile_sdk;

import java.net.URL;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class e71 extends ContinuationImpl {
    public Object a;
    public Object b;
    public boolean c;
    public /* synthetic */ Object d;
    public final /* synthetic */ o71 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e71(o71 o71Var, Continuation continuation) {
        super(continuation);
        this.e = o71Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a((URL) null, (ss0) null, this);
    }
}
