package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᓯ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0535 extends AbstractC0925 {
    static {
        StringFog.decrypt("/DO4bIasEmzIIr5Dgbk=\n", "m1bMKu/eYRg=\n");
        StringFog.decrypt("KCXnJwBeZmkqJeEuMF5TTj4+7iIRSQ==\n", "S1eCRnQ7NQw=\n");
        StringFog.decrypt("oM6FKq7srNmz\n", "x6vxZcyGybo=\n");
        StringFog.decrypt("GExzo5dmK28LWg==\n", "fykH7PUMTgw=\n");
        StringFog.decrypt("2xDXQFyao3jIM8pqUpQ=\n", "vHWjDz7wxhs=\n");
        StringFog.decrypt("zasntjEkU87emDKVJis=\n", "qs5T+VNONq0=\n");
        StringFog.decrypt("93RTLSzitvnkV04HIuyg\n", "kBEnYk6I05o=\n");
        StringFog.decrypt("fbjXmJ7T8Ttui8K7idzn\n", "Gt2j1/y5lFg=\n");
        StringFog.decrypt("AIt8vKJKU+Uji3Cst3hT8g6AdQ==\n", "Z+4S2dArJ4A=\n");
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static ArrayList m1302(ArrayList arrayList) {
        Object objM1545;
        C0523 c0523;
        Class<?> cls;
        int size = arrayList.size();
        Class<?> cls2 = null;
        cls2 = null;
        Object objM15452 = null;
        if (size == 2) {
            if (arrayList.get(0) instanceof Class) {
                cls2 = (Class) AbstractC0925.m1545(arrayList, 0, Class.class);
                objM1545 = null;
            } else {
                objM1545 = AbstractC0925.m1545(arrayList, 0, Object.class);
                if (objM1545 != null) {
                    cls2 = objM1545.getClass();
                }
            }
            c0523 = (C0523) AbstractC0925.m1545(arrayList, 1, C0523.class);
        } else if (size != 3) {
            c0523 = null;
            objM1545 = null;
        } else {
            if (arrayList.get(0) instanceof Class) {
                cls = (Class) AbstractC0925.m1545(arrayList, 0, Class.class);
                if (arrayList.get(1) instanceof C0523) {
                    c0523 = (C0523) AbstractC0925.m1545(arrayList, 1, C0523.class);
                } else {
                    objM15452 = AbstractC0925.m1545(arrayList, 1, Object.class);
                    c0523 = (C0523) AbstractC0925.m1545(arrayList, 2, C0523.class);
                }
            } else {
                objM15452 = AbstractC0925.m1545(arrayList, 0, Object.class);
                cls = objM15452.getClass();
                c0523 = (C0523) AbstractC0925.m1545(arrayList, 1, C0523.class);
            }
            Object obj = objM15452;
            cls2 = cls;
            objM1545 = obj;
        }
        C0564 c0564 = C0725.m1432().f2973;
        c0564.getClass();
        ArrayList arrayList2 = new ArrayList();
        try {
            C0486 c0486 = C0725.m1432().f2974;
            ArrayList arrayList3 = new ArrayList();
            c0486.m1292(cls2, c0523, arrayList3);
            Iterator it = arrayList3.iterator();
            while (it.hasNext()) {
                arrayList2.add(((Field) it.next()).get(objM1545));
            }
        } catch (Throwable unused) {
            AbstractC0182.m1147(c0564.f2509, StringFog.decrypt("93UVtyNB/djGcw62NkE=\n", "sgdn2FFhmr0=\n") + c0523.f2362 + StringFog.decrypt("6ORHzkjXrIun/R4=\n", "yJA+vi33yvk=\n") + cls2 + StringFog.decrypt("uJDngE2b\n", "mPOL4T7oKuQ=\n"));
        }
        return arrayList2;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00b2 A[Catch: all -> 0x00b7, TRY_LEAVE, TryCatch #0 {all -> 0x00b7, blocks: (B:27:0x00a6, B:29:0x00b2), top: B:33:0x00a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object m1303(java.util.ArrayList r11) {
        /*
            Method dump skipped, instruction units count: 239
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.C0535.m1303(java.util.ArrayList):java.lang.Object");
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static ArrayList m1305(C0048 c0048, C0915 c0915, ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        for (InterfaceC0724 interfaceC0724 : m1309(c0048, c0915, arrayList)) {
            if (interfaceC0724 != null) {
                arrayList2.add(((C0690) interfaceC0724).m1420());
            }
        }
        return arrayList2;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static Object m1306(C0048 c0048, C0915 c0915, ArrayList arrayList) {
        InterfaceC0724 interfaceC0724M1321;
        Object objM1545 = AbstractC0925.m1545(arrayList, 0, Object.class);
        C0305 c0305 = (C0305) AbstractC0925.m1545(arrayList, 1, C0305.class);
        List listM1546 = AbstractC0925.m1546(arrayList, 2);
        if (c0305 != null) {
            interfaceC0724M1321 = C0725.m1432().f2973.m1321(objM1545, c0305.f1823.m1417(new C0540(c0305, c0915, c0048, listM1546), null, c0305.f1821, c0305.f1820));
        } else {
            interfaceC0724M1321 = null;
        }
        if (interfaceC0724M1321 != null) {
            return ((C0690) interfaceC0724M1321).m1420();
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static C0477 m1308(ArrayList arrayList) {
        return new C0477((List) AbstractC0925.m1545(arrayList, 0, List.class), ((Integer) AbstractC0925.m1545(arrayList, 1, Integer.class)).intValue());
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static ArrayList m1309(C0048 c0048, C0915 c0915, ArrayList arrayList) {
        Object objM1545 = AbstractC0925.m1545(arrayList, 0, Object.class);
        C0305 c0305 = (C0305) AbstractC0925.m1545(arrayList, 1, C0305.class);
        List listM1546 = AbstractC0925.m1546(arrayList, 2);
        if (c0305 == null) {
            return null;
        }
        C0656 c0656M1417 = c0305.f1823.m1417(new C0537(c0305, c0915, c0048, listM1546), null, c0305.f1821, c0305.f1820);
        C0564 c0564 = C0725.m1432().f2973;
        c0564.getClass();
        C0638 c0638 = new C0638(c0656M1417);
        c0638.f2655 = true;
        c0564.m1320(objM1545, c0638, 0, (C0690) null);
        return new ArrayList(c0638.f2653);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static String m1304(ArrayList arrayList) {
        int i = 0;
        if (arrayList.get(0) instanceof Class) {
            Class cls = (Class) AbstractC0925.m1545(arrayList, 0, Class.class);
            String str = (String) AbstractC0925.m1545(arrayList, 1, String.class);
            C0725.m1432().f2973.getClass();
            return C0564.m1316((Object) null, cls, str);
        }
        Object objM1545 = AbstractC0925.m1545(arrayList, 0, Object.class);
        if (arrayList.get(1) instanceof List) {
            JSONArray jSONArray = new JSONArray((Collection) AbstractC0925.m1545(arrayList, 1, List.class));
            C0725.m1432().f2973.getClass();
            while (i < jSONArray.length()) {
                String strM1316 = C0564.m1316(objM1545, objM1545.getClass(), jSONArray.optString(i));
                if (strM1316 != null) {
                    return strM1316;
                }
                i++;
            }
            return null;
        }
        if (arrayList.get(1) instanceof JSONArray) {
            JSONArray jSONArray2 = (JSONArray) AbstractC0925.m1545(arrayList, 1, JSONArray.class);
            C0725.m1432().f2973.getClass();
            if (jSONArray2 != null) {
                while (i < jSONArray2.length()) {
                    String strM13162 = C0564.m1316(objM1545, objM1545.getClass(), jSONArray2.optString(i));
                    if (strM13162 != null) {
                        return strM13162;
                    }
                    i++;
                }
            }
            return null;
        }
        String str2 = (String) AbstractC0925.m1545(arrayList, 1, String.class);
        C0725.m1432().f2973.getClass();
        return C0564.m1316(objM1545, objM1545.getClass(), str2);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static String m1307(ArrayList arrayList) {
        Object objM1545 = AbstractC0925.m1545(arrayList, 0, Object.class);
        List list = (List) AbstractC0925.m1545(arrayList, 1, List.class);
        int iIntValue = ((Integer) AbstractC0925.m1545(arrayList, 2, Integer.class)).intValue();
        C0725.m1432().f2973.getClass();
        return new C0122(list, iIntValue).m1097(objM1545);
    }
}
