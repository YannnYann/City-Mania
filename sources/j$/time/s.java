package j$.time;

import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.io.StreamCorruptedException;

/* JADX INFO: loaded from: classes2.dex */
final class s implements Externalizable {
    private static final long serialVersionUID = -7683839454370182990L;
    private byte a;
    private Object b;

    public s() {
    }

    s(byte b, Object obj) {
        this.a = b;
        this.b = obj;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b = this.a;
        Object obj = this.b;
        objectOutput.writeByte(b);
        switch (b) {
            case 1:
                ((Duration) obj).writeExternal(objectOutput);
                return;
            case 2:
                ((Instant) obj).b0(objectOutput);
                return;
            case 3:
                ((h) obj).t0(objectOutput);
                return;
            case 4:
                ((k) obj).o0(objectOutput);
                return;
            case 5:
                ((LocalDateTime) obj).m0(objectOutput);
                return;
            case 6:
                ((ZonedDateTime) obj).c0(objectOutput);
                return;
            case 7:
                ((y) obj).b0(objectOutput);
                return;
            case 8:
                ((ZoneOffset) obj).h0(objectOutput);
                return;
            case 9:
                ((q) obj).writeExternal(objectOutput);
                return;
            case 10:
                ((OffsetDateTime) obj).writeExternal(objectOutput);
                return;
            case 11:
                ((u) obj).T(objectOutput);
                return;
            case 12:
                ((w) obj).a0(objectOutput);
                return;
            case 13:
                ((o) obj).C(objectOutput);
                return;
            case 14:
                ((r) obj).writeExternal(objectOutput);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        byte b = objectInput.readByte();
        this.a = b;
        this.b = b(b, objectInput);
    }

    static Serializable a(ObjectInput objectInput) {
        return b(objectInput.readByte(), objectInput);
    }

    private static Serializable b(byte b, ObjectInput objectInput) throws StreamCorruptedException {
        switch (b) {
            case 1:
                Duration duration = Duration.c;
                return Duration.S(objectInput.readLong(), objectInput.readInt());
            case 2:
                Instant instant = Instant.c;
                return Instant.W(objectInput.readLong(), objectInput.readInt());
            case 3:
                h hVar = h.d;
                return h.f0(objectInput.readInt(), objectInput.readByte(), objectInput.readByte());
            case 4:
                return k.j0(objectInput);
            case 5:
                LocalDateTime localDateTime = LocalDateTime.c;
                h hVar2 = h.d;
                return LocalDateTime.c0(h.f0(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), k.j0(objectInput));
            case 6:
                return ZonedDateTime.W(objectInput);
            case 7:
                int i = y.d;
                return x.S(objectInput.readUTF(), false);
            case 8:
                return ZoneOffset.g0(objectInput);
            case 9:
                return q.J(objectInput);
            case 10:
                return OffsetDateTime.S(objectInput);
            case 11:
                int i2 = u.b;
                return u.r(objectInput.readInt());
            case 12:
                return w.T(objectInput);
            case 13:
                return o.r(objectInput);
            case 14:
                return r.c(objectInput);
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
    }

    private Object readResolve() {
        return this.b;
    }
}
