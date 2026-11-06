package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class s53 extends ContinuationImpl {
    public t53 a;
    public String b;
    public CompletableDeferred c;
    public Mutex d;
    public /* synthetic */ Object e;
    public final /* synthetic */ t53 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s53(t53 t53Var, Continuation continuation) {
        super(continuation);
        this.f = t53Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a((String) null, (CompletableDeferred) null, this);
    }
}
