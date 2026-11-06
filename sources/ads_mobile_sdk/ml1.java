package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class ml1 extends ContinuationImpl {
    public Object a;
    public Object b;
    public Ref$BooleanRef c;
    public Mutex d;
    public /* synthetic */ Object e;
    public final /* synthetic */ cm1 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ml1(cm1 cm1Var, Continuation continuation) {
        super(continuation);
        this.f = cm1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a((OnAdapterInitializationCompleteListener) null, this);
    }
}
