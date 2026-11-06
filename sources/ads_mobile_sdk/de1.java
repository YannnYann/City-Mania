package ads_mobile_sdk;

import com.google.gson.JsonObject;
import java.io.Closeable;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class de1 extends ContinuationImpl {
    public Object a;
    public Object b;
    public rr3 c;
    public Closeable d;
    public e81 e;
    public e01 f;
    public boolean g;
    public /* synthetic */ Object h;
    public final /* synthetic */ if1 i;
    public int j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public de1(if1 if1Var, Continuation continuation) {
        super(continuation);
        this.i = if1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.h = obj;
        this.j |= Integer.MIN_VALUE;
        return if1.a(this.i, (String) null, (JsonObject) null, this);
    }
}
