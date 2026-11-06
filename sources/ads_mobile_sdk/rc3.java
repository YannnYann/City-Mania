package ads_mobile_sdk;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class rc3 {
    public static final /* synthetic */ boolean c = true;
    public final List a;
    public final List b;

    public final void a(dw2 dw2Var) {
        if (!c && dw2Var == null) {
            throw new AssertionError("Codegen error? Null provider");
        }
        this.a.add(dw2Var);
    }

    public final sc3 a() {
        boolean z = c;
        if (!z && ud0.a(this.a)) {
            throw new AssertionError("Codegen error?  Duplicates in the provider list");
        }
        if (z || !ud0.a(this.b)) {
            return new sc3(this.a, this.b);
        }
        throw new AssertionError("Codegen error?  Duplicates in the provider list");
    }

    public rc3(int i, int i2) {
        this.a = ud0.b(i);
        this.b = ud0.b(i2);
    }
}
