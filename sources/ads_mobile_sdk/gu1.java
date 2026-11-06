package ads_mobile_sdk;

import ads_mobile_sdk.u24;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class gu1<K, V> {
    private final a<K, V> a;
    private final K b;
    private final V c;

    public static class a<K, V> {
        public final u24.a a;
        public final K b;
        public final u24.a c;
        public final V d;

        public a(u24.a aVar, K k, u24.a aVar2, V v) {
            this.a = aVar;
            this.b = k;
            this.c = aVar2;
            this.d = v;
        }
    }

    private gu1(u24.a aVar, K k, u24.a aVar2, V v) {
        this.a = new a<>(aVar, k, aVar2, v);
        this.b = k;
        this.c = v;
    }

    public int a(int i, K k, V v) {
        return oy.d(a(this.a, k, v)) + oy.h(i);
    }

    public static <K, V> int a(a<K, V> aVar, K k, V v) {
        return qr0.a(aVar.a, 1, k) + qr0.a(aVar.c, 2, v);
    }

    public a<K, V> a() {
        return this.a;
    }

    public static <K, V> void a(oy oyVar, a<K, V> aVar, K k, V v) throws IOException {
        qr0.a(oyVar, aVar.a, 1, k);
        qr0.a(oyVar, aVar.c, 2, v);
    }

    public static <K, V> gu1<K, V> a(u24.a aVar, K k, u24.a aVar2, V v) {
        return new gu1<>(aVar, k, aVar2, v);
    }
}
