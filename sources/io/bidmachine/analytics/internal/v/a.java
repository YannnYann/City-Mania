package io.bidmachine.analytics.internal.v;

import java.util.Date;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private final String a;
    private final EnumC1154a b;
    private final Date c;
    private final boolean d;

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.v.a$a, reason: collision with other inner class name */
    public enum EnumC1154a {
        INAPP_CONSUMABLE,
        INAPP_NON_CONSUMABLE,
        SUBS_AUTO_RENEWABLE,
        SUBS_NON_AUTO_RENEWABLE
    }

    public a(String str, EnumC1154a enumC1154a, Date date, boolean z) {
        this.a = str;
        this.b = enumC1154a;
        this.c = date;
        this.d = z;
    }

    public final a a(String str, EnumC1154a enumC1154a, Date date, boolean z) {
        return new a(str, enumC1154a, date, z);
    }

    public final EnumC1154a b() {
        return this.b;
    }

    public final boolean c() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.areEqual(this.a, aVar.a) && this.b == aVar.b && Intrinsics.areEqual(this.c, aVar.c) && this.d == aVar.d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    public int hashCode() {
        int iHashCode = ((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31;
        boolean z = this.d;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode + r1;
    }

    public String toString() {
        return super.toString();
    }

    public static /* synthetic */ a a(a aVar, String str, EnumC1154a enumC1154a, Date date, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = aVar.a;
        }
        if ((i & 2) != 0) {
            enumC1154a = aVar.b;
        }
        if ((i & 4) != 0) {
            date = aVar.c;
        }
        if ((i & 8) != 0) {
            z = aVar.d;
        }
        return aVar.a(str, enumC1154a, date, z);
    }

    public final Date a() {
        return this.c;
    }
}
