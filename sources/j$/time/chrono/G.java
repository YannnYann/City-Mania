package j$.time.chrono;

import j$.time.Instant;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class G extends AbstractC4272a implements Serializable {
    public static final G d = new G();
    private static final long serialVersionUID = 2775954514031616474L;

    static {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        map.put("en", new String[]{"BB", "BE"});
        map.put("th", new String[]{"BB", "BE"});
        map2.put("en", new String[]{"B.B.", "B.E."});
        map2.put("th", new String[]{"พ.ศ.", "ปีก่อนคริสต์กาลที่"});
        map3.put("en", new String[]{"Before Buddhist", "Budhhist Era"});
        map3.put("th", new String[]{"พุทธศักราช", "ปีก่อนคริสต์กาลที่"});
    }

    @Override // j$.time.chrono.l
    public final m N(int i) {
        if (i == 0) {
            return J.BEFORE_BE;
        }
        if (i == 1) {
            return J.BE;
        }
        throw new j$.time.c("Invalid era: " + i);
    }

    @Override // j$.time.chrono.l
    public final String s() {
        return "ThaiBuddhist";
    }

    @Override // j$.time.chrono.l
    public final String R() {
        return "buddhist";
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4273b G(int i, int i2, int i3) {
        return new I(j$.time.h.f0(i - 543, i2, i3));
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4273b A(int i, int i2) {
        return new I(j$.time.h.i0(i - 543, i2));
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4273b q(long j) {
        return new I(j$.time.h.h0(j));
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4273b L() {
        return new I(j$.time.h.J(j$.time.h.e0(j$.time.b.c())));
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4273b t(j$.time.temporal.n nVar) {
        if (nVar instanceof I) {
            return (I) nVar;
        }
        return new I(j$.time.h.J(nVar));
    }

    @Override // j$.time.chrono.l
    public final int w(m mVar, int i) {
        if (mVar instanceof J) {
            return mVar == J.BE ? i : 1 - i;
        }
        throw new ClassCastException("Era must be BuddhistEra");
    }

    private G() {
    }

    @Override // j$.time.chrono.l
    public final List D() {
        return j$.time.b.b(J.values());
    }

    @Override // j$.time.chrono.l
    public final j$.time.temporal.x U(j$.time.temporal.a aVar) {
        int i = F.a[aVar.ordinal()];
        if (i == 1) {
            j$.time.temporal.x xVarC = j$.time.temporal.a.PROLEPTIC_MONTH.C();
            return j$.time.temporal.x.j(xVarC.e() + 6516, xVarC.d() + 6516);
        }
        if (i == 2) {
            j$.time.temporal.x xVarC2 = j$.time.temporal.a.YEAR.C();
            return j$.time.temporal.x.k((-(xVarC2.e() + 543)) + 1, xVarC2.d() + 543);
        }
        if (i == 3) {
            j$.time.temporal.x xVarC3 = j$.time.temporal.a.YEAR.C();
            return j$.time.temporal.x.j(xVarC3.e() + 543, xVarC3.d() + 543);
        }
        return aVar.C();
    }

    @Override // j$.time.chrono.AbstractC4272a, j$.time.chrono.l
    public final InterfaceC4273b P(Map map, j$.time.format.x xVar) {
        return (I) super.P(map, xVar);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.l
    public final ChronoZonedDateTime y(Instant instant, j$.time.x xVar) {
        return k.J(this, instant, xVar);
    }

    Object writeReplace() {
        return new E((byte) 1, this);
    }
}
