package j$.time.chrono;

import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.chrono.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
final class C4279h implements j$.time.temporal.r, Serializable {
    public static final /* synthetic */ int e = 0;
    private static final long serialVersionUID = 57387258289L;
    private final l a;
    final int b;
    final int c;
    final int d;

    static {
        j$.time.b.b(new Object[]{j$.time.temporal.b.YEARS, j$.time.temporal.b.MONTHS, j$.time.temporal.b.DAYS});
    }

    C4279h(l lVar, int i, int i2, int i3) {
        this.a = lVar;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    public final String toString() {
        l lVar = this.a;
        int i = this.d;
        int i2 = this.c;
        int i3 = this.b;
        if (i3 == 0 && i2 == 0 && i == 0) {
            return lVar.toString() + " P0D";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(lVar.toString());
        sb.append(" P");
        if (i3 != 0) {
            sb.append(i3);
            sb.append('Y');
        }
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        if (i != 0) {
            sb.append(i);
            sb.append('D');
        }
        return sb.toString();
    }

    @Override // j$.time.temporal.r
    public final j$.time.temporal.m p(j$.time.temporal.m mVar) {
        l lVar = (l) mVar.a(j$.time.temporal.t.a());
        l lVar2 = this.a;
        if (lVar == null || lVar2.equals(lVar)) {
            int i = this.b;
            int i2 = this.c;
            if (i2 != 0) {
                j$.time.temporal.x xVarU = lVar2.U(j$.time.temporal.a.MONTH_OF_YEAR);
                long jD = (xVarU.g() && xVarU.h()) ? (xVarU.d() - xVarU.e()) + 1 : -1L;
                if (jD > 0) {
                    mVar = mVar.d((((long) i) * jD) + ((long) i2), j$.time.temporal.b.MONTHS);
                } else {
                    if (i != 0) {
                        mVar = mVar.d(i, j$.time.temporal.b.YEARS);
                    }
                    mVar = mVar.d(i2, j$.time.temporal.b.MONTHS);
                }
            } else if (i != 0) {
                mVar = mVar.d(i, j$.time.temporal.b.YEARS);
            }
            int i3 = this.d;
            return i3 != 0 ? mVar.d(i3, j$.time.temporal.b.DAYS) : mVar;
        }
        throw new j$.time.c("Chronology mismatch, expected: " + lVar2.s() + ", actual: " + lVar.s());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C4279h) {
            C4279h c4279h = (C4279h) obj;
            if (this.b == c4279h.b && this.c == c4279h.c && this.d == c4279h.d && this.a.equals(c4279h.a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode() ^ (Integer.rotateLeft(this.d, 16) + (Integer.rotateLeft(this.c, 8) + this.b));
    }

    protected Object writeReplace() {
        return new E((byte) 9, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeUTF(this.a.s());
        objectOutput.writeInt(this.b);
        objectOutput.writeInt(this.c);
        objectOutput.writeInt(this.d);
    }
}
