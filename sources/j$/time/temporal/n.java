package j$.time.temporal;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public interface n {
    boolean f(s sVar);

    long g(s sVar);

    default x l(s sVar) {
        if (!(sVar instanceof a)) {
            Objects.requireNonNull(sVar, "field");
            return sVar.J(this);
        }
        if (f(sVar)) {
            return ((a) sVar).C();
        }
        throw new w(j$.time.d.a("Unsupported field: ", sVar));
    }

    default int i(s sVar) {
        x xVarL = l(sVar);
        if (!xVarL.h()) {
            throw new w("Invalid field " + sVar + " for get() method, use getLong() instead");
        }
        long jG = g(sVar);
        if (xVarL.i(jG)) {
            return (int) jG;
        }
        throw new j$.time.c("Invalid value for " + sVar + " (valid values " + xVarL + "): " + jG);
    }

    default Object a(u uVar) {
        if (uVar == t.a || uVar == t.b || uVar == t.c) {
            return null;
        }
        return uVar.j(this);
    }
}
