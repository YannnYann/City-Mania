package io.bidmachine.analytics.internal.t;

import java.text.ParseException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public static final C1146a c = new C1146a(null);
    private final Regex a = new Regex("^(\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}\\.\\d{3}) ([A-Z])\\/(\\S+)\\(\\s*(\\d+)\\): (.*)$");
    private final i b = new i();

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.t.a$a, reason: collision with other inner class name */
    public static final class C1146a {
        public /* synthetic */ C1146a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C1146a() {
        }
    }

    public static final class b {
        private final long a;
        private final String b;
        private final String c;
        private final String d;

        public b(long j, String str, String str2, String str3) {
            this.a = j;
            this.b = str;
            this.c = str2;
            this.d = str3;
        }

        public final String a() {
            return this.c;
        }

        public final String b() {
            return this.d;
        }

        public final String c() {
            return this.b;
        }

        public final long d() {
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
            return this.a == bVar.a && Intrinsics.areEqual(this.b, bVar.b) && Intrinsics.areEqual(this.c, bVar.c) && Intrinsics.areEqual(this.d, bVar.d);
        }

        public int hashCode() {
            return (((((Long.hashCode(this.a) * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.d.hashCode();
        }

        public String toString() {
            return super.toString();
        }
    }

    public final b a(String str) throws ParseException {
        MatchResult matchResultFind$default = Regex.find$default(this.a, str, 0, 2, null);
        if (matchResultFind$default == null) {
            return null;
        }
        MatchResult.Destructured destructured = matchResultFind$default.getDestructured();
        String str2 = destructured.getMatch().getGroupValues().get(1);
        String str3 = destructured.getMatch().getGroupValues().get(2);
        String str4 = destructured.getMatch().getGroupValues().get(3);
        String str5 = destructured.getMatch().getGroupValues().get(5);
        Long lA = this.b.a(str2);
        return new b(lA != null ? lA.longValue() : 0L, str4, str3, str5);
    }
}
