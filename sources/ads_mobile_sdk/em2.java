package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class em2 extends Lambda implements Function1 {
    public static final em2 a = new em2();

    public em2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str;
        o1 manifest = (o1) obj;
        Intrinsics.checkNotNullParameter(manifest, "manifest");
        Collection collectionValues = manifest.A().values();
        if ((collectionValues instanceof Collection) && collectionValues.isEmpty()) {
            return manifest;
        }
        Iterator it = collectionValues.iterator();
        while (it.hasNext()) {
            Collection collectionValues2 = ((rx0) it.next()).v().values();
            if (!(collectionValues2 instanceof Collection) || !collectionValues2.isEmpty()) {
                Iterator it2 = collectionValues2.iterator();
                while (it2.hasNext()) {
                    List listY = ((j9) it2.next()).y();
                    Intrinsics.checkNotNullExpressionValue(listY, "getResponsesList(...)");
                    if (!(listY instanceof Collection) || !listY.isEmpty()) {
                        Iterator it3 = listY.iterator();
                        while (it3.hasNext()) {
                            if (((d9) it3.next()).y() != b9.AVAILABLE) {
                                vz0.a aVarU = manifest.u();
                                Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
                                n1 builder = (n1) aVarU;
                                Intrinsics.checkNotNullParameter(builder, "builder");
                                Map mapI = builder.i();
                                String str2 = "getPoolsMap(...)";
                                Intrinsics.checkNotNullExpressionValue(mapI, "getPoolsMap(...)");
                                Iterator it4 = CollectionsKt___CollectionsKt.toList(new no0(mapI).keySet()).iterator();
                                while (it4.hasNext()) {
                                    String key = (String) it4.next();
                                    Map mapI2 = builder.i();
                                    Intrinsics.checkNotNullExpressionValue(mapI2, str2);
                                    rx0 rx0Var = (rx0) new no0(mapI2).get(key);
                                    if (rx0Var != null) {
                                        Map mapI3 = builder.i();
                                        Intrinsics.checkNotNullExpressionValue(mapI3, str2);
                                        no0 no0Var = new no0(mapI3);
                                        vz0.a aVarU2 = rx0Var.u();
                                        Intrinsics.checkNotNullExpressionValue(aVarU2, "toBuilder(...)");
                                        qx0 builder2 = (qx0) aVarU2;
                                        Intrinsics.checkNotNullParameter(builder2, "builder");
                                        Map mapI4 = builder2.i();
                                        String str3 = "getAdResponseListsMap(...)";
                                        Intrinsics.checkNotNullExpressionValue(mapI4, "getAdResponseListsMap(...)");
                                        Iterator it5 = CollectionsKt___CollectionsKt.toList(new no0(mapI4).keySet()).iterator();
                                        while (it5.hasNext()) {
                                            String key2 = (String) it5.next();
                                            Iterator it6 = it4;
                                            String str4 = str2;
                                            Map mapI5 = builder2.i();
                                            Intrinsics.checkNotNullExpressionValue(mapI5, str3);
                                            j9 j9Var = (j9) new no0(mapI5).get(key2);
                                            if (j9Var == null) {
                                                it4 = it6;
                                                str2 = str4;
                                            } else {
                                                Map mapI6 = builder2.i();
                                                Intrinsics.checkNotNullExpressionValue(mapI6, str3);
                                                no0 no0Var2 = new no0(mapI6);
                                                vz0.a aVarU3 = j9Var.u();
                                                Intrinsics.checkNotNullExpressionValue(aVarU3, "toBuilder(...)");
                                                i9 builder3 = (i9) aVarU3;
                                                Intrinsics.checkNotNullParameter(builder3, "builder");
                                                Iterator it7 = it5;
                                                String str5 = str3;
                                                List listI = builder3.i();
                                                Intrinsics.checkNotNullExpressionValue(listI, "getResponsesList(...)");
                                                Iterator it8 = new lo0(listI).iterator();
                                                int i = 0;
                                                while (it8.hasNext()) {
                                                    int i2 = i + 1;
                                                    d9 d9Var = (d9) it8.next();
                                                    Iterator it9 = it8;
                                                    b9 b9VarY = d9Var.y();
                                                    n1 n1Var = builder;
                                                    b9 value = b9.AVAILABLE;
                                                    if (b9VarY != value) {
                                                        str = key;
                                                        List listI2 = builder3.i();
                                                        Intrinsics.checkNotNullExpressionValue(listI2, "getResponsesList(...)");
                                                        lo0 lo0Var = new lo0(listI2);
                                                        vz0.a aVarU4 = d9Var.u();
                                                        Intrinsics.checkNotNullExpressionValue(aVarU4, "toBuilder(...)");
                                                        c9 builder4 = (c9) aVarU4;
                                                        Intrinsics.checkNotNullParameter(builder4, "builder");
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
                                                        str = key;
                                                    }
                                                    i = i2;
                                                    it8 = it9;
                                                    builder = n1Var;
                                                    key = str;
                                                }
                                                n1 n1Var2 = builder;
                                                vz0 vz0VarB2 = builder3.b();
                                                Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
                                                j9 value3 = (j9) vz0VarB2;
                                                Intrinsics.checkNotNullParameter(no0Var2, "<this>");
                                                Intrinsics.checkNotNullParameter(key2, "key");
                                                Intrinsics.checkNotNullParameter(value3, "value");
                                                builder2.a(key2, value3);
                                                it4 = it6;
                                                str2 = str4;
                                                it5 = it7;
                                                str3 = str5;
                                                builder = n1Var2;
                                            }
                                        }
                                        n1 n1Var3 = builder;
                                        vz0 vz0VarB3 = builder2.b();
                                        Intrinsics.checkNotNullExpressionValue(vz0VarB3, "build(...)");
                                        rx0 value4 = (rx0) vz0VarB3;
                                        Intrinsics.checkNotNullParameter(no0Var, "<this>");
                                        Intrinsics.checkNotNullParameter(key, "key");
                                        Intrinsics.checkNotNullParameter(value4, "value");
                                        n1Var3.a(key, value4);
                                        builder = n1Var3;
                                        it4 = it4;
                                    }
                                }
                                vz0 vz0VarB4 = builder.b();
                                Intrinsics.checkNotNullExpressionValue(vz0VarB4, "build(...)");
                                return (o1) vz0VarB4;
                            }
                        }
                    }
                }
            }
        }
        return manifest;
    }
}
