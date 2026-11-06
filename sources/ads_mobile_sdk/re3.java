package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class re3 extends ContinuationImpl {
    public xe3 a;
    public CompletableDeferred b;
    public Mutex c;
    public boolean d;
    public /* synthetic */ Object e;
    public final /* synthetic */ xe3 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public re3(xe3 xe3Var, Continuation continuation) {
        super(continuation);
        this.f = xe3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.b(false, this);
    }
}
