package ads_mobile_sdk;

import ads_mobile_sdk.gu1;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class lu1 implements ku1 {
    @Override // ads_mobile_sdk.ku1
    public Map<?, ?> c(Object obj) {
        return (ju1) obj;
    }

    @Override // ads_mobile_sdk.ku1
    public gu1.a<?, ?> f(Object obj) {
        return ((gu1) obj).a();
    }

    @Override // ads_mobile_sdk.ku1
    public Map<?, ?> a(Object obj) {
        return (ju1) obj;
    }

    @Override // ads_mobile_sdk.ku1
    public boolean d(Object obj) {
        return !((ju1) obj).d();
    }

    @Override // ads_mobile_sdk.ku1
    public Object e(Object obj) {
        ((ju1) obj).e();
        return obj;
    }

    public static <K, V> int b(int i, Object obj, Object obj2) {
        ju1 ju1Var = (ju1) obj;
        gu1 gu1Var = (gu1) obj2;
        int iA = 0;
        if (ju1Var.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : ju1Var.entrySet()) {
            iA += gu1Var.a(i, entry.getKey(), entry.getValue());
        }
        return iA;
    }

    @Override // ads_mobile_sdk.ku1
    public int a(int i, Object obj, Object obj2) {
        return b(i, obj, obj2);
    }

    public static <K, V> ju1<K, V> b(Object obj, Object obj2) {
        ju1<K, V> ju1VarF = (ju1) obj;
        ju1<K, V> ju1Var = (ju1) obj2;
        if (!ju1Var.isEmpty()) {
            if (!ju1VarF.d()) {
                ju1VarF = ju1VarF.f();
            }
            ju1VarF.a((ju1) ju1Var);
        }
        return ju1VarF;
    }

    @Override // ads_mobile_sdk.ku1
    public Object b(Object obj) {
        return ju1.b().f();
    }

    @Override // ads_mobile_sdk.ku1
    public Object a(Object obj, Object obj2) {
        return b(obj, obj2);
    }
}
