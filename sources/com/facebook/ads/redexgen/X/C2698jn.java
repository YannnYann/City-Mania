package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.content.Context;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.jn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2698jn {
    public static InterfaceC2325df A00(Context context, InterfaceC2782lC interfaceC2782lC) {
        return A01(context, interfaceC2782lC, null);
    }

    public static InterfaceC2325df A01(Context context, InterfaceC2782lC interfaceC2782lC, String str) {
        C1642Hh sdkContext = A09(context);
        InterfaceC2329dj interfaceC2329djA8n = interfaceC2782lC.A8n(sdkContext);
        if (interfaceC2329djA8n != null) {
            return str != null ? interfaceC2329djA8n.ADD(str) : interfaceC2329djA8n.ADC();
        }
        return new C1782Mx();
    }

    public static C1643Hi A02(Activity activity) {
        return new C1643Hi(activity, (InterfaceC2782lC) A0A(), A00(activity, A0A()));
    }

    public static C1643Hi A03(Context context) {
        return new C1643Hi(context, A0A(), new C1782Mx());
    }

    public static C1643Hi A04(Context context) {
        if (C2888mv.A0v(context)) {
            return new C1643Hi(context, A0A(), A00(context, A0A()));
        }
        return A03(context);
    }

    public static C1643Hi A05(Context context, String str) {
        InterfaceC2325df interfaceC2325dfA01 = A01(context, A0A(), str);
        interfaceC2325dfA01.AKl(1000);
        return new C1643Hi(context, A0A(), interfaceC2325dfA01);
    }

    public static C1643Hi A06(Context context, String str) {
        return new C1643Hi(context, A0A(), A01(context, A0A(), str));
    }

    public static C1643Hi A07(Context context, String str) {
        return new C1643Hi(context, A0A(), A01(context, A0A(), str));
    }

    public static C7D A08(Context context) {
        return new C7D(context, A0A(), A0A().A8n(A09(context)));
    }

    public static C1642Hh A09(Context context) {
        return new C1642Hh(context, A0A());
    }

    public static synchronized HG A0A() {
        return HG.A02();
    }
}
