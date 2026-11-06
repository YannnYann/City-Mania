package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class xe extends ContinuationImpl {
    public hf a;
    public Object b;
    public Collection c;
    public Iterator d;
    public Map.Entry e;
    public Mutex f;
    public Collection g;
    public /* synthetic */ Object h;
    public final /* synthetic */ hf i;
    public int j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xe(hf hfVar, Continuation continuation) {
        super(continuation);
        this.i = hfVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.h = obj;
        this.j |= Integer.MIN_VALUE;
        return hf.a(this.i, (AdapterInitializationConfig) null, (Set) null, this);
    }
}
