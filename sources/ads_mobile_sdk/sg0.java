package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;

/* JADX INFO: loaded from: classes.dex */
public final class sg0 implements qm1 {
    public final vf0 a;
    public tf3 b;
    public String c;
    public BaseRequest d;
    public j53 e;
    public Boolean f;
    public n03 g;
    public tn1 h;
    public md1 i;
    public Boolean j;
    public NativeRequest k;
    public gj1 l;

    @Override // ads_mobile_sdk.mj1
    public final Object a(String str) {
        str.getClass();
        this.c = str;
        return this;
    }

    @Override // ads_mobile_sdk.mj1
    public final Object a(SignalRequest signalRequest) {
        signalRequest.getClass();
        this.d = signalRequest;
        return this;
    }

    @Override // ads_mobile_sdk.mj1
    public final Object a(md1 md1Var) {
        md1Var.getClass();
        this.i = md1Var;
        return this;
    }

    @Override // ads_mobile_sdk.mj1
    public final Object a(tn1 tn1Var) {
        tn1Var.getClass();
        this.h = tn1Var;
        return this;
    }

    @Override // ads_mobile_sdk.mj1
    public final Object a(boolean z) {
        this.f = Boolean.valueOf(z);
        return this;
    }

    @Override // ads_mobile_sdk.mj1
    public final Object a(n03 n03Var) {
        n03Var.getClass();
        this.g = n03Var;
        return this;
    }

    @Override // ads_mobile_sdk.mj1
    public final Object a(j53 j53Var) {
        j53Var.getClass();
        this.e = j53Var;
        return this;
    }

    @Override // ads_mobile_sdk.mj1
    public final Object a(tf3 tf3Var) {
        tf3Var.getClass();
        this.b = tf3Var;
        return this;
    }

    public sg0(vf0 vf0Var) {
        this.a = vf0Var;
    }
}
