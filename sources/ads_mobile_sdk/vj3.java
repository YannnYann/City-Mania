package ads_mobile_sdk;

import com.google.common.util.concurrent.FutureCallback;

/* JADX INFO: loaded from: classes.dex */
public final class vj3 implements FutureCallback {
    public final /* synthetic */ wj3 a;

    @Override // com.google.common.util.concurrent.FutureCallback
    public final void onFailure(Throwable th) {
    }

    public vj3(wj3 wj3Var) {
        this.a = wj3Var;
    }

    @Override // com.google.common.util.concurrent.FutureCallback
    public final void onSuccess(Object obj) {
        qj3 qj3Var = (qj3) obj;
        st1 st1Var = (st1) this.a.c;
        synchronized (st1Var.n) {
            st1Var.q.a(qj3Var.b());
        }
    }
}
