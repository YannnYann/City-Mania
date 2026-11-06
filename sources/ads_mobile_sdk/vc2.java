package ads_mobile_sdk;

import java.util.UUID;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class vc2 extends Lambda implements Function0 {
    public final /* synthetic */ kd2 a;
    public final /* synthetic */ r31 b;
    public final /* synthetic */ String c;
    public final /* synthetic */ l40 d;
    public final /* synthetic */ x91 e;
    public final /* synthetic */ xh2 f;
    public final /* synthetic */ xh2 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vc2(kd2 kd2Var, r31 r31Var, String str, l40 l40Var, x91 x91Var, xh2 xh2Var, xh2 xh2Var2) {
        super(0);
        this.a = kd2Var;
        this.b = r31Var;
        this.c = str;
        this.d = l40Var;
        this.e = x91Var;
        this.f = xh2Var;
        this.g = xh2Var2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        n9 n9VarA = n9.a(this.a.j, this.b, this.c, "");
        m9 m9VarA = m9.a(this.d, this.e, this.f, this.g, true);
        ig2.a();
        return new p9(m9VarA, n9VarA, UUID.randomUUID().toString());
    }
}
