package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class pl2 extends Lambda implements Function1 {
    public final /* synthetic */ String a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pl2(String str) {
        super(1);
        this.a = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        o1 manifest = (o1) obj;
        Intrinsics.checkNotNullParameter(manifest, "manifest");
        String value = this.a;
        vz0.a aVarU = manifest.u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        n1 builder = (n1) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        Map mapI = builder.i();
        Intrinsics.checkNotNullExpressionValue(mapI, "getPoolsMap(...)");
        Intrinsics.checkNotNullParameter(new no0(mapI), "<this>");
        builder.h();
        Intrinsics.checkNotNullParameter(value, "value");
        builder.b(value);
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (o1) vz0VarB;
    }
}
