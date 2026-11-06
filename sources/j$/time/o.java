package j$.time;

import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class o implements j$.time.temporal.n, j$.time.temporal.o, Comparable, Serializable {
    private static final long serialVersionUID = -939150713474957432L;
    private final int a;
    private final int b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        o oVar = (o) obj;
        int i = this.a - oVar.a;
        return i == 0 ? this.b - oVar.b : i;
    }

    static {
        j$.time.format.p pVar = new j$.time.format.p();
        pVar.f("--");
        pVar.k(j$.time.temporal.a.MONTH_OF_YEAR, 2);
        pVar.e('-');
        pVar.k(j$.time.temporal.a.DAY_OF_MONTH, 2);
        pVar.t();
    }

    private o(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.s sVar) {
        return sVar instanceof j$.time.temporal.a ? sVar == j$.time.temporal.a.MONTH_OF_YEAR || sVar == j$.time.temporal.a.DAY_OF_MONTH : sVar != null && sVar.W(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.x l(j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return sVar.C();
        }
        if (sVar != j$.time.temporal.a.DAY_OF_MONTH) {
            return super.l(sVar);
        }
        m mVarS = m.S(this.a);
        mVarS.getClass();
        int i = l.a[mVarS.ordinal()];
        return j$.time.temporal.x.k(i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : 28, m.S(r5).J());
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.s sVar) {
        return l(sVar).a(g(sVar), sVar);
    }

    @Override // j$.time.temporal.n
    public final long g(j$.time.temporal.s sVar) {
        int i;
        if (!(sVar instanceof j$.time.temporal.a)) {
            return sVar.r(this);
        }
        int i2 = n.a[((j$.time.temporal.a) sVar).ordinal()];
        if (i2 == 1) {
            i = this.b;
        } else {
            if (i2 != 2) {
                throw new j$.time.temporal.w(d.a("Unsupported field: ", sVar));
            }
            i = this.a;
        }
        return i;
    }

    @Override // j$.time.temporal.n
    public final Object a(j$.time.temporal.u uVar) {
        if (uVar == j$.time.temporal.t.a()) {
            return j$.time.chrono.s.d;
        }
        return super.a(uVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m c(j$.time.temporal.m mVar) {
        if (!j$.time.chrono.l.F(mVar).equals(j$.time.chrono.s.d)) {
            throw new c("Adjustment only supported on ISO date-time");
        }
        j$.time.temporal.m mVarB = mVar.b(this.a, j$.time.temporal.a.MONTH_OF_YEAR);
        j$.time.temporal.a aVar = j$.time.temporal.a.DAY_OF_MONTH;
        return mVarB.b(Math.min(mVarB.l(aVar).d(), this.b), aVar);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof o) {
            o oVar = (o) obj;
            if (this.a == oVar.a && this.b == oVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.a << 6) + this.b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(10);
        sb.append("--");
        int i = this.a;
        sb.append(i < 10 ? "0" : "");
        sb.append(i);
        int i2 = this.b;
        sb.append(i2 < 10 ? "-0" : "-");
        sb.append(i2);
        return sb.toString();
    }

    private Object writeReplace() {
        return new s((byte) 13, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void C(DataOutput dataOutput) {
        dataOutput.writeByte(this.a);
        dataOutput.writeByte(this.b);
    }

    static o r(ObjectInput objectInput) throws IOException {
        byte b = objectInput.readByte();
        byte b2 = objectInput.readByte();
        m mVarS = m.S(b);
        Objects.requireNonNull(mVarS, "month");
        j$.time.temporal.a.DAY_OF_MONTH.a0(b2);
        if (b2 > mVarS.J()) {
            throw new c("Illegal value for DayOfMonth field, value " + ((int) b2) + " is not valid for month " + mVarS.name());
        }
        return new o(mVarS.p(), b2);
    }
}
