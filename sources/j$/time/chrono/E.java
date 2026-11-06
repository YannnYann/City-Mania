package j$.time.chrono;

import j$.time.ZoneOffset;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;

/* JADX INFO: loaded from: classes2.dex */
final class E implements Externalizable {
    private static final long serialVersionUID = -6103370247208168577L;
    private byte a;
    private Object b;

    public E() {
    }

    E(byte b, Object obj) {
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
                objectOutput.writeUTF(((AbstractC4272a) obj).s());
                return;
            case 2:
                ((C4278g) obj).writeExternal(objectOutput);
                return;
            case 3:
                ((k) obj).writeExternal(objectOutput);
                return;
            case 4:
                x xVar = (x) obj;
                xVar.getClass();
                objectOutput.writeInt(xVar.i(j$.time.temporal.a.YEAR));
                objectOutput.writeByte(xVar.i(j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(xVar.i(j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 5:
                ((y) obj).C(objectOutput);
                return;
            case 6:
                ((q) obj).writeExternal(objectOutput);
                return;
            case 7:
                C c = (C) obj;
                c.getClass();
                objectOutput.writeInt(c.i(j$.time.temporal.a.YEAR));
                objectOutput.writeByte(c.i(j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(c.i(j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 8:
                I i = (I) obj;
                i.getClass();
                objectOutput.writeInt(i.i(j$.time.temporal.a.YEAR));
                objectOutput.writeByte(i.i(j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(i.i(j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 9:
                ((C4279h) obj).writeExternal(objectOutput);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        Object objR;
        byte b = objectInput.readByte();
        this.a = b;
        switch (b) {
            case 1:
                int i = AbstractC4272a.c;
                objR = AbstractC4272a.r(objectInput.readUTF());
                break;
            case 2:
                objR = ((InterfaceC4273b) objectInput.readObject()).K((j$.time.k) objectInput.readObject());
                break;
            case 3:
                objR = ((InterfaceC4276e) objectInput.readObject()).H((ZoneOffset) objectInput.readObject()).I((j$.time.x) objectInput.readObject());
                break;
            case 4:
                j$.time.h hVar = x.d;
                int i2 = objectInput.readInt();
                byte b2 = objectInput.readByte();
                byte b3 = objectInput.readByte();
                v.d.getClass();
                objR = new x(j$.time.h.f0(i2, b2, b3));
                break;
            case 5:
                y yVar = y.d;
                objR = y.w(objectInput.readByte());
                break;
            case 6:
                o oVar = (o) objectInput.readObject();
                int i3 = objectInput.readInt();
                byte b4 = objectInput.readByte();
                byte b5 = objectInput.readByte();
                oVar.getClass();
                objR = q.Z(oVar, i3, b4, b5);
                break;
            case 7:
                int i4 = objectInput.readInt();
                byte b6 = objectInput.readByte();
                byte b7 = objectInput.readByte();
                A.d.getClass();
                objR = new C(j$.time.h.f0(i4 + 1911, b6, b7));
                break;
            case 8:
                int i5 = objectInput.readInt();
                byte b8 = objectInput.readByte();
                byte b9 = objectInput.readByte();
                G.d.getClass();
                objR = new I(j$.time.h.f0(i5 - 543, b8, b9));
                break;
            case 9:
                int i6 = C4279h.e;
                objR = new C4279h(AbstractC4272a.r(objectInput.readUTF()), objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
                break;
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
        this.b = objR;
    }

    private Object readResolve() {
        return this.b;
    }
}
