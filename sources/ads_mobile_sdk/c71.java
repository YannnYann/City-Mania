package ads_mobile_sdk;

import java.util.UUID;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import okhttp3.Response;

/* JADX INFO: loaded from: classes.dex */
public final class c71 extends ContinuationImpl {
    public o71 a;
    public Response b;
    public UUID c;
    public /* synthetic */ Object d;
    public final /* synthetic */ o71 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c71(o71 o71Var, Continuation continuation) {
        super(continuation);
        this.e = o71Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a((Response) null, (UUID) null, this);
    }
}
