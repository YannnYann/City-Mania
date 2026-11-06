package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.IronSourceAdQuality;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Calendar;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Κ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public class C0181 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f1193 = StringFog.decrypt("zSGEb+kRz671F7Br/RjVrssgu3/6HNK1/g==\n", "jEXVGoh9pto=\n");

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final long f1194;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final r f1195;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Context f1196;

    public C0181(Context context, r rVar, long j) {
        this.f1196 = context;
        this.f1195 = rVar;
        this.f1194 = j;
        new C0970(context);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final JSONObject m1146(boolean z) {
        JSONObject jSONObjectMo1145 = mo1145(new JSONObject(), z, true, false);
        try {
            String string = this.f1196.getSharedPreferences(AbstractC3501p.f367, 0).getString(AbstractC3501p.f366, null);
            if (!TextUtils.isEmpty(string)) {
                jSONObjectMo1145.put(StringFog.decrypt("khQrOw==\n", "+3BNUkz/mZQ=\n"), string);
                return jSONObjectMo1145;
            }
        } catch (Throwable th) {
            String str = AbstractC3501p.f368;
            AbstractC0182.m1156(str, str, StringFog.decrypt("fV/HKXYZNt4eUdYhMiJ/w0pJkgR2BDHDWlbbZWYYMcBNX9w=\n", "PjCyRRJ3Eao=\n"), th, null, false);
        }
        return jSONObjectMo1145;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public JSONObject mo1145(JSONObject jSONObject, boolean z, boolean z2, boolean z3) throws JSONException {
        String str;
        String str2;
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        JSONObject jSONObjectM1573 = AbstractC0962.m1573(jSONObject, false);
        if (!TextUtils.isEmpty(this.f1195.f378)) {
            jSONObjectM1573.put(StringFog.decrypt("Pv62mVlh\n", "X47G0jwYQJc=\n"), this.f1195.f378);
        } else if (!TextUtils.isEmpty(this.f1195.f377)) {
            jSONObjectM1573.put(StringFog.decrypt("q2Oz\n", "zCrXegGgKqA=\n"), this.f1195.f377);
        }
        String str3 = this.f1195.f374;
        if (!TextUtils.isEmpty(str3)) {
            jSONObjectM1573.put(StringFog.decrypt("QAbloA==\n", "KXWXw2Vd11E=\n"), str3);
        }
        if (z2) {
            if (this.f1194 > 0) {
                jSONObjectM1573.put(StringFog.decrypt("tq447w==\n", "2s1MnJPxU0M=\n"), this.f1194);
            }
            jSONObjectM1573.put(StringFog.decrypt("dJZeLtw=\n", "F/kuXr0ieoA=\n"), this.f1195.f373);
            jSONObjectM1573.put(StringFog.decrypt("Ow7m\n", "X2eSculZmYg=\n"), this.f1195.f372);
            String strDecrypt = StringFog.decrypt("S2DG\n", "Pgmiu+gnpCE=\n");
            r rVar = this.f1195;
            synchronized (rVar) {
                str = rVar.f376;
            }
            jSONObjectM1573.put(strDecrypt, str);
            jSONObjectM1573.put(StringFog.decrypt("Z5I=\n", "EvF7RENR2kA=\n"), this.f1195.f375);
            jSONObjectM1573.put(StringFog.decrypt("Vvw=\n", "IoYUbf8cckQ=\n"), ((double) Calendar.getInstance().getTimeZone().getRawOffset()) / 3600000.0d);
            jSONObjectM1573.put(StringFog.decrypt("VzJqq54=\n", "I0I8zuxnt/0=\n"), IronSourceAdQuality.getSDKVersion());
            String strDecrypt2 = StringFog.decrypt("GA==\n", "bH6A/jqsLsA=\n");
            String str4 = AbstractC0392.f2026;
            try {
                try {
                    Class.forName(StringFog.decrypt("oTPLS7+lYZm7b8JLuqdplKcuiDCkonyUkjDHHK+5\n", "wlymZcrLCO0=\n"));
                    str2 = AbstractC0392.f2020;
                } catch (ClassNotFoundException unused) {
                    Class.forName(StringFog.decrypt("SR+zQNmy5LZZH6sc06WluU4Bqw/cqf+hWRS1QMOk4PZLGaxA46/ktUYRihzRo+66SxO1K8i07rZZ\nGbEA\n", "KnDebrDAi9g=\n"));
                    str2 = AbstractC0392.f2019;
                }
            } catch (ClassNotFoundException unused2) {
                str2 = AbstractC0392.f2018;
            }
            jSONObjectM1573.put(strDecrypt2, str2);
            jSONObjectM1573.put(StringFog.decrypt("aNFa8Xg=\n", "Bb4+lBRa0yw=\n"), Build.MODEL);
            jSONObjectM1573.put(StringFog.decrypt("6n6q0OnxBRbybaHX\n", "hx/EpY+QZmI=\n"), Build.MANUFACTURER);
            jSONObjectM1573.put(StringFog.decrypt("oCc5oGyiU6M=\n", "0EtY1ArNIc4=\n"), StringFog.decrypt("WovSP3Sw0g==\n", "O+W2TRvZts4=\n"));
            String strDecrypt3 = StringFog.decrypt("TWxp\n", "Ih8fEmkyy08=\n");
            String str5 = AbstractC0077.f850;
            jSONObjectM1573.put(strDecrypt3, Build.VERSION.RELEASE);
            AbstractC0392.m1266(this.f1196, jSONObjectM1573);
            Context context = this.f1196;
            try {
                if (context.checkCallingOrSelfPermission(StringFog.decrypt("Cg+tOk2uclgbBLslS7RlHwQP5wlhhFMlOD6eAWSOSSU/IJ0N\n", "a2HJSCLHFnY=\n")) == 0) {
                    AbstractC0962.m1575(jSONObjectM1573, AbstractC0077.m1080(context), false);
                }
            } catch (Throwable th) {
                String str6 = AbstractC0077.f850;
                AbstractC0182.m1156(str6, str6, StringFog.decrypt("wWTNwqZ1R9Xgf9HK9CJP1+021sOyOgbF6zba27E7Ug==\n", "hBa/rdRVJrE=\n"), th, null, false);
            }
            Context context2 = this.f1196;
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context2.getSystemService(StringFog.decrypt("tLhU7TlNnwOhvk76\n", "19c6g1wu62o=\n"));
                TelephonyManager telephonyManager = (TelephonyManager) context2.getSystemService(StringFog.decrypt("/CIfUHo=\n", "jEpwPh+S/SU=\n"));
                NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
                if (networkInfo != null) {
                    jSONObjectM1573.put(AbstractC0077.f836, networkInfo.getState());
                    if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                        jSONObjectM1573.put(AbstractC0077.f835, networkInfo.getType());
                        jSONObjectM1573.put(AbstractC0077.f834, networkInfo.getTypeName());
                        jSONObjectM1573.put(AbstractC0077.f833, networkInfo.getSubtype());
                        jSONObjectM1573.put(AbstractC0077.f832, networkInfo.getSubtypeName());
                        jSONObjectM1573.put(AbstractC0077.f831, telephonyManager.getNetworkOperator());
                        jSONObjectM1573.put(AbstractC0077.f830, telephonyManager.getNetworkOperatorName());
                        jSONObjectM1573.put(AbstractC0077.f829, telephonyManager.getNetworkCountryIso());
                        if (z3) {
                            jSONObjectM1573.put(AbstractC0077.f828, telephonyManager.getSimOperator());
                            jSONObjectM1573.put(AbstractC0077.f827, telephonyManager.getSimOperatorName());
                        }
                    }
                }
            } catch (Throwable th2) {
                String str7 = AbstractC0077.f850;
                AbstractC0182.m1156(str7, str7, StringFog.decrypt("e8WP8/tjl6da3pP7qS6ZoVfbmLzgLZCsHsOSvOw1k61K\n", "Prf9nIlD9sM=\n"), th2, null, false);
            }
            AbstractC0077.m1087(jSONObjectM1573);
            AbstractC0077.m1081(jSONObjectM1573);
            jSONObjectM1573.put(StringFog.decrypt("Z9XltQ==\n", "CaKEw1LtMoM=\n"), z);
            AbstractC0077.m1086(this.f1196, jSONObjectM1573);
            try {
                jSONObjectM1573.put(AbstractC0077.f841, AbstractC0962.m1573(AbstractC0077.m1083(), false));
            } catch (JSONException unused3) {
            }
            try {
                JSONObject jSONObject2 = new JSONObject(this.f1195.f371);
                jSONObject2.remove(StringFog.decrypt("SI9BDpHcgPt2iVw+mg==\n", "KeswUfiy6Y8=\n"));
                jSONObject2.remove(StringFog.decrypt("lQXRUtRnrruTDdpP1GCko4UK\n", "4GS1IYsUy8g=\n"));
                if (jSONObject2.length() > 0) {
                    jSONObjectM1573.putOpt(StringFog.decrypt("fV9o4w==\n", "ECsMl58ais8=\n"), jSONObject2);
                }
            } catch (Exception e) {
                String str8 = f1193;
                AbstractC0182.m1156(str8, str8, StringFog.decrypt("D6ocEojElDAusQAa2omQICv4ChyOhdU+ObcAXY6L1TE8vQAJ\n", "Sthuffrk9VQ=\n"), e, null, false);
            }
        }
        return jSONObjectM1573;
    }
}
