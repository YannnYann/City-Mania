package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵋ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0679 {
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass();
    }

    public int hashCode() {
        return getClass().hashCode();
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0180 m1418(C0915 c0915, C0048 c0048) {
        try {
            c0915.f3491.add(this);
            C0180 c0180Mo1031 = mo1031(c0915, c0048);
            c0915.m1540(this);
            return c0180Mo1031;
        } catch (AbstractC0692 e) {
            throw e;
        } catch (Throwable th) {
            throw new C0480(c0048, c0915, StringFog.decrypt("3DAygKvbh3z8ITWbsJWFJOo2IZu8lodq7WI=\n", "mUJA79n74gQ=\n") + this + "\n" + th, th);
        }
    }

    /* JADX INFO: renamed from: ﾒ */
    public int mo1048() {
        return 1;
    }

    /* JADX INFO: renamed from: ﾒ */
    public int mo1049(C0915 c0915) {
        return 1;
    }

    /* JADX INFO: renamed from: ﾒ */
    public abstract C0180 mo1031(C0915 c0915, C0048 c0048);
}
