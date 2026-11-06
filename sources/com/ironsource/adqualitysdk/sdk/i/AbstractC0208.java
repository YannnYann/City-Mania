package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ϯ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0208 extends AbstractC0925 implements InterfaceC0429 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public String f1382;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public String f1383;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String f1384;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public Map f1385;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String f1381 = StringFog.decrypt("7Y9sCtuKa/r6gU4p3JVuxvA=\n", "nuoYTK7mB6k=\n");

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final String f1380 = StringFog.decrypt("rw7Qu89qJBStK/O80G8YHpUY4g==\n", "xn2WzqMGd3A=\n");

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final String f1379 = StringFog.decrypt("34o3CwwTg9Y=\n", "uO9DSGBy8KU=\n");

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static final String f1378 = StringFog.decrypt("JYc6\n", "TOlOkXGD55s=\n");

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static final String f1377 = StringFog.decrypt("N6BRgA==\n", "W88/544dYE8=\n");

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static final String f1376 = StringFog.decrypt("IYflf5Kj\n", "ReiQHf7GzJM=\n");

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static final String f1375 = StringFog.decrypt("4dTAnwU=\n", "h7iv/nEINpM=\n");

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static final String f1374 = StringFog.decrypt("vRO+Uw==\n", "33zRPwwuKqU=\n");

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static final String f1373 = StringFog.decrypt("l6kUVw==\n", "9MF1JduyEBY=\n");

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public static final String f1372 = StringFog.decrypt("CUihuw==\n", "azHV3pfWxXc=\n");

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static final String f1371 = StringFog.decrypt("HoqZsw==\n", "aOXw12Bdzys=\n");

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public static final String f1370 = StringFog.decrypt("u8u5U+I=\n", "yKPWIZZ/004=\n");

    public AbstractC0208(String str) {
        this.f1384 = str;
    }

    /* JADX INFO: renamed from: ﻏ */
    public boolean mo1078() {
        return this instanceof C0099;
    }

    /* JADX INFO: renamed from: ﻐ */
    public boolean mo1075() {
        return this instanceof C0133;
    }

    /* JADX INFO: renamed from: ﻛ */
    public abstract String mo1004();

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final synchronized String m1185() {
        try {
            if (TextUtils.isEmpty(this.f1382) || this.f1382.equals(StringFog.decrypt("QhcnOmoXiQ==\n", "B1lmeCZSzRo=\n"))) {
                this.f1382 = mo1004();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f1382;
    }

    /* JADX INFO: renamed from: ﾇ */
    public abstract HashMap mo1005();

    /* JADX INFO: renamed from: ﾒ */
    public abstract Class mo1006(String str);

    /* JADX INFO: renamed from: ﾒ */
    public String mo1007() {
        String str = this.f1383;
        return str != null ? str : m1185();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0429
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1012(C0048 c0048, String str, ArrayList arrayList, C0875 c0875, C0915 c0915) {
        InterfaceC0209 interfaceC0209 = (InterfaceC0209) this.f1385.get(str);
        try {
        } catch (Exception e) {
            String str2 = this.f1384;
            StringBuilder sb = new StringBuilder();
            sb.append(StringFog.decrypt("cJXD6VmIXitci9SmTtBMIECT2OhMiA==\n", "NeexhiuoKUM=\n"));
            sb.append(this.f1384);
            AbstractC0923.m1543(str2, AbstractC0829.m1456("kw==\n", "tHL2np3gyyI=\n", AbstractC0594.m1349("CAs=\n", "KCzFLNB/r7M=\n", sb, str)), e, null);
        }
        if (interfaceC0209 != null) {
            return interfaceC0209.mo1003(arrayList, c0875);
        }
        new C3503q(c0048, c0915, this.f1384, str).m1421(this.f1384);
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a8  */
    /* JADX WARN: Type inference failed for: r7v15, types: [java.lang.Class] */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Class m1186(java.lang.String r7, boolean r8) {
        /*
            Method dump skipped, instruction units count: 294
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.AbstractC0208.m1186(java.lang.String, boolean):java.lang.Class");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1187(InterfaceC0445 interfaceC0445, C0875 c0875, String str, Object... objArr) {
        try {
            ArrayList arrayList = new ArrayList(Arrays.asList(objArr));
            arrayList.add(0, interfaceC0445);
            C0048.m1057(c0875.f3359, str, true, false, arrayList);
            C0048 c0048 = c0875.f3359;
            C0933 c0933 = new C0933(c0875, str, false, arrayList);
            c0048.getClass();
            try {
                AbstractC0272.m1214(c0933);
            } catch (Throwable unused) {
            }
            C0048 c00482 = c0875.f3359;
            C0933 c09332 = new C0933(c0875, str, true, arrayList);
            c00482.getClass();
            try {
                AbstractC0272.m1212(new C0632(c09332));
            } catch (Throwable unused2) {
            }
        } catch (Throwable th) {
            AbstractC0923.m1543(this.f1384, StringFog.decrypt("xJ47JZCgBsuh\n", "gexJSuKAb6U=\n") + this, th, null);
        }
    }
}
