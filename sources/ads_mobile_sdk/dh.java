package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class dh extends vz0.a implements uw1 {
    public final void a(long j) {
        d();
        eh ehVar = (eh) this.b;
        ehVar.bitField0_ |= 32;
        ehVar.displayDensity_ = j;
    }

    public dh() {
        super(eh.DEFAULT_INSTANCE);
    }

    public final dh c(long j) {
        d();
        eh ehVar = (eh) this.b;
        ehVar.bitField0_ |= 1;
        ehVar.percentAdOnScreen_ = j;
        return this;
    }

    public final dh b(long j) {
        d();
        eh ehVar = (eh) this.b;
        ehVar.bitField0_ |= 4;
        ehVar.minAlphaSignal_ = j;
        return this;
    }

    public final dh d(long j) {
        d();
        eh ehVar = (eh) this.b;
        ehVar.bitField0_ |= 8;
        ehVar.viewHeight_ = j;
        return this;
    }

    public final dh e(long j) {
        d();
        eh ehVar = (eh) this.b;
        ehVar.bitField0_ |= 16;
        ehVar.viewWidth_ = j;
        return this;
    }
}
