package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᓭ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0533 extends C0883 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final AbstractC0963[] f2429;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final AbstractC0963 f2430;

    public C0533(AbstractC0963 abstractC0963, String str, ArrayList arrayList, ArrayList arrayList2) {
        super(str, arrayList2);
        this.f2430 = abstractC0963;
        if (arrayList != null) {
            AbstractC0963[] abstractC0963Arr = new AbstractC0963[arrayList.size()];
            this.f2429 = abstractC0963Arr;
            arrayList.toArray(abstractC0963Arr);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.C0883, com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        C0533 c0533 = (C0533) obj;
        AbstractC0963 abstractC0963 = this.f2430;
        if (abstractC0963 == null ? c0533.f2430 == null : abstractC0963.equals(c0533.f2430)) {
            return Arrays.equals(this.f2429, c0533.f2429);
        }
        return false;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.C0883, com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final int hashCode() {
        int iHashCode = super.hashCode() * 31;
        AbstractC0963 abstractC0963 = this.f2430;
        return Arrays.hashCode(this.f2429) + ((iHashCode + (abstractC0963 != null ? abstractC0963.hashCode() : 0)) * 31);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.C0883
    public final String toString() {
        return mo1301(this.f3387);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.C0883
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String mo1301(Object[] objArr) {
        String strM1456;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2430);
        sb.append(StringFog.decrypt("Yg==\n", "TLuI3BpGTaE=\n"));
        sb.append(this.f3388);
        if (this.f2429 != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(StringFog.decrypt("ng==\n", "op/kUFxDbEg=\n"));
            sb2.append(AbstractC0963.m1576(this.f2429));
            strM1456 = AbstractC0829.m1456("RQ==\n", "e7U2rh+O0iE=\n", sb2);
        } else {
            strM1456 = "";
        }
        sb.append(strM1456);
        sb.append(StringFog.decrypt("iw==\n", "o4zr7hxshgA=\n"));
        sb.append(AbstractC0963.m1576(objArr));
        return AbstractC0829.m1456("bA==\n", "ReQ50wUab6s=\n", sb);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.C0883, com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    /* JADX INFO: renamed from: ﾒ */
    public final C0180 mo1030(C0915 c0915, C0048 c0048) {
        C0946 c0946M1427;
        C0180 c0180M1558;
        ArrayList arrayList = new ArrayList();
        for (AbstractC0963 abstractC0963 : this.f3387) {
            arrayList.add(abstractC0963.m1577(c0915, c0048).f1192);
        }
        AbstractC0963 abstractC09632 = this.f2430;
        if ((abstractC09632 instanceof C3506s) && ((C3506s) abstractC09632).f379.equals(StringFog.decrypt("ljNVIJg=\n", "5UYlRepEH6o=\n"))) {
            C0946 c0946M14272 = c0048.f654.f2896.m1427(this.f3388);
            c0946M14272.getClass();
            C0180 c0180M15582 = c0946M14272.m1558(c0915, c0915.f3495, c0048, arrayList);
            c0180M15582.f1191 = false;
            return c0180M15582;
        }
        Object obj = this.f2430.m1577(c0915, c0048).f1192;
        if (obj instanceof InterfaceC0429) {
            return new C0180(((InterfaceC0429) obj).mo1012(c0048, this.f3388, arrayList, c0048.f650, c0915));
        }
        if (obj instanceof C0048) {
            synchronized (obj) {
                try {
                    C0048 c00482 = (C0048) obj;
                    String str = this.f3388;
                    if (str != null) {
                        c0946M1427 = c00482.f654.m1427(str);
                    } else {
                        c00482.getClass();
                        c0946M1427 = null;
                    }
                    if (c0946M1427 == null) {
                        throw new C0154(c0048, c0915, this.f3388, StringFog.decrypt("6ondl9jToVjKmNqMw52jAMKe25DFl+Q=\n", "r/uv+KrzxCA=\n") + this.f3388);
                    }
                    c0180M1558 = c0946M1427.m1558(c0915, c00482.f653.f3495, c00482, arrayList);
                    c0180M1558.f1191 = false;
                } finally {
                }
            }
            return c0180M1558;
        }
        try {
            AbstractC0963[] abstractC0963Arr = this.f2429;
            Method methodM1584 = abstractC0963Arr != null ? AbstractC0991.m1584(obj, this.f3388, m1300(abstractC0963Arr, c0915, c0048)) : AbstractC0991.m1585(obj, this.f3388, (List) arrayList);
            if (methodM1584 == null) {
                arrayList.add(0, obj);
                return new C0180(c0048.f652.mo1012(c0048, this.f3388, arrayList, c0048.f650, c0915));
            }
            if (!Modifier.isPublic(methodM1584.getDeclaringClass().getModifiers())) {
                try {
                    methodM1584.setAccessible(true);
                } catch (RuntimeException unused) {
                }
            }
            return new C0180(methodM1584.invoke(obj, arrayList.toArray()));
        } catch (IllegalAccessException e) {
            e = e;
            throw new C0480(c0048, c0915, StringFog.decrypt("mhDPUDrpIwq6AchLIachUrIHyVcnrWY=\n", "32K9P0jJRnI=\n") + this, e);
        } catch (InvocationTargetException e2) {
            e = e2;
            throw new C0480(c0048, c0915, StringFog.decrypt("mhDPUDrpIwq6AchLIachUrIHyVcnrWY=\n", "32K9P0jJRnI=\n") + this, e);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static ArrayList m1300(AbstractC0963[] abstractC0963Arr, C0915 c0915, C0048 c0048) {
        ArrayList arrayList = new ArrayList();
        for (AbstractC0963 abstractC0963 : abstractC0963Arr) {
            arrayList.add((Class) abstractC0963.m1577(c0915, c0048).f1192);
        }
        return arrayList;
    }
}
