package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ss extends vz0.a implements uw1 {
    public final void a(Map map) {
        d();
        ts tsVar = (ts) this.b;
        if (!tsVar.serverParameters_.d()) {
            tsVar.serverParameters_ = tsVar.serverParameters_.f();
        }
        tsVar.serverParameters_.putAll(map);
    }

    public final void b(String str) {
        d();
        ((ts) this.b).c(str);
    }

    public final void b(boolean z) {
        d();
        ts tsVar = (ts) this.b;
        tsVar.bitField0_ |= 2;
        tsVar.shouldGatherSignals_ = z;
    }

    public final void a(String str, String str2) {
        Objects.requireNonNull(str);
        Objects.requireNonNull(str2);
        d();
        ts tsVar = (ts) this.b;
        if (!tsVar.serverParameters_.d()) {
            tsVar.serverParameters_ = tsVar.serverParameters_.f();
        }
        tsVar.serverParameters_.put(str, str2);
    }

    public final void a(String str) {
        d();
        ((ts) this.b).b(str);
    }

    public final void a(boolean z) {
        d();
        ts tsVar = (ts) this.b;
        tsVar.bitField0_ |= 4;
        tsVar.shouldCollectSignalsOnFullApp_ = z;
    }

    public ss() {
        super(ts.DEFAULT_INSTANCE);
    }

    public final Map h() {
        return Collections.unmodifiableMap(Collections.unmodifiableMap(((ts) this.b).serverParameters_));
    }
}
