package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig;
import com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener;
import java.io.Closeable;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class te extends ContinuationImpl {
    public hf a;
    public Object b;
    public Object c;
    public Closeable d;
    public Object e;
    public Object f;
    public Object g;
    public Object h;
    public AdapterInitializationConfig i;
    public Mutex j;
    public /* synthetic */ Object k;
    public final /* synthetic */ hf l;
    public int m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public te(hf hfVar, Continuation continuation) {
        super(continuation);
        this.l = hfVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.k = obj;
        this.m |= Integer.MIN_VALUE;
        return hf.a(this.l, (AdapterInitializationConfig) null, (OnAdapterInitializationCompleteListener) null, this);
    }
}
