package ads_mobile_sdk;

import ads_mobile_sdk.u24;
import ads_mobile_sdk.vz0;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ee extends vz0 implements uw1 {
    private static final ee DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int bitField0_;
    private ju1<String, String> extras_ = ju1.b();
    private String format_ = "";

    static {
        ee eeVar = new ee();
        DEFAULT_INSTANCE = eeVar;
        vz0.a((Class<ee>) ee.class, eeVar);
    }

    public static de x() {
        return (de) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = ce.a[dVar.ordinal()];
        if (i == 1) {
            return new ee();
        }
        if (i == 2) {
            return new de();
        }
        if (i == 3) {
            u24.a aVar = u24.a.k;
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0001\u0000\u0000\u0001ለ\u0000\u00022", new Object[]{"bitField0_", "format_", "extras_", gu1.a(aVar, "", aVar, "")});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(ee.class);
    }

    public final void b(String str) {
        this.bitField0_ |= 1;
        this.format_ = str;
    }

    public final Map v() {
        return Collections.unmodifiableMap(this.extras_);
    }

    public final String w() {
        return this.format_;
    }
}
