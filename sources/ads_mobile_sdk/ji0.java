package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdRequest;
import kotlinx.coroutines.channels.Channel;

/* JADX INFO: loaded from: classes.dex */
public final class ji0 implements cz2 {
    public final vf0 a;
    public dw2 b;
    public vh1 c;
    public dw2 d;
    public dw2 e;
    public vh1 f;
    public vh1 g;
    public sh0 h;
    public dw2 i;
    public dw2 j;
    public dw2 k;
    public vh1 l;
    public dw2 m;

    public ji0(vf0 vf0Var, BaseRequest baseRequest, j53 j53Var, Boolean bool, Boolean bool2, BannerAdRequest bannerAdRequest, PictureInPictureAdRequest pictureInPictureAdRequest) {
        this.a = vf0Var;
        a(baseRequest, j53Var, bool, bool2, bannerAdRequest, pictureInPictureAdRequest);
    }

    @Override // ads_mobile_sdk.g03
    public final px2 a() {
        return (zz2) this.m.get();
    }

    @Override // ads_mobile_sdk.cz2, ads_mobile_sdk.g03
    public final wy2 a() {
        return (zz2) this.m.get();
    }

    public final void a(BaseRequest baseRequest, j53 j53Var, Boolean bool, Boolean bool2, BannerAdRequest bannerAdRequest, PictureInPictureAdRequest pictureInPictureAdRequest) {
        vf0 vf0Var = this.a;
        f33 f33Var = new f33(vf0Var.u, vf0Var.h, vf0Var.t);
        Object obj = do0.c;
        this.b = new do0(f33Var);
        this.c = vh1.a(bannerAdRequest);
        vh1 vh1Var = mj0.a;
        this.d = new do0(new m03(vh1Var, vh1Var, vh1Var));
        this.e = new do0(new l03(this.a.w0));
        this.f = vh1.a(j53Var);
        this.g = vh1.a(bool2);
        this.h = new sh0(vh1.a(baseRequest));
        vh1 vh1VarA = vh1.a(bool);
        vf0 vf0Var2 = this.a;
        this.i = new do0(new pd1(vf0Var2.P0, this.f, this.h, this.e, vh1VarA, vf0Var2.h, vf0Var2.t, vh1Var));
        do0 do0Var = new do0(i03.a);
        this.j = do0Var;
        this.k = new do0(new k03(this.a.u, do0Var));
        this.l = vh1.a(pictureInPictureAdRequest);
        vf0 vf0Var3 = this.a;
        do0 do0Var2 = new do0(new bo2(vf0Var3.E, vf0Var3.u2, vf0Var3.x, vf0Var3.F, vf0Var3.G, this.d, this.f, vf0Var3.s3));
        vf0 vf0Var4 = this.a;
        this.m = new do0(new c03(vf0Var4.f, vf0Var4.w, vf0Var4.b4, vf0Var4.c4, vf0Var4.u, vf0Var4.X3, this.b, vf0Var4.u2, this.c, this.d, vf0Var4.t, vf0Var4.G, this.e, this.f, vf0Var4.d, this.g, this.i, this.k, vf0Var4.e0, vf0Var4.E, this.l, do0Var2, vf0Var4.x, vf0Var4.s3));
    }

    @Override // ads_mobile_sdk.g03
    public final Channel c() {
        return (Channel) this.j.get();
    }

    @Override // ads_mobile_sdk.g03
    public final md1 b() {
        return (md1) this.i.get();
    }
}
