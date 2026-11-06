package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.initialization.ConfigLoaderRequest;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class vz extends ContinuationImpl {
    public o00 a;
    public ConfigLoaderRequest b;
    public e81 c;
    public /* synthetic */ Object d;
    public final /* synthetic */ o00 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vz(o00 o00Var, Continuation continuation) {
        super(continuation);
        this.e = o00Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a((ConfigLoaderRequest) null, this);
    }
}
