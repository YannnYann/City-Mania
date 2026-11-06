package com.ironsource.adqualitysdk.sdk.i;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.ironsource.adqualitysdk.sdk.StringFog;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﾋ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C1019 implements InterfaceC0651 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Context f3823;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final String[] f3822 = {StringFog.decrypt("8PisdN0uUijj5a4iyWlHK/flrjPU\n", "k5fBWrBHJkU=\n"), StringFog.decrypt("rN/GRtRwuAWgxsoG1WWyDr3dhRjSdqcFqt3EHNQ=\n", "z7CraLEX13c=\n"), StringFog.decrypt("4zk086HsdzL1LyGyuPo=\n", "jEtT3dGeGEo=\n"), StringFog.decrypt("brGnYAZQHrdkqqs3RF0cun2qpSEGXgG6\n", "Dd7KTmo1aM4=\n"), StringFog.decrypt("hjzhX/oXwc+bIfZf/hPN2Iov9BDr\n", "6U6GcYl2r6s=\n")};

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String[] f3821 = {StringFog.decrypt("UBuefnIy/g5VENR+cjnsDkwO3394NKZJWg3EbXE87VI=\n", "NH6wDB1QiCA=\n"), StringFog.decrypt("MofdwfQV1VArh4DS8Q==\n", "W+jzt5U7sCg=\n"), StringFog.decrypt("DSkAkPijNr8VYkuf7Q==\n", "YEwu553KRdc=\n"), StringFog.decrypt("aTf9qc29lTB1IP6pzK+LPmEg6A==\n", "BkWah6HO5V8=\n"), StringFog.decrypt("XLmYiCfT+UpWvdvVIdD/TE23gcM=\n", "P9b1plSyjDg=\n")};

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String[] f3820 = {StringFog.decrypt("KDG3q/DPjtokNrTy8Y6T0Sw3qe4=\n", "S17ahYSg/rA=\n"), StringFog.decrypt("76fW3bboyxfsu4rb8PrXCe+gi8s=\n", "itL4vt6Jonk=\n"), StringFog.decrypt("t+LQyEwbOW+85NaCUgA4ffr+yJZCBjlvsf8=\n", "1I295id0TBw=\n"), StringFog.decrypt("k910sjiT80CF1HbpeJ3uTILdcPh4j/U=\n", "8LIZnFb8gCg=\n"), StringFog.decrypt("+sm49hg9bSL91rSqGCwqI+zWsKoZJmEi\n", "mabV2GxVBFA=\n"), StringFog.decrypt("D+tS8XFRwaQD81qsJkfY\n", "bIQ/3wg0rcg=\n"), StringFog.decrypt("FOcIG46I0j4Y4QEbmYPYKB7mAhuNj9ogHuYCG6aI9zwHygxZg4/YKyTtF0OGhdNiNMcsew==\n", "d4hlNe/mtkw=\n"), StringFog.decrypt("WAOcsGWGYcJLGYKwao9nxUIckOplhg==\n", "O2zxngbuBK4=\n"), StringFog.decrypt("8SSUHOWb+7b1KpRX2ZH68A==\n", "kkv5Mobyk5g=\n"), StringFog.decrypt("3o97rJUMYq3ekW+sgQ97p9mcf+k=\n", "sf0cguZuFsI=\n"), StringFog.decrypt("IL7umJQmdJsn//PdlA==\n", "Q9GDtvNTFek=\n")};

    public C1019(Context context) {
        this.f3823 = context;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0651
    public final String getName() {
        return StringFog.decrypt("Ks7Lx8UWGHoqzsn91BgYeSrS\n", "T6C9rrd5dhc=\n");
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0651
    /* JADX INFO: renamed from: ﾒ */
    public final C0873 mo1250() {
        ArrayList arrayList;
        ArrayList arrayList2;
        String strDecrypt;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayListM1598 = m1598(f3822);
        if (!arrayListM1598.isEmpty()) {
            arrayList3.add(40);
        }
        ArrayList arrayListM15982 = m1598(f3821);
        if (!arrayListM15982.isEmpty()) {
            arrayList3.add(41);
        }
        ArrayList arrayListM15983 = m1598(f3820);
        if (!arrayListM15983.isEmpty()) {
            arrayList3.add(42);
        }
        try {
            List<ApplicationInfo> installedApplications = this.f3823.getPackageManager().getInstalledApplications(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
            arrayList = new ArrayList();
            for (ApplicationInfo applicationInfo : installedApplications) {
                if (applicationInfo.packageName.toLowerCase().contains(StringFog.decrypt("s6A5\n", "xdBXARyovmo=\n"))) {
                    arrayList.add(applicationInfo.packageName);
                }
            }
        } catch (Throwable unused) {
            arrayList = new ArrayList();
        }
        if (!arrayList.isEmpty()) {
            arrayList3.add(33);
        }
        try {
            ActivityManager activityManager = (ActivityManager) this.f3823.getSystemService(StringFog.decrypt("2O4gv9lDjZs=\n", "uY1U1q8q+eI=\n"));
            if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                arrayList2 = new ArrayList();
            } else {
                ArrayList arrayList4 = new ArrayList();
                Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                while (it.hasNext()) {
                    String str = it.next().processName;
                    if (m1597(str)) {
                        arrayList4.add(str);
                    }
                }
                arrayList2 = arrayList4;
            }
        } catch (Exception unused2) {
            arrayList2 = new ArrayList();
        }
        Iterator it2 = arrayList2.iterator();
        while (true) {
            if (it2.hasNext()) {
                String str2 = (String) it2.next();
                if (!arrayListM1598.contains(str2) && !arrayListM15982.contains(str2) && !arrayListM15983.contains(str2)) {
                    arrayList3.add(43);
                    break;
                }
            }
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(StringFog.decrypt("7BitI1tVCP7wGQ==\n", "nGrCWyIBZ5E=\n"), new JSONArray((Collection) arrayListM1598));
            jSONObject.put(StringFog.decrypt("RAXRIYW/0qliD80olw==\n", "NmCiROTNscE=\n"), new JSONArray((Collection) arrayListM15982));
            jSONObject.put(StringFog.decrypt("TFqQFe841J1DQQ==\n", "LzL1dJtsu/I=\n"), new JSONArray((Collection) arrayListM15983));
            jSONObject.put(StringFog.decrypt("4sTwtI/INw==\n", "lLSe9f+4ROU=\n"), new JSONArray((Collection) arrayList));
            strDecrypt = jSONObject.toString();
        } catch (Exception unused3) {
            strDecrypt = StringFog.decrypt("vRU=\n", "xmh0rBEjnBE=\n");
        }
        return new C0873(arrayList3.isEmpty(), arrayList3, strDecrypt, null);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final ArrayList m1598(String[] strArr) {
        PackageManager packageManager = this.f3823.getPackageManager();
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            try {
                packageManager.getPackageInfo(str, 0);
                arrayList.add(str);
            } catch (PackageManager.NameNotFoundException | SecurityException unused) {
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static boolean m1597(String str) {
        String lowerCase = str.toLowerCase();
        for (String str2 : f3822) {
            if (lowerCase.contains(str2.toLowerCase())) {
                return true;
            }
        }
        for (String str3 : f3821) {
            if (lowerCase.contains(str3.toLowerCase())) {
                return true;
            }
        }
        for (String str4 : f3820) {
            if (lowerCase.contains(str4.toLowerCase())) {
                return true;
            }
        }
        return false;
    }
}
