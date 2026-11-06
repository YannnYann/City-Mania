package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class wk2 extends ContinuationImpl {
    public al2 a;
    public AdRequest b;
    public j53 c;
    public String d;
    public om2 e;
    public ks3 f;
    public rk2 g;
    public rr3 h;
    public rr3 i;
    public int j;
    public /* synthetic */ Object k;
    public final /* synthetic */ al2 l;
    public int m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wk2(al2 al2Var, Continuation continuation) {
        super(continuation);
        this.l = al2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.k = obj;
        this.m |= Integer.MIN_VALUE;
        return this.l.a(null, null, null, 0, null, this);
    }
}
