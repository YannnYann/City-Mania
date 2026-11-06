package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒉ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0483 extends AbstractC0925 {
    static {
        StringFog.decrypt("9lWqxOcJDCE=\n", "kTDego5sYEU=\n");
        StringFog.decrypt("DiFARr3hXKoa\n", "aUQ0ANSEMM4=\n");
        StringFog.decrypt("/Mc7ARrCYUXdyyorF/90ZeLSKg==\n", "m6JPR3OwEjE=\n");
        StringFog.decrypt("KM19gOYA1yAJwWyq6yXNICf4e6PpG9w=\n", "T6gJxo9ypFQ=\n");
        StringFog.decrypt("p06mpBGjJUyhUKeBAKAhUK1Qp6AX\n", "xDzDxWXGYyU=\n");
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static Field m1282(ArrayList arrayList) {
        Field[] fields;
        Class cls = (Class) AbstractC0925.m1545(arrayList, 0, Class.class);
        String str = (String) AbstractC0925.m1545(arrayList, 1, String.class);
        C0486 c0486 = C0725.m1432().f2974;
        synchronized (C0486.class) {
            try {
                if (c0486.f2286 == null) {
                    c0486.f2286 = new ArrayList();
                }
                c0486.f2286.clear();
                ArrayList arrayList2 = c0486.f2286;
                try {
                    fields = cls.getDeclaredFields();
                } catch (Error unused) {
                    fields = cls.getFields();
                }
                for (Field field : fields) {
                    if (field.getType().getName().toLowerCase().startsWith(str.toLowerCase())) {
                        field.setAccessible(true);
                        arrayList2.add(field);
                    }
                }
                if (c0486.f2286.isEmpty()) {
                    return null;
                }
                return (Field) c0486.f2286.get(0);
            } finally {
            }
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Field m1283(ArrayList arrayList) {
        if (!(arrayList.get(0) instanceof Class)) {
            Object objM1545 = AbstractC0925.m1545(arrayList, 0, Object.class);
            return C0725.m1432().f2974.m1291(objM1545.getClass(), (Class) AbstractC0925.m1545(arrayList, 1, Class.class));
        }
        Class cls = (Class) AbstractC0925.m1545(arrayList, 0, Class.class);
        if (arrayList.get(1) instanceof Class) {
            return C0725.m1432().f2974.m1291(cls, (Class) AbstractC0925.m1545(arrayList, 1, Class.class));
        }
        return C0725.m1432().f2974.m1290(cls, (C0523) AbstractC0925.m1545(arrayList, 1, C0523.class));
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static List m1284(ArrayList arrayList) {
        if (!(arrayList.get(0) instanceof Class)) {
            Object objM1545 = AbstractC0925.m1545(arrayList, 0, Object.class);
            boolean zBooleanValue = arrayList.size() > 1 ? ((Boolean) AbstractC0925.m1545(arrayList, 1, Boolean.class)).booleanValue() : false;
            C0486 c0486 = C0725.m1432().f2974;
            return Arrays.asList(C0486.m1289(objM1545.getClass(), zBooleanValue, -1, null));
        }
        if (arrayList.size() <= 1) {
            return new ArrayList();
        }
        Class cls = (Class) AbstractC0925.m1545(arrayList, 0, Class.class);
        C0523 c0523 = (C0523) AbstractC0925.m1545(arrayList, 1, C0523.class);
        C0486 c04862 = C0725.m1432().f2974;
        ArrayList arrayList2 = new ArrayList();
        c04862.m1292(cls, c0523, arrayList2);
        return arrayList2;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Field m1286(ArrayList arrayList) {
        return C0725.m1432().f2974.m1290((Class) AbstractC0925.m1545(arrayList, 0, Class.class), (C0523) AbstractC0925.m1545(arrayList, 1, C0523.class));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static C0524 m1285() {
        C0486 c0486 = C0725.m1432().f2974;
        return new C0524();
    }
}
