package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Arrays;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ε, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0190 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final byte[] f1205;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final byte[] f1206;

    public C0190(byte[] bArr, byte[] bArr2) {
        this.f1206 = bArr;
        this.f1205 = bArr2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0190)) {
            return false;
        }
        C0190 c0190 = (C0190) obj;
        return Arrays.equals(this.f1206, c0190.f1206) && Arrays.equals(this.f1205, c0190.f1205);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f1205) + (Arrays.hashCode(this.f1206) * 31);
    }

    public final String toString() {
        return StringFog.decrypt("J/la+6oV4hEOwlfnlxH5Ahn5QPexEeQVKexL3L4E9QNf\n", "YokynsdwkHA=\n") + Arrays.toString(this.f1206) + StringFog.decrypt("DeO+a36CV1JqprdcZZpbQhw=\n", "IcPOHhzuPjE=\n") + Arrays.toString(this.f1205) + '}';
    }
}
