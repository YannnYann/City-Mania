package ads_mobile_sdk;

import java.io.Closeable;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class qe extends ContinuationImpl {
    public hf a;
    public String b;
    public rr3 c;
    public Closeable d;
    public v01 e;
    public Mutex f;
    public /* synthetic */ Object g;
    public final /* synthetic */ hf h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qe(hf hfVar, Continuation continuation) {
        super(continuation);
        this.h = hfVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return hf.a(this.h, null, null, 0L, this);
    }
}
