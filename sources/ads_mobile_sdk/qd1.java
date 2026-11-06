package ads_mobile_sdk;

import com.google.gson.JsonArray;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class qd1 extends ContinuationImpl {
    public rd1 a;
    public JsonArray b;
    public /* synthetic */ Object c;
    public final /* synthetic */ rd1 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qd1(rd1 rd1Var, Continuation continuation) {
        super(continuation);
        this.d = rd1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return rd1.a(this.d, this);
    }
}
