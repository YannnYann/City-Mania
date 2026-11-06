package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class ga0 implements yh1.b {
    public static final ga0 a = new ga0();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        return (i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? null : ha0.BILLING : ha0.UNWANTED : ha0.PHISHING : ha0.MALWARE : ha0.SAFE_OR_OTHER) != null;
    }
}
