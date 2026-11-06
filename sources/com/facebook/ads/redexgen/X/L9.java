package com.facebook.ads.redexgen.X;

import java.io.IOException;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class L9 extends IOException {
    public int A00;
    public boolean A01;

    @Deprecated
    public L9() {
    }

    @Deprecated
    public L9(String str) {
        super(str);
    }

    public L9(String str, Throwable th, boolean z, int i) {
        super(str == null ? "" : str, th);
        this.A01 = z;
        this.A00 = i;
    }

    public static L9 A00(String str) {
        return new L9(str, null, false, 1);
    }

    public static L9 A01(String str, Throwable th) {
        return new L9(str, th, true, 1);
    }

    public static L9 A02(String str, Throwable th) {
        return new L9(str, th, true, 0);
    }
}
