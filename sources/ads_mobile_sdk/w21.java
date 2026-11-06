package ads_mobile_sdk;

import java.util.UUID;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CompletableDeferred;

/* JADX INFO: loaded from: classes.dex */
public final class w21 extends ContinuationImpl {
    public r31 a;
    public Object b;
    public String c;
    public UUID d;
    public CompletableDeferred e;
    public /* synthetic */ Object f;
    public final /* synthetic */ r31 g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w21(r31 r31Var, Continuation continuation) {
        super(continuation);
        this.g = r31Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.a(null, null, null, this);
    }
}
