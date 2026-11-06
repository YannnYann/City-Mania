package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes.dex */
public final class yg0 implements yn1 {
    public final vf0 a;
    public j53 b;
    public BaseRequest c;
    public n03 d;
    public tn1 e;
    public md1 f;
    public Boolean g;
    public m13 h;
    public Boolean i;
    public Boolean j;
    public pb k;

    public final zg0 a() {
        kq2.a(this.b, j53.class);
        kq2.a(this.c, BaseRequest.class);
        kq2.a(this.d, n03.class);
        kq2.a(this.e, tn1.class);
        kq2.a(this.f, md1.class);
        kq2.a(this.g, Boolean.class);
        kq2.a(this.h, m13.class);
        kq2.a(this.i, Boolean.class);
        kq2.a(this.j, Boolean.class);
        kq2.a(this.k, pb.class);
        return new zg0(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k);
    }

    @Override // ads_mobile_sdk.bn1
    public final Object b(boolean z) {
        this.i = Boolean.valueOf(z);
        return this;
    }

    @Override // ads_mobile_sdk.bn1
    public final Object c(boolean z) {
        this.j = Boolean.valueOf(z);
        return this;
    }

    @Override // ads_mobile_sdk.bn1
    public final Object a(pb pbVar) {
        pbVar.getClass();
        this.k = pbVar;
        return this;
    }

    @Override // ads_mobile_sdk.bn1
    public final Object a(BaseRequest baseRequest) {
        baseRequest.getClass();
        this.c = baseRequest;
        return this;
    }

    @Override // ads_mobile_sdk.bn1
    public final Object a(md1 md1Var) {
        md1Var.getClass();
        this.f = md1Var;
        return this;
    }

    @Override // ads_mobile_sdk.bn1
    public final Object a(tn1 tn1Var) {
        tn1Var.getClass();
        this.e = tn1Var;
        return this;
    }

    @Override // ads_mobile_sdk.bn1
    public final Object a(boolean z) {
        this.g = Boolean.valueOf(z);
        return this;
    }

    @Override // ads_mobile_sdk.bn1
    public final Object a(n03 n03Var) {
        n03Var.getClass();
        this.d = n03Var;
        return this;
    }

    @Override // ads_mobile_sdk.bn1
    public final Object a(m13 m13Var) {
        m13Var.getClass();
        this.h = m13Var;
        return this;
    }

    @Override // ads_mobile_sdk.bn1
    public final Object a(j53 j53Var) {
        j53Var.getClass();
        this.b = j53Var;
        return this;
    }

    public yg0(vf0 vf0Var) {
        this.a = vf0Var;
    }
}
