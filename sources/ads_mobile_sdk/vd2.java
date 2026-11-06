package ads_mobile_sdk;

import android.view.View;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class vd2 extends ContinuationImpl {
    public je2 a;
    public View b;
    public tx0 c;
    public String d;
    public /* synthetic */ Object e;
    public final /* synthetic */ je2 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vd2(je2 je2Var, Continuation continuation) {
        super(continuation);
        this.f = je2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return je2.a(this.f, null, null, null, this);
    }
}
