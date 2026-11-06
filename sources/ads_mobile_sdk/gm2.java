package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class gm2 extends Lambda implements Function1 {
    public final /* synthetic */ up0 a;
    public final /* synthetic */ String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gm2(up0 up0Var, String str) {
        super(1);
        this.a = up0Var;
        this.b = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        o1 currentManifest = (o1) obj;
        Intrinsics.checkNotNullParameter(currentManifest, "currentManifest");
        up0 up0Var = this.a;
        String value = this.b;
        vz0.a aVarU = currentManifest.u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        n1 builder = (n1) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        String value2 = up0Var.a;
        Intrinsics.checkNotNullParameter(value2, "value");
        builder.d(value2);
        builder.a(up0Var.b);
        String value3 = up0Var.c;
        Intrinsics.checkNotNullParameter(value3, "value");
        builder.c(value3);
        builder.a(up0Var.d);
        Intrinsics.checkNotNullParameter(value, "value");
        builder.b(value);
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (o1) vz0VarB;
    }
}
