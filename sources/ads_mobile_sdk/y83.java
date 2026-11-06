package ads_mobile_sdk;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class y83 extends ContinuationImpl {
    public b93 a;
    public Object b;
    public Mutex c;
    public /* synthetic */ Object d;
    public final /* synthetic */ b93 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y83(b93 b93Var, Continuation continuation) {
        super(continuation);
        this.e = b93Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a((Bundle) null, (Bundle) null, (AdSize) null, (String) null, (String) null, this);
    }
}
