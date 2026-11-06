package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;
import jp.maio.sdk.android.MaioAds;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｭ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0996 extends AbstractC0208 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f3796 = StringFog.decrypt("u/ZECjkPMCys4HwuKxI6A63h\n", "yJMwR1hmX20=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f3795 = StringFog.decrypt("Jiv5BSO7PA==\n", "a0qQamLfTwI=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f3794 = StringFog.decrypt("U6cfRmSZsxBwtQJIS56l\n", "HsZ2KSX9wFk=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f3793 = StringFog.decrypt("U7IYRTs50S53oAVPFDjQ\n", "HtNxKnpdomI=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f3792 = StringFog.decrypt("c5DJCKRarxBXgtQCi1uuFVCFxRWDX785\n", "PvGgZ+U+3Fw=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f3791 = StringFog.decrypt("s2w6ZmkMU66AbRl9RANUpIRhCGo=\n", "8gh8EwVgIM0=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f3790 = StringFog.decrypt("ZHNt3yf9i7l9ZyicJ/qA5WFqJ5wH8KLiYm8w0TTxgflPYDfbMP2Q7g==\n", "DgNDskaU5Jc=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f3789 = StringFog.decrypt("uj1HAO0K1f2WCE4tzB/P7ps9Uw==\n", "8kkqbK9rppg=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f3788 = StringFog.decrypt("ycMbjRuH9IPQ117OG4D/38zaUc4ymvbB4dJGhR6v/+zAx1yWE5ri\n", "o7M14Hrum60=\n");

    public C0996(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0208
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1004() {
        return MaioAds.getSdkVersion();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0208
    /* JADX INFO: renamed from: ﾇ */
    public final HashMap mo1005() {
        HashMap map = new HashMap();
        map.put(f3796, new C0042(this));
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0058  */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0208
    /* JADX INFO: renamed from: ﾒ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Class mo1006(java.lang.String r2) {
        /*
            r1 = this;
            int r0 = r2.hashCode()
            switch(r0) {
                case -1799290762: goto L4e;
                case -1455130644: goto L44;
                case -1303622385: goto L3a;
                case -1069735125: goto L30;
                case -278703286: goto L26;
                case 357386522: goto L1c;
                case 1819361677: goto L12;
                case 1914325723: goto L8;
                default: goto L7;
            }
        L7:
            goto L58
        L8:
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C0996.f3788
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L58
            r2 = 4
            goto L59
        L12:
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C0996.f3791
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L58
            r2 = 1
            goto L59
        L1c:
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C0996.f3789
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L58
            r2 = 3
            goto L59
        L26:
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C0996.f3793
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L58
            r2 = 6
            goto L59
        L30:
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C0996.f3794
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L58
            r2 = 5
            goto L59
        L3a:
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C0996.f3792
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L58
            r2 = 7
            goto L59
        L44:
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C0996.f3790
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L58
            r2 = 2
            goto L59
        L4e:
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C0996.f3795
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L58
            r2 = 0
            goto L59
        L58:
            r2 = -1
        L59:
            switch(r2) {
                case 0: goto L6d;
                case 1: goto L6a;
                case 2: goto L6a;
                case 3: goto L67;
                case 4: goto L67;
                case 5: goto L64;
                case 6: goto L61;
                case 7: goto L5e;
                default: goto L5c;
            }
        L5c:
            r2 = 0
            return r2
        L5e:
            java.lang.Class<jp.maio.sdk.android.MaioAdsListenerInterface> r2 = jp.maio.sdk.android.MaioAdsListenerInterface.class
            return r2
        L61:
            java.lang.Class<jp.maio.sdk.android.MaioAdsListener> r2 = jp.maio.sdk.android.MaioAdsListener.class
            return r2
        L64:
            java.lang.Class<jp.maio.sdk.android.MaioAdsInstance> r2 = jp.maio.sdk.android.MaioAdsInstance.class
            return r2
        L67:
            java.lang.Class<jp.maio.sdk.android.HtmlBasedAdActivity> r2 = jp.maio.sdk.android.HtmlBasedAdActivity.class
            return r2
        L6a:
            java.lang.Class<jp.maio.sdk.android.AdFullscreenActivity> r2 = jp.maio.sdk.android.AdFullscreenActivity.class
            return r2
        L6d:
            java.lang.Class<jp.maio.sdk.android.MaioAds> r2 = jp.maio.sdk.android.MaioAds.class
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.C0996.mo1006(java.lang.String):java.lang.Class");
    }
}
