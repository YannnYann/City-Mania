package ads_mobile_sdk;

import android.net.Uri;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class q24 extends ContinuationImpl {
    public s24 a;
    public Uri b;
    public String c;
    public String d;
    public /* synthetic */ Object e;
    public final /* synthetic */ s24 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q24(s24 s24Var, Continuation continuation) {
        super(continuation);
        this.f = s24Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a(null, this);
    }
}
