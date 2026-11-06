package j$.time;

import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class k implements j$.time.temporal.m, j$.time.temporal.o, Comparable, Serializable {
    public static final k e;
    public static final k f;
    public static final k g;
    private static final k[] h = new k[24];
    private static final long serialVersionUID = 6414437269572265201L;
    private final byte a;
    private final byte b;
    private final byte c;
    private final int d;

    static {
        int i = 0;
        while (true) {
            k[] kVarArr = h;
            if (i < kVarArr.length) {
                kVarArr[i] = new k(i, 0, 0, 0);
                i++;
            } else {
                k kVar = kVarArr[0];
                g = kVar;
                k kVar2 = kVarArr[12];
                e = kVar;
                f = new k(23, 59, 59, 999999999);
                return;
            }
        }
    }

    public static k a0(int i) {
        j$.time.temporal.a.HOUR_OF_DAY.a0(i);
        return h[i];
    }

    public static k b0(int i, int i2, int i3, int i4) {
        j$.time.temporal.a.HOUR_OF_DAY.a0(i);
        j$.time.temporal.a.MINUTE_OF_HOUR.a0(i2);
        j$.time.temporal.a.SECOND_OF_MINUTE.a0(i3);
        j$.time.temporal.a.NANO_OF_SECOND.a0(i4);
        return C(i, i2, i3, i4);
    }

    public static k d0(long j) {
        j$.time.temporal.a.SECOND_OF_DAY.a0(j);
        int i = (int) (j / 3600);
        long j2 = j - ((long) (i * 3600));
        int i2 = (int) (j2 / 60);
        return C(i, i2, (int) (j2 - ((long) (i2 * 60))), 0);
    }

    public static k c0(long j) {
        j$.time.temporal.a.NANO_OF_DAY.a0(j);
        int i = (int) (j / 3600000000000L);
        long j2 = j - (((long) i) * 3600000000000L);
        int i2 = (int) (j2 / 60000000000L);
        long j3 = j2 - (((long) i2) * 60000000000L);
        int i3 = (int) (j3 / 1000000000);
        return C(i, i2, i3, (int) (j3 - (((long) i3) * 1000000000)));
    }

    public static k J(j$.time.temporal.n nVar) {
        Objects.requireNonNull(nVar, "temporal");
        k kVar = (k) nVar.a(j$.time.temporal.t.c());
        if (kVar != null) {
            return kVar;
        }
        throw new c("Unable to obtain LocalTime from TemporalAccessor: " + nVar + " of type " + nVar.getClass().getName());
    }

    private static k C(int i, int i2, int i3, int i4) {
        if ((i2 | i3 | i4) == 0) {
            return h[i];
        }
        return new k(i, i2, i3, i4);
    }

    private k(int i, int i2, int i3, int i4) {
        this.a = (byte) i;
        this.b = (byte) i2;
        this.c = (byte) i3;
        this.d = i4;
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) sVar).b0();
        }
        return sVar != null && sVar.W(this);
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            return S(sVar);
        }
        return super.i(sVar);
    }

    @Override // j$.time.temporal.n
    public final long g(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            if (sVar == j$.time.temporal.a.NANO_OF_DAY) {
                return k0();
            }
            if (sVar == j$.time.temporal.a.MICRO_OF_DAY) {
                return k0() / 1000;
            }
            return S(sVar);
        }
        return sVar.r(this);
    }

    private int S(j$.time.temporal.s sVar) {
        int i = j.a[((j$.time.temporal.a) sVar).ordinal()];
        byte b = this.b;
        int i2 = this.d;
        byte b2 = this.a;
        switch (i) {
            case 1:
                return i2;
            case 2:
                throw new j$.time.temporal.w("Invalid field 'NanoOfDay' for get() method, use getLong() instead");
            case 3:
                return i2 / 1000;
            case 4:
                throw new j$.time.temporal.w("Invalid field 'MicroOfDay' for get() method, use getLong() instead");
            case 5:
                return i2 / 1000000;
            case 6:
                return (int) (k0() / 1000000);
            case 7:
                return this.c;
            case 8:
                return l0();
            case 9:
                return b;
            case 10:
                return (b2 * 60) + b;
            case 11:
                return b2 % 12;
            case 12:
                int i3 = b2 % 12;
                if (i3 % 12 == 0) {
                    return 12;
                }
                return i3;
            case 14:
                if (b2 == 0) {
                    return 24;
                }
            case 13:
                return b2;
            case 15:
                return b2 / 12;
            default:
                throw new j$.time.temporal.w(d.a("Unsupported field: ", sVar));
        }
    }

    public final int T() {
        return this.a;
    }

    public final int Z() {
        return this.c;
    }

    public final int W() {
        return this.d;
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: j */
    public final j$.time.temporal.m m(h hVar) {
        return (k) hVar.c(this);
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public final k b(long j, j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.a)) {
            return (k) sVar.p(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) sVar;
        aVar.a0(j);
        int i = j.a[aVar.ordinal()];
        byte b = this.b;
        byte b2 = this.c;
        int i2 = this.d;
        byte b3 = this.a;
        switch (i) {
            case 1:
                return n0((int) j);
            case 2:
                return c0(j);
            case 3:
                return n0(((int) j) * 1000);
            case 4:
                return c0(j * 1000);
            case 5:
                return n0(((int) j) * 1000000);
            case 6:
                return c0(j * 1000000);
            case 7:
                int i3 = (int) j;
                if (b2 != i3) {
                    j$.time.temporal.a.SECOND_OF_MINUTE.a0(i3);
                    return C(b3, b, i3, i2);
                }
                return this;
            case 8:
                return i0(j - ((long) l0()));
            case 9:
                int i4 = (int) j;
                if (b != i4) {
                    j$.time.temporal.a.MINUTE_OF_HOUR.a0(i4);
                    return C(b3, i4, b2, i2);
                }
                return this;
            case 10:
                return g0(j - ((long) ((b3 * 60) + b)));
            case 11:
                return f0(j - ((long) (b3 % 12)));
            case 12:
                if (j == 12) {
                    j = 0;
                }
                return f0(j - ((long) (b3 % 12)));
            case 13:
                int i5 = (int) j;
                if (b3 != i5) {
                    j$.time.temporal.a.HOUR_OF_DAY.a0(i5);
                    return C(i5, b, b2, i2);
                }
                return this;
            case 14:
                if (j == 24) {
                    j = 0;
                }
                int i6 = (int) j;
                if (b3 != i6) {
                    j$.time.temporal.a.HOUR_OF_DAY.a0(i6);
                    return C(i6, b, b2, i2);
                }
                return this;
            case 15:
                return f0((j - ((long) (b3 / 12))) * 12);
            default:
                throw new j$.time.temporal.w(d.a("Unsupported field: ", sVar));
        }
    }

    public final k n0(int i) {
        if (this.d == i) {
            return this;
        }
        j$.time.temporal.a.NANO_OF_SECOND.a0(i);
        return C(this.a, this.b, this.c, i);
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
    public final k d(long j, j$.time.temporal.v vVar) {
        if (vVar instanceof j$.time.temporal.b) {
            switch (j.b[((j$.time.temporal.b) vVar).ordinal()]) {
                case 1:
                    return h0(j);
                case 2:
                    return h0((j % 86400000000L) * 1000);
                case 3:
                    return h0((j % 86400000) * 1000000);
                case 4:
                    return i0(j);
                case 5:
                    return g0(j);
                case 6:
                    return f0(j);
                case 7:
                    return f0((j % 2) * 12);
                default:
                    throw new j$.time.temporal.w("Unsupported unit: " + vVar);
            }
        }
        return (k) vVar.p(this, j);
    }

    public final k f0(long j) {
        if (j == 0) {
            return this;
        }
        return C(((((int) (j % 24)) + this.a) + 24) % 24, this.b, this.c, this.d);
    }

    public final k g0(long j) {
        if (j != 0) {
            int i = (this.a * 60) + this.b;
            int i2 = ((((int) (j % 1440)) + i) + 1440) % 1440;
            if (i != i2) {
                return C(i2 / 60, i2 % 60, this.c, this.d);
            }
        }
        return this;
    }

    public final k i0(long j) {
        if (j != 0) {
            int i = (this.b * 60) + (this.a * 3600) + this.c;
            int i2 = ((((int) (j % 86400)) + i) + 86400) % 86400;
            if (i != i2) {
                return C(i2 / 3600, (i2 / 60) % 60, i2 % 60, this.d);
            }
        }
        return this;
    }

    public final k h0(long j) {
        if (j != 0) {
            long jK0 = k0();
            long j2 = (((j % 86400000000000L) + jK0) + 86400000000000L) % 86400000000000L;
            if (jK0 != j2) {
                return C((int) (j2 / 3600000000000L), (int) ((j2 / 60000000000L) % 60), (int) ((j2 / 1000000000) % 60), (int) (j2 % 1000000000));
            }
        }
        return this;
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m e(long j, j$.time.temporal.v vVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, vVar).d(1L, vVar) : d(-j, vVar);
    }

    @Override // j$.time.temporal.n
    public final Object a(j$.time.temporal.u uVar) {
        if (uVar == j$.time.temporal.t.a() || uVar == j$.time.temporal.t.g() || uVar == j$.time.temporal.t.f() || uVar == j$.time.temporal.t.d()) {
            return null;
        }
        if (uVar == j$.time.temporal.t.c()) {
            return this;
        }
        if (uVar == j$.time.temporal.t.b()) {
            return null;
        }
        if (uVar == j$.time.temporal.t.e()) {
            return j$.time.temporal.b.NANOS;
        }
        return uVar.j(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m c(j$.time.temporal.m mVar) {
        return mVar.b(k0(), j$.time.temporal.a.NANO_OF_DAY);
    }

    public final int l0() {
        return (this.b * 60) + (this.a * 3600) + this.c;
    }

    public final long k0() {
        return (((long) this.c) * 1000000000) + (((long) this.b) * 60000000000L) + (((long) this.a) * 3600000000000L) + ((long) this.d);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public final int compareTo(k kVar) {
        int iCompare = Integer.compare(this.a, kVar.a);
        return (iCompare == 0 && (iCompare = Integer.compare(this.b, kVar.b)) == 0 && (iCompare = Integer.compare(this.c, kVar.c)) == 0) ? Integer.compare(this.d, kVar.d) : iCompare;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof k) {
            k kVar = (k) obj;
            if (this.a == kVar.a && this.b == kVar.b && this.c == kVar.c && this.d == kVar.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long jK0 = k0();
        return (int) (jK0 ^ (jK0 >>> 32));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(18);
        byte b = this.a;
        sb.append(b < 10 ? "0" : "");
        sb.append((int) b);
        byte b2 = this.b;
        sb.append(b2 < 10 ? ":0" : ":");
        sb.append((int) b2);
        byte b3 = this.c;
        int i = this.d;
        if (b3 > 0 || i > 0) {
            sb.append(b3 < 10 ? ":0" : ":");
            sb.append((int) b3);
            if (i > 0) {
                sb.append('.');
                if (i % 1000000 == 0) {
                    sb.append(Integer.toString((i / 1000000) + 1000).substring(1));
                } else if (i % 1000 == 0) {
                    sb.append(Integer.toString((i / 1000) + 1000000).substring(1));
                } else {
                    sb.append(Integer.toString(i + 1000000000).substring(1));
                }
            }
        }
        return sb.toString();
    }

    private Object writeReplace() {
        return new s((byte) 4, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void o0(DataOutput dataOutput) {
        byte b = this.c;
        byte b2 = this.a;
        byte b3 = this.b;
        int i = this.d;
        if (i != 0) {
            dataOutput.writeByte(b2);
            dataOutput.writeByte(b3);
            dataOutput.writeByte(b);
            dataOutput.writeInt(i);
            return;
        }
        if (b != 0) {
            dataOutput.writeByte(b2);
            dataOutput.writeByte(b3);
            dataOutput.writeByte(~b);
        } else if (b3 == 0) {
            dataOutput.writeByte(~b2);
        } else {
            dataOutput.writeByte(b2);
            dataOutput.writeByte(~b3);
        }
    }

    static k j0(ObjectInput objectInput) throws IOException {
        int i;
        int i2;
        int i3 = objectInput.readByte();
        int i4 = 0;
        if (i3 < 0) {
            i3 = ~i3;
            i2 = 0;
            i = 0;
        } else {
            byte b = objectInput.readByte();
            if (b < 0) {
                int i5 = ~b;
                i = 0;
                i4 = i5;
                i2 = 0;
            } else {
                byte b2 = objectInput.readByte();
                if (b2 < 0) {
                    i2 = ~b2;
                    i = 0;
                    i4 = b;
                } else {
                    i = objectInput.readInt();
                    i4 = b;
                    i2 = b2;
                }
            }
        }
        return b0(i3, i4, i2, i);
    }
}
