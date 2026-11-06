package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ڐ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0337 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0129 f1926;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0048 f1927;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ boolean f1928;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ String f1929;

    public C0337(C0129 c0129, String str, boolean z, C0048 c0048) {
        this.f1926 = c0129;
        this.f1929 = str;
        this.f1928 = z;
        this.f1927 = c0048;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1242(Object obj, Method method, Object[] objArr) {
        if (method != null) {
            try {
                String str = this.f1929 + StringFog.decrypt("Dg==\n", "IO9Te7m1vM0=\n") + method.getName();
                ArrayList arrayListM1121 = C0129.m1121(this.f1926, objArr != null ? Arrays.asList(objArr) : new ArrayList(), new Object[]{(InterfaceC0445) obj});
                ArrayList arrayList = new ArrayList();
                if (this.f1928) {
                    arrayList.add(arrayListM1121);
                    arrayListM1121 = arrayList;
                }
                C0875 c0875 = this.f1927.f650;
                C0048.m1057(c0875.f3359, str, true, false, arrayListM1121);
                C0048 c0048 = c0875.f3359;
                C0933 c0933 = new C0933(c0875, str, false, arrayListM1121);
                c0048.getClass();
                try {
                    AbstractC0272.m1214(c0933);
                } catch (Throwable unused) {
                }
                C0048 c00482 = c0875.f3359;
                C0933 c09332 = new C0933(c0875, str, true, arrayListM1121);
                c00482.getClass();
                try {
                    AbstractC0272.m1212(new C0632(c09332));
                } catch (Throwable unused2) {
                }
            } catch (Throwable th) {
                String strM1060 = this.f1927.m1060();
                StringBuilder sb = new StringBuilder();
                sb.append(StringFog.decrypt("zMYIeFJ5zkb/2xF+Tj6H\n", "ibR6FyBZpyg=\n"));
                sb.append(method.getName());
                sb.append(StringFog.decrypt("7Y/dGEZQlL2ijJg=\n", "zeK4bC4/8J0=\n"));
                sb.append(this.f1929);
                AbstractC1003.m1592(strM1060, AbstractC0829.m1456("BtGuOeE3ArpU\n", "Jr3HSpVSbN8=\n", sb), th, false);
            }
        }
    }
}
