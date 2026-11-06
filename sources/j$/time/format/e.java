package j$.time.format;

import com.ironsource.C3522b4;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
final class e implements f {
    private final f[] a;
    private final boolean b;

    e(ArrayList arrayList, boolean z) {
        this((f[]) arrayList.toArray(new f[arrayList.size()]), z);
    }

    e(f[] fVarArr, boolean z) {
        this.a = fVarArr;
        this.b = z;
    }

    public final e a() {
        return !this.b ? this : new e(this.a, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001a, code lost:
    
        r9.setLength(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0022, code lost:
    
        return true;
     */
    @Override // j$.time.format.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean p(j$.time.format.s r8, java.lang.StringBuilder r9) {
        /*
            r7 = this;
            int r0 = r9.length()
            boolean r1 = r7.b
            if (r1 == 0) goto Lb
            r8.g()
        Lb:
            j$.time.format.f[] r2 = r7.a     // Catch: java.lang.Throwable -> L23
            int r3 = r2.length     // Catch: java.lang.Throwable -> L23
            r4 = 0
        Lf:
            r5 = 1
            if (r4 >= r3) goto L28
            r6 = r2[r4]     // Catch: java.lang.Throwable -> L23
            boolean r6 = r6.p(r8, r9)     // Catch: java.lang.Throwable -> L23
            if (r6 != 0) goto L25
            r9.setLength(r0)     // Catch: java.lang.Throwable -> L23
            if (r1 == 0) goto L2d
            r8.a()
            return r5
        L23:
            r9 = move-exception
            goto L2e
        L25:
            int r4 = r4 + 1
            goto Lf
        L28:
            if (r1 == 0) goto L2d
            r8.a()
        L2d:
            return r5
        L2e:
            if (r1 == 0) goto L33
            r8.a()
        L33:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.e.p(j$.time.format.s, java.lang.StringBuilder):boolean");
    }

    @Override // j$.time.format.f
    public final int r(q qVar, CharSequence charSequence, int i) {
        boolean z = this.b;
        f[] fVarArr = this.a;
        if (z) {
            qVar.q();
            int iR = i;
            for (f fVar : fVarArr) {
                iR = fVar.r(qVar, charSequence, iR);
                if (iR < 0) {
                    qVar.e(false);
                    return i;
                }
            }
            qVar.e(true);
            return iR;
        }
        for (f fVar2 : fVarArr) {
            i = fVar2.r(qVar, charSequence, i);
            if (i < 0) {
                return i;
            }
        }
        return i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        f[] fVarArr = this.a;
        if (fVarArr != null) {
            boolean z = this.b;
            sb.append(z ? C3522b4.j.d : "(");
            for (f fVar : fVarArr) {
                sb.append(fVar);
            }
            sb.append(z ? C3522b4.j.e : ")");
        }
        return sb.toString();
    }
}
