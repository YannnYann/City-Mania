package j$.time.chrono;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.chrono.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
final class C4278g implements InterfaceC4276e, j$.time.temporal.m, j$.time.temporal.o, Serializable {
    private static final long serialVersionUID = 4556003607393004514L;
    private final transient InterfaceC4273b a;
    private final transient j$.time.k b;

    static C4278g C(InterfaceC4273b interfaceC4273b, j$.time.k kVar) {
        return new C4278g(interfaceC4273b, kVar);
    }

    static C4278g r(l lVar, j$.time.temporal.m mVar) {
        C4278g c4278g = (C4278g) mVar;
        if (lVar.equals(c4278g.h())) {
            return c4278g;
        }
        throw new ClassCastException("Chronology mismatch, required: " + lVar.s() + ", actual: " + c4278g.h().s());
    }

    private C4278g(InterfaceC4273b interfaceC4273b, j$.time.k kVar) {
        Objects.requireNonNull(kVar, "time");
        this.a = interfaceC4273b;
        this.b = kVar;
    }

    private C4278g Z(j$.time.temporal.m mVar, j$.time.k kVar) {
        InterfaceC4273b interfaceC4273b = this.a;
        return (interfaceC4273b == mVar && this.b == kVar) ? this : new C4278g(AbstractC4275d.r(interfaceC4273b.h(), mVar), kVar);
    }

    @Override // j$.time.chrono.InterfaceC4276e
    public final InterfaceC4273b o() {
        return this.a;
    }

    @Override // j$.time.chrono.InterfaceC4276e
    public final j$.time.k n() {
        return this.b;
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.a)) {
            return sVar != null && sVar.W(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) sVar;
        return aVar.T() || aVar.b0();
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.x l(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            return (((j$.time.temporal.a) sVar).b0() ? this.b : this.a).l(sVar);
        }
        return sVar.J(this);
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) sVar).b0() ? this.b.i(sVar) : this.a.i(sVar);
        }
        return l(sVar).a(g(sVar), sVar);
    }

    @Override // j$.time.temporal.n
    public final long g(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) sVar).b0() ? this.b.g(sVar) : this.a.g(sVar);
        }
        return sVar.r(this);
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: j */
    public final j$.time.temporal.m m(j$.time.h hVar) {
        return Z(hVar, this.b);
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: W, reason: merged with bridge method [inline-methods] */
    public final C4278g b(long j, j$.time.temporal.s sVar) {
        boolean z = sVar instanceof j$.time.temporal.a;
        InterfaceC4273b interfaceC4273b = this.a;
        if (z) {
            boolean zB0 = ((j$.time.temporal.a) sVar).b0();
            j$.time.k kVar = this.b;
            if (zB0) {
                return Z(interfaceC4273b, kVar.b(j, sVar));
            }
            return Z(interfaceC4273b.b(j, sVar), kVar);
        }
        return r(interfaceC4273b.h(), sVar.p(this, j));
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public final C4278g d(long j, j$.time.temporal.v vVar) {
        boolean z = vVar instanceof j$.time.temporal.b;
        InterfaceC4273b interfaceC4273b = this.a;
        if (z) {
            int i = AbstractC4277f.a[((j$.time.temporal.b) vVar).ordinal()];
            j$.time.k kVar = this.b;
            switch (i) {
                case 1:
                    return T(this.a, 0L, 0L, 0L, j);
                case 2:
                    C4278g c4278gZ = Z(interfaceC4273b.d(j / 86400000000L, (j$.time.temporal.v) j$.time.temporal.b.DAYS), kVar);
                    return c4278gZ.T(c4278gZ.a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
                case 3:
                    C4278g c4278gZ2 = Z(interfaceC4273b.d(j / 86400000, (j$.time.temporal.v) j$.time.temporal.b.DAYS), kVar);
                    return c4278gZ2.T(c4278gZ2.a, 0L, 0L, 0L, (j % 86400000) * 1000000);
                case 4:
                    return S(j);
                case 5:
                    return T(this.a, 0L, j, 0L, 0L);
                case 6:
                    return T(this.a, j, 0L, 0L, 0L);
                case 7:
                    C4278g c4278gZ3 = Z(interfaceC4273b.d(j / 256, (j$.time.temporal.v) j$.time.temporal.b.DAYS), kVar);
                    return c4278gZ3.T(c4278gZ3.a, (j % 256) * 12, 0L, 0L, 0L);
                default:
                    return Z(interfaceC4273b.d(j, vVar), kVar);
            }
        }
        return r(interfaceC4273b.h(), vVar.p(this, j));
    }

    final C4278g S(long j) {
        return T(this.a, 0L, 0L, j, 0L);
    }

    private C4278g T(InterfaceC4273b interfaceC4273b, long j, long j2, long j3, long j4) {
        long j5 = j | j2 | j3 | j4;
        j$.time.k kVarC0 = this.b;
        if (j5 == 0) {
            return Z(interfaceC4273b, kVarC0);
        }
        long j6 = j2 / 1440;
        long j7 = j / 24;
        long j8 = (j2 % 1440) * 60000000000L;
        long j9 = ((j % 24) * 3600000000000L) + j8 + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L);
        long jK0 = kVarC0.k0();
        long j10 = j9 + jK0;
        long jFloorDiv = Math.floorDiv(j10, 86400000000000L) + j7 + j6 + (j3 / 86400) + (j4 / 86400000000000L);
        long jFloorMod = Math.floorMod(j10, 86400000000000L);
        if (jFloorMod != jK0) {
            kVarC0 = j$.time.k.c0(jFloorMod);
        }
        return Z(interfaceC4273b.d(jFloorDiv, (j$.time.temporal.v) j$.time.temporal.b.DAYS), kVarC0);
    }

    @Override // j$.time.chrono.InterfaceC4276e
    public final ChronoZonedDateTime H(j$.time.x xVar) {
        return k.C(xVar, null, this);
    }

    private Object writeReplace() {
        return new E((byte) 2, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.a);
        objectOutput.writeObject(this.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterfaceC4276e) && compareTo((InterfaceC4276e) obj) == 0;
    }

    public final int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }

    public final String toString() {
        return this.a.toString() + RequestConfiguration.MAX_AD_CONTENT_RATING_T + this.b.toString();
    }
}
