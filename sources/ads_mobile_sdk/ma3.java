package ads_mobile_sdk;

import ads_mobile_sdk.qr0;
import ads_mobile_sdk.yh1;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
abstract class ma3 {
    private static final yv3<?, ?> a = new aw3();

    public static void n(int i, List<Long> list, py pyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        pyVar.A(i, list, z);
    }

    public static void l(int i, List<Long> list, py pyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        pyVar.w(i, list, z);
    }

    public static void m(int i, List<Integer> list, py pyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        pyVar.y(i, list, z);
    }

    public static void k(int i, List<Integer> list, py pyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        pyVar.u(i, list, z);
    }

    public static int f(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        int iF = f(list);
        if (z) {
            return oy.d(iF) + oy.h(i);
        }
        return (oy.h(i) * list.size()) + iF;
    }

    public static int j(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iJ = j(list);
        if (z) {
            return oy.d(iJ) + oy.h(i);
        }
        return (oy.h(i) * size) + iJ;
    }

    public static int h(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iH = h(list);
        if (z) {
            return oy.d(iH) + oy.h(i);
        }
        return (oy.h(i) * size) + iH;
    }

    public static int b(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iB = b(list);
        if (z) {
            return oy.d(iB) + oy.h(i);
        }
        return (oy.h(i) * size) + iB;
    }

    public static int e(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iE = e(list);
        if (z) {
            return oy.d(iE) + oy.h(i);
        }
        return (oy.h(i) * size) + iE;
    }

    public static int i(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = i(list);
        if (z) {
            return oy.d(i2) + oy.h(i);
        }
        return (oy.h(i) * size) + i2;
    }

    public static int g(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iG = g(list);
        if (z) {
            return oy.d(iG) + oy.h(i);
        }
        return (oy.h(i) * size) + iG;
    }

