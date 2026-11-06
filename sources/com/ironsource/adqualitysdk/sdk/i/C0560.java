package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᔈ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0560 extends AbstractC0925 {
    static {
        StringFog.decrypt("PKQcmQTOur4lrB6LH8Q=\n", "SsFu6m2h1P0=\n");
        StringFog.decrypt("Ok0/tW8wJ1MvQSWTcA==\n", "XShL9ANcdCc=\n");
        StringFog.decrypt("5i8MV2a6YkDmLwBba6JTTeQ5\n", "gUp4FgrWMCU=\n");
        StringFog.decrypt("lGFAvpdQrPyhYVOdhm++/JBs\n", "8wQ0+P4i34g=\n");
        StringFog.decrypt("IuVTIrh01Jgm5mYdonfykxjiZhG/Yw==\n", "S5YUeNEEl/c=\n");
        StringFog.decrypt("ETBrE4sv69UGJk8mjy/KxAc8Zhs=\n", "dVUIfOZfmbA=\n");
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static int m1310(ArrayList arrayList) {
        return AbstractC0611.m1374((String) AbstractC0925.m1545(arrayList, 0, String.class), (String) AbstractC0925.m1545(arrayList, 1, String.class));
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static boolean m1311(ArrayList arrayList) {
        return AbstractC0611.m1373((String) AbstractC0925.m1545(arrayList, 0, String.class));
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static String m1312(ArrayList arrayList) {
        String str = (String) AbstractC0925.m1545(arrayList, 0, String.class);
        boolean zBooleanValue = arrayList.size() > 2 ? ((Boolean) AbstractC0925.m1545(arrayList, 2, Boolean.class)).booleanValue() : true;
        if (arrayList.get(1) instanceof String) {
            return AbstractC0611.m1376(str, (String) AbstractC0925.m1545(arrayList, 1, String.class), zBooleanValue);
        }
        JSONArray jSONArray = new JSONArray((Collection) AbstractC0925.m1545(arrayList, 1, List.class));
        for (int i = 0; i < jSONArray.length(); i++) {
            String strM1376 = AbstractC0611.m1376(str, jSONArray.optString(i), zBooleanValue);
            if (strM1376 != null) {
                return strM1376;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static ArrayList m1313(ArrayList arrayList) {
        Object objM1545 = AbstractC0925.m1545(arrayList, 0, Object.class);
        List list = (List) AbstractC0925.m1545(arrayList, 1, List.class);
        int iIntValue = ((Integer) AbstractC0925.m1545(arrayList, 2, Integer.class)).intValue();
        C0564 c0564 = C0725.m1432().f2973;
        c0564.getClass();
        C0595 c0595 = new C0595();
        C0656 c0656 = new C0656();
        C0667 c0667 = c0656.f2695;
        c0667.f2722 = -1;
        c0667.f2721 = -1;
        c0667.f2720 = -1;
        c0667.f2724 = -1;
        c0656.f2694 = c0595;
        c0656.f2693 = null;
        c0667.f2728 = list;
        c0667.f2727 = iIntValue;
        c0667.f2730 = C0595.class;
        c0667.f2729 = null;
        C0638 c0638 = new C0638(c0656);
        c0638.f2655 = true;
        c0564.m1320(objM1545, c0638, 0, (C0690) null);
        return new ArrayList(c0638.f2654);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static ArrayList m1314(ArrayList arrayList) {
        String str = (String) AbstractC0925.m1545(arrayList, 0, String.class);
        if (arrayList.get(1) instanceof String) {
            return AbstractC0611.m1372(str, (String) AbstractC0925.m1545(arrayList, 1, String.class), false);
        }
        JSONArray jSONArray = new JSONArray((Collection) AbstractC0925.m1545(arrayList, 1, List.class));
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList2.addAll(AbstractC0611.m1372(str, jSONArray.optString(i), false));
        }
        return arrayList2;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1315(ArrayList arrayList) {
        return AbstractC0611.m1375((String) AbstractC0925.m1545(arrayList, 0, String.class));
    }
}
