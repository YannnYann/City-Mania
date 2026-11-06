package j$.time.chrono;

import com.ironsource.C3522b4;
import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class k implements ChronoZonedDateTime, Serializable {
    private static final long serialVersionUID = -5261813987200935591L;
    private final transient C4278g a;
    private final transient ZoneOffset b;
    private final transient j$.time.x c;

    static ChronoZonedDateTime C(j$.time.x xVar, ZoneOffset zoneOffset, C4278g c4278g) {
        Objects.requireNonNull(c4278g, "localDateTime");
        Objects.requireNonNull(xVar, "zone");
        if (xVar instanceof ZoneOffset) {
            return new k(xVar, (ZoneOffset) xVar, c4278g);
        }
        j$.time.zone.f fVarC = xVar.C();
        LocalDateTime localDateTimeC = LocalDateTime.C(c4278g);
        List listG = fVarC.g(localDateTimeC);
        if (listG.size() == 1) {
            zoneOffset = (ZoneOffset) listG.get(0);
        } else if (listG.size() == 0) {
            j$.time.zone.b bVarF = fVarC.f(localDateTimeC);
            c4278g = c4278g.S(bVarF.C().J());
            zoneOffset = bVarF.J();
        } else if (zoneOffset == null || !listG.contains(zoneOffset)) {
            zoneOffset = (ZoneOffset) listG.get(0);
        }
        Objects.requireNonNull(zoneOffset, "offset");
        return new k(xVar, zoneOffset, c4278g);
    }

    static k J(l lVar, Instant instant, j$.time.x xVar) {
        ZoneOffset zoneOffsetD = xVar.C().d(instant);
        Objects.requireNonNull(zoneOffsetD, "offset");
        return new k(xVar, zoneOffsetD, (C4278g) lVar.x(LocalDateTime.d0(instant.C(), instant.J(), zoneOffsetD)));
    }

    static k r(l lVar, j$.time.temporal.m mVar) {
        k kVar = (k) mVar;
        if (lVar.equals(kVar.h())) {
            return kVar;
        }
        throw new ClassCastException("Chronology mismatch, required: " + lVar.s() + ", actual: " + kVar.h().s());
    }

    private k(j$.time.x xVar, ZoneOffset zoneOffset, C4278g c4278g) {
        Objects.requireNonNull(c4278g, "dateTime");
        this.a = c4278g;
        Objects.requireNonNull(zoneOffset, "offset");
        this.b = zoneOffset;
        Objects.requireNonNull(xVar, "zone");
        this.c = xVar;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneOffset E() {
        return this.b;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final InterfaceC4276e B() {
        return this.a;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final j$.time.x Q() {
        return this.c;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ChronoZonedDateTime I(j$.time.x xVar) {
        return C(xVar, this.b, this.a);
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            return true;
        }
        return sVar != null && sVar.W(this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime, j$.time.temporal.m
    public final ChronoZonedDateTime b(long j, j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) sVar;
            int i = AbstractC4281j.a[aVar.ordinal()];
            if (i == 1) {
                return d(j - O(), (j$.time.temporal.v) j$.time.temporal.b.SECONDS);
            }
            j$.time.x xVar = this.c;
            C4278g c4278g = this.a;
            if (i != 2) {
                return C(xVar, this.b, c4278g.b(j, sVar));
            }
            return J(h(), Instant.W(c4278g.Y(ZoneOffset.e0(aVar.Z(j))), c4278g.n().W()), xVar);
        }
        return r(h(), sVar.p(this, j));
    }

    @Override // j$.time.chrono.ChronoZonedDateTime, j$.time.temporal.m
    public final ChronoZonedDateTime d(long j, j$.time.temporal.v vVar) {
        if (vVar instanceof j$.time.temporal.b) {
            return m(this.a.d(j, vVar));
        }
        return r(h(), vVar.p(this, j));
    }

    private Object writeReplace() {
        return new E((byte) 3, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.a);
        objectOutput.writeObject(this.b);
        objectOutput.writeObject(this.c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoZonedDateTime) && compareTo((ChronoZonedDateTime) obj) == 0;
    }

    public final int hashCode() {
        return (this.a.hashCode() ^ this.b.hashCode()) ^ Integer.rotateLeft(this.c.hashCode(), 3);
    }

    public final String toString() {
        String string = this.a.toString();
        ZoneOffset zoneOffset = this.b;
        String str = string + zoneOffset.toString();
        j$.time.x xVar = this.c;
        if (zoneOffset == xVar) {
            return str;
        }
        return str + C3522b4.j.d + xVar.toString() + C3522b4.j.e;
    }
}
