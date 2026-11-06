package j$.time.format;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class o implements f {
    private final j$.time.temporal.a a;
    private final z b;
    private final b c;
    private volatile i d;

    o(j$.time.temporal.a aVar, z zVar, b bVar) {
        this.a = aVar;
        this.b = zVar;
        this.c = bVar;
    }

    @Override // j$.time.format.f
    public final boolean p(s sVar, StringBuilder sb) {
        String strA;
        Long lE = sVar.e(this.a);
        if (lE == null) {
            return false;
        }
        j$.time.chrono.l lVar = (j$.time.chrono.l) sVar.d().a(j$.time.temporal.t.a());
        if (lVar == null || lVar == j$.time.chrono.s.d) {
            long jLongValue = lE.longValue();
            z zVar = this.b;
            sVar.c();
            strA = this.c.a.a(jLongValue, zVar);
        } else {
            long jLongValue2 = lE.longValue();
            z zVar2 = this.b;
            sVar.c();
            strA = this.c.a.a(jLongValue2, zVar2);
        }
        if (strA != null) {
            sb.append(strA);
            return true;
        }
        if (this.d == null) {
            this.d = new i(this.a, 1, 19, y.NORMAL);
        }
        return this.d.p(sVar, sb);
    }

    @Override // j$.time.format.f
    public final int r(q qVar, CharSequence charSequence, int i) {
        Iterator itB;
        int length = charSequence.length();
        if (i < 0 || i > length) {
            throw new IndexOutOfBoundsException();
        }
        z zVar = qVar.k() ? this.b : null;
        j$.time.chrono.l lVarG = qVar.g();
        b bVar = this.c;
        j$.time.temporal.a aVar = this.a;
        if (lVarG == null || lVarG == j$.time.chrono.s.d) {
            qVar.h();
            itB = bVar.a.b(zVar);
        } else {
            qVar.h();
            itB = bVar.a.b(zVar);
        }
        Iterator it = itB;
        if (it != null) {
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                if (qVar.r(str, 0, charSequence, i, str.length())) {
                    return qVar.n(this.a, ((Long) entry.getValue()).longValue(), i, str.length() + i);
                }
            }
            if (aVar == j$.time.temporal.a.ERA && !qVar.k()) {
                Iterator it2 = lVarG.D().iterator();
                while (it2.hasNext()) {
                    String string = ((j$.time.chrono.m) it2.next()).toString();
                    if (qVar.r(string, 0, charSequence, i, string.length())) {
                        return qVar.n(this.a, r7.p(), i, string.length() + i);
                    }
                }
            }
            if (qVar.k()) {
                return ~i;
            }
        }
        if (this.d == null) {
            this.d = new i(this.a, 1, 19, y.NORMAL);
        }
        return this.d.r(qVar, charSequence, i);
    }

    public final String toString() {
        z zVar = z.FULL;
        j$.time.temporal.a aVar = this.a;
        z zVar2 = this.b;
        if (zVar2 == zVar) {
            return "Text(" + aVar + ")";
        }
        return "Text(" + aVar + "," + zVar2 + ")";
    }
}
