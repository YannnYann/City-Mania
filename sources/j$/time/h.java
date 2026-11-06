package j$.time;

import com.unity3d.services.UnityAdsConstants;
import j$.time.chrono.InterfaceC4273b;
import j$.time.chrono.InterfaceC4276e;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements j$.time.temporal.m, j$.time.temporal.o, InterfaceC4273b, Serializable {
    public static final h d = f0(-999999999, 1, 1);
    public static final h e = f0(999999999, 12, 31);
    private static final long serialVersionUID = 2942565459149668126L;
    private final int a;
    private final short b;
    private final short c;

    static {
        f0(1970, 1, 1);
    }

    public static h g0(int i, m mVar, int i2) {
        j$.time.temporal.a.YEAR.a0(i);
        j$.time.temporal.a.DAY_OF_MONTH.a0(i2);
        return C(i, mVar.p(), i2);
    }

    public static h f0(int i, int i2, int i3) {
        j$.time.temporal.a.YEAR.a0(i);
        j$.time.temporal.a.MONTH_OF_YEAR.a0(i2);
        j$.time.temporal.a.DAY_OF_MONTH.a0(i3);
        return C(i, i2, i3);
    }

    public static h i0(int i, int i2) {
        long j = i;
        j$.time.temporal.a.YEAR.a0(j);
        j$.time.temporal.a.DAY_OF_YEAR.a0(i2);
        j$.time.chrono.s.d.getClass();
        boolean Z = j$.time.chrono.s.Z(j);
        if (i2 == 366 && !Z) {
            throw new c("Invalid date 'DayOfYear 366' as '" + i + "' is not a leap year");
        }
        m mVarS = m.S(((i2 - 1) / 31) + 1);
        if (i2 > (mVarS.C(Z) + mVarS.r(Z)) - 1) {
            mVarS = mVarS.T();
        }
        return new h(i, mVarS.p(), (i2 - mVarS.r(Z)) + 1);
    }

    public static h h0(long j) {
        long j2;
        j$.time.temporal.a.EPOCH_DAY.a0(j);
        long j3 = 719468 + j;
        if (j3 < 0) {
            long j4 = ((j + 719469) / 146097) - 1;
            j2 = j4 * 400;
            j3 += (-j4) * 146097;
        } else {
            j2 = 0;
        }
        long j5 = ((j3 * 400) + 591) / 146097;
        long j6 = j3 - ((j5 / 400) + (((j5 / 4) + (j5 * 365)) - (j5 / 100)));
        if (j6 < 0) {
            j5--;
            j6 = j3 - ((j5 / 400) + (((j5 / 4) + (365 * j5)) - (j5 / 100)));
        }
        int i = (int) j6;
        int i2 = ((i * 5) + 2) / 153;
        return new h(j$.time.temporal.a.YEAR.Z(j5 + j2 + ((long) (i2 / 10))), ((i2 + 2) % 12) + 1, (i - (((i2 * 306) + 5) / 10)) + 1);
    }

    public static h J(j$.time.temporal.n nVar) {
        Objects.requireNonNull(nVar, "temporal");
        h hVar = (h) nVar.a(j$.time.temporal.t.b());
        if (hVar != null) {
            return hVar;
        }
        throw new c("Unable to obtain LocalDate from TemporalAccessor: " + nVar + " of type " + nVar.getClass().getName());
    }

    private static h C(int i, int i2, int i3) {
        int i4 = 28;
        if (i3 > 28) {
            if (i2 != 2) {
                i4 = (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) ? 30 : 31;
            } else {
                j$.time.chrono.s.d.getClass();
                if (j$.time.chrono.s.Z(i)) {
                    i4 = 29;
                }
            }
            if (i3 > i4) {
                if (i3 == 29) {
                    throw new c("Invalid date 'February 29' as '" + i + "' is not a leap year");
                }
                throw new c("Invalid date '" + m.S(i2).name() + " " + i3 + "'");
            }
        }
        return new h(i, i2, i3);
    }

    private static h o0(int i, int i2, int i3) {
        if (i2 == 2) {
            j$.time.chrono.s.d.getClass();
            i3 = Math.min(i3, j$.time.chrono.s.Z((long) i) ? 29 : 28);
        } else if (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) {
            i3 = Math.min(i3, 30);
        }
        return new h(i, i2, i3);
    }

    private h(int i, int i2, int i3) {
        this.a = i;
        this.b = (short) i2;
        this.c = (short) i3;
    }

    public static h e0(b bVar) {
        Instant instantS = Instant.S(System.currentTimeMillis());
        x xVarA = bVar.a();
        Objects.requireNonNull(instantS, "instant");
        Objects.requireNonNull(xVarA, "zone");
        return h0(Math.floorDiv(instantS.C() + ((long) xVarA.C().d(instantS).b0()), 86400));
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.x l(j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.a)) {
            return sVar.J(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) sVar;
        if (!aVar.T()) {
            throw new j$.time.temporal.w(d.a("Unsupported field: ", sVar));
        }
        int i = g.a[aVar.ordinal()];
        if (i == 1) {
            return j$.time.temporal.x.j(1L, d0());
        }
        if (i == 2) {
            return j$.time.temporal.x.j(1L, c0() ? 366 : 365);
        }
        if (i != 3) {
            return i != 4 ? ((j$.time.temporal.a) sVar).C() : this.a <= 0 ? j$.time.temporal.x.j(1L, 1000000000L) : j$.time.temporal.x.j(1L, 999999999L);
        }
        return j$.time.temporal.x.j(1L, (m.S(this.b) != m.FEBRUARY || c0()) ? 5L : 4L);
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
            if (sVar == j$.time.temporal.a.EPOCH_DAY) {
                return v();
            }
            if (sVar != j$.time.temporal.a.PROLEPTIC_MONTH) {
                return S(sVar);
            }
            return ((((long) this.a) * 12) + ((long) this.b)) - 1;
        }
        return sVar.r(this);
    }

    private int S(j$.time.temporal.s sVar) {
        int i;
        int i2 = g.a[((j$.time.temporal.a) sVar).ordinal()];
        short s = this.c;
        int i3 = this.a;
        switch (i2) {
            case 1:
                return s;
            case 2:
                return W();
            case 3:
                i = (s - 1) / 7;
                break;
            case 4:
                return i3 >= 1 ? i3 : 1 - i3;
            case 5:
                return T().p();
            case 6:
                i = (s - 1) % 7;
                break;
            case 7:
                return ((W() - 1) % 7) + 1;
            case 8:
                throw new j$.time.temporal.w("Invalid field 'EpochDay' for get() method, use getLong() instead");
            case 9:
                return ((W() - 1) / 7) + 1;
            case 10:
                return this.b;
            case 11:
                throw new j$.time.temporal.w("Invalid field 'ProlepticMonth' for get() method, use getLong() instead");
            case 12:
                return i3;
            case 13:
                return i3 >= 1 ? 1 : 0;
            default:
                throw new j$.time.temporal.w(d.a("Unsupported field: ", sVar));
        }
        return i + 1;
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public final j$.time.chrono.l h() {
        return j$.time.chrono.s.d;
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public final j$.time.chrono.m u() {
        return this.a >= 1 ? j$.time.chrono.t.CE : j$.time.chrono.t.BCE;
    }

    public final int a0() {
        return this.a;
    }

    public final int Z() {
        return this.b;
    }

    public final int W() {
        return (m.S(this.b).r(c0()) + this.c) - 1;
    }

    public final e T() {
        return e.r(((int) Math.floorMod(v() + 3, 7)) + 1);
    }

    public final boolean c0() {
        j$.time.chrono.s sVar = j$.time.chrono.s.d;
        long j = this.a;
        sVar.getClass();
        return j$.time.chrono.s.Z(j);
    }

    public final int d0() {
        short s = this.b;
        return s != 2 ? (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31 : c0() ? 29 : 28;
    }

    @Override // j$.time.chrono.InterfaceC4273b
    /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final h m(j$.time.temporal.o oVar) {
        if (oVar instanceof h) {
            return (h) oVar;
        }
        return (h) oVar.c(this);
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: p0, reason: merged with bridge method [inline-methods] */
    public final h b(long j, j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.a)) {
            return (h) sVar.p(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) sVar;
        aVar.a0(j);
        int i = g.a[aVar.ordinal()];
        short s = this.c;
        short s2 = this.b;
        int i2 = this.a;
        switch (i) {
            case 1:
                int i3 = (int) j;
                if (s != i3) {
                    return f0(i2, s2, i3);
                }
                return this;
            case 2:
                return r0((int) j);
            case 3:
                return m0(j - g(j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH));
            case 4:
                if (i2 < 1) {
                    j = 1 - j;
                }
                return s0((int) j);
            case 5:
                return k0(j - ((long) T().p()));
            case 6:
                return k0(j - g(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 7:
                return k0(j - g(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 8:
                return h0(j);
            case 9:
                return m0(j - g(j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR));
            case 10:
                int i4 = (int) j;
                if (s2 != i4) {
                    j$.time.temporal.a.MONTH_OF_YEAR.a0(i4);
                    return o0(i2, i4, s);
                }
                return this;
            case 11:
                return l0(j - (((((long) i2) * 12) + ((long) s2)) - 1));
            case 12:
                return s0((int) j);
            case 13:
                if (g(j$.time.temporal.a.ERA) != j) {
                    return s0(1 - i2);
                }
                return this;
            default:
                throw new j$.time.temporal.w(d.a("Unsupported field: ", sVar));
        }
    }

    public final h s0(int i) {
        if (this.a == i) {
            return this;
        }
        j$.time.temporal.a.YEAR.a0(i);
        return o0(i, this.b, this.c);
    }

    public final h r0(int i) {
        return W() == i ? this : i0(this.a, i);
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public final InterfaceC4273b M(j$.time.temporal.r rVar) {
        if (rVar instanceof r) {
            return l0(((r) rVar).d()).k0(r4.a());
        }
        Objects.requireNonNull(rVar, "amountToAdd");
        return (h) rVar.p(this);
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: j0, reason: merged with bridge method [inline-methods] */
    public final h d(long j, j$.time.temporal.v vVar) {
        if (!(vVar instanceof j$.time.temporal.b)) {
            return (h) vVar.p(this, j);
        }
        switch (g.b[((j$.time.temporal.b) vVar).ordinal()]) {
            case 1:
                return k0(j);
            case 2:
                return m0(j);
            case 3:
                return l0(j);
            case 4:
                return n0(j);
            case 5:
                return n0(Math.multiplyExact(j, 10));
            case 6:
                return n0(Math.multiplyExact(j, 100));
            case 7:
                return n0(Math.multiplyExact(j, 1000));
            case 8:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return b(Math.addExact(g(aVar), j), aVar);
            default:
                throw new j$.time.temporal.w("Unsupported unit: " + vVar);
        }
    }

    public final h n0(long j) {
        return j == 0 ? this : o0(j$.time.temporal.a.YEAR.Z(((long) this.a) + j), this.b, this.c);
    }

    public final h l0(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (((long) this.a) * 12) + ((long) (this.b - 1)) + j;
        long j3 = 12;
        return o0(j$.time.temporal.a.YEAR.Z(Math.floorDiv(j2, j3)), ((int) Math.floorMod(j2, j3)) + 1, this.c);
    }

    public final h m0(long j) {
        return k0(Math.multiplyExact(j, 7));
    }

    public final h k0(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = ((long) this.c) + j;
        if (j2 > 0) {
            short s = this.b;
            int i = this.a;
            if (j2 <= 28) {
                return new h(i, s, (int) j2);
            }
            if (j2 <= 59) {
                long jD0 = d0();
                if (j2 <= jD0) {
                    return new h(i, s, (int) j2);
                }
                if (s < 12) {
                    return new h(i, s + 1, (int) (j2 - jD0));
                }
                int i2 = i + 1;
                j$.time.temporal.a.YEAR.a0(i2);
                return new h(i2, 1, (int) (j2 - jD0));
            }
        }
        return h0(Math.addExact(v(), j));
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m e(long j, j$.time.temporal.v vVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, vVar).d(1L, vVar) : d(-j, vVar);
    }

    @Override // j$.time.temporal.n
    public final Object a(j$.time.temporal.u uVar) {
        return uVar == j$.time.temporal.t.b() ? this : super.a(uVar);
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public final InterfaceC4276e K(k kVar) {
        return LocalDateTime.c0(this, kVar);
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public final long v() {
        long j = this.a;
        long j2 = this.b;
        long j3 = 365 * j;
        long j4 = (((367 * j2) - 362) / 12) + (j >= 0 ? ((j + 399) / 400) + (((3 + j) / 4) - ((99 + j) / 100)) + j3 : j3 - ((j / (-400)) + ((j / (-4)) - (j / (-100))))) + ((long) (this.c - 1));
        if (j2 > 2) {
            j4 = !c0() ? j4 - 2 : j4 - 1;
        }
        return j4 - 719528;
    }

    @Override // j$.time.chrono.InterfaceC4273b, java.lang.Comparable
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public final int compareTo(InterfaceC4273b interfaceC4273b) {
        if (interfaceC4273b instanceof h) {
            return r((h) interfaceC4273b);
        }
        return super.compareTo(interfaceC4273b);
    }

    final int r(h hVar) {
        int i = this.a - hVar.a;
        if (i != 0) {
            return i;
        }
        int i2 = this.b - hVar.b;
        return i2 == 0 ? this.c - hVar.c : i2;
    }

    public final boolean b0(h hVar) {
        return hVar != null ? r(hVar) < 0 : v() < hVar.v();
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h) && r((h) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public final int hashCode() {
        int i = this.a;
        return (((i << 11) + (this.b << 6)) + this.c) ^ (i & (-2048));
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public final String toString() {
        int i = this.a;
        int iAbs = Math.abs(i);
        StringBuilder sb = new StringBuilder(10);
        if (iAbs >= 1000) {
            if (i > 9999) {
                sb.append('+');
            }
            sb.append(i);
        } else if (i < 0) {
            sb.append(i - 10000);
            sb.deleteCharAt(1);
        } else {
            sb.append(i + UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS);
            sb.deleteCharAt(0);
        }
        short s = this.b;
        sb.append(s < 10 ? "-0" : "-");
        sb.append((int) s);
        short s2 = this.c;
        sb.append(s2 < 10 ? "-0" : "-");
        sb.append((int) s2);
        return sb.toString();
    }

    private Object writeReplace() {
        return new s((byte) 3, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void t0(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(this.a);
        dataOutput.writeByte(this.b);
        dataOutput.writeByte(this.c);
    }
}
