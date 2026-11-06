package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class ef extends ContinuationImpl {
    public hf a;
    public AdapterStatus b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ hf e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ef(hf hfVar, Continuation continuation) {
        super(continuation);
        this.e = hfVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return hf.a(this.e, (ke) null, this);
    }
}
