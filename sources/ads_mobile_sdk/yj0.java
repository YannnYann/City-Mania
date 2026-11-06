package ads_mobile_sdk;

import android.app.Activity;
import java.io.Closeable;
import java.util.ArrayList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class yj0 extends ContinuationImpl {
    public Object a;
    public Closeable b;
    public Closeable c;
    public Activity d;
    public ArrayList e;
    public int f;
    public int g;
    public int h;
    public /* synthetic */ Object i;
    public final /* synthetic */ ok0 j;
    public int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yj0(ok0 ok0Var, Continuation continuation) {
        super(continuation);
        this.j = ok0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.i = obj;
        this.k |= Integer.MIN_VALUE;
        return this.j.e(this);
    }
}
