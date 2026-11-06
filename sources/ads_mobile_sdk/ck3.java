package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ck3 extends ContinuationImpl {
    public sh3 a;
    public Signals b;
    public /* synthetic */ Object c;
    public final /* synthetic */ com.google.android.libraries.ads.mobile.sdk.internal.signals.a d;
    public int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ck3(com.google.android.libraries.ads.mobile.sdk.internal.signals.a aVar, Continuation continuation) {
        super(continuation);
        this.d = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return this.d.a(null, null, this);
    }
}
