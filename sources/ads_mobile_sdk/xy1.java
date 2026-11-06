package ads_mobile_sdk;

import android.view.ViewGroup;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class xy1 extends ContinuationImpl {
    public bz1 a;
    public ViewGroup b;
    public Object c;
    public Object d;
    public Object e;
    public r31 f;
    public h41 g;
    public Mutex h;
    public /* synthetic */ Object i;
    public final /* synthetic */ bz1 j;
    public int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xy1(bz1 bz1Var, Continuation continuation) {
        super(continuation);
        this.j = bz1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.i = obj;
        this.k |= Integer.MIN_VALUE;
        return this.j.a(null, null, null, null, null, null, this);
    }
}
