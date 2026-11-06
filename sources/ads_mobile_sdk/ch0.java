package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes.dex */
public final class ch0 implements bn1 {
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

    @Override // ads_mobile_sdk.bn1
    public final Object a(pb pbVar) {
        this.k = pbVar;
        return this;
    }

    @Override // ads_mobile_sdk.bn1
    public final Object b(boolean z) {
        this.i = Boolean.FALSE;
        return this;
    }

    @Override // ads_mobile_sdk.bn1
    public final Object c(boolean z) {
        this.j = Boolean.valueOf(z);
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
        this.h = m13Var;
        return this;
    }

    @Override // ads_mobile_sdk.bn1
    public final Object a(j53 j53Var) {
        j53Var.getClass();
        this.b = j53Var;
        return this;
    }

    public ch0(vf0 vf0Var) {
        this.a = vf0Var;
    }
}
