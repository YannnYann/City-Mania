package j$.time.chrono;

import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class y implements m, Serializable {
    public static final y d;
    private static final y[] e;
    private static final long serialVersionUID = 1466499369062886794L;
    private final transient int a;
    private final transient j$.time.h b;
    private final transient String c;

    static {
        y yVar = new y(-1, j$.time.h.f0(1868, 1, 1), "Meiji");
        d = yVar;
        e = new y[]{yVar, new y(0, j$.time.h.f0(1912, 7, 30), "Taisho"), new y(1, j$.time.h.f0(1926, 12, 25), "Showa"), new y(2, j$.time.h.f0(1989, 1, 8), "Heisei"), new y(3, j$.time.h.f0(2019, 5, 1), "Reiwa")};
    }

    static y r() {
        return e[r0.length - 1];
    }

    static long y() {
        int iA0 = 1000000000 - r().b.a0();
        y[] yVarArr = e;
        int iA02 = yVarArr[0].b.a0();
        for (int i = 1; i < yVarArr.length; i++) {
            y yVar = yVarArr[i];
            iA0 = Math.min(iA0, (yVar.b.a0() - iA02) + 1);
            iA02 = yVar.b.a0();
        }
        return iA0;
    }

    static long x() {
        long jF = j$.time.temporal.a.DAY_OF_YEAR.C().f();
        for (y yVar : e) {
            jF = Math.min(jF, ((yVar.b.c0() ? 366 : 365) - yVar.b.W()) + 1);
            if (yVar.t() != null) {
                jF = Math.min(jF, yVar.t().b.W() - 1);
            }
        }
        return jF;
    }

    private y(int i, j$.time.h hVar, String str) {
        this.a = i;
        this.b = hVar;
        this.c = str;
    }

    final j$.time.h s() {
        return this.b;
    }

    public static y w(int i) {
        int i2 = i + 1;
        if (i2 >= 0) {
            y[] yVarArr = e;
            if (i2 < yVarArr.length) {
                return yVarArr[i2];
            }
        }
        throw new j$.time.c("Invalid era: " + i);
    }

    public static y[] A() {
        y[] yVarArr = e;
        return (y[]) Arrays.copyOf(yVarArr, yVarArr.length);
    }

    static y q(j$.time.h hVar) {
        if (hVar.b0(x.d)) {
            throw new j$.time.c("JapaneseDate before Meiji 6 are not supported");
        }
        y[] yVarArr = e;
        for (int length = yVarArr.length - 1; length >= 0; length--) {
            y yVar = yVarArr[length];
            if (hVar.compareTo(yVar.b) >= 0) {
                return yVar;
            }
        }
        return null;
    }

    @Override // j$.time.chrono.m
    public final int p() {
        return this.a;
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.x l(j$.time.temporal.s sVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
        if (sVar == aVar) {
            return v.d.U(aVar);
        }
        return super.l(sVar);
    }

    public final String toString() {
        return this.c;
    }

    final y t() {
        if (this == r()) {
            return null;
        }
        return w(this.a + 1);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new E((byte) 5, this);
    }

    final void C(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(this.a);
    }
}
