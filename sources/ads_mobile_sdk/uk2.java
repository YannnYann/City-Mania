package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class uk2 extends ContinuationImpl {
    public al2 a;
    public AdRequest b;
    public j53 c;
    public String d;
    public om2 e;
    public int f;
    public int g;
    public int h;
    public /* synthetic */ Object i;
    public final /* synthetic */ al2 j;
    public int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uk2(al2 al2Var, Continuation continuation) {
        super(continuation);
        this.j = al2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.i = obj;
        this.k |= Integer.MIN_VALUE;
        return al2.a(this.j, (AdRequest) null, (j53) null, (String) null, 0, (om2) null, this);
    }
}
