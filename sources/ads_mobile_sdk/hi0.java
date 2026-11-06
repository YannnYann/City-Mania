package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest;

/* JADX INFO: loaded from: classes.dex */
public final class hi0 implements wz2 {
    public final vf0 a;
    public vh1 b;
    public dw2 c;
    public dw2 d;
    public vh1 e;
    public vh1 f;
    public sh0 g;
    public dw2 h;
    public vh1 i;
    public dw2 j;

    public hi0(vf0 vf0Var, BaseRequest baseRequest, j53 j53Var, Boolean bool, Boolean bool2, NativeAdRequest nativeAdRequest, Integer num) {
        this.a = vf0Var;
        a(baseRequest, j53Var, bool, bool2, nativeAdRequest, num);
    }

    @Override // ads_mobile_sdk.g03
    public final px2 a() {
        return (px2) this.j.get();
    }

    public final void a(BaseRequest baseRequest, j53 j53Var, Boolean bool, Boolean bool2, NativeAdRequest nativeAdRequest, Integer num) {
        this.b = vh1.a(nativeAdRequest);
        vh1 vh1Var = mj0.a;
        m03 m03Var = new m03(vh1Var, vh1Var, vh1Var);
        Object obj = do0.c;
        this.c = new do0(m03Var);
        this.d = new do0(new l03(this.a.w0));
        this.e = vh1.a(j53Var);
        this.f = vh1.a(bool2);
        this.g = new sh0(vh1.a(baseRequest));
        vh1 vh1VarA = vh1.a(bool);
        vf0 vf0Var = this.a;
        this.h = new do0(new pd1(vf0Var.P0, this.e, this.g, this.d, vh1VarA, vf0Var.h, vf0Var.t, vh1Var));
        this.i = vh1.a(num);
        do0 do0Var = new do0(new k03(this.a.u, new do0(i03.a)));
        vf0 vf0Var2 = this.a;
        this.j = new do0(new rz2(vf0Var2.c4, vf0Var2.u, this.b, this.c, vf0Var2.t, vf0Var2.G, this.d, this.e, vf0Var2.d, this.f, this.h, vf0Var2.B0, this.i, do0Var, vf0Var2.e0));
    }

    @Override // ads_mobile_sdk.g03
    public final md1 b() {
        return (md1) this.h.get();
    }
}
