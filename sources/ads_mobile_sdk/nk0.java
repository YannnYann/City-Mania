package ads_mobile_sdk;

import android.app.Activity;
import java.io.Closeable;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class nk0 extends ContinuationImpl {
    public Object a;
    public Closeable b;
    public rr3 c;
    public Activity d;
    public /* synthetic */ Object e;
    public final /* synthetic */ ok0 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nk0(ok0 ok0Var, Continuation continuation) {
        super(continuation);
        this.f = ok0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return ok0.b(this.f, this);
    }
}
