package ads_mobile_sdk;

import android.app.Activity;
import java.io.Closeable;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class mk0 extends ContinuationImpl {
    public Object a;
    public Closeable b;
    public Closeable c;
    public Activity d;
    public e01 e;
    public boolean f;
    public /* synthetic */ Object g;
    public final /* synthetic */ ok0 h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mk0(ok0 ok0Var, Continuation continuation) {
        super(continuation);
        this.h = ok0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return ok0.a(this.h, this);
    }
}
