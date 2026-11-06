package ads_mobile_sdk;

import com.google.gson.JsonObject;
import java.util.Collection;
import java.util.Iterator;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class d52 extends ContinuationImpl {
    public Collection a;
    public Iterator b;
    public /* synthetic */ Object c;
    public final /* synthetic */ g52 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d52(g52 g52Var, Continuation continuation) {
        super(continuation);
        this.d = g52Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a((JsonObject) null, (String) null, this);
    }
}
