package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class sh extends vz0.a implements uw1 {
    public final void c(String str) {
        d();
        ((th) this.b).d(str);
    }

    public final sh h() {
        d();
        ((th) this.b).w();
        return this;
    }

    public final void c(long j) {
        d();
        th thVar = (th) this.b;
        thVar.bitField0_ |= 16;
        thVar.vcdSignal_ = j;
    }

    public sh() {
        super(th.DEFAULT_INSTANCE);
    }

    public final sh a(String str) {
        d();
        ((th) this.b).b(str);
        return this;
    }

    public final sh b(String str) {
        d();
        ((th) this.b).c(str);
        return this;
    }

    public final sh a(long j) {
        d();
        th thVar = (th) this.b;
        thVar.bitField0_ |= 4;
        thVar.evtTime_ = j;
        return this;
    }

    public final sh b(long j) {
        d();
        th thVar = (th) this.b;
        thVar.bitField0_ |= 32;
        thVar.uptSignal_ = j;
        return this;
    }
}
