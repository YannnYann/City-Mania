package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import com.vungle.ads.internal.protos.Sdk;

/* JADX INFO: loaded from: classes.dex */
public final class za extends vz0.a implements uw1 {
    public final za h() {
        mh2 mh2Var = mh2.ANDROID;
        d();
        ab abVar = (ab) this.b;
        abVar.getClass();
        abVar.osType_ = mh2Var.getNumber();
        abVar.bitField0_ |= 64;
        return this;
    }

    public za() {
        super(ab.DEFAULT_INSTANCE);
    }

    public final za a(long j) {
        d();
        ab abVar = (ab) this.b;
        abVar.bitField0_ |= 2;
        abVar.apiLevel_ = j;
        return this;
    }

    public final za c(String str) {
        d();
        ((ab) this.b).d(str);
        return this;
    }

    public final za b(long j) {
        d();
        ab abVar = (ab) this.b;
        abVar.bitField0_ |= 16;
        abVar.appVersionCode_ = j;
        return this;
    }

    public final za a(String str) {
        d();
        ((ab) this.b).b(str);
        return this;
    }

    public final za b(String str) {
        d();
        ((ab) this.b).c(str);
        return this;
    }

    public final za a(j61 j61Var) {
        d();
        ab abVar = (ab) this.b;
        abVar.getClass();
        abVar.hostType_ = j61Var.getNumber();
        abVar.bitField0_ |= Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
        return this;
    }

    public final za a(du duVar) {
        d();
        ((ab) this.b).a(duVar);
        return this;
    }
}
