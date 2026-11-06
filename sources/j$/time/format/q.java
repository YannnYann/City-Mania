package j$.time.format;

import java.util.ArrayList;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class q {
    private DateTimeFormatter a;
    private boolean b = true;
    private boolean c = true;
    private final ArrayList d;

    q(DateTimeFormatter dateTimeFormatter) {
        ArrayList arrayList = new ArrayList();
        this.d = arrayList;
        this.a = dateTimeFormatter;
        arrayList.add(new w());
    }

    final q c() {
        q qVar = new q(this.a);
        qVar.b = this.b;
        qVar.c = this.c;
        return qVar;
    }

    final Locale h() {
        return this.a.d();
    }

    final v f() {
        return this.a.c();
    }

    final j$.time.chrono.l g() {
        j$.time.chrono.l lVar = d().c;
        if (lVar != null) {
            return lVar;
        }
        j$.time.chrono.l lVarB = this.a.b();
        return lVarB == null ? j$.time.chrono.s.d : lVarB;
    }

    final boolean a(char c, char c2) {
        if (this.b) {
            return c == c2;
        }
        return b(c, c2);
    }

    final boolean j() {
        return this.b;
    }

    final void l(boolean z) {
        this.b = z;
    }

    final boolean r(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3) {
        if (i + i3 <= charSequence.length() && i2 + i3 <= charSequence2.length()) {
            if (this.b) {
                for (int i4 = 0; i4 < i3; i4++) {
                    if (charSequence.charAt(i + i4) == charSequence2.charAt(i2 + i4)) {
                    }
                }
                return true;
            }
            for (int i5 = 0; i5 < i3; i5++) {
                char cCharAt = charSequence.charAt(i + i5);
                char cCharAt2 = charSequence2.charAt(i2 + i5);
                if (cCharAt == cCharAt2 || Character.toUpperCase(cCharAt) == Character.toUpperCase(cCharAt2) || Character.toLowerCase(cCharAt) == Character.toLowerCase(cCharAt2)) {
                }
            }
            return true;
        }
        return false;
    }

    static boolean b(char c, char c2) {
        return c == c2 || Character.toUpperCase(c) == Character.toUpperCase(c2) || Character.toLowerCase(c) == Character.toLowerCase(c2);
    }

    final boolean k() {
        return this.c;
    }

    final void p(boolean z) {
        this.c = z;
    }

    final void q() {
        ArrayList arrayList = this.d;
        w wVarD = d();
        wVarD.getClass();
        w wVar = new w();
        wVar.a.putAll(wVarD.a);
        wVar.b = wVarD.b;
        wVar.c = wVarD.c;
        wVar.d = wVarD.d;
        arrayList.add(wVar);
    }

    final void e(boolean z) {
        ArrayList arrayList = this.d;
        if (z) {
            arrayList.remove(arrayList.size() - 2);
        } else {
            arrayList.remove(arrayList.size() - 1);
        }
    }

    private w d() {
        return (w) this.d.get(r0.size() - 1);
    }

    final j$.time.temporal.n s(x xVar) {
        w wVarD = d();
        wVarD.c = g();
        j$.time.x xVar2 = wVarD.b;
        if (xVar2 == null) {
            this.a.getClass();
            xVar2 = null;
        }
        wVarD.b = xVar2;
        wVarD.r(xVar);
        return wVarD;
    }

    final Long i(j$.time.temporal.a aVar) {
        return (Long) d().a.get(aVar);
    }

    final int n(j$.time.temporal.s sVar, long j, int i, int i2) {
        Objects.requireNonNull(sVar, "field");
        Long l = (Long) d().a.put(sVar, Long.valueOf(j));
        return (l == null || l.longValue() == j) ? i2 : ~i;
    }

    final void m(j$.time.x xVar) {
        Objects.requireNonNull(xVar, "zone");
        d().b = xVar;
    }

    final void o() {
        d().d = true;
    }

    public final String toString() {
        return d().toString();
    }
}
