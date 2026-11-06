package ads_mobile_sdk;

import android.net.Uri;
import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class x53 extends ContinuationImpl {
    public c63 a;
    public Uri b;
    public ha2 c;
    public String d;
    public Map e;
    public v3 f;
    public i2 g;
    public Boolean h;
    public ks3 i;
    public int j;
    public long k;
    public /* synthetic */ Object l;
    public final /* synthetic */ c63 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x53(c63 c63Var, Continuation continuation) {
        super(continuation);
        this.m = c63Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.a(null, null, 0, 0L, null, null, null, null, null, null, this);
    }
}
