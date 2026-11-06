package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class bn extends ContinuationImpl {
    public pn a;
    public AdapterInitializationConfig b;
    public /* synthetic */ Object c;
    public final /* synthetic */ pn d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bn(pn pnVar, Continuation continuation) {
        super(continuation);
        this.d = pnVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a((AdapterInitializationConfig) null, this);
    }
}
