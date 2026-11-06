package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Locale;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.su, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3253su {
    public static String[] A00 = {"Zuis3dFKWAyxoNTgkpIE", "xaeF0afSb05NpBFMZ5xygIdSc7B6iwCw", "tuXcYJ8v14ziTOmKAzHuhsdlRoVHn9j3", "t24s4vz84wAveoI9BHe2QhUA3xE4dBfz", "sxf", "FI50G0VJnQuwXuJuDwYc", "5PWp6wjoKKugmK0LDuyHf4PGYw4BDMr1", "wj6JTnHM3e62Gsc5OAfcHrHHUCE"};

    public static EnumC3257sy A00(LA la) {
        if (la.A3S()) {
            EnumC3257sy enumC3257sy = EnumC3257sy.A02;
            if (A00[1].charAt(6) != 'f') {
                throw new RuntimeException();
            }
            String[] strArr = A00;
            strArr[3] = "tsfNGtRVOFLkJYhvis7QgxjEl1sSvMPv";
            strArr[2] = "t2hZdq9OrhuvmGB4XIpOOaypxtzR7Pvs";
            return enumC3257sy;
        }
        EnumC3257sy enumC3257sy2 = EnumC3257sy.A03;
        if (A00[7].length() != 27) {
            A00[4] = "F1XyKLOJKpSOH2buCniO7rGUMGJZoF";
            return enumC3257sy2;
        }
        String[] strArr2 = A00;
        strArr2[5] = "7lXEsjF1B1e2sZ4OSZaa";
        strArr2[0] = "uqPXzMY2O0is65aO24e9";
        return enumC3257sy2;
    }

    public static void A01(LA la, EnumC3254sv enumC3254sv, C1643Hi c1643Hi) {
        if (la.A3O()) {
            c1643Hi.A0F().ABu(enumC3254sv.name().toLowerCase(Locale.US));
        }
        if (la.A3S()) {
            c1643Hi.A0F().ABi(enumC3254sv.name().toLowerCase(Locale.US));
        }
    }

    public static void A02(C1643Hi c1643Hi, EnumC3254sv enumC3254sv) {
        c1643Hi.A0F().ABk(enumC3254sv.name().toLowerCase(Locale.US));
    }

    public static void A03(C1643Hi c1643Hi, EnumC3254sv enumC3254sv) {
        c1643Hi.A0F().ABw(enumC3254sv.name().toLowerCase(Locale.US));
    }

    public static void A04(C1643Hi c1643Hi, EnumC3254sv enumC3254sv) {
        c1643Hi.A0F().ACx(enumC3254sv.name().toLowerCase(Locale.US));
    }

    public static void A05(C1643Hi c1643Hi, EnumC3254sv enumC3254sv) {
        A02(c1643Hi, enumC3254sv);
    }

    public static void A06(C1643Hi c1643Hi, EnumC3254sv enumC3254sv) {
        A03(c1643Hi, enumC3254sv);
    }

    public static void A07(C1643Hi c1643Hi, EnumC3254sv enumC3254sv) {
        A04(c1643Hi, enumC3254sv);
    }

    public static void A08(C2917nO c2917nO, C1643Hi c1643Hi, InterfaceC3144r9 interfaceC3144r9, LA la, EnumC3254sv enumC3254sv) {
        if (c2917nO != null) {
            c2917nO.A04(EnumC2916nN.A0A, null);
        }
        if (la.A3O()) {
            c1643Hi.A0F().ABv(enumC3254sv.name().toLowerCase(Locale.US));
        }
        if (la.A3S()) {
            c1643Hi.A0F().ABj(enumC3254sv.name().toLowerCase(Locale.US));
        }
        if (AbstractC2505gb.A00(c1643Hi.A02()).A0O(c1643Hi.A02(), true)) {
            if (interfaceC3144r9 != null) {
                String strA37 = la.A37();
                if (A00[1].charAt(6) != 'f') {
                    throw new RuntimeException();
                }
                A00[4] = "4g3IauLO4jVP";
                interfaceC3144r9.ABW(strA37, la.A35());
                return;
            }
            return;
        }
        if (!TextUtils.isEmpty(la.A35().A00())) {
            C3032pK.A0P(new C3032pK(), c1643Hi, AbstractC3036pP.A00(la.A35().A00()), la.A37());
        }
    }
}
