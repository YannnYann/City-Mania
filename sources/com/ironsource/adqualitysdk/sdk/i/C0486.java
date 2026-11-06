package com.ironsource.adqualitysdk.sdk.i;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒍ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0486 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public ArrayList f2286;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public C0523 f2287;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public C0489 f2288;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Field m1291(Class cls, Class cls2) {
        Field fieldM1290;
        synchronized (AbstractC0061.class) {
            try {
                if (this.f2287 == null) {
                    this.f2287 = new C0523();
                }
                C0523 c0523 = this.f2287;
                c0523.f2362 = cls2;
                fieldM1290 = m1290(cls, c0523);
            } catch (Throwable th) {
                throw th;
            }
        }
        return fieldM1290;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Field m1290(Class cls, C0523 c0523) {
        synchronized (AbstractC0061.class) {
            try {
                if (this.f2286 == null) {
                    this.f2286 = new ArrayList();
                }
                this.f2286.clear();
                m1292(cls, c0523, this.f2286);
                if (this.f2286.isEmpty()) {
                    return null;
                }
                return (Field) this.f2286.get(0);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1292(Class cls, C0523 c0523, ArrayList arrayList) {
        synchronized (C0486.class) {
            try {
                if (this.f2288 == null) {
                    this.f2288 = new C0489();
                }
                C0489 c0489 = this.f2288;
                c0489.f2292 = c0523;
                c0489.f2291 = c0523.f2361;
                m1288(cls, c0489, arrayList);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Field[] m1289(Class cls, boolean z, int i, List list) {
        while (cls != null && !AbstractC0991.m1586(cls, list)) {
            cls = cls.getSuperclass();
        }
        Field[] fieldArr = new Field[0];
        if (cls == null) {
            return fieldArr;
        }
        Field[] declaredFields = new Field[0];
        Field[] fields = new Field[0];
        try {
            declaredFields = cls.getDeclaredFields();
        } catch (Error unused) {
        }
        try {
            fields = cls.getFields();
        } catch (Error unused2) {
        }
        String str = AbstractC0991.f3784;
        int length = declaredFields.length;
        int length2 = fields.length;
        Field[] fieldArr2 = new Field[length + length2];
        System.arraycopy(declaredFields, 0, fieldArr2, 0, length);
        System.arraycopy(fields, 0, fieldArr2, length, length2);
        if (!z) {
            return fieldArr2;
        }
        Class superclass = cls.getSuperclass();
        for (int i2 = 0; superclass != null && i2 != i; i2++) {
            try {
                Field[] declaredFields2 = superclass.getDeclaredFields();
                int length3 = fieldArr2.length;
                int length4 = declaredFields2.length;
                Field[] fieldArr3 = new Field[length3 + length4];
                System.arraycopy(fieldArr2, 0, fieldArr3, 0, length3);
                System.arraycopy(declaredFields2, 0, fieldArr3, length3, length4);
                fieldArr2 = fieldArr3;
            } catch (Error unused3) {
            }
            try {
                Field[] fields2 = superclass.getFields();
                int length5 = fieldArr2.length;
                int length6 = fields2.length;
                Field[] fieldArr4 = new Field[length5 + length6];
                System.arraycopy(fieldArr2, 0, fieldArr4, 0, length5);
                System.arraycopy(fields2, 0, fieldArr4, length5, length6);
                fieldArr2 = fieldArr4;
            } catch (Error unused4) {
            }
            superclass = superclass.getSuperclass();
        }
        return fieldArr2;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0072  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void m1288(java.lang.Class r8, com.ironsource.adqualitysdk.sdk.i.C0489 r9, java.util.ArrayList r10) {
        /*
            com.ironsource.adqualitysdk.sdk.i.ᓓ r0 = r9.f2292
            if (r0 == 0) goto L10
            boolean r1 = r0.f864
            if (r1 == 0) goto L10
            int r0 = r0.f863
            r2 = 0
            java.lang.reflect.Field[] r8 = m1289(r8, r1, r0, r2)
            goto L19
        L10:
            java.lang.reflect.Field[] r8 = r8.getDeclaredFields()     // Catch: java.lang.Error -> L15
            goto L19
        L15:
            java.lang.reflect.Field[] r8 = r8.getFields()
        L19:
            int r0 = r8.length
            r1 = 0
            r2 = r1
        L1c:
            if (r2 >= r0) goto L7e
            r3 = r8[r2]
            com.ironsource.adqualitysdk.sdk.i.ᓓ r4 = r9.f2292
            r5 = 1
            if (r4 == 0) goto L72
            int r4 = r3.getModifiers()
            com.ironsource.adqualitysdk.sdk.i.ᓓ r6 = r9.f2292
            int r6 = r6.f862
            r4 = r4 & r6
            if (r4 != r6) goto L72
            int r4 = r3.getModifiers()
            com.ironsource.adqualitysdk.sdk.i.ᓓ r6 = r9.f2292
            int r7 = r6.f861
            r4 = r4 & r7
            if (r4 == 0) goto L3c
            goto L72
        L3c:
            java.util.ArrayList r4 = r6.f2359
            java.lang.Class r6 = r3.getType()
            boolean r4 = r4.contains(r6)
            if (r4 == 0) goto L49
            goto L72
        L49:
            com.ironsource.adqualitysdk.sdk.i.ᓓ r4 = r9.f2292
            boolean r6 = r4.f2360
            if (r6 == 0) goto L5c
            java.lang.Class r4 = r3.getType()
            com.ironsource.adqualitysdk.sdk.i.ᓓ r6 = r9.f2292
            java.lang.Class r6 = r6.f2362
            boolean r4 = r4.equals(r6)
            goto L66
        L5c:
            java.lang.Class r4 = r4.f2362
            java.lang.Class r6 = r3.getType()
            boolean r4 = r4.isAssignableFrom(r6)
        L66:
            if (r4 == 0) goto L72
            int r4 = r9.f2291
            if (r4 != 0) goto L6e
            r4 = r5
            goto L73
        L6e:
            int r4 = r4 + (-1)
            r9.f2291 = r4
        L72:
            r4 = r1
        L73:
            if (r4 == 0) goto L7b
            r3.setAccessible(r5)
            r10.add(r3)
        L7b:
            int r2 = r2 + 1
            goto L1c
        L7e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.C0486.m1288(java.lang.Class, com.ironsource.adqualitysdk.sdk.i.ᒐ, java.util.ArrayList):void");
    }
}
