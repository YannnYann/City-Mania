package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;

/* JADX INFO: loaded from: classes.dex */
public final class qh0 implements rf3 {
    public final vf0 a;
    public SignalRequest b;
    public BaseRequest c;
    public Boolean d;
    public Boolean e;
    public NativeRequest f;

    @Override // ads_mobile_sdk.rf3
    public final sf3 a() {
        kq2.a(this.b, SignalRequest.class);
        kq2.a(this.c, BaseRequest.class);
        kq2.a(this.d, Boolean.class);
        kq2.a(this.e, Boolean.class);
        kq2.a(this.f, NativeRequest.class);
        return new rh0(this.a, this.b, this.c, this.d, this.e, this.f);
    }

    @Override // ads_mobile_sdk.rf3
    public final rf3 b() {
        this.e = Boolean.FALSE;
        return this;
    }

    @Override // ads_mobile_sdk.rf3
    public final rf3 c() {
        this.d = Boolean.FALSE;
        return this;
    }

    @Override // ads_mobile_sdk.rf3
    public final rf3 a(BaseRequest baseRequest) {
        baseRequest.getClass();
        this.c = baseRequest;
        return this;
    }

    @Override // ads_mobile_sdk.rf3
    public final rf3 a(SignalRequest signalRequest) {
        signalRequest.getClass();
        this.b = signalRequest;
        return this;
    }

    public qh0(vf0 vf0Var) {
        this.a = vf0Var;
    }
}
