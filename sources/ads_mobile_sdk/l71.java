package ads_mobile_sdk;

import java.util.UUID;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import okhttp3.OkHttpClient;
import okhttp3.Request;

/* JADX INFO: loaded from: classes.dex */
public final class l71 extends ContinuationImpl {
    public o71 a;
    public Object b;
    public Object c;
    public Object d;
    public UUID e;
    public boolean f;
    public boolean g;
    public int h;
    public /* synthetic */ Object i;
    public final /* synthetic */ o71 j;
    public int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l71(o71 o71Var, Continuation continuation) {
        super(continuation);
        this.j = o71Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.i = obj;
        this.k |= Integer.MIN_VALUE;
        return this.j.a((Request) null, (OkHttpClient) null, false, (f81) null, false, (Continuation) this);
    }
}
