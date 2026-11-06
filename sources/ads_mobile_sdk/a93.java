package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class a93 extends ContinuationImpl {
    public Object a;
    public Object b;
    public BaseRequest c;
    public Map d;
    public j53 e;
    public AdSize f;
    public rr3 g;
    public rr3 h;
    public /* synthetic */ Object i;
    public final /* synthetic */ b93 j;
    public int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a93(b93 b93Var, Continuation continuation) {
        super(continuation);
        this.j = b93Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.i = obj;
        this.k |= Integer.MIN_VALUE;
        return this.j.a((Map.Entry) null, (BaseRequest) null, (Map) null, (j53) null, (AdSize) null, this);
    }
}
