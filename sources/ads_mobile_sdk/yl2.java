package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class yl2 extends Lambda implements Function1 {
    public final /* synthetic */ om2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yl2(om2 om2Var) {
        super(1);
        this.a = om2Var;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        j9 j9Var;
        om2 om2Var;
        o1 manifest = (o1) obj;
        Intrinsics.checkNotNullParameter(manifest, "manifest");
        String key = this.a.b.name();
        rx0 rx0Var = (rx0) manifest.A().get(key);
        if (rx0Var == null || (j9Var = (j9) rx0Var.v().get(this.a.c)) == null) {
            return manifest;
        }
        om2 om2Var2 = this.a;
        vz0.a aVarU = manifest.u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        n1 builder = (n1) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        Map mapI = builder.i();
        Intrinsics.checkNotNullExpressionValue(mapI, "getPoolsMap(...)");
        no0 no0Var = new no0(mapI);
        vz0.a aVarU2 = rx0Var.u();
        Intrinsics.checkNotNullExpressionValue(aVarU2, "toBuilder(...)");
        qx0 builder2 = (qx0) aVarU2;
        Intrinsics.checkNotNullParameter(builder2, "builder");
        Map mapI2 = builder2.i();
        Intrinsics.checkNotNullExpressionValue(mapI2, "getAdResponseListsMap(...)");
        no0 no0Var2 = new no0(mapI2);
        String key2 = om2Var2.c;
        vz0.a aVarU3 = j9Var.u();
        Intrinsics.checkNotNullExpressionValue(aVarU3, "toBuilder(...)");
        i9 builder3 = (i9) aVarU3;
        Intrinsics.checkNotNullParameter(builder3, "builder");
        List listI = builder3.i();
        Intrinsics.checkNotNullExpressionValue(listI, "getResponsesList(...)");
        Iterator it = new lo0(listI).iterator();
        int i = 0;
        while (true) {
            Iterator it2 = it;
            if (it.hasNext()) {
                Object next = it2.next();
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                d9 d9Var = (d9) next;
                n1 n1Var = builder;
                if (Intrinsics.areEqual(d9Var.x(), om2Var2.a) && d9Var.y() == b9.READ) {
                    List listI2 = builder3.i();
                    Intrinsics.checkNotNullExpressionValue(listI2, "getResponsesList(...)");
                    lo0 lo0Var = new lo0(listI2);
                    vz0.a aVarU4 = d9Var.u();
                    Intrinsics.checkNotNullExpressionValue(aVarU4, "toBuilder(...)");
                    c9 builder4 = (c9) aVarU4;
                    Intrinsics.checkNotNullParameter(builder4, "builder");
                    om2Var = om2Var2;
                    b9 value = b9.AVAILABLE;
                    Intrinsics.checkNotNullParameter(value, "value");
                    builder4.a(value);
                    Unit unit = Unit.INSTANCE;
                    vz0 vz0VarB = builder4.b();
                    Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
                    d9 value2 = (d9) vz0VarB;
                    Intrinsics.checkNotNullParameter(lo0Var, "<this>");
                    Intrinsics.checkNotNullParameter(value2, "value");
                    builder3.a(i, value2);
                } else {
                    om2Var = om2Var2;
                }
                it = it2;
                i = i2;
                om2Var2 = om2Var;
                builder = n1Var;
            } else {
                n1 n1Var2 = builder;
                vz0 vz0VarB2 = builder3.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
                j9 value3 = (j9) vz0VarB2;
                Intrinsics.checkNotNullParameter(no0Var2, "<this>");
                Intrinsics.checkNotNullParameter(key2, "key");
                Intrinsics.checkNotNullParameter(value3, "value");
                builder2.a(key2, value3);
                vz0 vz0VarB3 = builder2.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB3, "build(...)");
                rx0 value4 = (rx0) vz0VarB3;
                Intrinsics.checkNotNullParameter(no0Var, "<this>");
                Intrinsics.checkNotNullParameter(key, "key");
                Intrinsics.checkNotNullParameter(value4, "value");
                n1Var2.a(key, value4);
                vz0 vz0VarB4 = n1Var2.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB4, "build(...)");
                return (o1) vz0VarB4;
            }
        }
    }
}
