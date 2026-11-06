package ads_mobile_sdk;

import android.content.Intent;
import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class xg2 extends ContinuationImpl {
    public Object a;
    public r31 b;
    public Map c;
    public Object d;
    public Intent e;
    public int f;
    public int g;
    public boolean h;
    public /* synthetic */ Object i;
    public final /* synthetic */ ah2 j;
    public int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xg2(ah2 ah2Var, Continuation continuation) {
        super(continuation);
        this.j = ah2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.i = obj;
        this.k |= Integer.MIN_VALUE;
        return this.j.a((r31) null, (Map) null, this);
    }
}
