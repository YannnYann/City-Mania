package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.initialization.ConfigLoaderRequest;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class f00 extends ContinuationImpl {
    public o00 a;
    public ConfigLoaderRequest b;
    public /* synthetic */ Object c;
    public final /* synthetic */ o00 d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f00(o00 o00Var, Continuation continuation) {
        super(continuation);
        this.d = o00Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.b((ConfigLoaderRequest) null, this);
    }
}
