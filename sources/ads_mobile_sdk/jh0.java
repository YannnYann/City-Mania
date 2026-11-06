package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class jh0 {
    public final vf0 a;
    public vh1 b;
    public sh0 c;
    public dw2 d;
    public vh1 e;
    public vh1 f;
    public vh1 g;
    public vh1 h;
    public vh1 i;
    public vh1 j;
    public vh1 k;
    public dw2 l;
    public vh1 m;
    public vh1 n;
    public vh1 o;
    public vh1 p;
    public vh1 q;
    public vh1 r;
    public r82 s;
    public iu1 t;
    public dw2 u;

    public jh0(vf0 vf0Var, zy zyVar, i2 i2Var, ec3 ec3Var, Long l, Integer num, BaseRequest baseRequest, j53 j53Var, n03 n03Var, tn1 tn1Var, Boolean bool, md1 md1Var, pb pbVar, Integer num2, NativeRequest nativeRequest, Boolean bool2, gj1 gj1Var, i82 i82Var) {
        this.a = vf0Var;
        a(zyVar, i2Var, ec3Var, l, num, baseRequest, j53Var, n03Var, tn1Var, bool, md1Var, pbVar, num2, nativeRequest, bool2, gj1Var, i82Var);
        a();
    }

    public final void a(zy zyVar, i2 i2Var, ec3 ec3Var, Long l, Integer num, BaseRequest baseRequest, j53 j53Var, n03 n03Var, tn1 tn1Var, Boolean bool, md1 md1Var, pb pbVar, Integer num2, NativeRequest nativeRequest, Boolean bool2, gj1 gj1Var, i82 i82Var) {
        this.b = vh1.a(i82Var);
        this.c = new sh0(vh1.a(n03Var));
        bz bzVar = new bz(this.c, new sh0(vh1.a(tn1Var)));
        Object obj = do0.c;
        this.d = new do0(bzVar);
        this.e = vh1.a(baseRequest);
        this.f = vh1.a(j53Var);
        this.g = vh1.a(l);
        this.h = vh1.a(num);
        this.i = vh1.a(i2Var);
        this.j = vh1.a(zyVar);
        this.k = vh1.a(ec3Var);
        this.l = new do0(new az(this.a.w0));
        this.m = vh1.a(bool);
        this.n = vh1.a(md1Var);
        this.o = vh1.a(nativeRequest);
        this.p = vh1.a(num2);
        this.q = vh1.a(bool2);
        this.r = vh1.a(gj1Var);
        vh1 vh1VarA = vh1.a(pbVar);
        vh1 vh1Var = this.e;
        this.s = new r82(new do0(new b23(this.b, this.d, vh1Var, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, vh1VarA, new fo2(vh1Var))));
        vh1 vh1Var2 = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(1);
        r82 r82Var = this.s;
        if (r82Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("RecursiveRendererNative", r82Var);
        this.t = new iu1(linkedHashMapA);
    }

    public final void a() {
        j8 j8Var = new j8(this.t);
        Object obj = do0.c;
        this.u = new do0(j8Var);
    }
}
