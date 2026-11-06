package ads_mobile_sdk;

import java.io.Closeable;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class yj3 extends ContinuationImpl {
    public Object a;
    public Closeable b;
    public Object c;
    public /* synthetic */ Object d;
    public final /* synthetic */ com.google.android.libraries.ads.mobile.sdk.internal.signals.a e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yj3(com.google.android.libraries.ads.mobile.sdk.internal.signals.a aVar, Continuation continuation) {
        super(continuation);
        this.e = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return com.google.android.libraries.ads.mobile.sdk.internal.signals.a.b(this.e, this);
    }
}
