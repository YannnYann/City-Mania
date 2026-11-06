package ads_mobile_sdk;

import java.util.function.Supplier;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v34 implements Supplier {
    public final /* synthetic */ int a;
    public static final /* synthetic */ v34 c = new v34(1);
    public static final /* synthetic */ v34 b = new v34(0);

    public /* synthetic */ v34(int i) {
        this.a = i;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.a != 0 ? l44.a((Object) null) : new y34();
    }
}
