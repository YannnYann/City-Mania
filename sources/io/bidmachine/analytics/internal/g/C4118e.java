package io.bidmachine.analytics.internal.g;

import java.util.UUID;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.bidmachine.analytics.internal.g.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C4118e {
    private final String a;
    private final String b;
    private final long c;
    private final String d;
    private final a e;
    private final h f;
    private final boolean g;

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.g.e$a */
    public interface a {

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.g.e$a$a, reason: collision with other inner class name */
        public static final class C1122a implements a {
            private final String a;
            private final String b;

            public C1122a(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            public final String a() {
                return this.b;
            }

            public final String b() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C1122a)) {
                    return false;
                }
                C1122a c1122a = (C1122a) obj;
                return Intrinsics.areEqual(this.a, c1122a.a) && Intrinsics.areEqual(this.b, c1122a.b);
            }

            public int hashCode() {
                return (this.a.hashCode() * 31) + this.b.hashCode();
            }

            public String toString() {
                return super.toString();
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.g.e$a$b */
        public static final class b implements a {
            private final String a;
            private final String b;
            private final String c;
            private final boolean d;

            public b(String str, String str2, String str3, boolean z) {
                this.a = str;
                this.b = str2;
                this.c = str3;
                this.d = z;
            }

            public final String a() {
                return this.b;
            }

            public final String b() {
                return this.c;
            }

            public final boolean c() {
                return this.d;
            }

            public final String d() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof b)) {
                    return false;
                }
                b bVar = (b) obj;
                return Intrinsics.areEqual(this.a, bVar.a) && Intrinsics.areEqual(this.b, bVar.b) && Intrinsics.areEqual(this.c, bVar.c) && this.d == bVar.d;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v6, types: [int] */
            /* JADX WARN: Type inference failed for: r1v7 */
            /* JADX WARN: Type inference failed for: r1v9 */
            public int hashCode() {
                int iHashCode = ((this.a.hashCode() * 31) + this.b.hashCode()) * 31;
                String str = this.c;
                int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
                boolean z = this.d;
                ?? r1 = z;
                if (z) {
                    r1 = 1;
                }
                return iHashCode2 + r1;
            }

            public String toString() {
                return super.toString();
            }
        }
    }

    public C4118e(String str, String str2, long j, String str3, a aVar, h hVar, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = j;
        this.d = str3;
        this.e = aVar;
        this.f = hVar;
        this.g = z;
    }

    public final C4118e a(String str, String str2, long j, String str3, a aVar, h hVar, boolean z) {
        return new C4118e(str, str2, j, str3, aVar, hVar, z);
    }

    public final h b() {
        return this.f;
    }

    public final String c() {
        return this.a;
    }

    public final String d() {
        return this.b;
    }

    public final a e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4118e)) {
            return false;
        }
        C4118e c4118e = (C4118e) obj;
        return Intrinsics.areEqual(this.a, c4118e.a) && Intrinsics.areEqual(this.b, c4118e.b) && this.c == c4118e.c && Intrinsics.areEqual(this.d, c4118e.d) && Intrinsics.areEqual(this.e, c4118e.e) && Intrinsics.areEqual(this.f, c4118e.f) && this.g == c4118e.g;
    }

    public final long f() {
        return this.c;
    }

    public final boolean g() {
        return this.g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v12, types: [int] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v15 */
    public int hashCode() {
        int iHashCode = ((((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + Long.hashCode(this.c)) * 31) + this.d.hashCode()) * 31) + this.e.hashCode()) * 31;
        h hVar = this.f;
        int iHashCode2 = (iHashCode + (hVar == null ? 0 : hVar.hashCode())) * 31;
        boolean z = this.g;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode2 + r1;
    }

    public String toString() {
        return "ReaderRecord(id=" + this.a + ", name=" + this.b + ", timestamp=" + this.c + ", dataHash=" + this.d + ", rule=" + this.e + ", error=" + this.f + ", isDirty=" + this.g + ')';
    }

    public static /* synthetic */ C4118e a(C4118e c4118e, String str, String str2, long j, String str3, a aVar, h hVar, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = c4118e.a;
        }
        if ((i & 2) != 0) {
            str2 = c4118e.b;
        }
        if ((i & 4) != 0) {
            j = c4118e.c;
        }
        if ((i & 8) != 0) {
            str3 = c4118e.d;
        }
        if ((i & 16) != 0) {
            aVar = c4118e.e;
        }
        if ((i & 32) != 0) {
            hVar = c4118e.f;
        }
        if ((i & 64) != 0) {
            z = c4118e.g;
        }
        long j2 = j;
        return c4118e.a(str, str2, j2, str3, aVar, hVar, z);
    }

    public final String a() {
        return this.d;
    }

    public /* synthetic */ C4118e(String str, String str2, long j, String str3, a aVar, h hVar, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? UUID.randomUUID().toString() : str, str2, j, str3, aVar, (i & 32) != 0 ? null : hVar, (i & 64) != 0 ? true : z);
    }
}
