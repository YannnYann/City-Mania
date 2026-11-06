package j$.time.chrono;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class C extends AbstractC4275d {
    private static final long serialVersionUID = 1300372329181994526L;
    private final transient j$.time.h a;

    C(j$.time.h hVar) {
        Objects.requireNonNull(hVar, "isoDate");
        this.a = hVar;
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public final l h() {
        return A.d;
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b
    public final int hashCode() {
        A.d.getClass();
        return this.a.hashCode() ^ (-1990173233);
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public final m u() {
        return T() >= 1 ? D.ROC : D.BEFORE_ROC;
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.x l(j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.a)) {
            return sVar.J(this);
        }
        if (!f(sVar)) {
            throw new j$.time.temporal.w(j$.time.d.a("Unsupported field: ", sVar));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) sVar;
        int i = B.a[aVar.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return this.a.l(sVar);
        }
        if (i != 4) {
            return A.d.U(aVar);
        }
        j$.time.temporal.x xVarC = j$.time.temporal.a.YEAR.C();
        return j$.time.temporal.x.j(1L, T() <= 0 ? (-xVarC.e()) + 1912 : xVarC.d() - 1911);
    }

    @Override // j$.time.temporal.n
    public final long g(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            int i = B.a[((j$.time.temporal.a) sVar).ordinal()];
            if (i == 4) {
                int iT = T();
                if (iT < 1) {
                    iT = 1 - iT;
                }
                return iT;
            }
            j$.time.h hVar = this.a;
            if (i == 5) {
                return ((((long) T()) * 12) + ((long) hVar.Z())) - 1;
            }
            if (i == 6) {
                return T();
            }
            if (i != 7) {
                return hVar.g(sVar);
            }
            return T() < 1 ? 0 : 1;
        }
        return sVar.r(this);
    }

    private int T() {
        return this.a.a0() - 1911;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    @Override // j$.time.chrono.AbstractC4275d, j$.time.temporal.m
    /* JADX INFO: renamed from: W, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final j$.time.chrono.C b(long r9, j$.time.temporal.s r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof j$.time.temporal.a
            if (r0 == 0) goto L99
            r0 = r11
            j$.time.temporal.a r0 = (j$.time.temporal.a) r0
            long r1 = r8.g(r0)
            int r1 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1))
            if (r1 != 0) goto L10
            return r8
        L10:
            int[] r1 = j$.time.chrono.B.a
            int r2 = r0.ordinal()
            r2 = r1[r2]
            j$.time.h r3 = r8.a
            r4 = 7
            r5 = 6
            r6 = 4
            if (r2 == r6) goto L4b
            r7 = 5
            if (r2 == r7) goto L27
            if (r2 == r5) goto L4b
            if (r2 == r4) goto L4b
            goto L61
        L27:
            j$.time.chrono.A r11 = j$.time.chrono.A.d
            j$.time.temporal.x r11 = r11.U(r0)
            r11.b(r9, r0)
            int r11 = r8.T()
            long r0 = (long) r11
            r4 = 12
            long r0 = r0 * r4
            int r11 = r3.Z()
            long r4 = (long) r11
            long r0 = r0 + r4
            r4 = 1
            long r0 = r0 - r4
            long r9 = r9 - r0
            j$.time.h r9 = r3.l0(r9)
            j$.time.chrono.C r9 = r8.Z(r9)
            return r9
        L4b:
            j$.time.chrono.A r2 = j$.time.chrono.A.d
            j$.time.temporal.x r2 = r2.U(r0)
            int r2 = r2.a(r9, r0)
            int r0 = r0.ordinal()
            r0 = r1[r0]
            if (r0 == r6) goto L84
            if (r0 == r5) goto L79
            if (r0 == r4) goto L6a
        L61:
            j$.time.h r9 = r3.b(r9, r11)
            j$.time.chrono.C r9 = r8.Z(r9)
            return r9
        L6a:
            int r9 = r8.T()
            int r9 = 1912 - r9
            j$.time.h r9 = r3.s0(r9)
            j$.time.chrono.C r9 = r8.Z(r9)
            return r9
        L79:
            int r2 = r2 + 1911
            j$.time.h r9 = r3.s0(r2)
            j$.time.chrono.C r9 = r8.Z(r9)
            return r9
        L84:
            int r9 = r8.T()
            r10 = 1
            if (r9 < r10) goto L8e
            int r2 = r2 + 1911
            goto L90
        L8e:
            int r2 = 1912 - r2
        L90:
            j$.time.h r9 = r3.s0(r2)
            j$.time.chrono.C r9 = r8.Z(r9)
            return r9
        L99:
            j$.time.chrono.b r9 = super.b(r9, r11)
            j$.time.chrono.C r9 = (j$.time.chrono.C) r9
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.chrono.C.b(long, j$.time.temporal.s):j$.time.chrono.C");
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.temporal.m
    /* JADX INFO: renamed from: j */
    public final j$.time.temporal.m m(j$.time.h hVar) {
        return (C) super.m(hVar);
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b
    public final InterfaceC4273b m(j$.time.temporal.o oVar) {
        return (C) super.m(oVar);
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b
    public final InterfaceC4273b M(j$.time.temporal.r rVar) {
        return (C) super.M(rVar);
    }

    @Override // j$.time.chrono.AbstractC4275d
    final InterfaceC4273b S(long j) {
        return Z(this.a.n0(j));
    }

    @Override // j$.time.chrono.AbstractC4275d
    final InterfaceC4273b J(long j) {
        return Z(this.a.l0(j));
    }

    @Override // j$.time.chrono.AbstractC4275d
    final InterfaceC4273b C(long j) {
        return Z(this.a.k0(j));
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b, j$.time.temporal.m
    public final InterfaceC4273b d(long j, j$.time.temporal.v vVar) {
        return (C) super.d(j, vVar);
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.temporal.m
    public final j$.time.temporal.m d(long j, j$.time.temporal.v vVar) {
        return (C) super.d(j, vVar);
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b, j$.time.temporal.m
    public final InterfaceC4273b e(long j, j$.time.temporal.v vVar) {
        return (C) super.e(j, vVar);
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b, j$.time.temporal.m
    public final j$.time.temporal.m e(long j, j$.time.temporal.v vVar) {
        return (C) super.e(j, vVar);
    }

    private C Z(j$.time.h hVar) {
        return hVar.equals(this.a) ? this : new C(hVar);
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public final long v() {
        return this.a.v();
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C) {
            return this.a.equals(((C) obj).a);
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new E((byte) 7, this);
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public final InterfaceC4276e K(j$.time.k kVar) {
        return C4278g.C(this, kVar);
    }
}
