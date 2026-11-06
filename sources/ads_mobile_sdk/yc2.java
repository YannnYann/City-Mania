package ads_mobile_sdk;

import java.util.UUID;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class yc2 extends Lambda implements Function0 {
    public final /* synthetic */ String a;
    public final /* synthetic */ kd2 b;
    public final /* synthetic */ r31 c;
    public final /* synthetic */ String d;
    public final /* synthetic */ l40 e;
    public final /* synthetic */ x91 f;
    public final /* synthetic */ xh2 g;
    public final /* synthetic */ xh2 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yc2(String str, kd2 kd2Var, r31 r31Var, String str2, l40 l40Var, x91 x91Var, xh2 xh2Var, xh2 xh2Var2) {
        super(0);
        this.a = str;
        this.b = kd2Var;
        this.c = r31Var;
        this.d = str2;
        this.e = l40Var;
        this.f = x91Var;
        this.g = xh2Var;
        this.h = xh2Var2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        n9 n9VarB = n9.b(bj2.a(this.a, this.b.h), this.c, this.d, "");
        m9 m9VarA = m9.a(this.e, this.f, this.g, this.h, true);
        ig2.a();
        return new p9(m9VarA, n9VarB, UUID.randomUUID().toString());
    }
}
