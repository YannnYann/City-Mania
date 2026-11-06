package ads_mobile_sdk;

import ads_mobile_sdk.du;
import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
final class i83 extends du {
    static final int[] k = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Api.BaseClientBuilder.API_PRIORITY_OTHER};
    private final int f;
    private final du g;
    private final du h;
    private final int i;
    private final int j;

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public du.g iterator() {
        return new a();
    }

    public List<ByteBuffer> k() {
        ArrayList arrayList = new ArrayList();
        c cVar = new c(this);
        while (cVar.hasNext()) {
            arrayList.add(cVar.next().c());
        }
        return arrayList;
    }

    private i83(du duVar, du duVar2) {
        this.g = duVar;
        this.h = duVar2;
        int size = duVar.size();
        this.i = size;
        this.f = duVar2.size() + size;
        this.j = Math.max(duVar.d(), duVar2.d()) + 1;
    }

    public static du a(du duVar, du duVar2) {
        if (duVar2.size() == 0) {
            return duVar;
        }
        if (duVar.size() == 0) {
            return duVar2;
        }
        int size = duVar2.size() + duVar.size();
        if (size < 128) {
            return b(duVar, duVar2);
        }
        if (duVar instanceof i83) {
            i83 i83Var = (i83) duVar;
            if (duVar2.size() + i83Var.h.size() < 128) {
                return new i83(i83Var.g, b(i83Var.h, duVar2));
            }
            if (i83Var.g.d() > i83Var.h.d() && i83Var.d() > duVar2.d()) {
                return new i83(i83Var.g, new i83(i83Var.h, duVar2));
            }
        }
        if (size >= g(Math.max(duVar.d(), duVar2.d()) + 1)) {
            return new i83(duVar, duVar2);
        }
        return new b().a(duVar, duVar2);
    }

    private static du b(du duVar, du duVar2) {
        int size = duVar.size();
        int size2 = duVar2.size();
        byte[] bArr = new byte[size + size2];
        duVar.a(bArr, 0, 0, size);
        duVar2.a(bArr, 0, size, size2);
        return du.b(bArr);
    }

    public static int g(int i) {
        int[] iArr = k;
        return i >= iArr.length ? Api.BaseClientBuilder.API_PRIORITY_OTHER : iArr[i];
    }

    @Override // ads_mobile_sdk.du
    public int size() {
        return this.f;
    }

    public class a extends du.c {
        final c a;
        du.g b = c();

        public a() {
            this.a = new c(i83.this);
        }

        private du.g c() {
            if (this.a.hasNext()) {
                return this.a.next().iterator();
            }
            return null;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.b != null;
        }

        @Override // ads_mobile_sdk.du.g
        public byte a() {
            du.g gVar = this.b;
            if (gVar != null) {
                byte bA = gVar.a();
                if (!this.b.hasNext()) {
                    this.b = c();
                }
                return bA;
            }
            throw new NoSuchElementException();
        }
    }

    @Override // ads_mobile_sdk.du
    public int d() {
        return this.j;
    }

    @Override // ads_mobile_sdk.du
    public boolean e() {
        return this.f >= g(this.j);
    }

    @Override // ads_mobile_sdk.du
    public du a(int i, int i2) {
        return b(i, i2);
    }

    @Override // ads_mobile_sdk.du
    public byte d(int i) {
        int i2 = this.i;
        if (i < i2) {
            return this.g.d(i);
        }
        return this.h.d(i - i2);
    }

    public static class b {
        private final ArrayDeque<du> a;

        private b() {
            this.a = new ArrayDeque<>();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public du a(du duVar, du duVar2) {
            a(duVar);
            a(duVar2);
            du duVarPop = this.a.pop();
            while (!this.a.isEmpty()) {
                duVarPop = new i83(this.a.pop(), duVarPop);
            }
            return duVarPop;
        }

        private void b(du duVar) {
            int iA = a(duVar.size());
            int iG = i83.g(iA + 1);
            if (!this.a.isEmpty() && this.a.peek().size() < iG) {
                int iG2 = i83.g(iA);
                du duVarPop = this.a.pop();
                while (true) {
                    if (this.a.isEmpty() || this.a.peek().size() >= iG2) {
                        break;
                    } else {
                        duVarPop = new i83(this.a.pop(), duVarPop);
                    }
                }
                i83 i83Var = new i83(duVarPop, duVar);
                while (!this.a.isEmpty()) {
                    if (this.a.peek().size() >= i83.g(a(i83Var.size()) + 1)) {
                        break;
                    } else {
                        i83Var = new i83(this.a.pop(), i83Var);
                    }
                }
                this.a.push(i83Var);
                return;
            }
            this.a.push(duVar);
        }

        private void a(du duVar) {
            if (duVar.e()) {
                b(duVar);
                return;
            }
            if (duVar instanceof i83) {
                i83 i83Var = (i83) duVar;
                a(i83Var.g);
                a(i83Var.h);
            } else {
                throw new IllegalArgumentException("Has a new type of ByteString been created? Found " + String.valueOf(duVar.getClass()));
            }
        }

        private int a(int i) {
            int iBinarySearch = Arrays.binarySearch(i83.k, i);
            return iBinarySearch < 0 ? (-(iBinarySearch + 1)) - 1 : iBinarySearch;
        }
    }

    @Override // ads_mobile_sdk.du
    public void b(byte[] bArr, int i, int i2, int i3) {
        int i4 = i + i3;
        int i5 = this.i;
        if (i4 <= i5) {
            this.g.b(bArr, i, i2, i3);
        } else {
            if (i >= i5) {
                this.h.b(bArr, i - i5, i2, i3);
                return;
            }
            int i6 = i5 - i;
            this.g.b(bArr, i, i2, i6);
            this.h.b(bArr, 0, i2 + i6, i3 - i6);
        }
    }

    public static final class c implements Iterator<du.j> {
        private final ArrayDeque<i83> a;
        private du.j b;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        private c(du duVar) {
            if (duVar instanceof i83) {
                i83 i83Var = (i83) duVar;
                ArrayDeque<i83> arrayDeque = new ArrayDeque<>(i83Var.d());
                this.a = arrayDeque;
                arrayDeque.push(i83Var);
                this.b = a(i83Var.g);
                return;
            }
            this.a = null;
            this.b = (du.j) duVar;
        }

        private du.j a(du duVar) {
            while (duVar instanceof i83) {
                i83 i83Var = (i83) duVar;
                this.a.push(i83Var);
                duVar = i83Var.g;
            }
            return (du.j) duVar;
        }

        private du.j b() {
            du.j jVarA;
            do {
                ArrayDeque<i83> arrayDeque = this.a;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    return null;
                }
                jVarA = a(this.a.pop().h);
            } while (jVarA.isEmpty());
            return jVarA;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.b != null;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public du.j next() {
            du.j jVar = this.b;
            if (jVar != null) {
                this.b = b();
                return jVar;
            }
            throw new NoSuchElementException();
        }
    }

    @Override // ads_mobile_sdk.du
    public my g() {
        return my.a((Iterable<ByteBuffer>) k(), true);
    }

    @Override // ads_mobile_sdk.du
    public void a(cu cuVar) throws IOException {
        this.g.a(cuVar);
        this.h.a(cuVar);
    }

    @Override // ads_mobile_sdk.du
    public boolean b(du duVar) {
        boolean zA;
        c cVar = new c(this);
        du.j next = cVar.next();
        c cVar2 = new c(duVar);
        du.j next2 = cVar2.next();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int size = next.size() - i;
            int size2 = next2.size() - i2;
            int iMin = Math.min(size, size2);
            if (i == 0) {
                zA = next.a(next2, i2, iMin);
            } else {
                zA = next2.a(next, i, iMin);
            }
            if (!zA) {
                return false;
            }
            i3 += iMin;
            int i4 = this.f;
            if (i3 >= i4) {
                if (i3 == i4) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (iMin == size) {
                i = 0;
                next = cVar.next();
            } else {
                i += iMin;
                next = next;
            }
            if (iMin == size2) {
                next2 = cVar2.next();
                i2 = 0;
            } else {
                i2 += iMin;
            }
        }
    }

    @Override // ads_mobile_sdk.du
    public int b(int i, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = this.i;
        if (i4 <= i5) {
            return this.g.b(i, i2, i3);
        }
        if (i2 >= i5) {
            return this.h.b(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return this.h.b(this.g.b(i, i2, i6), 0, i3 - i6);
    }

    @Override // ads_mobile_sdk.du
    public du b(int i, int i2) {
        int iA = du.a(i, i2, this.f);
        if (iA == 0) {
            return du.b;
        }
        if (iA == this.f) {
            return this;
        }
        int i3 = this.i;
        if (i2 <= i3) {
            return this.g.a(i, i2);
        }
        if (i >= i3) {
            return this.h.a(i - i3, i2 - i3);
        }
        return new i83(this.g.f(i), this.h.a(0, i2 - this.i));
    }

    @Override // ads_mobile_sdk.du
    public String b(Charset charset) {
        return new String(i(), charset);
    }
}
