package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ze, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3969ze {
    private final String a;
    private final String b;
    private final List<IronSource.a> c;

    public C3969ze(String appKey, String str, List<IronSource.a> legacyAdFormats) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(legacyAdFormats, "legacyAdFormats");
        this.a = appKey;
        this.b = str;
        this.c = legacyAdFormats;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final List<IronSource.a> c() {
        return this.c;
    }

    public final String d() {
        return this.a;
    }

    public final List<IronSource.a> e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3969ze)) {
            return false;
        }
        C3969ze c3969ze = (C3969ze) obj;
        return Intrinsics.areEqual(this.a, c3969ze.a) && Intrinsics.areEqual(this.b, c3969ze.b) && Intrinsics.areEqual(this.c, c3969ze.c);
    }

    public final String f() {
        return this.b;
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.c.hashCode();
    }

    public String toString() {
        return "SdkInitRequest(appKey=" + this.a + ", userId=" + this.b + ", legacyAdFormats=" + this.c + ")";
    }

    public final C3969ze a(String appKey, String str, List<IronSource.a> legacyAdFormats) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(legacyAdFormats, "legacyAdFormats");
        return new C3969ze(appKey, str, legacyAdFormats);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ C3969ze a(C3969ze c3969ze, String str, String str2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = c3969ze.a;
        }
        if ((i & 2) != 0) {
            str2 = c3969ze.b;
        }
        if ((i & 4) != 0) {
            list = c3969ze.c;
        }
        return c3969ze.a(str, str2, list);
    }

    public final void a(List<? extends IronSource.a> adFormats) {
        Intrinsics.checkNotNullParameter(adFormats, "adFormats");
        this.c.clear();
        this.c.addAll(adFormats);
    }

    public /* synthetic */ C3969ze(String str, String str2, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : str2, list);
    }
}
