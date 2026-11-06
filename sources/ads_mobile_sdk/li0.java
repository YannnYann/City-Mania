package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes.dex */
public final class li0 implements s03 {
    public final vf0 a;
    public AdRequest b;
    public BaseRequest c;
    public j53 d;
    public Boolean e;
    public Boolean f;

    @Override // ads_mobile_sdk.f03
    public final Object a(AdRequest adRequest) {
        adRequest.getClass();
        this.b = adRequest;
        return this;
    }

    public final mi0 b() {
        kq2.a(this.b, AdRequest.class);
        kq2.a(this.c, BaseRequest.class);
        kq2.a(this.d, j53.class);
        kq2.a(this.e, Boolean.class);
        kq2.a(this.f, Boolean.class);
        return new mi0(this.a, this.b, this.c, this.d, this.e, this.f);
    }

    @Override // ads_mobile_sdk.f03
    public final Object a(BaseRequest baseRequest) {
        baseRequest.getClass();
        this.c = baseRequest;
        return this;
    }

    @Override // ads_mobile_sdk.f03
    public final Object a(boolean z) {
        this.f = Boolean.valueOf(z);
        return this;
    }

    @Override // ads_mobile_sdk.f03
    public final Object b(boolean z) {
        this.e = Boolean.valueOf(z);
        return this;
    }

    @Override // ads_mobile_sdk.f03
    public final Object a(j53 j53Var) {
        j53Var.getClass();
        this.d = j53Var;
        return this;
    }

    public li0(vf0 vf0Var) {
        this.a = vf0Var;
    }
}
