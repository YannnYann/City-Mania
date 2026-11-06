package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class vk2 extends ContinuationImpl {
    public al2 a;
    public AdRequest b;
    public j53 c;
    public Object d;
    public Object e;
    public Object f;
    public i2 g;
    public int h;
    public int i;
    public /* synthetic */ Object j;
    public final /* synthetic */ al2 k;
    public int l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vk2(al2 al2Var, Continuation continuation) {
        super(continuation);
        this.k = al2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.j = obj;
        this.l |= Integer.MIN_VALUE;
        return this.k.a((AdRequest) null, (j53) null, (String) null, 0, (rk2) null, (om2) null, this);
    }
}
