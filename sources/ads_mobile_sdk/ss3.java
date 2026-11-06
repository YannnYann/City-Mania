package ads_mobile_sdk;

import com.google.common.util.concurrent.FutureCallback;

/* JADX INFO: loaded from: classes.dex */
public final class ss3 implements FutureCallback {
    public final /* synthetic */ qr3 a;

    public ss3(qr3 qr3Var) {
        this.a = qr3Var;
    }

    @Override // com.google.common.util.concurrent.FutureCallback
    public final void onSuccess(Object obj) {
        this.a.a();
    }

    @Override // com.google.common.util.concurrent.FutureCallback
    public final void onFailure(Throwable th) {
        this.a.a(th);
        this.a.a();
    }
}
