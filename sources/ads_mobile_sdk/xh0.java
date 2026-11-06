package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRequest;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes.dex */
public final class xh0 implements bz2 {
    public final vf0 a;
    public AdRequest b;
    public BaseRequest c;
    public j53 d;
    public Boolean e;
    public Boolean f;
    public BannerRequest g;
    public BannerAdRequest h;

    @Override // ads_mobile_sdk.f03
    public final Object b(boolean z) {
        this.e = Boolean.valueOf(z);
        return this;
    }

    public xh0(vf0 vf0Var) {
        this.a = vf0Var;
    }

    @Override // ads_mobile_sdk.bz2
    public final cz2 a() {
        kq2.a(this.b, AdRequest.class);
        kq2.a(this.c, BaseRequest.class);
        kq2.a(this.d, j53.class);
        kq2.a(this.e, Boolean.class);
        kq2.a(this.f, Boolean.class);
        kq2.a(this.g, BannerRequest.class);
        kq2.a(this.h, BannerAdRequest.class);
        return new yh0(this.a, this.c, this.d, this.e, this.f, this.h);
    }

    @Override // ads_mobile_sdk.f03
    public final Object a(AdRequest adRequest) {
        adRequest.getClass();
        this.b = adRequest;
        return this;
    }

    @Override // ads_mobile_sdk.bz2
    public final bz2 a(BannerAdRequest bannerAdRequest) {
        bannerAdRequest.getClass();
        this.h = bannerAdRequest;
        return this;
    }

    @Override // ads_mobile_sdk.bz2
    public final bz2 a(BannerRequest bannerRequest) {
        bannerRequest.getClass();
        this.g = bannerRequest;
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
        this.f = Boolean.valueOf(z);
        return this;
    }

    @Override // ads_mobile_sdk.f03
    public final Object a(j53 j53Var) {
        this.d = j53.f;
        return this;
    }
}
