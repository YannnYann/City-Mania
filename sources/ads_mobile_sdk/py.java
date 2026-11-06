package ads_mobile_sdk;

import ads_mobile_sdk.gu1;
import ads_mobile_sdk.u24;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class py {
    private final oy a;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[u24.a.values().length];
            a = iArr;
            try {
                iArr[u24.a.j.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[u24.a.i.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[u24.a.g.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[u24.a.q.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[u24.a.s.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[u24.a.o.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[u24.a.h.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[u24.a.e.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[u24.a.r.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[u24.a.t.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[u24.a.f.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[u24.a.k.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public static py a(oy oyVar) {
        Object obj = oyVar.a;
        if (obj != null) {
            return (py) obj;
        }
        return new py(oyVar);
    }

    private py(oy oyVar) {
        oy oyVar2 = (oy) yh1.a(oyVar, "output");
        this.a = oyVar2;
        oyVar2.a = this;
    }

    public void a(int i, boolean z) throws IOException {
        this.a.b(i, z);
    }

    public void m(int i, List<Integer> list, boolean z) throws IOException {
        if (list instanceof xh1) {
            c(i, (xh1) list, z);
        } else {
            n(i, list, z);
        }
    }

    private void n(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iC = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iC += oy.c(list.get(i3).intValue());
            }
            this.a.p(iC);
            while (i2 < list.size()) {
                this.a.m(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.a.i(i, list.get(i2).intValue());
            i2++;
        }
    }

    public void g(int i, List<Integer> list, boolean z) throws IOException {
        if (list instanceof xh1) {
            b(i, (xh1) list, z);
        } else {
            h(i, list, z);
        }
    }

    private void h(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iB = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iB += oy.b(list.get(i3).intValue());
            }
            this.a.p(iB);
            while (i2 < list.size()) {
                this.a.l(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.a.h(i, list.get(i2).intValue());
            i2++;
        }
    }

    public void o(int i, List<Long> list, boolean z) throws IOException {
        if (list instanceof au1) {
            b(i, (au1) list, z);
        } else {
            p(i, list, z);
        }
    }

    private void p(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iB = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iB += oy.b(list.get(i3).longValue());
            }
            this.a.p(iB);
            while (i2 < list.size()) {
                this.a.h(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.a.g(i, list.get(i2).longValue());
            i2++;
        }
    }

    public void A(int i, List<Long> list, boolean z) throws IOException {
        if (list instanceof au1) {
            e(i, (au1) list, z);
        } else {
            B(i, list, z);
        }
    }

    private void B(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iE = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iE += oy.e(list.get(i3).longValue());
            }
            this.a.p(iE);
            while (i2 < list.size()) {
                this.a.k(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.a.j(i, list.get(i2).longValue());
            i2++;
        }
    }

    public void i(int i, List<Long> list, boolean z) throws IOException {
        if (list instanceof au1) {
            a(i, (au1) list, z);
        } else {
            j(i, list, z);
        }
    }

    private void j(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iA = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iA += oy.a(list.get(i3).longValue());
            }
            this.a.p(iA);
            while (i2 < list.size()) {
                this.a.g(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.a.f(i, list.get(i2).longValue());
            i2++;
        }
    }

    public void k(int i, List<Float> list, boolean z) throws IOException {
        if (list instanceof kx0) {
            a(i, (kx0) list, z);
        } else {
            l(i, list, z);
        }
    }

    private void l(int i, List<Float> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iA = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iA += oy.a(list.get(i3).floatValue());
            }
            this.a.p(iA);
            while (i2 < list.size()) {
                this.a.b(list.get(i2).floatValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.a.b(i, list.get(i2).floatValue());
            i2++;
        }
    }

    public void c(int i, List<Double> list, boolean z) throws IOException {
        if (list instanceof co0) {
            a(i, (co0) list, z);
        } else {
            d(i, list, z);
        }
    }

    public void e(int i, List<Integer> list, boolean z) throws IOException {
        if (list instanceof xh1) {
            a(i, (xh1) list, z);
        } else {
            f(i, list, z);
        }
    }

    public void c(int i, int i2) throws IOException {
        this.a.i(i, i2);
    }

    private void f(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iA = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iA += oy.a(list.get(i3).intValue());
            }
            this.a.p(iA);
            while (i2 < list.size()) {
                this.a.k(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.a.g(i, list.get(i2).intValue());
            i2++;
        }
    }

    private void b(int i, List<Boolean> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iA = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iA += oy.a(list.get(i3).booleanValue());
            }
            this.a.p(iA);
            while (i2 < list.size()) {
                this.a.b(list.get(i2).booleanValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.a.b(i, list.get(i2).booleanValue());
            i2++;
        }
    }

    public void f(int i, int i2) throws IOException {
        this.a.m(i, i2);
    }

    public void y(int i, List<Integer> list, boolean z) throws IOException {
        if (list instanceof xh1) {
            f(i, (xh1) list, z);
        } else {
            z(i, list, z);
        }
    }

    private void c(int i, xh1 xh1Var, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iC = 0;
            for (int i3 = 0; i3 < xh1Var.size(); i3++) {
                iC += oy.c(xh1Var.c(i3));
            }
            this.a.p(iC);
            while (i2 < xh1Var.size()) {
                this.a.m(xh1Var.c(i2));
                i2++;
            }
            return;
        }
        while (i2 < xh1Var.size()) {
            this.a.i(i, xh1Var.c(i2));
            i2++;
        }
    }

    public void a(int i, List<Boolean> list, boolean z) throws IOException {
        if (list instanceof ct) {
            a(i, (ct) list, z);
        } else {
            b(i, list, z);
        }
    }

    public void z(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += oy.i(list.get(i4).intValue());
            }
            this.a.p(i3);
            while (i2 < list.size()) {
                this.a.p(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.a.m(i, list.get(i2).intValue());
            i2++;
        }
    }

    public void q(int i, List<Integer> list, boolean z) throws IOException {
        if (list instanceof xh1) {
            d(i, (xh1) list, z);
        } else {
            r(i, list, z);
        }
    }

    public void c(int i, long j) throws IOException {
        this.a.h(i, j);
    }

    private void r(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iF = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iF += oy.f(list.get(i3).intValue());
            }
            this.a.p(iF);
            while (i2 < list.size()) {
                this.a.n(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.a.j(i, list.get(i2).intValue());
            i2++;
        }
    }

    public void s(int i, List<Long> list, boolean z) throws IOException {
        if (list instanceof au1) {
            c(i, (au1) list, z);
        } else {
            t(i, list, z);
        }
    }

    private void t(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iC = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iC += oy.c(list.get(i3).longValue());
            }
            this.a.p(iC);
            while (i2 < list.size()) {
                this.a.i(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.a.h(i, list.get(i2).longValue());
            i2++;
        }
    }

    public void u(int i, List<Integer> list, boolean z) throws IOException {
        if (list instanceof xh1) {
            e(i, (xh1) list, z);
        } else {
            v(i, list, z);
        }
    }

    public void v(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iG = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iG += oy.g(list.get(i3).intValue());
            }
            this.a.p(iG);
            while (i2 < list.size()) {
                this.a.o(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.a.k(i, list.get(i2).intValue());
            i2++;
        }
    }

    public void w(int i, List<Long> list, boolean z) throws IOException {
        if (list instanceof au1) {
            d(i, (au1) list, z);
        } else {
            x(i, list, z);
        }
    }

    private void x(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iD = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iD += oy.d(list.get(i3).longValue());
            }
            this.a.p(iD);
            while (i2 < list.size()) {
                this.a.j(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.a.i(i, list.get(i2).longValue());
            i2++;
        }
    }

    private <V> void d(int i, gu1.a<String, V> aVar, Map<String, V> map) throws IOException {
        int size = map.size();
        String[] strArr = new String[size];
        Iterator<String> it = map.keySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            strArr[i2] = it.next();
            i2++;
        }
        Arrays.sort(strArr);
        for (int i3 = 0; i3 < size; i3++) {
            String str = strArr[i3];
            V v = map.get(str);
            this.a.l(i, 2);
            this.a.p(gu1.a(aVar, str, v));
            gu1.a(this.a, aVar, str, v);
        }
    }

    private void a(int i, ct ctVar, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iA = 0;
            for (int i3 = 0; i3 < ctVar.size(); i3++) {
                iA += oy.a(ctVar.d(i3));
            }
            this.a.p(iA);
            while (i2 < ctVar.size()) {
                this.a.b(ctVar.d(i2));
                i2++;
            }
            return;
        }
        while (i2 < ctVar.size()) {
            this.a.b(i, ctVar.d(i2));
            i2++;
        }
    }

    private void f(int i, xh1 xh1Var, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < xh1Var.size(); i4++) {
                i3 += oy.i(xh1Var.c(i4));
            }
            this.a.p(i3);
            while (i2 < xh1Var.size()) {
                this.a.p(xh1Var.c(i2));
                i2++;
            }
            return;
        }
        while (i2 < xh1Var.size()) {
            this.a.m(i, xh1Var.c(i2));
            i2++;
        }
    }

    public void a(int i, du duVar) throws IOException {
        this.a.c(i, duVar);
    }

    public <K, V> void e(int i, gu1.a<K, V> aVar, Map<K, V> map) throws IOException {
        if (this.a.c()) {
            c(i, aVar, map);
            return;
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.a.l(i, 2);
            this.a.p(gu1.a(aVar, entry.getKey(), entry.getValue()));
            gu1.a(this.a, aVar, entry.getKey(), entry.getValue());
        }
    }

    private void c(int i, au1 au1Var, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iC = 0;
            for (int i3 = 0; i3 < au1Var.size(); i3++) {
                iC += oy.c(au1Var.f(i3));
            }
            this.a.p(iC);
            while (i2 < au1Var.size()) {
                this.a.i(au1Var.f(i2));
                i2++;
            }
            return;
        }
        while (i2 < au1Var.size()) {
            this.a.h(i, au1Var.f(i2));
            i2++;
        }
    }

    private <K, V> void c(int i, gu1.a<K, V> aVar, Map<K, V> map) throws IOException {
        switch (a.a[aVar.a.ordinal()]) {
            case 1:
                V v = map.get(Boolean.FALSE);
                if (v != null) {
                    a(i, false, v, aVar);
                }
                V v2 = map.get(Boolean.TRUE);
                if (v2 != null) {
                    a(i, true, v2, aVar);
                    return;
                }
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                a(i, aVar, map);
                return;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                b(i, aVar, map);
                return;
            case 12:
                d(i, aVar, map);
                return;
            default:
                throw new IllegalArgumentException("does not support key type: " + String.valueOf(aVar.a));
        }
    }

    private void d(int i, List<Double> list, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iA = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iA += oy.a(list.get(i3).doubleValue());
            }
            this.a.p(iA);
            while (i2 < list.size()) {
                this.a.b(list.get(i2).doubleValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.a.b(i, list.get(i2).doubleValue());
            i2++;
        }
    }

    public void e(int i, int i2) throws IOException {
        this.a.k(i, i2);
    }

    public void d(int i, int i2) throws IOException {
        this.a.j(i, i2);
    }

    private <V> void b(int i, gu1.a<Long, V> aVar, Map<Long, V> map) throws IOException {
        int size = map.size();
        long[] jArr = new long[size];
        Iterator<Long> it = map.keySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            jArr[i2] = it.next().longValue();
            i2++;
        }
        Arrays.sort(jArr);
        for (int i3 = 0; i3 < size; i3++) {
            long j = jArr[i3];
            V v = map.get(Long.valueOf(j));
            this.a.l(i, 2);
            this.a.p(gu1.a(aVar, Long.valueOf(j), v));
            gu1.a(this.a, aVar, Long.valueOf(j), v);
        }
    }

    public void b(int i, int i2) throws IOException {
        this.a.h(i, i2);
    }

    private void b(int i, xh1 xh1Var, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iB = 0;
            for (int i3 = 0; i3 < xh1Var.size(); i3++) {
                iB += oy.b(xh1Var.c(i3));
            }
            this.a.p(iB);
            while (i2 < xh1Var.size()) {
                this.a.l(xh1Var.c(i2));
                i2++;
            }
            return;
        }
        while (i2 < xh1Var.size()) {
            this.a.h(i, xh1Var.c(i2));
            i2++;
        }
    }

    public void b(int i, long j) throws IOException {
        this.a.g(i, j);
    }

    public void a(int i, List<du> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.a.c(i, list.get(i2));
        }
    }

    private void b(int i, au1 au1Var, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iB = 0;
            for (int i3 = 0; i3 < au1Var.size(); i3++) {
                iB += oy.b(au1Var.f(i3));
            }
            this.a.p(iB);
            while (i2 < au1Var.size()) {
                this.a.h(au1Var.f(i2));
                i2++;
            }
            return;
        }
        while (i2 < au1Var.size()) {
            this.a.g(i, au1Var.f(i2));
            i2++;
        }
    }

    private void d(int i, xh1 xh1Var, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iF = 0;
            for (int i3 = 0; i3 < xh1Var.size(); i3++) {
                iF += oy.f(xh1Var.c(i3));
            }
            this.a.p(iF);
            while (i2 < xh1Var.size()) {
                this.a.n(xh1Var.c(i2));
                i2++;
            }
            return;
        }
        while (i2 < xh1Var.size()) {
            this.a.j(i, xh1Var.c(i2));
            i2++;
        }
    }

    public void b(int i, Object obj, la3 la3Var) throws IOException {
        f fVar = (f) obj;
        this.a.l(i, 2);
        this.a.p(fVar.a(la3Var));
        la3Var.a(fVar, this);
    }

    private void e(int i, xh1 xh1Var, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iG = 0;
            for (int i3 = 0; i3 < xh1Var.size(); i3++) {
                iG += oy.g(xh1Var.c(i3));
            }
            this.a.p(iG);
            while (i2 < xh1Var.size()) {
                this.a.o(xh1Var.c(i2));
                i2++;
            }
            return;
        }
        while (i2 < xh1Var.size()) {
            this.a.k(i, xh1Var.c(i2));
            i2++;
        }
    }

    public void d(int i, long j) throws IOException {
        this.a.i(i, j);
    }

    public void e(int i, long j) throws IOException {
        this.a.j(i, j);
    }

    private void e(int i, au1 au1Var, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iE = 0;
            for (int i3 = 0; i3 < au1Var.size(); i3++) {
                iE += oy.e(au1Var.f(i3));
            }
            this.a.p(iE);
            while (i2 < au1Var.size()) {
                this.a.k(au1Var.f(i2));
                i2++;
            }
            return;
        }
        while (i2 < au1Var.size()) {
            this.a.j(i, au1Var.f(i2));
            i2++;
        }
    }

    private <V> void a(int i, boolean z, V v, gu1.a<Boolean, V> aVar) throws IOException {
        this.a.l(i, 2);
        this.a.p(gu1.a(aVar, Boolean.valueOf(z), v));
        gu1.a(this.a, aVar, Boolean.valueOf(z), v);
    }

    public void b(int i, List<?> list, la3 la3Var) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            b(i, list.get(i2), la3Var);
        }
    }

    private void d(int i, au1 au1Var, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iD = 0;
            for (int i3 = 0; i3 < au1Var.size(); i3++) {
                iD += oy.d(au1Var.f(i3));
            }
            this.a.p(iD);
            while (i2 < au1Var.size()) {
                this.a.j(au1Var.f(i2));
                i2++;
            }
            return;
        }
        while (i2 < au1Var.size()) {
            this.a.i(i, au1Var.f(i2));
            i2++;
        }
    }

    @Deprecated
    public void b(int i) throws IOException {
        this.a.l(i, 3);
    }

    private <V> void a(int i, gu1.a<Integer, V> aVar, Map<Integer, V> map) throws IOException {
        int size = map.size();
        int[] iArr = new int[size];
        Iterator<Integer> it = map.keySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            iArr[i2] = it.next().intValue();
            i2++;
        }
        Arrays.sort(iArr);
        for (int i3 = 0; i3 < size; i3++) {
            int i4 = iArr[i3];
            V v = map.get(Integer.valueOf(i4));
            this.a.l(i, 2);
            this.a.p(gu1.a(aVar, Integer.valueOf(i4), v));
            gu1.a(this.a, aVar, Integer.valueOf(i4), v);
        }
    }

    public void b(int i, List<String> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.a.b(i, list.get(i2));
        }
    }

    public void a(int i, double d) throws IOException {
        this.a.b(i, d);
    }

    private void a(int i, co0 co0Var, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iA = 0;
            for (int i3 = 0; i3 < co0Var.size(); i3++) {
                iA += oy.a(co0Var.e(i3));
            }
            this.a.p(iA);
            while (i2 < co0Var.size()) {
                this.a.b(co0Var.e(i2));
                i2++;
            }
            return;
        }
        while (i2 < co0Var.size()) {
            this.a.b(i, co0Var.e(i2));
            i2++;
        }
    }

    @Deprecated
    public void a(int i) throws IOException {
        this.a.l(i, 4);
    }

    public void a(int i, int i2) throws IOException {
        this.a.g(i, i2);
    }

    private void a(int i, xh1 xh1Var, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iA = 0;
            for (int i3 = 0; i3 < xh1Var.size(); i3++) {
                iA += oy.a(xh1Var.c(i3));
            }
            this.a.p(iA);
            while (i2 < xh1Var.size()) {
                this.a.k(xh1Var.c(i2));
                i2++;
            }
            return;
        }
        while (i2 < xh1Var.size()) {
            this.a.g(i, xh1Var.c(i2));
            i2++;
        }
    }

    public void a(int i, long j) throws IOException {
        this.a.f(i, j);
    }

    private void a(int i, au1 au1Var, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iA = 0;
            for (int i3 = 0; i3 < au1Var.size(); i3++) {
                iA += oy.a(au1Var.f(i3));
            }
            this.a.p(iA);
            while (i2 < au1Var.size()) {
                this.a.g(au1Var.f(i2));
                i2++;
            }
            return;
        }
        while (i2 < au1Var.size()) {
            this.a.f(i, au1Var.f(i2));
            i2++;
        }
    }

    public void a(int i, float f) throws IOException {
        this.a.b(i, f);
    }

    private void a(int i, kx0 kx0Var, boolean z) throws IOException {
        int i2 = 0;
        if (z) {
            this.a.l(i, 2);
            int iA = 0;
            for (int i3 = 0; i3 < kx0Var.size(); i3++) {
                iA += oy.a(kx0Var.e(i3));
            }
            this.a.p(iA);
            while (i2 < kx0Var.size()) {
                this.a.b(kx0Var.e(i2));
                i2++;
            }
            return;
        }
        while (i2 < kx0Var.size()) {
            this.a.b(i, kx0Var.e(i2));
            i2++;
        }
    }

    public void a(int i, Object obj, la3 la3Var) throws IOException {
        this.a.l(i, 3);
        la3Var.a((f) obj, this);
        this.a.l(i, 4);
    }

    public void a(int i, List<?> list, la3 la3Var) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            a(i, list.get(i2), la3Var);
        }
    }

    public final void a(int i, Object obj) throws IOException {
        if (obj instanceof du) {
            this.a.d(i, (du) obj);
        } else {
            this.a.b(i, (tw1) obj);
        }
    }

    public void a(int i, String str) throws IOException {
        this.a.b(i, str);
    }
}
