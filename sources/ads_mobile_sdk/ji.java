package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class ji extends vz0.a implements uw1 {
    public final void a(ki kiVar) {
        d();
        li liVar = (li) this.b;
        liVar.getClass();
        liVar.eventType_ = kiVar.getNumber();
    }

    public final void a(long j) {
        d();
        ((li) this.b).timestampMs_ = j;
    }

    public ji() {
        super(li.DEFAULT_INSTANCE);
    }
}
