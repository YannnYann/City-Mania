package j$.time.chrono;

import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;

/* JADX INFO: loaded from: classes2.dex */
public final class q extends AbstractC4275d {
    private static final long serialVersionUID = -5207853542612002020L;
    private final transient o a;
    private final transient int b;
    private final transient int c;
    private final transient int d;

    static q Z(o oVar, int i, int i2, int i3) {
        return new q(oVar, i, i2, i3);
    }

    static q a0(o oVar, long j) {
        return new q(oVar, j);
    }

    private q(o oVar, int i, int i2, int i3) {
        oVar.d0(i, i2, i3);
        this.a = oVar;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    private q(o oVar, long j) {
        int[] iArrE0 = oVar.e0((int) j);
        this.a = oVar;
        this.b = iArrE0[0];
        this.c = iArrE0[1];
        this.d = iArrE0[2];
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public final l h() {
        return this.a;
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public final m u() {
        return r.AH;
    }

    public final int W() {
        return this.a.g0(this.b);
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
        int i = p.a[aVar.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? this.a.U(aVar) : j$.time.temporal.x.j(1L, 5L) : j$.time.temporal.x.j(1L, W()) : j$.time.temporal.x.j(1L, r2.f0(this.b, this.c));
    }

    @Override // j$.time.temporal.n
    public final long g(j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.a)) {
            return sVar.r(this);
        }
        int i = p.a[((j$.time.temporal.a) sVar).ordinal()];
        int i2 = this.c;
        int i3 = this.d;
        int i4 = this.b;
        switch (i) {
            case 1:
                return i3;
            case 2:
                return T();
            case 3:
                return ((i3 - 1) / 7) + 1;
            case 4:
                return ((int) Math.floorMod(v() + 3, 7)) + 1;
            case 5:
                return ((i3 - 1) % 7) + 1;
            case 6:
                return ((T() - 1) % 7) + 1;
            case 7:
                return v();
            case 8:
                return ((T() - 1) / 7) + 1;
            case 9:
                return i2;
            case 10:
                return ((((long) i4) * 12) + ((long) i2)) - 1;
            case 11:
                return i4;
            case 12:
                return i4;
            case 13:
                return i4 <= 1 ? 0 : 1;
            default:
                throw new j$.time.temporal.w(j$.time.d.a("Unsupported field: ", sVar));
        }
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.temporal.m
    /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
    public final q b(long j, j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.a)) {
            return (q) super.b(j, sVar);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) sVar;
        o oVar = this.a;
        oVar.U(aVar).b(j, aVar);
        int i = (int) j;
        int i2 = p.a[aVar.ordinal()];
        int i3 = this.d;
        int i4 = this.c;
        int i5 = this.b;
        switch (i2) {
            case 1:
                return d0(i5, i4, i);
            case 2:
                return C(Math.min(i, W()) - T());
            case 3:
                return C((j - g(j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH)) * 7);
            case 4:
                return C(j - ((long) (((int) Math.floorMod(v() + 3, 7)) + 1)));
            case 5:
                return C(j - g(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 6:
                return C(j - g(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 7:
                return new q(oVar, j);
            case 8:
                return C((j - g(j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR)) * 7);
            case 9:
                return d0(i5, i, i3);
            case 10:
                return J(j - (((((long) i5) * 12) + ((long) i4)) - 1));
            case 11:
                if (i5 < 1) {
                    i = 1 - i;
                }
                return d0(i, i4, i3);
            case 12:
                return d0(i, i4, i3);
            case 13:
                return d0(1 - i5, i4, i3);
            default:
                throw new j$.time.temporal.w(j$.time.d.a("Unsupported field: ", sVar));
        }
    }

    private q d0(int i, int i2, int i3) {
        o oVar = this.a;
        int iF0 = oVar.f0(i, i2);
        if (i3 > iF0) {
            i3 = iF0;
        }
        return new q(oVar, i, i2, i3);
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.temporal.m
    /* JADX INFO: renamed from: j */
    public final j$.time.temporal.m m(j$.time.h hVar) {
        return (q) super.m(hVar);
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b
    public final InterfaceC4273b m(j$.time.temporal.o oVar) {
        return (q) super.m(oVar);
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b
    public final InterfaceC4273b M(j$.time.temporal.r rVar) {
        return (q) super.M(rVar);
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public final long v() {
        return this.a.d0(this.b, this.c, this.d);
    }

    private int T() {
        return this.a.c0(this.b, this.c) + this.d;
    }

    @Override // j$.time.chrono.AbstractC4275d
    final InterfaceC4273b S(long j) {
        return j == 0 ? this : d0(Math.addExact(this.b, (int) j), this.c, this.d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.time.chrono.AbstractC4275d
    /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
    public final q J(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (((long) this.b) * 12) + ((long) (this.c - 1)) + j;
        return d0(this.a.a0(Math.floorDiv(j2, 12L)), ((int) Math.floorMod(j2, 12L)) + 1, this.d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.time.chrono.AbstractC4275d
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public final q C(long j) {
        return new q(this.a, v() + j);
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b, j$.time.temporal.m
    public final InterfaceC4273b d(long j, j$.time.temporal.v vVar) {
        return (q) super.d(j, vVar);
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.temporal.m
    public final j$.time.temporal.m d(long j, j$.time.temporal.v vVar) {
        return (q) super.d(j, vVar);
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b, j$.time.temporal.m
    public final InterfaceC4273b e(long j, j$.time.temporal.v vVar) {
        return (q) super.e(j, vVar);
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b, j$.time.temporal.m
    public final j$.time.temporal.m e(long j, j$.time.temporal.v vVar) {
        return (q) super.e(j, vVar);
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof q) {
            q qVar = (q) obj;
            if (this.b == qVar.b && this.c == qVar.c && this.d == qVar.d && this.a.equals(qVar.a)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b
    public final int hashCode() {
        this.a.getClass();
        int i = this.b;
        return (((i << 11) + (this.c << 6)) + this.d) ^ ((i & (-2048)) ^ 2100100019);
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public final InterfaceC4276e K(j$.time.k kVar) {
        return C4278g.C(this, kVar);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new E((byte) 6, this);
    }

    final void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.a);
        objectOutput.writeInt(i(j$.time.temporal.a.YEAR));
        objectOutput.writeByte(i(j$.time.temporal.a.MONTH_OF_YEAR));
        objectOutput.writeByte(i(j$.time.temporal.a.DAY_OF_MONTH));
    }
}
