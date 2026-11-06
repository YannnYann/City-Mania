package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᔥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0564 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f2509 = StringFog.decrypt("I9BfDNitR5QC1lAb\n", "bLI1abvZAf0=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final HashMap f2508 = new HashMap();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final InterfaceC0724 m1320(Object obj, C0638 c0638, int i, C0690 c0690) {
        Field[] fieldArrM1289;
        if (i != c0638.f2658.f2695.f2727 && obj != null && !c0638.f2656.contains(obj) && (i <= 0 || !(obj instanceof Activity))) {
            c0638.f2656.add(obj);
            try {
                t0 t0Var = c0638.f2658.f2693;
                if (t0Var != null) {
                    C0486 c0486 = C0725.m1432().f2974;
                    fieldArrM1289 = C0486.m1289(obj.getClass(), true, -1, t0Var.f381);
                } else {
                    Class<?> superclass = obj.getClass();
                    C0656 c0656 = c0638.f2658;
                    int i2 = C0656.m1411(i, c0656.f2695.f2725) ? c0656.f2695.f2724 : 0;
                    Field[] declaredFields = superclass.getDeclaredFields();
                    for (int i3 = 0; superclass != null && i3 != i2; i3++) {
                        superclass = superclass.getSuperclass();
                        if (superclass != null) {
                            Field[] declaredFields2 = superclass.getDeclaredFields();
                            String str = AbstractC0991.f3784;
                            int length = declaredFields.length;
                            int length2 = declaredFields2.length;
                            Field[] fieldArr = new Field[length + length2];
                            System.arraycopy(declaredFields, 0, fieldArr, 0, length);
                            System.arraycopy(declaredFields2, 0, fieldArr, length, length2);
                            declaredFields = fieldArr;
                        }
                    }
                    fieldArrM1289 = declaredFields;
                }
                C0484 c0484 = c0638.f2657;
                for (Field field : fieldArrM1289) {
                    field.setAccessible(true);
                    ((List) c0484.f2281.get(c0484.f2280)).add(field);
                    InterfaceC0724 interfaceC0724M1318 = m1318(new C0690(field, obj, c0690), c0638, i);
                    if (interfaceC0724M1318 != null && !c0638.f2655) {
                        return interfaceC0724M1318;
                    }
                    ((List) c0484.f2281.get(c0484.f2280)).remove(field);
                }
            } catch (Throwable th) {
                String str2 = this.f2509;
                AbstractC0182.m1156(str2, str2, StringFog.decrypt("JVHIeSB7YSgUV9N4NXtJLwpG2WIUMmMhBA==\n", "YCO6FlJbBk0=\n"), th, null, false);
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0086  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.ironsource.adqualitysdk.sdk.i.InterfaceC0724 m1319(com.ironsource.adqualitysdk.sdk.i.InterfaceC0724 r12, com.ironsource.adqualitysdk.sdk.i.C0484 r13, int r14) {
        /*
            r11 = this;
            java.util.ArrayList r0 = r13.f2281
            int r0 = r0.size()
            if (r14 >= r0) goto Lc4
            java.util.ArrayList r0 = r13.f2281
            java.lang.Object r0 = r0.get(r14)
            java.util.List r0 = (java.util.List) r0
            com.ironsource.adqualitysdk.sdk.i.ᵖ r12 = (com.ironsource.adqualitysdk.sdk.i.C0690) r12
            java.lang.Object r1 = r12.m1420()
            r2 = 1
            java.util.ArrayList r3 = m1317(r1, r2, r2, r2)
            r4 = 0
            if (r3 != 0) goto L3f
            java.lang.String r12 = r11.f2509
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            java.lang.String r14 = "nsR6lDKwih37/2WdPaGMDbLTZNE+ts80uswm0SOhjByyym+VcQ==\n"
            java.lang.String r0 = "27wK8VHE73k=\n"
            java.lang.String r14 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r14, r0)
            r13.append(r14)
            java.lang.Class r14 = r1.getClass()
            r13.append(r14)
            java.lang.String r13 = r13.toString()
            com.ironsource.adqualitysdk.sdk.i.AbstractC0182.m1147(r12, r13)
            return r4
        L3f:
            java.util.Iterator r3 = r3.iterator()
        L43:
            boolean r5 = r3.hasNext()
            if (r5 == 0) goto Lc3
            java.lang.Object r5 = r3.next()
            if (r1 == 0) goto L86
            boolean r6 = r1 instanceof java.util.Collection     // Catch: java.lang.Exception -> L43
            if (r6 == 0) goto L5c
            com.ironsource.adqualitysdk.sdk.i.ᵖ r6 = new com.ironsource.adqualitysdk.sdk.i.ᵖ     // Catch: java.lang.Exception -> L43
            r7 = r1
            java.util.Collection r7 = (java.util.Collection) r7     // Catch: java.lang.Exception -> L43
            r6.<init>(r7, r5, r12)     // Catch: java.lang.Exception -> L43
            goto L87
        L5c:
            boolean r6 = r1 instanceof java.util.Map     // Catch: java.lang.Exception -> L43
            if (r6 == 0) goto L69
            com.ironsource.adqualitysdk.sdk.i.ᵖ r6 = new com.ironsource.adqualitysdk.sdk.i.ᵖ     // Catch: java.lang.Exception -> L43
            r7 = r1
            java.util.Map r7 = (java.util.Map) r7     // Catch: java.lang.Exception -> L43
            r6.<init>(r7, r5, r12)     // Catch: java.lang.Exception -> L43
            goto L87
        L69:
            java.lang.Class r6 = r1.getClass()     // Catch: java.lang.Exception -> L43
            boolean r6 = r6.isArray()     // Catch: java.lang.Exception -> L43
            if (r6 == 0) goto L86
            com.ironsource.adqualitysdk.sdk.i.ᵖ r6 = new com.ironsource.adqualitysdk.sdk.i.ᵖ     // Catch: java.lang.Exception -> L43
            java.util.ArrayList r7 = new java.util.ArrayList     // Catch: java.lang.Exception -> L43
            java.lang.Object[] r8 = new java.lang.Object[]{r1}     // Catch: java.lang.Exception -> L43
            java.util.List r8 = java.util.Arrays.asList(r8)     // Catch: java.lang.Exception -> L43
            r7.<init>(r8)     // Catch: java.lang.Exception -> L43
            r6.<init>(r7, r5, r12)     // Catch: java.lang.Exception -> L43
            goto L87
        L86:
            r6 = r4
        L87:
            java.util.Iterator r7 = r0.iterator()     // Catch: java.lang.Exception -> L43
        L8b:
            boolean r8 = r7.hasNext()     // Catch: java.lang.Exception -> L43
            if (r8 == 0) goto Lba
            java.lang.Object r8 = r7.next()     // Catch: java.lang.Exception -> L43
            java.lang.reflect.Field r8 = (java.lang.reflect.Field) r8     // Catch: java.lang.Exception -> L43
            java.lang.Class<java.lang.ref.WeakReference> r9 = java.lang.ref.WeakReference.class
            java.lang.Class r10 = r8.getType()     // Catch: java.lang.Exception -> L43
            boolean r9 = r9.isAssignableFrom(r10)     // Catch: java.lang.Exception -> L43
            if (r9 == 0) goto Lae
            java.lang.Object r9 = r8.get(r5)     // Catch: java.lang.Exception -> L43
            java.lang.ref.WeakReference r9 = (java.lang.ref.WeakReference) r9     // Catch: java.lang.Exception -> L43
            java.lang.Object r9 = r9.get()     // Catch: java.lang.Exception -> L43
            goto Lb2
        Lae:
            java.lang.Object r9 = r8.get(r5)     // Catch: java.lang.Exception -> L43
        Lb2:
            com.ironsource.adqualitysdk.sdk.i.ᵖ r10 = new com.ironsource.adqualitysdk.sdk.i.ᵖ     // Catch: java.lang.Exception -> L43
            r10.<init>(r8, r5, r6)     // Catch: java.lang.Exception -> L43
            r5 = r9
            r6 = r10
            goto L8b
        Lba:
            if (r6 == 0) goto L43
            int r5 = r14 + 1
            com.ironsource.adqualitysdk.sdk.i.ṙ r12 = r11.m1319(r6, r13, r5)     // Catch: java.lang.Exception -> L43
            return r12
        Lc3:
            return r4
        Lc4:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.C0564.m1319(com.ironsource.adqualitysdk.sdk.i.ṙ, com.ironsource.adqualitysdk.sdk.i.ᒋ, int):com.ironsource.adqualitysdk.sdk.i.ṙ");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final InterfaceC0724 m1321(Object obj, C0656 c0656) {
        InterfaceC0724 interfaceC0724M1319;
        boolean zMo1040;
        Object obj2;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Class<?> cls = obj.getClass();
        C0667 c0667 = c0656.f2695;
        c0667.f2731 = cls;
        C0484 c0484 = (C0484) this.f2508.get(c0667);
        if (c0484 != null) {
            try {
                Object obj3 = obj;
                C0690 c0690 = null;
                for (Field field : (List) c0484.f2281.get(0)) {
                    if (WeakReference.class.isAssignableFrom(field.getType())) {
                        obj2 = ((WeakReference) field.get(obj3)).get();
                    } else {
                        obj2 = field.get(obj3);
                    }
                    C0690 c06902 = new C0690(field, obj3, c0690);
                    obj3 = obj2;
                    c0690 = c06902;
                }
                interfaceC0724M1319 = m1319(c0690, c0484, 1);
            } catch (Exception e) {
                String str = this.f2509;
                AbstractC0182.m1156(str, str, StringFog.decrypt("qmo/kNDox1CbbCSRxejvV4V9LovkocVZizgrjc2lgEWObCU=\n", "7xhN/6LIoDU=\n"), e, null, false);
                interfaceC0724M1319 = null;
            }
            if (interfaceC0724M1319 != null) {
                try {
                    zMo1040 = c0656.f2694.mo1040(interfaceC0724M1319);
                } catch (Exception unused) {
                    zMo1040 = false;
                }
                if (zMo1040) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(StringFog.decrypt("HYmEA6+aVt0Ui9Edqs5YjxKI0Q==\n", "e+bxbcu6MK8=\n"));
                    sb.append(System.currentTimeMillis() - jCurrentTimeMillis);
                    m1322(interfaceC0724M1319, obj, AbstractC0829.m1456("u8E=\n", "1rIJSeDTjMI=\n", sb));
                    return interfaceC0724M1319;
                }
            }
            AbstractC0182.m1147(this.f2509, obj + StringFog.decrypt("07ZcBlBIKpOA5V8=\n", "6ZYsZyQgCv4=\n"));
            this.f2508.remove(c0667);
        }
        C0638 c0638 = new C0638(c0656);
        InterfaceC0724 interfaceC0724M1320 = m1320(obj, c0638, 0, (C0690) null);
        if (interfaceC0724M1320 != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(StringFog.decrypt("pM6Rz5o0CGvi\n", "wqHkof4UYQU=\n"));
            sb2.append(System.currentTimeMillis() - jCurrentTimeMillis);
            sb2.append(StringFog.decrypt("aMyFww==\n", "Bb+p43D5UmQ=\n"));
            sb2.append(c0638.f2656.size());
            m1322(interfaceC0724M1320, obj, AbstractC0829.m1456("O/cDHHYnAdo78Q9WYCEB\n", "G5hhdhNEdak=\n", sb2));
            this.f2508.put(c0667, c0638.f2657);
            return interfaceC0724M1320;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(StringFog.decrypt("Fya+VTgPJGcdaaMbfg==\n", "eUnKdV5gUQk=\n"));
        sb3.append(System.currentTimeMillis() - jCurrentTimeMillis);
        sb3.append(StringFog.decrypt("xTSX/Q==\n", "qEe73RuPBlU=\n"));
        sb3.append(c0638.f2656.size());
        m1322((InterfaceC0724) null, obj, AbstractC0829.m1456("InLnEyuEslIidOtZPYKy\n", "Ah2FeU7nxiE=\n", sb3));
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x010f  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.ironsource.adqualitysdk.sdk.i.InterfaceC0724 m1318(com.ironsource.adqualitysdk.sdk.i.C0690 r9, com.ironsource.adqualitysdk.sdk.i.C0638 r10, int r11) {
        /*
            Method dump skipped, instruction units count: 315
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.C0564.m1318(com.ironsource.adqualitysdk.sdk.i.ᵖ, com.ironsource.adqualitysdk.sdk.i.ᴗ, int):com.ironsource.adqualitysdk.sdk.i.ṙ");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static ArrayList m1317(Object obj, boolean z, boolean z2, boolean z3) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Collection) && z) {
            return new ArrayList((Collection) obj);
        }
        if (obj.getClass().isArray() && z3) {
            return new ArrayList(Arrays.asList(obj));
        }
        if (!(obj instanceof Map) || !z2) {
            return null;
        }
        Map map = (Map) obj;
        ArrayList arrayList = new ArrayList(map.values());
        arrayList.addAll(map.keySet());
        return arrayList;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1316(Object obj, Class cls, String str) {
        String str2;
        if (cls == null || cls.equals(Object.class)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Field field : cls.getDeclaredFields()) {
            if (field.getType().equals(String.class)) {
                arrayList.add(field);
            }
        }
        for (Field field2 : (Field[]) arrayList.toArray(new Field[0])) {
            field2.setAccessible(true);
            try {
                str2 = (String) field2.get(obj);
            } catch (Exception unused) {
            }
            if (str2 != null && Pattern.compile(str).matcher(str2).matches()) {
                return str2;
            }
        }
        return m1316(obj, cls.getSuperclass(), str);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1322(InterfaceC0724 interfaceC0724, Object obj, String str) {
        if (interfaceC0724 != null) {
            String str2 = this.f2509;
            StringBuilder sb = new StringBuilder();
            sb.append(obj);
            StringBuilder sbM1349 = AbstractC0594.m1349("7qs=\n", "1Iur6KRLbI8=\n", sb, str);
            sbM1349.append(StringFog.decrypt("BstZMwHUoGg=\n", "KusvUm2hxUg=\n"));
            sbM1349.append(((C0690) interfaceC0724).m1420());
            AbstractC0182.m1148(str2, sbM1349.toString());
            return;
        }
        AbstractC0182.m1148(this.f2509, obj + StringFog.decrypt("pUc=\n", "n2c4MkhxNuE=\n") + str);
    }
}
