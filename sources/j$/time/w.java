package j$.time;

import com.unity3d.services.UnityAdsConstants;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public final class w implements j$.time.temporal.m, j$.time.temporal.o, Comparable, Serializable {
    private static final long serialVersionUID = 4183400860270640070L;
    private final int a;
    private final int b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        w wVar = (w) obj;
        int i = this.a - wVar.a;
        return i == 0 ? this.b - wVar.b : i;
    }

    static {
        j$.time.format.p pVar = new j$.time.format.p();
        pVar.l(j$.time.temporal.a.YEAR, 4, 10, j$.time.format.y.EXCEEDS_PAD);
        pVar.e('-');
        pVar.k(j$.time.temporal.a.MONTH_OF_YEAR, 2);
        pVar.t();
    }

    private w(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    private w W(int i, int i2) {
        return (this.a == i && this.b == i2) ? this : new w(i, i2);
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.s sVar) {
        return sVar instanceof j$.time.temporal.a ? sVar == j$.time.temporal.a.YEAR || sVar == j$.time.temporal.a.MONTH_OF_YEAR || sVar == j$.time.temporal.a.PROLEPTIC_MONTH || sVar == j$.time.temporal.a.YEAR_OF_ERA || sVar == j$.time.temporal.a.ERA : sVar != null && sVar.W(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.x l(j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.a.YEAR_OF_ERA) {
            return j$.time.temporal.x.j(1L, this.a <= 0 ? 1000000000L : 999999999L);
        }
        return super.l(sVar);
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.s sVar) {
        return l(sVar).a(g(sVar), sVar);
    }

    @Override // j$.time.temporal.n
    public final long g(j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.a)) {
            return sVar.r(this);
        }
        int i = v.a[((j$.time.temporal.a) sVar).ordinal()];
        if (i == 1) {
            return this.b;
        }
        if (i == 2) {
            return r();
        }
        int i2 = this.a;
        if (i == 3) {
            if (i2 < 1) {
                i2 = 1 - i2;
            }
            return i2;
        }
        if (i == 4) {
            return i2;
        }
        if (i == 5) {
            return i2 < 1 ? 0 : 1;
        }
        throw new j$.time.temporal.w(d.a("Unsupported field: ", sVar));
    }

    private long r() {
        return ((((long) this.a) * 12) + ((long) this.b)) - 1;
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: j */
    public final j$.time.temporal.m m(h hVar) {
        return (w) hVar.c(this);
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
    public final w b(long j, j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.a)) {
            return (w) sVar.p(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) sVar;
        aVar.a0(j);
        int i = v.a[aVar.ordinal()];
        int i2 = this.a;
        if (i == 1) {
            int i3 = (int) j;
            j$.time.temporal.a.MONTH_OF_YEAR.a0(i3);
            return W(i2, i3);
        }
        if (i == 2) {
            return J(j - r());
        }
        int i4 = this.b;
        if (i == 3) {
            if (i2 < 1) {
                j = 1 - j;
            }
            int i5 = (int) j;
            j$.time.temporal.a.YEAR.a0(i5);
            return W(i5, i4);
        }
        if (i == 4) {
            int i6 = (int) j;
            j$.time.temporal.a.YEAR.a0(i6);
            return W(i6, i4);
        }
        if (i != 5) {
            throw new j$.time.temporal.w(d.a("Unsupported field: ", sVar));
        }
        if (g(j$.time.temporal.a.ERA) == j) {
            return this;
        }
        int i7 = 1 - i2;
        j$.time.temporal.a.YEAR.a0(i7);
        return W(i7, i4);
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public final w d(long j, j$.time.temporal.v vVar) {
        if (!(vVar instanceof j$.time.temporal.b)) {
            return (w) vVar.p(this, j);
        }
        switch (v.b[((j$.time.temporal.b) vVar).ordinal()]) {
            case 1:
                return J(j);
            case 2:
                return S(j);
            case 3:
                return S(Math.multiplyExact(j, 10));
            case 4:
                return S(Math.multiplyExact(j, 100));
            case 5:
                return S(Math.multiplyExact(j, 1000));
            case 6:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return b(Math.addExact(g(aVar), j), aVar);
            default:
                throw new j$.time.temporal.w("Unsupported unit: " + vVar);
        }
    }

    public final w S(long j) {
        return j == 0 ? this : W(j$.time.temporal.a.YEAR.Z(((long) this.a) + j), this.b);
    }

    public final w J(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (((long) this.a) * 12) + ((long) (this.b - 1)) + j;
        long j3 = 12;
        return W(j$.time.temporal.a.YEAR.Z(Math.floorDiv(j2, j3)), ((int) Math.floorMod(j2, j3)) + 1);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m e(long j, j$.time.temporal.v vVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, vVar).d(1L, vVar) : d(-j, vVar);
    }

    @Override // j$.time.temporal.n
    public final Object a(j$.time.temporal.u uVar) {
        if (uVar == j$.time.temporal.t.a()) {
            return j$.time.chrono.s.d;
        }
        if (uVar == j$.time.temporal.t.e()) {
            return j$.time.temporal.b.MONTHS;
        }
        return super.a(uVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m c(j$.time.temporal.m mVar) {
        if (!j$.time.chrono.l.F(mVar).equals(j$.time.chrono.s.d)) {
            throw new c("Adjustment only supported on ISO date-time");
        }
        return mVar.b(r(), j$.time.temporal.a.PROLEPTIC_MONTH);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof w) {
            w wVar = (w) obj;
            if (this.a == wVar.a && this.b == wVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.b << 27) ^ this.a;
    }

    public final String toString() {
        int i = this.a;
        int iAbs = Math.abs(i);
        StringBuilder sb = new StringBuilder(9);
        if (iAbs >= 1000) {
            sb.append(i);
        } else if (i < 0) {
            sb.append(i - 10000);
            sb.deleteCharAt(1);
        } else {
            sb.append(i + UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS);
            sb.deleteCharAt(0);
        }
        int i2 = this.b;
        sb.append(i2 < 10 ? "-0" : "-");
        sb.append(i2);
        return sb.toString();
    }

    private Object writeReplace() {
        return new s((byte) 12, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void a0(DataOutput dataOutput) {
        dataOutput.writeInt(this.a);
        dataOutput.writeByte(this.b);
    }

    static w T(ObjectInput objectInput) throws IOException {
        int i = objectInput.readInt();
        byte b = objectInput.readByte();
        j$.time.temporal.a.YEAR.a0(i);
        j$.time.temporal.a.MONTH_OF_YEAR.a0(b);
        return new w(i, b);
    }
}
