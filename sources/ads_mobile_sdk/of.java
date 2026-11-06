package ads_mobile_sdk;

import java.util.LinkedHashMap;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class of extends ContinuationImpl {
    public pf a;
    public LinkedHashMap b;
    public /* synthetic */ Object c;
    public final /* synthetic */ pf d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public of(pf pfVar, Continuation continuation) {
        super(continuation);
        this.d = pfVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.s(this);
    }
}
