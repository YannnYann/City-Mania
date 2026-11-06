package ads_mobile_sdk;

import android.app.Activity;
import java.util.ArrayList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$IntRef;

/* JADX INFO: loaded from: classes.dex */
public final class dk0 extends ContinuationImpl {
    public ok0 a;
    public Activity b;
    public ArrayList c;
    public Ref$IntRef d;
    public Ref$IntRef e;
    public int f;
    public int g;
    public int h;
    public /* synthetic */ Object i;
    public final /* synthetic */ ok0 j;
    public int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dk0(ok0 ok0Var, Continuation continuation) {
        super(continuation);
        this.j = ok0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.i = obj;
        this.k |= Integer.MIN_VALUE;
        return this.j.a((Activity) null, this);
    }
}
