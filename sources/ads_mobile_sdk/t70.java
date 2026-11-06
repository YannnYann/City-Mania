package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class t70 implements yh1.d.a {
    @Override // ads_mobile_sdk.yh1.d.a
    public final Object a(int i) {
        c80 c80Var = i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? null : c80.TAILORED_WARNING_SUSPICIOUS : c80.TAILORED_WARNING_SUSPICIOUS_BASE : c80.TAILORED_WARNING_CT_ACCOUNT_INFO : c80.TAILORED_WARNING_CT : c80.TAILORED_WARNING_CT_BASE : c80.UNSPECIFIED;
        return c80Var == null ? c80.UNSPECIFIED : c80Var;
    }
}
