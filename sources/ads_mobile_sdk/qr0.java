package ads_mobile_sdk;

import ads_mobile_sdk.gl1;
import ads_mobile_sdk.qr0.b;
import ads_mobile_sdk.u24;
import ads_mobile_sdk.yh1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class qr0<T extends b<T>> {
    private static final qr0<?> d = new qr0<>(true);
    final bl3<T> a;
    boolean b;
    boolean c;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[u24.a.values().length];
            b = iArr;
            try {
                iArr[u24.a.c.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[u24.a.d.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[u24.a.e.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[u24.a.f.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                b[u24.a.g.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                b[u24.a.h.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                b[u24.a.i.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                b[u24.a.j.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                b[u24.a.l.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                b[u24.a.m.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                b[u24.a.k.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                b[u24.a.n.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                b[u24.a.o.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                b[u24.a.q.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                b[u24.a.r.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                b[u24.a.s.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                b[u24.a.t.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                b[u24.a.p.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[u24.b.values().length];
            a = iArr2;
            try {
                iArr2[u24.b.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                a[u24.b.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                a[u24.b.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                a[u24.b.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                a[u24.b.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                a[u24.b.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                a[u24.b.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                a[u24.b.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                a[u24.b.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    public interface b<T extends b<T>> extends Comparable<T> {
        boolean a();

        u24.a b();

        boolean c();

        int getNumber();
    }

    public static <T extends b<T>> qr0<T> g() {
        return new qr0<>();
    }

    private qr0() {
        this.a = new bl3<>();
    }

    public boolean c() {
        return this.a.isEmpty();
    }

    public void f() {
        if (this.b) {
            return;
        }
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            Object value = this.a.b(i).getValue();
            if (value instanceof vz0) {
                ((vz0) value).q();
            }
        }
        this.a.c();
        this.b = true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof qr0) {
            return a((bl3<?>) this.a, (bl3<?>) ((qr0) obj).a);
        }
        return false;
    }

    private qr0(bl3<T> bl3Var) {
        this.a = bl3Var;
        f();
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public qr0<T> m508clone() {
        qr0<T> qr0VarG = g();
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            Map.Entry<K, Object> entryB = this.a.b(i);
            dr0.a(entryB.getKey());
            qr0VarG.b((b) null, entryB.getValue());
        }
        qr0VarG.c = this.c;
        return qr0VarG;
    }

    private qr0(boolean z) {
        this(new bl3());
        f();
    }

    public Iterator<Map.Entry<T, Object>> e() {
        if (c()) {
            return Collections.emptyIterator();
        }
        if (this.c) {
            return new gl1.b(this.a.entrySet().iterator());
        }
        return this.a.entrySet().iterator();
    }

    public boolean d() {
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            if (!b(this.a.b(i))) {
                return false;
            }
        }
        return true;
    }

    private void c(Map.Entry<T, Object> entry) {
        dr0.a(entry.getKey());
        boolean z = entry.getValue() instanceof gl1;
        throw null;
    }

    public int b() {
        int size = this.a.size();
        int iA = 0;
        for (int i = 0; i < size; i++) {
            Map.Entry<K, Object> entryB = this.a.b(i);
            dr0.a(entryB.getKey());
            iA += a((b<?>) null, entryB.getValue());
        }
        return iA;
    }

    public static int a(u24.a aVar, int i, Object obj) {
        int iH = oy.h(i);
        if (aVar == u24.a.l) {
            iH *= 2;
        }
        return iH + a(aVar, obj);
    }

    private void c(T t, Object obj) {
        if (!b(t.b(), obj)) {
            throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(t.getNumber()), t.b().e(), obj.getClass().getName()));
        }
    }

    private static <T extends b<T>> boolean b(Map.Entry<T, Object> entry) {
        dr0.a(entry.getKey());
        throw null;
    }

    private static boolean b(u24.a aVar, Object obj) {
        yh1.a(obj);
        switch (a.a[aVar.e().ordinal()]) {
            case 7:
                if ((obj instanceof du) || (obj instanceof byte[])) {
                }
                break;
            case 8:
                if ((obj instanceof Integer) || (obj instanceof yh1.a)) {
                }
                break;
            case 9:
                if ((obj instanceof tw1) || (obj instanceof gl1)) {
                }
                break;
        }
        return false;
    }

    public static int a(b<?> bVar, Object obj) {
        u24.a aVarB = bVar.b();
        int number = bVar.getNumber();
        if (bVar.a()) {
            List list = (List) obj;
            int size = list.size();
            int i = 0;
            if (!bVar.c()) {
                int iA = 0;
                while (i < size) {
                    iA += a(aVarB, number, list.get(i));
                    i++;
                }
                return iA;
            }
            if (list.isEmpty()) {
                return 0;
            }
            int iA2 = 0;
            while (i < size) {
                iA2 += a(aVarB, list.get(i));
                i++;
            }
            return oy.i(iA2) + oy.h(number) + iA2;
        }
        return a(aVarB, number, obj);
    }

    private static boolean a(bl3<?> bl3Var, bl3<?> bl3Var2) {
        if (bl3Var.size() != bl3Var2.size() || !bl3Var.keySet().equals(bl3Var2.keySet())) {
            return false;
        }
        Iterator it = bl3Var.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!a(entry.getValue(), bl3Var2.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    public void b(T t, Object obj) {
        if (t.a()) {
            if (obj instanceof List) {
                List list = (List) obj;
                int size = list.size();
                ArrayList arrayList = new ArrayList(size);
                for (int i = 0; i < size; i++) {
                    Object obj2 = list.get(i);
                    c(t, obj2);
                    arrayList.add(obj2);
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            c(t, obj);
        }
        if (obj instanceof gl1) {
            this.c = true;
        }
        this.a.put(t, obj);
    }

    private static boolean a(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        if (obj instanceof gl1) {
            return obj.equals(obj2);
        }
        if (obj2 instanceof gl1) {
            return obj2.equals(obj);
        }
        return obj.equals(obj2);
    }

    public int a() {
        int size = this.a.size();
        int iA = 0;
        for (int i = 0; i < size; i++) {
            iA += a(this.a.b(i));
        }
        return iA;
    }

    private int a(Map.Entry<T, Object> entry) {
        dr0.a(entry.getKey());
        entry.getValue();
        throw null;
    }

    public static int a(u24.a aVar, boolean z) {
        if (z) {
            return 2;
        }
        return aVar.f();
    }

    public void a(qr0<T> qr0Var) {
        int size = qr0Var.a.size();
        for (int i = 0; i < size; i++) {
            c(qr0Var.a.b(i));
        }
    }

    public static void a(oy oyVar, u24.a aVar, int i, Object obj) throws IOException {
        if (aVar == u24.a.l) {
            oyVar.a(i, (tw1) obj);
        } else {
            oyVar.l(i, a(aVar, false));
            a(oyVar, aVar, obj);
        }
    }

    public static void a(oy oyVar, u24.a aVar, Object obj) throws IOException {
        switch (a.b[aVar.ordinal()]) {
            case 1:
                oyVar.b(((Double) obj).doubleValue());
                break;
            case 2:
                oyVar.b(((Float) obj).floatValue());
                break;
            case 3:
                oyVar.h(((Long) obj).longValue());
                break;
            case 4:
                oyVar.k(((Long) obj).longValue());
                break;
            case 5:
                oyVar.m(((Integer) obj).intValue());
                break;
            case 6:
                oyVar.g(((Long) obj).longValue());
                break;
            case 7:
                oyVar.l(((Integer) obj).intValue());
                break;
            case 8:
                oyVar.b(((Boolean) obj).booleanValue());
                break;
            case 9:
                oyVar.b((tw1) obj);
                break;
            case 10:
                oyVar.c((tw1) obj);
                break;
            case 11:
                if (obj instanceof du) {
                    oyVar.b((du) obj);
                } else {
                    oyVar.b((String) obj);
                }
                break;
            case 12:
                if (obj instanceof du) {
                    oyVar.b((du) obj);
                } else {
                    oyVar.c((byte[]) obj);
                }
                break;
            case 13:
                oyVar.p(((Integer) obj).intValue());
                break;
            case 14:
                oyVar.n(((Integer) obj).intValue());
                break;
            case 15:
                oyVar.i(((Long) obj).longValue());
                break;
            case 16:
                oyVar.o(((Integer) obj).intValue());
                break;
            case 17:
                oyVar.j(((Long) obj).longValue());
                break;
            case 18:
                if (obj instanceof yh1.a) {
                    oyVar.k(((yh1.a) obj).getNumber());
                } else {
                    oyVar.k(((Integer) obj).intValue());
                }
                break;
        }
    }

    public static int a(u24.a aVar, Object obj) {
        switch (a.b[aVar.ordinal()]) {
            case 1:
                return oy.a(((Double) obj).doubleValue());
            case 2:
                return oy.a(((Float) obj).floatValue());
            case 3:
                return oy.b(((Long) obj).longValue());
            case 4:
                return oy.e(((Long) obj).longValue());
            case 5:
                return oy.c(((Integer) obj).intValue());
            case 6:
                return oy.a(((Long) obj).longValue());
            case 7:
                return oy.b(((Integer) obj).intValue());
            case 8:
                return oy.a(((Boolean) obj).booleanValue());
            case 9:
                return ((tw1) obj).getSerializedSize();
            case 10:
                if (obj instanceof gl1) {
                    return ((gl1) obj).a();
                }
                return oy.a((tw1) obj);
            case 11:
                if (obj instanceof du) {
                    return oy.a((du) obj);
                }
                return oy.a((String) obj);
            case 12:
                if (obj instanceof du) {
                    return oy.a((du) obj);
                }
                return oy.a((byte[]) obj);
            case 13:
                return oy.i(((Integer) obj).intValue());
            case 14:
                return oy.f(((Integer) obj).intValue());
            case 15:
                return oy.c(((Long) obj).longValue());
            case 16:
                return oy.g(((Integer) obj).intValue());
            case 17:
                return oy.d(((Long) obj).longValue());
            case 18:
                if (obj instanceof yh1.a) {
                    return oy.a(((yh1.a) obj).getNumber());
                }
                return oy.a(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }
}
