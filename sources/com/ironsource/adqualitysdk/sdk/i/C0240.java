package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.і, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0240 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final long f1547;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final byte[] f1548;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f1549;

    public C0240(String str, byte[] bArr, long j) {
        this.f1549 = str;
        this.f1548 = bArr;
        this.f1547 = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0240) {
            return this.f1549.equals(((C0240) obj).f1549);
        }
        return false;
    }

    public final int hashCode() {
        return this.f1549.hashCode();
    }

    public final String toString() {
        return StringFog.decrypt("tuLgJ1Fc83SB9OI7W0H8VYH25DdHW85D2aA=\n", "5IeRUjQvhyc=\n") + this.f1549 + '\'' + StringFog.decrypt("pIXE0kkQ1GY=\n", "iKWvtzBZsFs=\n") + 1 + StringFog.decrypt("yA9cAc0EJp6WQhE=\n", "5C8sbaxwQPE=\n") + 2 + StringFog.decrypt("T7D1yJNqLUgH0eL3hTY=\n", "Y5CWuvYLWS0=\n") + this.f1547 + '}';
    }
}
