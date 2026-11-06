package ads_mobile_sdk;

import java.io.Closeable;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CompletableDeferred;

/* JADX INFO: loaded from: classes.dex */
public final class k31 extends ContinuationImpl {
    public Object a;
    public Closeable b;
    public Object c;
    public CompletableDeferred d;
    public /* synthetic */ Object e;
    public final /* synthetic */ r31 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k31(r31 r31Var, Continuation continuation) {
        super(continuation);
        this.f = r31Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.c(null, this);
    }
}
