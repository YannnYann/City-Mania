package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import com.vungle.ads.internal.protos.Sdk;

/* JADX INFO: loaded from: classes.dex */
public final class g42 extends vz0.a implements uw1 {
    public final void a(String str) {
        d();
        ((h42) this.b).b(str);
    }

    public final void h() {
        d();
        h42 h42Var = (h42) this.b;
        h42Var.bitField0_ |= 16;
        h42Var.disableImageLoading_ = true;
    }

    public final void i() {
        d();
        h42 h42Var = (h42) this.b;
        h42Var.bitField0_ |= 64;
        h42Var.isBannerAllowed_ = true;
    }

    public final void j() {
        d();
        h42 h42Var = (h42) this.b;
        h42Var.bitField0_ |= Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
        h42Var.isNativeAllowed_ = true;
    }

    public final void k() {
        d();
        h42 h42Var = (h42) this.b;
        h42Var.bitField0_ |= 4;
        h42Var.useCustomMute_ = true;
    }

    public final void a(int i) {
        d();
        h42 h42Var = (h42) this.b;
        h42Var.bitField0_ |= 8;
        h42Var.preferredAdChoicesPosition_ = i;
    }

    public final void a(j42 j42Var) {
        d();
        ((h42) this.b).a(j42Var);
    }

    public final void a(l42 l42Var) {
        d();
        ((h42) this.b).a(l42Var);
    }

    public g42() {
        super(h42.DEFAULT_INSTANCE);
    }
}
