package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import com.ironsource.adqualitysdk.sdk.IronSourceAdQuality;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ก, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0402 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final /* synthetic */ C0324 f2129;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0208 f2130;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final /* synthetic */ String f2131;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ C0475 f2132;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ boolean f2133;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ String f2134;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0248 f2135;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0937 f2136;

    public C0402(C0324 c0324, C0937 c0937, AbstractC0248 abstractC0248, String str, boolean z, C0475 c0475, String str2, AbstractC0208 abstractC0208, Context context) {
        this.f2129 = c0324;
        this.f2136 = c0937;
        this.f2135 = abstractC0248;
        this.f2134 = str;
        this.f2133 = z;
        this.f2132 = c0475;
        this.f2131 = str2;
        this.f2130 = abstractC0208;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0235 c0235;
        boolean zMo1075;
        String str;
        String str2;
        C0475 c0475;
        C0475 c04752;
        if (this.f2129.f1907.get() || this.f2136 == null || C0324.m1225(this.f2129).contains(this.f2135) || (c0235 = this.f2129.f1898) == null) {
            return;
        }
        AbstractC0272.m1210(new C0264(c0235, this.f2134, this.f2136, this.f2133));
        C0937 c0937 = this.f2136;
        synchronized (c0937) {
            zMo1075 = c0937.f3541.mo1075();
        }
        if (!zMo1075 && (c04752 = this.f2132) != null) {
            AbstractC0272.m1214(c04752);
        }
        C0324 c0324 = this.f2129;
        C0937 c09372 = this.f2136;
        c0324.getClass();
        String strM1552 = c09372.m1552();
        if (strM1552 != null && AbstractC0611.m1374(IronSourceAdQuality.getSDKVersion(), strM1552) < 0) {
            AbstractC0272.m1210(new C0440(this));
            return;
        }
        String strDecrypt = StringFog.decrypt("Cg5eq9u3J+I7LFGr37M2/w==\n", "SWEwxb7UU40=\n");
        StringBuilder sb = new StringBuilder();
        sb.append(StringFog.decrypt("jGkscaNO6kC/biti6g==\n", "xQdFBcovhik=\n"));
        sb.append(this.f2131);
        sb.append(StringFog.decrypt("B2MwYPA6XJ5Efjtj+i1N0VUx\n", "JxFVDZ9OOb4=\n"));
        if (this.f2133) {
            str = "QHNyBHaak4w=\n";
            str2 = "aBATZx7/96U=\n";
        } else {
            str = "MKsVZgv5W4gx\n";
            str2 = "GM1wEmiRPuw=\n";
        }
        sb.append(StringFog.decrypt(str, str2));
        String string = sb.toString();
        int i = AbstractC0923.f3512;
        String strM1159 = AbstractC0202.m1159("5Iyi+A==\n", "t97u2HRbwRc=\n", new StringBuilder(), strDecrypt);
        AbstractC0182.m1157(strM1159, strM1159, string, false);
        AbstractC0208 abstractC0208 = this.f2130;
        HashMap mapMo1005 = abstractC0208.mo1005();
        abstractC0208.f1385 = mapMo1005;
        mapMo1005.put(AbstractC0208.f1381, new C0219(abstractC0208));
        abstractC0208.f1385.put(AbstractC0208.f1380, new C0213(abstractC0208));
        abstractC0208.f1385.put(AbstractC0208.f1379, new C0212(abstractC0208));
        if (this.f2136.m1551() && (c0475 = this.f2132) != null) {
            AbstractC0272.m1214(c0475);
        }
        if (C0204.m1165().m1174()) {
            return;
        }
        C0324 c03242 = this.f2129;
        C0937 c09373 = this.f2136;
        String str3 = this.f2131;
        if (!c03242.f1907.get()) {
            String str4 = c09373.f3544.f2381;
            C0235 c02352 = c03242.f1898;
            if (c02352 != null) {
                AbstractC0272.m1210(new C0265(c02352, str4, EnumC0299.f1678));
                AbstractC0272.m1210(new C0485(c03242, c09373, str4, str3));
            }
        }
        if (this.f2129.m1241(this.f2136.f3544.f2381)) {
            return;
        }
        C0324.m1225(this.f2129).add(this.f2135);
    }
}
