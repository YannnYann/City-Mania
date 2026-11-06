package ads_mobile_sdk;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes.dex */
public final class g81 {
    public String b;
    public p53 d;
    public Deferred e;
    public String f;
    public int a = -1;
    public Map c = new LinkedHashMap();

    public final h81 a() {
        int i = this.a;
        if (i >= 0) {
            return new h81(i, this.b, this.c, this.d, this.e, this.f, 0);
        }
        throw new IllegalStateException(("Invalid status code: " + i).toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final ads_mobile_sdk.g81 a(java.util.Map r13) {
        /*
            r12 = this;
            if (r13 == 0) goto L4d
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Set r13 = r13.entrySet()
            java.util.Iterator r13 = r13.iterator()
        Lf:
            boolean r1 = r13.hasNext()
            if (r1 == 0) goto L40
            java.lang.Object r1 = r13.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getKey()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r1 = r1.getValue()
            r3 = r1
            java.util.List r3 = (java.util.List) r3
            r10 = 62
            r11 = 0
            java.lang.String r4 = ", "
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            java.lang.String r1 = kotlin.collections.CollectionsKt___CollectionsKt.joinToString$default(r3, r4, r5, r6, r7, r8, r9, r10, r11)
            kotlin.Pair r1 = kotlin.TuplesKt.to(r2, r1)
            if (r1 == 0) goto Lf
            r0.add(r1)
            goto Lf
        L40:
            java.util.Map r13 = kotlin.collections.MapsKt__MapsKt.toMap(r0)
            if (r13 == 0) goto L4d
            java.util.Map r13 = kotlin.collections.MapsKt__MapsKt.toMutableMap(r13)
            if (r13 == 0) goto L4d
            goto L52
        L4d:
            java.util.LinkedHashMap r13 = new java.util.LinkedHashMap
            r13.<init>()
        L52:
            r12.c = r13
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.g81.a(java.util.Map):ads_mobile_sdk.g81");
    }
}
