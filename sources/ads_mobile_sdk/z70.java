package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class z70 implements yh1.b {
    public static final z70 a = new z70();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        return (i != 0 ? i != 1 ? i != 2 ? i != 3 ? null : a80.ENTERPRISE_MANAGED : a80.NOT_MANAGED : a80.UNAVAILABLE : a80.UNKNOWN) != null;
    }
}
