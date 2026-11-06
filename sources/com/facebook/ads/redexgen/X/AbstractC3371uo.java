package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3371uo {
    public static String[] A00 = {"zHQaRI8Z04iZfuq60cOZ3MtOUQtnyLXk", "Py81lTfXTPvOohagzwztlFMwKgIeaa04", "ZBx", "ff4Sljy7OS0rEQC0yVPpTgSrr8dBXGgO", "WJ7E7dTZMlxiqC9ofw7stZL7dYzOgEyn", "lEp0yqe8iFuZgqtiF5MEL7dQIxoaDf7o", "1LQBU", "K3MGC9Pem9CSlPJADsZARPOkTW1wXgVW"};

    public static AbstractC3370un A00(C3374ur c3374ur, Bundle bundle, boolean z) {
        AbstractC3370un c1558Ea;
        c3374ur.A06().A0H().A00(false);
        C2420fE c2420fEA32 = c3374ur.A05().A32();
        double dA00 = AbstractC3360ud.A00(c2420fEA32);
        boolean zA0U = c3374ur.A05().A32().A0U();
        boolean zA06 = AbstractC3360ud.A06(c3374ur.A00(), c3374ur.A01(), dA00);
        AbstractC2386ef abstractC2386efA00 = C2387eg.A00(c3374ur.A06(), c3374ur.A07(), "", AbstractC3036pP.A00(c3374ur.A05().A32().A0K().A06()), new HashMap(), c3374ur.A05().A33());
        boolean z2 = !TextUtils.isEmpty(c2420fEA32.A0I().A09());
        if (C2888mv.A1z(c3374ur.A06())) {
            c3374ur.A06().A0B().AM7(c3374ur.A02(), c3374ur.A05().A37(), z2);
        }
        if (zA0U && (abstractC2386efA00 instanceof C14137u)) {
            boolean zA01 = A01(c3374ur);
            if (A00[2].length() != 3) {
                throw new RuntimeException();
            }
            String[] strArr = A00;
            strArr[5] = "IYiemLW0pAZJelR9U10I0UE8BphOsSCr";
            strArr[3] = "HZnaFTaa8UnZev8t8IWfBJ4wHjAxjheL";
            c1558Ea = zA01 ? new EE(c3374ur) : new ET(c3374ur);
        } else if (z2) {
            c1558Ea = new C13726f(c3374ur);
        } else {
            if (c3374ur.A05().A2M()) {
                return new C1564Eg(c3374ur);
            }
            if (c3374ur.A05().A2V()) {
                c1558Ea = new C13746h(c3374ur);
            } else if (C2888mv.A2l(c3374ur.A06())) {
                c1558Ea = new C13736g(c3374ur, zA06);
            } else if (zA06) {
                c1558Ea = new C1562Ee(c3374ur, c3374ur.A00() == 2);
            } else {
                c1558Ea = new C1558Ea(c3374ur, AbstractC3360ud.A04(dA00));
            }
        }
        if (z) {
            c1558Ea.A1X(c2420fEA32, c3374ur.A05().A37(), dA00, bundle);
        }
        return c1558Ea;
    }

    public static boolean A01(C3374ur c3374ur) {
        return c3374ur.A05().A2q() || c3374ur.A05().A2M() || c3374ur.A05().A2K();
    }
}