    public static int c(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z) {
            return oy.d(size * 4) + oy.h(i);
        }
        return oy.b(i, 0) * size;
    }

    public static int d(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z) {
            return oy.d(size * 8) + oy.h(i);
        }
        return oy.a(i, 0L) * size;
    }

    public static int f(List<Long> list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof au1)) {
            int iB = 0;
            while (i < size) {
                iB += oy.b(list.get(i).longValue());
                i++;
            }
            return iB;
        }
        au1 au1Var = (au1) list;
        int iB2 = 0;
        while (i < size) {
            iB2 += oy.b(au1Var.f(i));
            i++;
        }
        return iB2;
    }

    @Deprecated
    public static int a(int i, tw1 tw1Var, la3 la3Var) {
        return (oy.h(i) * 2) + a(tw1Var, la3Var);
    }

    public static int j(List<Long> list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof au1)) {
            int iE = 0;
            while (i < size) {
                iE += oy.e(list.get(i).longValue());
                i++;
            }
            return iE;
        }
        au1 au1Var = (au1) list;
        int iE2 = 0;
        while (i < size) {
            iE2 += oy.e(au1Var.f(i));
            i++;
        }
        return iE2;
    }

    public static int h(List<Long> list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof au1)) {
            int iD = 0;
            while (i < size) {
                iD += oy.d(list.get(i).longValue());
                i++;
            }
            return iD;
        }
        au1 au1Var = (au1) list;
        int iD2 = 0;
        while (i < size) {
            iD2 += oy.d(au1Var.f(i));
            i++;
        }
        return iD2;
    }

    public static void f(int i, List<Float> list, py pyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        pyVar.k(i, list, z);
    }

    public static int b(List<Integer> list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof xh1)) {
            int iA = 0;
            while (i < size) {
                iA += oy.a(list.get(i).intValue());
                i++;
            }
            return iA;
        }
        xh1 xh1Var = (xh1) list;
        int iA2 = 0;
        while (i < size) {
            iA2 += oy.a(xh1Var.c(i));
            i++;
        }
        return iA2;
    }

    public static int e(List<Integer> list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof xh1)) {
            int iC = 0;
            while (i < size) {
                iC += oy.c(list.get(i).intValue());
                i++;
            }
            return iC;
        }
        xh1 xh1Var = (xh1) list;
        int iC2 = 0;
        while (i < size) {
            iC2 += oy.c(xh1Var.c(i));
            i++;
        }
        return iC2;
    }

    public static void j(int i, List<Long> list, py pyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        pyVar.s(i, list, z);
    }

    public static void h(int i, List<Long> list, py pyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        pyVar.o(i, list, z);
    }

    public static int i(List<Integer> list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof xh1)) {
            int i2 = 0;
            while (i < size) {
                i2 += oy.i(list.get(i).intValue());
                i++;
            }
            return i2;
        }
        xh1 xh1Var = (xh1) list;
        int i3 = 0;
        while (i < size) {
            i3 += oy.i(xh1Var.c(i));
            i++;
        }
        return i3;
    }

    public static int g(List<Integer> list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof xh1)) {
            int iG = 0;
            while (i < size) {
                iG += oy.g(list.get(i).intValue());
                i++;
            }
            return iG;
        }
        xh1 xh1Var = (xh1) list;
        int iG2 = 0;
        while (i < size) {
            iG2 += oy.g(xh1Var.c(i));
            i++;
        }
        return iG2;
    }

    public static int c(List<?> list) {
        return list.size() * 4;
    }

    public static void e(int i, List<Long> list, py pyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        pyVar.i(i, list, z);
    }

    public static int d(List<?> list) {
        return list.size() * 8;
    }

    public static void i(int i, List<Integer> list, py pyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        pyVar.q(i, list, z);
    }

    public static void g(int i, List<Integer> list, py pyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        pyVar.m(i, list, z);
    }

    public static void c(int i, List<Integer> list, py pyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        pyVar.e(i, list, z);
    }

    public static void d(int i, List<Integer> list, py pyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        pyVar.g(i, list, z);
    }

    @Deprecated
    public static int a(tw1 tw1Var, la3 la3Var) {
        return ((f) tw1Var).a(la3Var);
    }

    public static int b(int i, List<?> list, la3<?> la3Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iH = oy.h(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            iH += a((f) list.get(i2), (la3) la3Var);
        }
        return iH;
    }

    public static int a(int i, f fVar, la3 la3Var) {
        return oy.h(i) + a(fVar, la3Var);
    }

    public static int b(int i, List<?> list) {
        int iA;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iH = oy.h(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof du) {
                iA = oy.a((du) obj);
            } else {
                iA = oy.a((String) obj);
            }
            iH = iA + iH;
        }
        return iH;
    }

    public static void b(int i, List<Double> list, py pyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        pyVar.c(i, list, z);
    }

    public static void b(int i, List<?> list, py pyVar, la3<?> la3Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        pyVar.b(i, list, (la3) la3Var);
    }

    public static int a(f fVar, la3 la3Var) {
        return oy.d(fVar.a(la3Var));
    }

    public static void b(int i, List<String> list, py pyVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        pyVar.b(i, list);
    }

    public static int a(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z) {
            return oy.d(size) + oy.h(i);
        }
        return oy.a(i, true) * size;
    }

    public static int a(List<?> list) {
        return list.size();
    }

    public static int a(int i, List<du> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iH = oy.h(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            iH += oy.a(list.get(i2));
        }
        return iH;
    }

    public static int a(int i, List<tw1> list, la3<?> la3Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iA = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iA += a(i, list.get(i2), (la3) la3Var);
        }
        return iA;
    }

    public static int a(int i, Object obj, la3<?> la3Var) {
        return a(i, (f) obj, (la3) la3Var);
    }

    public static <UT, UB> UB a(Object obj, int i, List<Integer> list, yh1.b bVar, UB ub, yv3<UT, UB> yv3Var) {
        if (bVar == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                Integer num = list.get(i3);
                int iIntValue = num.intValue();
                if (bVar.a(iIntValue)) {
                    if (i3 != i2) {
                        list.set(i2, num);
                    }
                    i2++;
                } else {
                    ub = (UB) a(obj, i, iIntValue, ub, yv3Var);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
            return ub;
        }
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            int iIntValue2 = it.next().intValue();
            if (!bVar.a(iIntValue2)) {
                ub = (UB) a(obj, i, iIntValue2, ub, yv3Var);
                it.remove();
            }
        }
        return ub;
    }

    public static <T, FT extends qr0.b<FT>> void a(fr0<FT> fr0Var, T t, T t2) {
        qr0<T> qr0VarA = fr0Var.a(t2);
        if (qr0VarA.c()) {
            return;
        }
        fr0Var.b(t).a(qr0VarA);
    }

    public static <T> void a(ku1 ku1Var, T t, T t2, long j) {
        hw3.a(t, j, ku1Var.a(hw3.j(t, j), hw3.j(t2, j)));
    }

    public static <T, UT, UB> void a(yv3<UT, UB> yv3Var, T t, T t2) {
        yv3Var.c(t, yv3Var.a(yv3Var.b(t), yv3Var.b(t2)));
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static <UT, UB> UB a(Object obj, int i, int i2, UB ub, yv3<UT, UB> yv3Var) {
        if (ub == null) {
            ub = yv3Var.a(obj);
        }
        yv3Var.b(ub, i, i2);
        return ub;
    }

    public static void a(int i, List<Boolean> list, py pyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        pyVar.a(i, list, z);
    }

    public static void a(int i, List<du> list, py pyVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        pyVar.a(i, list);
    }

    public static void a(int i, List<?> list, py pyVar, la3<?> la3Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        pyVar.a(i, list, (la3) la3Var);
    }

    public static yv3<?, ?> a() {
        return a;
    }
}
