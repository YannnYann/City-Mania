package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.content.Context;
import com.ironsource.adqualitysdk.sdk.ISAdQualityAdType;
import com.ironsource.adqualitysdk.sdk.IronSourceAdQuality;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᔫ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0569 extends AbstractC0925 {
    static {
        StringFog.decrypt("zkCqZTJwAQf4U6FvDA==\n", "vSXEAXgDbmk=\n");
        StringFog.decrypt("f8EzpIcOVNhb3SeAnw9f3g==\n", "HqVX4fFrOqw=\n");
        StringFog.decrypt("z0gsX23WQN3LWTdu\n", "qC1YHAK4Lrg=\n");
        StringFog.decrypt("UJMkW0/5TwNPgg==\n", "N/ZQGCCXO2Y=\n");
        StringFog.decrypt("DWSEctZ2zg==\n", "agHwJr8bq5M=\n");
        StringFog.decrypt("6oxjIT/68lHinHQF\n", "jekXbV6JhgU=\n");
        StringFog.decrypt("Y3NTPZvqUpxrY0QZrvBLrQ==\n", "BBYncfqZJsg=\n");
        StringFog.decrypt("1qmhqfNmyPbfuJSJ8n3M+sW1\n", "sczV6oYUupM=\n");
        StringFog.decrypt("yawhzlTIAdzPvzDGVsgLwMyx\n", "qt5EryCtQq4=\n");
        StringFog.decrypt("0erD29w/1gfE/dTOwSnyEfv2wNU=\n", "spimuqhal2M=\n");
        StringFog.decrypt("gvySDFM1w5CE74MEUTXJhpI=\n", "4Y73bSdQgOI=\n");
        StringFog.decrypt("nBHSeDj9No2bCtZtJfcVrJ4X1g==\n", "/2O3GUyYe+g=\n");
        StringFog.decrypt("Hr+VzrH5kigLqYjyuw==\n", "edrhndWSxE0=\n");
        StringFog.decrypt("2DVPWpzM5KTbO215m9PhmNE=\n", "v1A7HOmgiPc=\n");
        StringFog.decrypt("IeOeJaDeemkn1Y4dmdRldi/phA==\n", "Robqds+xFwU=\n");
        StringFog.decrypt("J71SSzfP7p8xiktPPdg=\n", "Rc89KlOsj+w=\n");
        StringFog.decrypt("sX+S0b330aWEf4v/rvf8vrh8j/c=\n", "1hrmkNqSv9E=\n");
        StringFog.decrypt("1yXHb5t3UkDSNtdim1dgQNoj6H2AfA==\n", "tFeiDu8SFiU=\n");
        StringFog.decrypt("Hg3lMg4/KWkaHP4DNzQ1fxAH/w==\n", "eWiRcWFRRww=\n");
        StringFog.decrypt("Q4AyZbVw/vI=\n", "L+9VIMMVkIY=\n");
        StringFog.decrypt("enhth+kQrV52eEqu7T2m\n", "Ews+44JZwwo=\n");
        StringFog.decrypt("oGUiZlb6p1KiRDNUUdy3UrNpOUk=\n", "xwBWJzKu3iI=\n");
        StringFog.decrypt("wWrn8HpCaWvIe9DcYV5+bdJg4f1uXX4=\n", "pg+Tsw8wGw4=\n");
        StringFog.decrypt("psjih5Pqckav2dqtlexlTaTf2KWL/Q==\n", "wa2WxOaYACM=\n");
        StringFog.decrypt("R8jSUS9JQTpo1ONdJHxNM0r+/18jQ005\n", "LruRPkEvKF0=\n");
        StringFog.decrypt("hP2m7L+hhImE1r3mvb+nmJfqs+qmqoyUs/2gzLWhlg==\n", "45jSr9DP4uA=\n");
        StringFog.decrypt("yqqJr4C0SE/EopiEjIdCU8ummg==\n", "rc/96vjELT0=\n");
        StringFog.decrypt("Es5zEki2cwUcxmI5RJNlEgf/aDxVqA==\n", "dasHVzDGFnc=\n");
        StringFog.decrypt("Juf+O5cieKYo7+8QmwZvtSj2+Q==\n", "QYKKfu9SHdQ=\n");
        StringFog.decrypt("Ajqs8SUGNFAMMr3aKSIjQwwr\n", "ZV/YtF12USI=\n");
        StringFog.decrypt("iC464y4g0V6AJRrfIDbM\n", "70tOsEtTojc=\n");
        StringFog.decrypt("CPYhMyWAn8kO5zQ=\n", "b5NVfkD0/o0=\n");
        StringFog.decrypt("q+yKYKmv2oWmzLx2ubPHjg==\n", "wp/ZBcraqOA=\n");
    }

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static boolean m1323() {
        if (!AbstractC0885.m1491().mo1498()) {
            return true;
        }
        C0617 c0617 = C0617.f2607;
        if (c0617.f2609 || c0617.f2610 == null) {
            return false;
        }
        try {
            C0625 c0625 = c0617.f2610;
            C0159 c0159 = C0697.f2826.f2829;
            C0625 c0625M1133 = c0159 == null ? null : c0159.m1133();
            boolean zEquals = (c0625 == null || c0625M1133 == null) ? false : c0625M1133.m1407().equals(c0625.m1407());
            if (!zEquals) {
                c0617.f2609 = true;
            }
            return zEquals;
        } catch (Exception e) {
            String str = C0617.f2608;
            AbstractC0182.m1156(str, str, StringFog.decrypt("M81095LQ9U4Xy376iNvyWBnWea6YleVVG8d7+ofU71EbwA==\n", "fqQQ2uG1hj0=\n"), e, null, false);
            c0617.f2609 = true;
            return false;
        }
    }

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public static boolean m1324() {
        return ((C0893) AbstractC0885.m1491()).f3410;
    }

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static long m1325() {
        String str = AbstractC0061.f813;
        return Calendar.getInstance().getTimeInMillis();
    }

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static String m1326() {
        return IronSourceAdQuality.getSDKVersion();
    }

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static String m1327() {
        JSONObject jSONObject;
        r rVar;
        C0893 c0893 = (C0893) AbstractC0885.m1491();
        synchronized (c0893) {
            jSONObject = c0893.f2612;
        }
        if (!jSONObject.optBoolean(c0893.f3433) || (rVar = c0893.f3405) == null) {
            return null;
        }
        return rVar.f369;
    }

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static long m1328() {
        C0163 c0163;
        C0752 c0752M1435 = C0752.m1435();
        synchronized (c0752M1435) {
            c0163 = c0752M1435.f3070;
        }
        return c0163.f1163;
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static JSONObject m1329() {
        C0163 c0163;
        C0752 c0752M1435 = C0752.m1435();
        synchronized (c0752M1435) {
            c0163 = c0752M1435.f3070;
        }
        return AbstractC0962.m1572(c0163.f1165, c0163.f1164, c0163.f1163, c0163.f1162);
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static JSONObject m1330() {
        JSONObject jSONObject;
        C1029 c1029 = ((C0893) AbstractC0885.m1491()).f3417;
        synchronized (c1029) {
            jSONObject = c1029.f2612;
        }
        return jSONObject;
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static Activity m1331() {
        return AbstractC1013.m1594().mo1052();
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static String m1333(C0048 c0048) {
        return c0048.f647.f3541.m1185();
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static String m1334(C0048 c0048) {
        return c0048.f647.f3541.mo1007();
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static C0949 m1336() {
        return new C0949();
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static C0203 m1339() {
        return new C0203();
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static C0222 m1341() {
        return new C0222();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1347(C0048 c0048, ArrayList arrayList) {
        c0048.m1067((String) AbstractC0925.m1545(arrayList, 0, String.class), (JSONObject) AbstractC0925.m1545(arrayList, 1, JSONObject.class));
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static String m1337(C0048 c0048) {
        return c0048.f647.f3544.f2381;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Context m1338(C0048 c0048) {
        return c0048.f647.f3540;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static String m1342(C0048 c0048) {
        return c0048.f647.f3544.f2379;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static double m1332() {
        JSONObject jSONObject;
        C0893 c0893 = (C0893) AbstractC0885.m1491();
        synchronized (c0893) {
            jSONObject = c0893.f2612;
        }
        return jSONObject.optDouble(c0893.f3445, 1.0d);
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static JSONObject m1335() {
        JSONObject jSONObject;
        AbstractC0885 abstractC0885M1491 = AbstractC0885.m1491();
        synchronized (abstractC0885M1491) {
            jSONObject = abstractC0885M1491.f2612;
        }
        return AbstractC0962.m1573(jSONObject, false);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static void m1340(ArrayList arrayList) {
        String strDecrypt = StringFog.decrypt("00W5duqLLsrrcqxI\n", "kiHoA4vnR74=\n");
        AbstractC0182.m1157(strDecrypt, strDecrypt, (String) AbstractC0925.m1545(arrayList, 0, String.class), true);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1346(C0048 c0048, C0915 c0915, ArrayList arrayList) {
        C0946 c0946 = (C0946) AbstractC0925.m1545(arrayList, 0, C0946.class);
        if (c0946 != null) {
            c0048.f647.f3543.f3643.add(new C0613(c0946, c0915, c0048));
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static String m1343(ArrayList arrayList) {
        return ISAdQualityAdType.fromInt(((Integer) AbstractC0925.m1545(arrayList, 0, Integer.class)).intValue()).name().toLowerCase();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static C1025 m1345() {
        return new C1025();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static C0937 m1344(C0048 c0048) {
        return c0048.f647;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1348(ArrayList arrayList) {
        C0324 c0324;
        String str = (String) AbstractC0925.m1545(arrayList, 0, String.class);
        List listM1546 = AbstractC0925.m1546(arrayList, 1);
        C0204 c0204M1165 = C0204.m1165();
        synchronized (c0204M1165) {
            c0324 = c0204M1165.f1356;
        }
        if (c0324 != null) {
            c0324.m1239(str, listM1546);
        }
    }
}
