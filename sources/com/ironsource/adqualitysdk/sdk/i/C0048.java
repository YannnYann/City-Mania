package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.ISAdQualityAdType;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.İ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0048 {

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f631;

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f632;

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f633;

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f634;

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f635;

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f636;

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f637;

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f638;

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public static final String f639;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public final C0825 f645;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public JSONObject f646;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final C0937 f647;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public C0514 f648;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public C0481 f649 = null;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public C0875 f650;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final AbstractC0208 f651;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0691 f652;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0915 f653;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0708 f654;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static final String f644 = StringFog.decrypt("LPaud5Bak/oy+rBsgVG37A==\n", "fpPDGOQ/0p4=\n");

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static final String f643 = StringFog.decrypt("PrPQqhqUHag=\n", "X9Ckw2z9adE=\n");

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static final String f642 = StringFog.decrypt("5Fc0MQ==\n", "kj5RRoX1Em4=\n");

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public static final String f641 = StringFog.decrypt("vMjlM3F1\n", "y6GLVx4CAdA=\n");

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static final String f640 = StringFog.decrypt("Whv/TJxs7Jt3Ee1AiXz7jl4=\n", "O3iLJeoFmOI=\n");

    static {
        StringFog.decrypt("xY7/In1AqEzbguE5bEuMWrk=\n", "l+uSTQkl6Sg=\n");
        f639 = StringFog.decrypt("/McMqkoL6wTAyQekRxndWA==\n", "r6hjxyZqqXY=\n");
        StringFog.decrypt("h61xjJSvF7OHqkmMkbIGpKO8Kw==\n", "xs4F5eLGY8o=\n");
        StringFog.decrypt("FwG39cv2rGgyHLfs7+DO\n", "QWjSgoqS4AE=\n");
        StringFog.decrypt("VuMTHJUv6TFN4w4MnzbNJy8=\n", "AYp9ePpYqFU=\n");
        StringFog.decrypt("lLH61zItzUeZu+jbJz3aUrD8\n", "1dKOvkREuT4=\n");
        StringFog.decrypt("3fMfaiV0XUTO+A==\n", "tJ12HkwVMS0=\n");
        StringFog.decrypt("PupB1JwwOsom62E=\n", "X44Fve9AVqs=\n");
        StringFog.decrypt("+E3t+E9q40/gTM3URG79Tw==\n", "mSmpkTwajy4=\n");
        StringFog.decrypt("x9qGjNEyFnvC\n", "pr7F4LhRfR4=\n");
        StringFog.decrypt("Dd3s/98obGwI/9382wF0\n", "bLmvk7ZLBwk=\n");
        StringFog.decrypt("WLETwa8I724=\n", "OdVQrcB7igo=\n");
        StringFog.decrypt("2kwh+pEa42vPTSHp\n", "rCVEjdBulwo=\n");
        StringFog.decrypt("RfwOnOt8MdNX2gC25mAq+0T8Aqs=\n", "Mpls34MOXr4=\n");
        StringFog.decrypt("DFKM918YGJ8KSYs=\n", "byf/gzB1Xek=\n");
        StringFog.decrypt("o9RQOQlSEIO47n4LGGIeir7VZCcd\n", "zLoRSXkBde0=\n");
        StringFog.decrypt("eDsXgajATkFiJziUvMZEc3gnM5aq/V5bcw==\n", "F1VW8diSKzU=\n");
        StringFog.decrypt("hrWE2Y2YgRadoobInJCDGo0=\n", "6dvFuvnx938=\n");
        StringFog.decrypt("KWyeLAE8Bxkye4w7FCcFFSI=\n", "RgLfT3VVcXA=\n");
        StringFog.decrypt("jFzztaLfolqXS+CzpcO5Voc=\n", "4zKy1ta21DM=\n");
        StringFog.decrypt("+6Hz/D+nITXgtuL+Pr0yOA==\n", "lM+yn0vOV1w=\n");
        StringFog.decrypt("HLHkGXjWyCIHpvYOY8/OLhc=\n", "c9+legy/vks=\n");
        StringFog.decrypt("2HzZIYfLAk/Da8sjhcc9SMRm+SyQxydS1mb9\n", "txKYQvOidCY=\n");
        StringFog.decrypt("8krIBt2/1b3pXc0A2qLRu+RB7Q==\n", "nSSJZanWo9Q=\n");
        f638 = StringFog.decrypt("/huW0Q/N3ko=\n", "l3X8tGy5lDk=\n");
        f637 = StringFog.decrypt("6UTOlMS+LHDgQw==\n", "gzea+43QRhU=\n");
        f636 = StringFog.decrypt("vxFyxL31N+U=\n", "1WIittiTXp0=\n");
        f635 = StringFog.decrypt("FZgYJfiVp8QqmA==\n", "YOt9YIDh1aU=\n");
        f634 = StringFog.decrypt("iMaU3DyeO8M=\n", "6bbkmlP9TrA=\n");
        StringFog.decrypt("E3I8sQ0jgNweaz+DBy6Q3Xw=\n", "UgJM92JA9a8=\n");
        StringFog.decrypt("DQouHwSREKINFxw=\n", "YmRocGfkY+4=\n");
        StringFog.decrypt("5DUJnOyI9BnuKDuc/Zjj\n", "i1tP84/9h0s=\n");
        f633 = StringFog.decrypt("w6MQ/g2NyCDWvh/8FIE=\n", "osdRnXnkvkk=\n");
        f632 = StringFog.decrypt("cNUTWpow2jVwwjZ9nir8\n", "EbFFM/9HmVk=\n");
        f631 = StringFog.decrypt("til7l/+eHE6zDn+N2Q==\n", "wEAe4LzyfT0=\n");
    }

    public C0048(C0937 c0937, C0691 c0691, AbstractC0208 abstractC0208, C0708 c0708, C0915 c0915) {
        this.f654 = c0708;
        C0915 c09152 = new C0915(new HashMap(), c0915, null, null, true);
        c09152.f3492 = this;
        this.f653 = c09152;
        Iterator it = c0708.m1428().iterator();
        while (it.hasNext()) {
            c09152.f3497.put((String) it.next(), null);
        }
        c0915.m1541(c0708.f2897.f2710, this);
        this.f652 = c0691;
        this.f651 = abstractC0208;
        this.f650 = new C0875(this);
        this.f647 = c0937;
        this.f645 = new C0825();
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m1059() {
        JSONObject jSONObject;
        ArrayList arrayList;
        for (C0652 c0652 : this.f654.m1430()) {
            C0893 c0893 = (C0893) AbstractC0885.m1491();
            if (c0893.f3408 == null) {
                synchronized (c0893) {
                    jSONObject = c0893.f2612;
                }
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(c0893.f3444);
                if (jSONArrayOptJSONArray != null) {
                    arrayList = new ArrayList();
                    for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                        ISAdQualityAdType iSAdQualityAdTypeFromInt = ISAdQualityAdType.fromInt(jSONArrayOptJSONArray.optInt(i));
                        if (iSAdQualityAdTypeFromInt != null) {
                            arrayList.add(iSAdQualityAdTypeFromInt);
                        }
                    }
                } else {
                    arrayList = null;
                }
                c0893.f3408 = arrayList;
            }
            ArrayList arrayList2 = c0893.f3408;
            ISAdQualityAdType iSAdQualityAdType = c0652.f2683;
            boolean zContains = true;
            if (arrayList2 != null && iSAdQualityAdType != ISAdQualityAdType.UNKNOWN) {
                zContains = true ^ arrayList2.contains(iSAdQualityAdType);
            }
            if (zContains) {
                m1065(c0652);
            }
        }
        String strDecrypt = StringFog.decrypt("0o/sM6MFTSzMg/Iosg5pOq6D7zWjCW0k6ZDk\n", "gOqBXNdgDEg=\n");
        ArrayList arrayList3 = new ArrayList();
        AbstractC0272.m1211(new C0804(this, strDecrypt, arrayList3));
        AbstractC0272.m1210(new C0683(this, strDecrypt, arrayList3));
        try {
            AbstractC0272.m1212(new C0632(new C0659(this, strDecrypt, arrayList3)));
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String m1060() {
        return this.f647.f3544.f2380 + StringFog.decrypt("xA==\n", "6zokPq9Ryn4=\n") + this.f654.f2897.f2710;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0041  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m1065(com.ironsource.adqualitysdk.sdk.i.C0652 r14) {
        /*
            Method dump skipped, instruction units count: 414
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.C0048.m1065(com.ironsource.adqualitysdk.sdk.i.ᴰ):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m1066(java.lang.String r7, com.ironsource.adqualitysdk.sdk.i.C0652 r8) {
        /*
            r6 = this;
            org.json.JSONObject r8 = r8.f2682
            org.json.JSONObject r8 = r6.m1064(r8)
            if (r8 == 0) goto L8d
            java.lang.String r0 = "eBJN1+/7Gt1pHkzd6NEr0HwY\n"
            java.lang.String r1 = "DH04tIe/f6k=\n"
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r0, r1)
            boolean r0 = r8.has(r0)
            if (r0 == 0) goto L8d
            java.lang.String r0 = "DWWZfIGB4fQcaZh2hqvQ+Qlv\n"
            java.lang.String r1 = "eQrsH+nFhIA=\n"
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r0, r1)
            r1 = 0
            java.lang.String r0 = r8.optString(r0, r1)
            com.ironsource.adqualitysdk.sdk.i.ˑ r0 = com.ironsource.adqualitysdk.sdk.i.EnumC0168.m1142(r0)
            int r2 = r7.hashCode()
            r3 = -1655966961(0xffffffff9d4bf30f, float:-2.6992485E-21)
            r4 = 2
            r5 = 1
            if (r2 == r3) goto L51
            r3 = -787751952(0xffffffffd10bdbf0, float:-3.754315E10)
            if (r2 == r3) goto L47
            r3 = 3619493(0x373aa5, float:5.07199E-39)
            if (r2 == r3) goto L3d
            goto L5b
        L3d:
            java.lang.String r2 = com.ironsource.adqualitysdk.sdk.i.C0048.f642
            boolean r7 = r7.equals(r2)
            if (r7 == 0) goto L5b
            r7 = r5
            goto L5c
        L47:
            java.lang.String r2 = com.ironsource.adqualitysdk.sdk.i.C0048.f641
            boolean r7 = r7.equals(r2)
            if (r7 == 0) goto L5b
            r7 = r4
            goto L5c
        L51:
            java.lang.String r2 = com.ironsource.adqualitysdk.sdk.i.C0048.f643
            boolean r7 = r7.equals(r2)
            if (r7 == 0) goto L5b
            r7 = 0
            goto L5c
        L5b:
            r7 = -1
        L5c:
            if (r7 == 0) goto L71
            if (r7 == r5) goto L6a
            if (r7 == r4) goto L63
            goto L77
        L63:
            java.lang.String r7 = com.ironsource.adqualitysdk.sdk.i.C0048.f631
            java.lang.String r1 = r8.optString(r7, r1)
            goto L77
        L6a:
            java.lang.String r7 = com.ironsource.adqualitysdk.sdk.i.C0048.f632
            java.lang.String r1 = r8.optString(r7, r1)
            goto L77
        L71:
            java.lang.String r7 = com.ironsource.adqualitysdk.sdk.i.C0048.f633
            java.lang.String r1 = r8.optString(r7, r1)
        L77:
            if (r0 == 0) goto L8d
            com.ironsource.adqualitysdk.sdk.i.ˍ r7 = com.ironsource.adqualitysdk.sdk.i.C0164.m1136()
            monitor-enter(r7)
            android.os.Handler r8 = r7.f1167     // Catch: java.lang.Throwable -> L8a
            com.ironsource.adqualitysdk.sdk.i.ـ r2 = new com.ironsource.adqualitysdk.sdk.i.ـ     // Catch: java.lang.Throwable -> L8a
            r2.<init>(r7, r1, r0)     // Catch: java.lang.Throwable -> L8a
            r8.post(r2)     // Catch: java.lang.Throwable -> L8a
            monitor-exit(r7)
            return
        L8a:
            r8 = move-exception
            monitor-exit(r7)
            throw r8
        L8d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.C0048.m1066(java.lang.String, com.ironsource.adqualitysdk.sdk.i.ᴰ):void");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static boolean m1058(C0048 c0048, Activity activity, ArrayList arrayList) {
        c0048.getClass();
        return arrayList.isEmpty() || arrayList.contains(activity.getClass().getName());
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static JSONObject m1056(C0048 c0048, Activity activity) {
        c0048.getClass();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AbstractC0047.f630, c0048.f647.f3544.f2381);
            jSONObject.put(AbstractC0047.f584, c0048.f647.f3544.f2379);
            jSONObject.put(AbstractC0047.f583, c0048.f647.f3541.mo1007());
            jSONObject.put(StringFog.decrypt("x3x8jj/BFA==\n", "ph8IwF6sccg=\n"), activity.getClass().getName());
            return jSONObject;
        } catch (JSONException unused) {
            AbstractC0182.m1147(f644, StringFog.decrypt("Up/uirijqQtyjOiMpOTqGHSZvI+57KRZeI/2gKn3\n", "F+2c5cqDynk=\n"));
            return jSONObject;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1057(C0048 c0048, String str, boolean z, boolean z2, List list) {
        boolean z3;
        c0048.getClass();
        try {
            C0987 c0987M1429 = c0048.f654.m1429(str);
            if (c0987M1429 != null) {
                String str2 = c0987M1429.f3704;
                C0946 c0946M1427 = c0048.f654.m1427(str2);
                if (c0946M1427 != null) {
                    if (z == c0987M1429.f3706 && z2 == c0987M1429.f3705) {
                        C0204 c0204M1165 = C0204.m1165();
                        synchronized (c0204M1165) {
                            z3 = c0204M1165.f1360;
                        }
                        if (z3) {
                            String strM1060 = c0048.m1060();
                            int i = AbstractC0923.f3512;
                            String str3 = StringFog.decrypt("5Iyi+A==\n", "t97u2HRbwRc=\n") + strM1060;
                            AbstractC0182.m1157(str3, str3, str, false);
                        }
                        C0915 c0915 = c0048.f653;
                        c0946M1427.m1558(c0915, c0915.f3495, c0048, list);
                        return;
                    }
                    return;
                }
                new C0154(c0048, null, str2, StringFog.decrypt("pvLIwzKrzK+N5NbFLuyEq5Xl1Nhg\n", "44C6rECLpM4=\n") + str).m1421(c0048.m1060());
            }
        } catch (Throwable th) {
            AbstractC0923.m1543(c0048.m1060(), AbstractC0202.m1159("kxZCM050E7S4AFw1UjNbsKABXigc\n", "1mQwXDxUe9U=\n", new StringBuilder(), str), th, null);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m1061(String str) {
        Class clsMo1006;
        AbstractC0208 abstractC0208 = this.f651;
        String strSubstring = str.substring(0, str.length() - StringFog.decrypt("9lPHxPRr\n", "2DCrpYcYNyY=\n").length());
        abstractC0208.getClass();
        try {
            if (Prode.class.getName().equals("com.ironsource.adqualitysdk.sdk.i.Prode")) {
                clsMo1006 = abstractC0208.m1186(strSubstring, false);
            } else {
                clsMo1006 = abstractC0208.mo1006(strSubstring);
            }
        } catch (Throwable unused) {
            clsMo1006 = null;
        }
        if (clsMo1006 != null) {
            return clsMo1006.getName();
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final JSONObject m1063() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AbstractC0047.f630, this.f647.f3544.f2381);
            jSONObject.put(AbstractC0047.f583, this.f647.f3541.mo1007());
            jSONObject.put(AbstractC0047.f584, this.f647.f3544.f2379);
            return jSONObject;
        } catch (JSONException e) {
            AbstractC0182.m1147(f644, StringFog.decrypt("gU6Z20Pi9dChXZ/dX6W2x7JZhcARqOXNqgbL\n", "xDzrtDHClqI=\n") + e.getLocalizedMessage());
            return jSONObject;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final JSONObject m1064(JSONObject jSONObject) {
        C3486h0 c3486h0;
        String str = f636;
        String strOptString = jSONObject.optString(str);
        jSONObject.remove(str);
        String str2 = f638;
        if (jSONObject.optBoolean(str2)) {
            C0937 c0937 = this.f647;
            synchronized (c0937) {
                c3486h0 = c0937.f3538;
            }
            if (c3486h0 != null) {
                if (!TextUtils.isEmpty(c3486h0.f270)) {
                    jSONObject.remove(str2);
                    try {
                        jSONObject.put(f637, strOptString + c3486h0.f270);
                    } catch (JSONException unused) {
                    }
                }
                if (c3486h0.f269) {
                    try {
                        jSONObject.put(f635, true);
                    } catch (JSONException unused2) {
                    }
                }
            }
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objOpt = jSONObject.opt(next);
            if (objOpt instanceof String) {
                String str3 = (String) objOpt;
                if (str3.endsWith(StringFog.decrypt("UyIFZkYK\n", "fUFpBzV5juk=\n"))) {
                    String strM1061 = m1061(str3);
                    if (strM1061 != null) {
                        try {
                            jSONObject.put(next, strM1061);
                        } catch (JSONException unused3) {
                        }
                    } else {
                        String strM1060 = m1060();
                        String strM1456 = AbstractC0829.m1456("59KVEaTHRnmp2NpIpMBLY7XIkwvjgUVltMifC+HTCX+iyI8V\n", "x7z6ZYShKQw=\n", AbstractC0594.m1349("zJmXj8gR\n", "j/X2/LsxEqA=\n", new StringBuilder(), str3));
                        int i = AbstractC0923.f3512;
                        String strM1159 = AbstractC0202.m1159("5Iyi+A==\n", "t97u2HRbwRc=\n", new StringBuilder(), strM1060);
                        AbstractC0182.m1157(strM1159, strM1159, strM1456, false);
                        return null;
                    }
                } else {
                    continue;
                }
            } else if (objOpt instanceof JSONArray) {
                jSONObject.put(next, new JSONArray((Collection) m1062(AbstractC0962.m1571((JSONArray) objOpt))));
            }
        }
        return jSONObject;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final ArrayList m1062(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str.endsWith(StringFog.decrypt("UyIFZkYK\n", "fUFpBzV5juk=\n"))) {
                String strM1061 = m1061(str);
                if (strM1061 != null) {
                    arrayList.add(strM1061);
                }
            } else {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1067(String str, JSONObject jSONObject) {
        C0385 c0385;
        if (str.equals(StringFog.decrypt("HWJjxJXuc/Udf1nE\n", "fAY8oPydA5k=\n"))) {
            C0964 c0964 = this.f647.f3543;
            c0964.getClass();
            int iOptInt = jSONObject.optInt(AbstractC0047.f627);
            C0385 c03852 = c0964.f3646;
            if (c03852 != null) {
                c03852.adDisplayed(jSONObject.optString(AbstractC0047.f630), ISAdQualityAdType.fromInt(iOptInt));
            }
        } else if (str.equals(StringFog.decrypt("kN5Ef0vYX0KV\n", "8bobHCe3LCc=\n")) && (c0385 = this.f647.f3543.f3646) != null) {
            c0385.adClosed(jSONObject.optString(AbstractC0047.f630), ISAdQualityAdType.fromInt(jSONObject.optInt(AbstractC0047.f627)));
        }
        JSONObject jSONObjectM1063 = m1063();
        AbstractC0962.m1575(jSONObjectM1063, jSONObject, false);
        JSONObject jSONObjectM1573 = AbstractC0962.m1573(jSONObjectM1063, false);
        if (str.equals(AbstractC0047.f590)) {
            C0964 c09642 = this.f647.f3543;
            c09642.f3645.post(new C0985(c09642, C0964.f3638, jSONObjectM1573));
            return;
        }
        if (str.equals(AbstractC0047.f589)) {
            C0964 c09643 = this.f647.f3543;
            c09643.f3645.post(new C0985(c09643, C0964.f3637, jSONObjectM1573));
            return;
        }
        if (str.equals(AbstractC0047.f591)) {
            C0964 c09644 = this.f647.f3543;
            c09644.f3645.post(new C0985(c09644, C0964.f3639, jSONObjectM1573));
            return;
        }
        if (str.equals(AbstractC0047.f592)) {
            C0964 c09645 = this.f647.f3543;
            c09645.f3645.post(new C0985(c09645, C0964.f3640, jSONObjectM1573));
            return;
        }
        if (str.equals(AbstractC0047.f588)) {
            C0964 c09646 = this.f647.f3543;
            c09646.f3645.post(new C0985(c09646, C0964.f3636, jSONObjectM1573));
        } else if (str.equals(AbstractC0047.f586)) {
            C0964 c09647 = this.f647.f3543;
            c09647.f3645.post(new C0985(c09647, C0964.f3634, jSONObjectM1573));
        } else if (str.equals(AbstractC0047.f587)) {
            C0964 c09648 = this.f647.f3543;
            c09648.f3645.post(new C0985(c09648, C0964.f3635, jSONObjectM1573));
        } else {
            C0964 c09649 = this.f647.f3543;
            c09649.f3645.post(new C0985(c09649, str, jSONObject));
        }
    }
}
