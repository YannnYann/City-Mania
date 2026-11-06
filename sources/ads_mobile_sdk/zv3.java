package ads_mobile_sdk;

import com.ironsource.mediationsdk.logger.IronSourceError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class zv3 {
    private static final zv3 f = new zv3(0, new int[0], new Object[0], false);
    private int a;
    private int[] b;
    private Object[] c;
    private int d;
    private boolean e;

    public static zv3 f() {
        return new zv3();
    }

    private zv3() {
        this(0, new int[8], new Object[8], true);
    }

    public void e() {
        if (this.e) {
            this.e = false;
        }
    }

    public void a() {
        if (!this.e) {
            throw new UnsupportedOperationException();
        }
    }

    public void b(py pyVar) throws IOException {
        if (this.a == 0) {
            return;
        }
        for (int i = 0; i < this.a; i++) {
            a(this.b[i], this.c[i], pyVar);
        }
    }

    private zv3(int i, int[] iArr, Object[] objArr, boolean z) {
        this.d = -1;
        this.a = i;
        this.b = iArr;
        this.c = objArr;
        this.e = z;
    }

    public static zv3 b() {
        return f;
    }

    public int d() {
        int i = this.d;
        if (i != -1) {
            return i;
        }
        int iB = 0;
        for (int i2 = 0; i2 < this.a; i2++) {
            iB += oy.b(u24.a(this.b[i2]), (du) this.c[i2]);
        }
        this.d = iB;
        return iB;
    }

    public int c() {
        int iE;
        int i = this.d;
        if (i != -1) {
            return i;
        }
        int iC = 0;
        for (int i2 = 0; i2 < this.a; i2++) {
            int i3 = this.b[i2];
            int iA = u24.a(i3);
            int iB = u24.b(i3);
            if (iB == 0) {
                iE = oy.e(iA, ((Long) this.c[i2]).longValue());
            } else if (iB == 1) {
                iE = oy.a(iA, ((Long) this.c[i2]).longValue());
            } else if (iB == 2) {
                iE = oy.a(iA, (du) this.c[i2]);
            } else if (iB != 3) {
                if (iB != 5) {
                    throw new IllegalStateException(np1.e());
                }
                iE = oy.b(iA, ((Integer) this.c[i2]).intValue());
            } else {
                iC = ((zv3) this.c[i2]).c() + (oy.h(iA) * 2) + iC;
            }
            iC = iE + iC;
        }
        this.d = iC;
        return iC;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zv3)) {
            return false;
        }
        zv3 zv3Var = (zv3) obj;
        int i = this.a;
        return i == zv3Var.a && a(this.b, zv3Var.b, i) && a(this.c, zv3Var.c, this.a);
    }

    public int hashCode() {
        int i = this.a;
        return ((((i + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + a(this.b, i)) * 31) + a(this.c, this.a);
    }

    private void a(int i) {
        int[] iArr = this.b;
        if (i > iArr.length) {
            int i2 = this.a;
            int i3 = (i2 / 2) + i2;
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.b = Arrays.copyOf(iArr, i);
            this.c = Arrays.copyOf(this.c, i);
        }
    }

    private static int a(int[] iArr, int i) {
        int i2 = 17;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + iArr[i3];
        }
        return i2;
    }

    private static int a(Object[] objArr, int i) {
        int iHashCode = 17;
        for (int i2 = 0; i2 < i; i2++) {
            iHashCode = (iHashCode * 31) + objArr[i2].hashCode();
        }
        return iHashCode;
    }

    public zv3 a(zv3 zv3Var) {
        if (zv3Var.equals(b())) {
            return this;
        }
        a();
        int i = this.a + zv3Var.a;
        a(i);
        System.arraycopy(zv3Var.b, 0, this.b, this.a, zv3Var.a);
        System.arraycopy(zv3Var.c, 0, this.c, this.a, zv3Var.a);
        this.a = i;
        return this;
    }

    public static zv3 a(zv3 zv3Var, zv3 zv3Var2) {
        int i = zv3Var.a + zv3Var2.a;
        int[] iArrCopyOf = Arrays.copyOf(zv3Var.b, i);
        System.arraycopy(zv3Var2.b, 0, iArrCopyOf, zv3Var.a, zv3Var2.a);
        Object[] objArrCopyOf = Arrays.copyOf(zv3Var.c, i);
        System.arraycopy(zv3Var2.c, 0, objArrCopyOf, zv3Var.a, zv3Var2.a);
        return new zv3(i, iArrCopyOf, objArrCopyOf, true);
    }

    private static boolean a(Object[] objArr, Object[] objArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (!objArr[i2].equals(objArr2[i2])) {
                return false;
            }
        }
        return true;
    }

    public final void a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.a; i2++) {
            vw1.a(sb, i, String.valueOf(u24.a(this.b[i2])), this.c[i2]);
        }
    }

    public void a(int i, Object obj) {
        a();
        a(this.a + 1);
        int[] iArr = this.b;
        int i2 = this.a;
        iArr[i2] = i;
        this.c[i2] = obj;
        this.a = i2 + 1;
    }

    private static boolean a(int[] iArr, int[] iArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public void a(py pyVar) throws IOException {
        for (int i = 0; i < this.a; i++) {
            pyVar.a(u24.a(this.b[i]), this.c[i]);
        }
    }

    private static void a(int i, Object obj, py pyVar) throws IOException {
        int iA = u24.a(i);
        int iB = u24.b(i);
        if (iB == 0) {
            pyVar.b(iA, ((Long) obj).longValue());
            return;
        }
        if (iB == 1) {
            pyVar.a(iA, ((Long) obj).longValue());
            return;
        }
        if (iB == 2) {
            pyVar.a(iA, (du) obj);
            return;
        }
        if (iB != 3) {
            if (iB != 5) {
                throw new RuntimeException(np1.e());
            }
            pyVar.b(iA, ((Integer) obj).intValue());
        } else {
            pyVar.b(iA);
            ((zv3) obj).b(pyVar);
            pyVar.a(iA);
        }
    }
}
