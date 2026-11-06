package j$.time.zone;

import com.vungle.ads.internal.protos.Sdk;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import j$.time.chrono.s;
import j$.time.k;
import j$.time.m;
import j$.time.temporal.p;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements Serializable {
    private static final long serialVersionUID = 6889046316657758795L;
    private final m a;
    private final byte b;
    private final j$.time.e c;
    private final k d;
    private final boolean e;
    private final d f;
    private final ZoneOffset g;
    private final ZoneOffset h;
    private final ZoneOffset i;

    e(m mVar, int i, j$.time.e eVar, k kVar, boolean z, d dVar, ZoneOffset zoneOffset, ZoneOffset zoneOffset2, ZoneOffset zoneOffset3) {
        this.a = mVar;
        this.b = (byte) i;
        this.c = eVar;
        this.d = kVar;
        this.e = z;
        this.f = dVar;
        this.g = zoneOffset;
        this.h = zoneOffset2;
        this.i = zoneOffset3;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new a((byte) 3, this);
    }

    final void writeExternal(ObjectOutput objectOutput) {
        k kVar = this.d;
        boolean z = this.e;
        int iL0 = z ? 86400 : kVar.l0();
        int iB0 = this.g.b0();
        ZoneOffset zoneOffset = this.h;
        int iB02 = zoneOffset.b0() - iB0;
        ZoneOffset zoneOffset2 = this.i;
        int iB03 = zoneOffset2.b0() - iB0;
        int iT = iL0 % 3600 == 0 ? z ? 24 : kVar.T() : 31;
        int i = iB0 % 900 == 0 ? (iB0 / 900) + Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE : 255;
        int i2 = (iB02 == 0 || iB02 == 1800 || iB02 == 3600) ? iB02 / 1800 : 3;
        int i3 = (iB03 == 0 || iB03 == 1800 || iB03 == 3600) ? iB03 / 1800 : 3;
        j$.time.e eVar = this.c;
        objectOutput.writeInt((this.a.p() << 28) + ((this.b + 32) << 22) + ((eVar == null ? 0 : eVar.p()) << 19) + (iT << 14) + (this.f.ordinal() << 12) + (i << 4) + (i2 << 2) + i3);
        if (iT == 31) {
            objectOutput.writeInt(iL0);
        }
        if (i == 255) {
            objectOutput.writeInt(iB0);
        }
        if (i2 == 3) {
            objectOutput.writeInt(zoneOffset.b0());
        }
        if (i3 == 3) {
            objectOutput.writeInt(zoneOffset2.b0());
        }
    }

    static e b(ObjectInput objectInput) {
        int i = objectInput.readInt();
        m mVarS = m.S(i >>> 28);
        int i2 = ((264241152 & i) >>> 22) - 32;
        int i3 = (3670016 & i) >>> 19;
        j$.time.e eVarR = i3 == 0 ? null : j$.time.e.r(i3);
        int i4 = (507904 & i) >>> 14;
        d dVar = d.values()[(i & 12288) >>> 12];
        int i5 = (i & 4080) >>> 4;
        int i6 = (i & 12) >>> 2;
        int i7 = i & 3;
        k kVarD0 = i4 == 31 ? k.d0(objectInput.readInt()) : k.a0(i4 % 24);
        ZoneOffset zoneOffsetE0 = ZoneOffset.e0(i5 == 255 ? objectInput.readInt() : (i5 - 128) * 900);
        ZoneOffset zoneOffsetE02 = ZoneOffset.e0(i6 == 3 ? objectInput.readInt() : (i6 * 1800) + zoneOffsetE0.b0());
        ZoneOffset zoneOffsetE03 = i7 == 3 ? ZoneOffset.e0(objectInput.readInt()) : ZoneOffset.e0((i7 * 1800) + zoneOffsetE0.b0());
        boolean z = i4 == 24;
        Objects.requireNonNull(mVarS, "month");
        Objects.requireNonNull(kVarD0, "time");
        Objects.requireNonNull(dVar, "timeDefnition");
        if (i2 < -28 || i2 > 31 || i2 == 0) {
            throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
        }
        if (z && !kVarD0.equals(k.g)) {
            throw new IllegalArgumentException("Time must be midnight when end of day flag is true");
        }
        if (kVarD0.W() != 0) {
            throw new IllegalArgumentException("Time's nano-of-second must be zero");
        }
        return new e(mVarS, i2, eVarR, kVarD0, z, dVar, zoneOffsetE0, zoneOffsetE02, zoneOffsetE03);
    }

    public final b a(int i) {
        j$.time.h hVarG0;
        m mVar = this.a;
        j$.time.e eVar = this.c;
        byte b = this.b;
        if (b < 0) {
            s.d.getClass();
            hVarG0 = j$.time.h.g0(i, mVar, mVar.C(s.Z(i)) + 1 + b);
            if (eVar != null) {
                hVarG0 = hVarG0.j(new p(eVar.p(), 1));
            }
        } else {
            hVarG0 = j$.time.h.g0(i, mVar, b);
            if (eVar != null) {
                hVarG0 = hVarG0.j(new p(eVar.p(), 0));
            }
        }
        if (this.e) {
            hVarG0 = hVarG0.k0(1L);
        }
        LocalDateTime localDateTimeC0 = LocalDateTime.c0(hVarG0, this.d);
        int i2 = c.a[this.f.ordinal()];
        ZoneOffset zoneOffset = this.h;
        if (i2 == 1) {
            localDateTimeC0 = localDateTimeC0.g0(zoneOffset.b0() - ZoneOffset.UTC.b0());
        } else if (i2 == 2) {
            localDateTimeC0 = localDateTimeC0.g0(zoneOffset.b0() - this.g.b0());
        }
        return new b(localDateTimeC0, zoneOffset, this.i);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            if (this.a == eVar.a && this.b == eVar.b && this.c == eVar.c && this.f == eVar.f && this.d.equals(eVar.d) && this.e == eVar.e && this.g.equals(eVar.g) && this.h.equals(eVar.h) && this.i.equals(eVar.i)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iL0 = ((this.d.l0() + (this.e ? 1 : 0)) << 15) + (this.a.ordinal() << 11) + ((this.b + 32) << 5);
        j$.time.e eVar = this.c;
        return ((this.g.hashCode() ^ (this.f.ordinal() + (iL0 + ((eVar == null ? 7 : eVar.ordinal()) << 2)))) ^ this.h.hashCode()) ^ this.i.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransitionRule[");
        ZoneOffset zoneOffset = this.h;
        ZoneOffset zoneOffset2 = this.i;
        sb.append(zoneOffset.compareTo(zoneOffset2) > 0 ? "Gap " : "Overlap ");
        sb.append(zoneOffset);
        sb.append(" to ");
        sb.append(zoneOffset2);
        sb.append(", ");
        m mVar = this.a;
        byte b = this.b;
        j$.time.e eVar = this.c;
        if (eVar == null) {
            sb.append(mVar.name());
            sb.append(' ');
            sb.append((int) b);
        } else if (b == -1) {
            sb.append(eVar.name());
            sb.append(" on or before last day of ");
            sb.append(mVar.name());
        } else if (b < 0) {
            sb.append(eVar.name());
            sb.append(" on or before last day minus ");
            sb.append((-b) - 1);
            sb.append(" of ");
            sb.append(mVar.name());
        } else {
            sb.append(eVar.name());
            sb.append(" on or after ");
            sb.append(mVar.name());
            sb.append(' ');
            sb.append((int) b);
        }
        sb.append(" at ");
        sb.append(this.e ? "24:00" : this.d.toString());
        sb.append(" ");
        sb.append(this.f);
        sb.append(", standard offset ");
        sb.append(this.g);
        sb.append(']');
        return sb.toString();
    }
}
