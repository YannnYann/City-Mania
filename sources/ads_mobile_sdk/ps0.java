package ads_mobile_sdk;

import android.net.Uri;
import android.os.Bundle;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class ps0 extends ContinuationImpl {
    public qs0 a;
    public is0 b;
    public Bundle c;
    public Uri.Builder d;
    public /* synthetic */ Object e;
    public final /* synthetic */ qs0 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ps0(qs0 qs0Var, Continuation continuation) {
        super(continuation);
        this.f = qs0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f.a(null, null, null, this);
    }
}
