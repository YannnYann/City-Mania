package ads_mobile_sdk;

import java.io.Closeable;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class ku extends ContinuationImpl {
    public Object a;
    public Closeable b;
    public rr3 c;
    public Ref$ObjectRef d;
    public Ref$ObjectRef e;
    public Mutex f;
    public /* synthetic */ Object g;
    public final /* synthetic */ ou h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ku(ou ouVar, Continuation continuation) {
        super(continuation);
        this.h = ouVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return ou.a(this.h, (Continuation) this);
    }
}
