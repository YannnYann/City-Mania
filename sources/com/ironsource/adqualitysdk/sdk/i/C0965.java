package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﻧ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0965 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final List f3647;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final boolean f3648;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean f3649;

    public C0965(boolean z, boolean z2, ArrayList arrayList) {
        this.f3649 = z;
        this.f3648 = z2;
        this.f3647 = Collections.unmodifiableList(new ArrayList(arrayList));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0965.class != obj.getClass()) {
            return false;
        }
        C0965 c0965 = (C0965) obj;
        if (this.f3649 == c0965.f3649 && this.f3648 == c0965.f3648) {
            return this.f3647.equals(c0965.f3647);
        }
        return false;
    }

    public final int hashCode() {
        return this.f3647.hashCode() + ((((this.f3649 ? 1 : 0) * 31) + (this.f3648 ? 1 : 0)) * 31);
    }

    public final String toString() {
        return StringFog.decrypt("FyHA/3qEZnQmOsbkULN3YjAi2/BXkkB+KjrK7wM=\n", "RU6viz7hEhE=\n") + this.f3649 + StringFog.decrypt("aZv4luwoV+Qkz/6XlA==\n", "RbuR5alFIog=\n") + this.f3648 + StringFog.decrypt("j8cGxOHycz7Q2g==\n", "o+d1rYacElI=\n") + this.f3647 + '}';
    }
}
