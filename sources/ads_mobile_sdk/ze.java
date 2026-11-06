package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class ze extends ContinuationImpl {
    public hf a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;
    public Object f;
    public Mutex g;
    public long h;
    public /* synthetic */ Object i;
    public final /* synthetic */ hf j;
    public int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ze(hf hfVar, Continuation continuation) {
        super(continuation);
        this.j = hfVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.i = obj;
        this.k |= Integer.MIN_VALUE;
        return this.j.a((jf) null, (String) null, (be) null, this);
    }
}
