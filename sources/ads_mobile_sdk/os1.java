package ads_mobile_sdk;

import ads_mobile_sdk.yh1;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class os1 implements ns1 {
    @Override // ads_mobile_sdk.ns1
    public <L> List<L> b(Object obj, long j) {
        yh1.f fVarC = c(obj, j);
        if (fVarC.b()) {
            return fVarC;
        }
        int size = fVarC.size();
        yh1.f fVarA2 = fVarC.a2(size == 0 ? 10 : size * 2);
        hw3.a(obj, j, fVarA2);
        return fVarA2;
    }

    @Override // ads_mobile_sdk.ns1
    public void a(Object obj, long j) {
        c(obj, j).a();
    }

    public static <E> yh1.f<E> c(Object obj, long j) {
        return (yh1.f) hw3.j(obj, j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r6v1, types: [ads_mobile_sdk.yh1$f, java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // ads_mobile_sdk.ns1
    public <E> void a(Object obj, Object obj2, long j) {
        yh1.f fVarC = c(obj, j);
        ?? C = c(obj2, j);
        int size = fVarC.size();
        int size2 = C.size();
        ?? r0 = fVarC;
        r0 = fVarC;
        if (size > 0 && size2 > 0) {
            boolean zB = fVarC.b();
            ?? A2 = fVarC;
            if (!zB) {
                A2 = fVarC.a2(size2 + size);
            }
            A2.addAll(C);
            r0 = A2;
        }
        if (size > 0) {
            C = r0;
        }
        hw3.a(obj, j, (Object) C);
    }
}
