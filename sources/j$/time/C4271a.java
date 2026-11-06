package j$.time;

import com.ironsource.C3522b4;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
final class C4271a extends b implements Serializable {
    private static final long serialVersionUID = 6740630888130243051L;
    private final x a;

    C4271a(x xVar) {
        this.a = xVar;
    }

    static {
        System.currentTimeMillis();
        ZoneOffset zoneOffset = ZoneOffset.UTC;
    }

    @Override // j$.time.b
    public final x a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C4271a)) {
            return false;
        }
        return this.a.equals(((C4271a) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode() + 1;
    }

    public final String toString() {
        return "SystemClock[" + this.a + C3522b4.j.e;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
    }
}
