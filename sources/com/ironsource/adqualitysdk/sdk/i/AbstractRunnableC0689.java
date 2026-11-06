package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵕ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractRunnableC0689 implements Runnable {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final String f2785 = StringFog.decrypt("3C9n9nW4hRfmA1X1f7g=\n", "iG00lxPd12I=\n");

    @Override // java.lang.Runnable
    public final void run() {
        try {
            mo1013();
        } catch (Throwable th) {
            try {
                mo1287(th);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ */
    public abstract void mo1013();

    /* JADX INFO: renamed from: ﾒ */
    public void mo1287(Throwable th) {
        String str = f2785;
        String str2 = StringFog.decrypt("Chosgao2NkxvCzKPq2V/\n", "T2he7tgWXyI=\n") + getClass().getName();
        StringBuilder sb = new StringBuilder();
        sb.append(StringFog.decrypt("5bwoQRUv\n", "ptBJMmYHSDg=\n"));
        sb.append(getClass().getName());
        try {
            AbstractC1003.m1591(str, str2, AbstractC0829.m1456("Ww==\n", "ci4owSjkFIc=\n", sb), th, null, null, false, false, false);
        } catch (Throwable unused) {
        }
        AbstractC0182.m1147(str, StringFog.decrypt("CqZiwBs8GiNvt3zOGm9T\n", "T9QQr2kcc00=\n") + getClass().getName());
        AbstractC0182.m1156(str, str, StringFog.decrypt("a44ouomts0A=\n", "L+tc2+DBwHo=\n"), th, null, false);
    }
}
