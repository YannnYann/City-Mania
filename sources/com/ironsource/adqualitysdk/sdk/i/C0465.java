package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᐧ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0465 {

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static volatile boolean f2217;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static volatile C0465 f2218;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static final String f2221 = StringFog.decrypt("YhmcpA==\n", "FmvpwaybFfQ=\n");

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static final String f2220 = StringFog.decrypt("ht+oDIM=\n", "4L7Ef+YWQCk=\n");

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static final List f2219 = Arrays.asList(StringFog.decrypt("f+E=\n", "FocLG+1KdSs=\n"), StringFog.decrypt("eSrO6A==\n", "HEa9jY98GM8=\n"), StringFog.decrypt("6ZKRMA==\n", "h+f9XGE4r1c=\n"), StringFog.decrypt("GuAgmYJZ\n", "aIVU7PA3XdE=\n"), StringFog.decrypt("w0l2qaM=\n", "sDwGzNG+6hg=\n"), StringFog.decrypt("xjHG\n", "skO/a08Z3bg=\n"), StringFog.decrypt("77f3Gqs=\n", "jNaDecM54cE=\n"));

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0466[] f2227 = new C0466[Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE];

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0466[] f2226 = new C0466[Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE];

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final HashMap f2225 = new HashMap();

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final HashMap f2224 = new HashMap();

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final HashMap f2223 = new HashMap();

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final HashMap f2222 = new HashMap();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean f2228 = f2217;

    public C0465() {
        String strDecrypt = StringFog.decrypt("DyJoFioDkpALJG4AKFXF5HMzawY=\n", "Lh9UKAEuuL8=\n");
        for (int i = 0; i < strDecrypt.length(); i++) {
            char cCharAt = strDecrypt.charAt(i);
            this.f2227[cCharAt] = new C0466(EnumC0916.f3504, String.valueOf(cCharAt));
        }
        for (String str : Arrays.asList(StringFog.decrypt("1LA=\n", "6Y0LElF6eGk=\n"), StringFog.decrypt("Ia8=\n", "AJLGHPmFPU8=\n"), StringFog.decrypt("XnY=\n", "Ykt6W7IZRdY=\n"), StringFog.decrypt("FZs=\n", "K6YRu9m4oXA=\n"), StringFog.decrypt("o+w=\n", "iMePPB+TtN0=\n"), StringFog.decrypt("R7w=\n", "apE2t/4CWEA=\n"), StringFog.decrypt("6t8=\n", "lqOIzwdis0c=\n"), StringFog.decrypt("6rU=\n", "zJNVlx5PgWE=\n"))) {
            this.f2226[str.charAt(0)] = new C0466(EnumC0916.f3504, str);
        }
        for (String str2 : f2219) {
            this.f2225.put(str2, new C0466(EnumC0916.f3506, str2));
        }
        HashMap map = this.f2225;
        String strDecrypt2 = StringFog.decrypt("p5n/hA==\n", "0+uK4WM8jlM=\n");
        EnumC0916 enumC0916 = EnumC0916.f3500;
        map.put(strDecrypt2, new C0466(enumC0916, StringFog.decrypt("d3pvrA==\n", "AwgayQYjTLE=\n")));
        this.f2225.put(StringFog.decrypt("60qTdAY=\n", "jSv/B2M4Q8U=\n"), new C0466(enumC0916, StringFog.decrypt("zgoZ4X0=\n", "qGt1khinTus=\n")));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static synchronized void m1273() {
        C0465 c0465 = f2218;
        f2218 = null;
        if (c0465 != null) {
            c0465.m1277();
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final synchronized C0466 m1274(String str) {
        try {
            if (this.f2228) {
                return m1280(this.f2225, EnumC0916.f3505, str);
            }
            return new C0466((f2221.equals(str) || f2220.equals(str)) ? EnumC0916.f3500 : f2219.contains(str) ? EnumC0916.f3506 : EnumC0916.f3505, str);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final synchronized C0466 m1275(String str) {
        return m1280(this.f2224, EnumC0916.f3503, str);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized void m1277() {
        this.f2225.clear();
        this.f2224.clear();
        this.f2223.clear();
        this.f2222.clear();
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized C0466 m1276(String str) {
        return m1280(this.f2223, EnumC0916.f3502, str);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0466 m1278(char c, char c2) {
        if (!this.f2228) {
            return new C0466(EnumC0916.f3504, "" + c + c2);
        }
        return this.f2226[c];
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized C0466 m1279(String str) {
        return m1280(this.f2223, EnumC0916.f3501, str);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0466 m1280(HashMap map, EnumC0916 enumC0916, String str) {
        if (!this.f2228) {
            return new C0466(enumC0916, str);
        }
        C0466 c0466 = (C0466) map.get(str);
        if (c0466 != null) {
            return c0466;
        }
        C0466 c04662 = new C0466(enumC0916, str);
        map.put(str, c04662);
        return c04662;
    }
}
