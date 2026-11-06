package io.bidmachine.internal;

import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: io.bidmachine.internal.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4235t {
    public final String a;
    public final Boolean b;
    public final String c;
    public final Boolean d;
    public final String e;
    public final String f;
    public final List g;
    public final Lazy h;

    /* JADX INFO: renamed from: io.bidmachine.internal.t$a */
    public static final class a extends Lambda implements Function0 {
        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final O invoke() {
            return N.a.b(C4235t.this.g());
        }
    }

    public C4235t(String str, Boolean bool, String str2, Boolean bool2, String str3, String str4, List list) {
        this.a = str;
        this.b = bool;
        this.c = str2;
        this.d = bool2;
        this.e = str3;
        this.f = str4;
        this.g = list;
        this.h = LazyKt__LazyJVMKt.lazy(new a());
    }

    public final String a() {
        return this.e;
    }

    public final List b() {
        return this.g;
    }

    public final String c() {
        return this.f;
    }

    public final O d() {
        return (O) this.h.getValue();
    }

    public final String e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4235t)) {
            return false;
        }
        C4235t c4235t = (C4235t) obj;
        return Intrinsics.areEqual(this.a, c4235t.a) && Intrinsics.areEqual(this.b, c4235t.b) && Intrinsics.areEqual(this.c, c4235t.c) && Intrinsics.areEqual(this.d, c4235t.d) && Intrinsics.areEqual(this.e, c4235t.e) && Intrinsics.areEqual(this.f, c4235t.f) && Intrinsics.areEqual(this.g, c4235t.g);
    }

    public final Boolean f() {
        return this.b;
    }

    public final String g() {
        return this.c;
    }

    public final Boolean h() {
        return this.d;
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Boolean bool = this.b;
        int iHashCode2 = (iHashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        String str2 = this.c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Boolean bool2 = this.d;
        int iHashCode4 = (iHashCode3 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        String str3 = this.e;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        List list = this.g;
        return iHashCode6 + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "PlatformPrivacySettings(tcfV1=" + this.a + ", tcfV1Subject=" + this.b + ", tcfV2=" + this.c + ", tcfV2Subject=" + this.d + ", ccpa=" + this.e + ", gppString=" + this.f + ", gppIds=" + this.g + ')';
    }

    public /* synthetic */ C4235t(String str, Boolean bool, String str2, Boolean bool2, String str3, String str4, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : bool, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : bool2, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? null : str4, (i & 64) != 0 ? null : list);
    }
}
