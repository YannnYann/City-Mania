package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class m91 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public m91(n91 n91Var, dw2 dw2Var) {
        this.a = n91Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        l91 iconAdSignalSource = (l91) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(iconAdSignalSource, "iconAdSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.a;
        qf3 qf3Var = qf3.a;
        ph3 ph3Var = ph3.a;
        iconAdSignalSource.getClass();
        return new jb2(iconAdSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.ICON_AD));
    }
}
