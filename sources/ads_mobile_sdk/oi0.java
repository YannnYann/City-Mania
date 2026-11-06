package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes.dex */
public final class oi0 implements f03 {
    public final vf0 a;
    public AdRequest b;
    public BaseRequest c;
    public Boolean e;
    public Boolean f;

    @Override // ads_mobile_sdk.f03
    public final Object a(j53 j53Var) {
        throw null;
    }

    @Override // ads_mobile_sdk.f03
    public final Object a(AdRequest adRequest) {
        adRequest.getClass();
        this.b = adRequest;
        return this;
    }

    @Override // ads_mobile_sdk.f03
    public final Object b(boolean z) {
        this.e = Boolean.FALSE;
        return this;
    }

    @Override // ads_mobile_sdk.f03
    public final Object a(BaseRequest baseRequest) {
        baseRequest.getClass();
        this.c = baseRequest;
        return this;
    }

    @Override // ads_mobile_sdk.f03
    public final Object a(boolean z) {
        this.f = Boolean.TRUE;
        return this;
    }

    public oi0(vf0 vf0Var) {
        this.a = vf0Var;
    }
}
