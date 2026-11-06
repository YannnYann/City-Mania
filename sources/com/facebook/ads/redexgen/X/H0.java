package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class H0 {
    public static String[] A02 = {"AMQNzlG2eGPOJo74lPpddO6twtMEce", "8uZuLGh3CZSzV4eSaK74M9a8aAW81o1g", "CYs8BZmCr6kO5jRRUq4laItl384RlovT", "PO4hUmmCpilEicL1R3sLdD9hI0Kiey5Z", "WmgRsP13YsLJamj9MMjVCco3tjnpIVCq", "0ErvOAeoLZJf3MJzf6jF5Cw5BrHPqp", "S0kgbIpbc64QMPj8XCJtTK8zDrzNpUnW", "MO6xPizLQkqntlkNHRrNVg7dZ2stU5UP"};
    public final Rect A00 = new Rect();
    public final Rect A01 = new Rect();

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private boolean A01(C12762l<C2895n2, C2900n7> c12762l, C2Z c2z) {
        float fAAB = -1.0f;
        try {
            fAAB = c2z.AAB(c12762l);
        } catch (IllegalStateException unused) {
        }
        if (fAAB > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && A00(c12762l)) {
            return true;
        }
        if (c12762l.A06.A00().getGlobalVisibleRect(this.A01) && this.A01.bottom - this.A01.top > 0 && A00(c12762l)) {
            return true;
        }
        c2z.AAA(this.A00);
        c2z.A8o(c12762l, this.A01);
        return (this.A00.bottom - this.A00.top > 0 && this.A01.bottom - this.A00.top > 0) && A00(c12762l);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.2l != com.instagram.common.viewpoint.core.ViewpointData<com.facebook.ads.internal.impressionsecondchannel.model.Impression, com.facebook.ads.internal.impressionsecondchannel.state.ImpressionState> */
    public static boolean A00(C12762l<C2895n2, C2900n7> c12762l) {
        if (c12762l.A06.A05()) {
            return c12762l.A07.A07();
        }
        if (!c12762l.A06.A06()) {
            return true;
        }
        C2900n7 c2900n7 = c12762l.A07;
        String[] strArr = A02;
        if (strArr[3].charAt(7) != strArr[2].charAt(7)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[3] = "8O0EOVeCMdEJdeSbYPFIeNjJXhTUSITs";
        strArr2[2] = "Km62DwbCV8Ma1ecjtuIU72b1y8KakI9d";
        return c2900n7.A06();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.2l != com.instagram.common.viewpoint.core.ViewpointData<com.facebook.ads.internal.impressionsecondchannel.model.Impression, com.facebook.ads.internal.impressionsecondchannel.state.ImpressionState> */
    public final void A02(C12762l<C2895n2, C2900n7> c12762l, C2Z c2z) {
        if (c12762l.A07.A04() && A01(c12762l, c2z)) {
            c12762l.A07.A01();
            c12762l.A06.A02().ACn(c12762l.A06.A03(), c12762l.A06.A04());
        }
        if (c12762l.A07.A05() && C2888mv.A1l(c12762l.A06.A01())) {
            c12762l.A07.A02();
            c12762l.A06.A02().AC9(c12762l.A06.A03(), c12762l.A06.A04());
        }
    }
}
