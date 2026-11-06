package ads_mobile_sdk;

import android.net.Uri;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class cu1 extends ContinuationImpl {
    public du1 a;
    public Uri b;
    public i2 c;
    public Duration d;
    public String e;
    public String f;
    public String g;
    public /* synthetic */ Object h;
    public final /* synthetic */ du1 i;
    public int j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cu1(du1 du1Var, Continuation continuation) {
        super(continuation);
        this.i = du1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.h = obj;
        this.j |= Integer.MIN_VALUE;
        return this.i.a((Uri) null, (ec3) null, (i2) null, (Integer) null, (String) null, (Duration) null, (String) null, (eo2) null, (w91) null, (t91) null, (String) null, (String) null, this);
    }
}
