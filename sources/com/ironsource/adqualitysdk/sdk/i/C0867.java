package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.רּ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0867 implements InvocationHandler {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f3339 = StringFog.decrypt("6rr+gMInWXjsq++g5CVaZu++6a8=\n", "jd+KxKdENgo=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0337 f3340;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Object f3341;

    public C0867(Object obj, C0337 c0337) {
        this.f3341 = obj;
        this.f3340 = c0337;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        String name = method.getName();
        if (name.hashCode() == 1622498214) {
            String str = f3339;
            if (name.equals(str)) {
                try {
                    String name2 = method.getName();
                    if (name2.hashCode() == 1622498214 && name2.equals(str)) {
                        return this.f3341;
                    }
                    return null;
                } catch (Throwable th) {
                    AbstractC1003.m1592(StringFog.decrypt("BK89diY1RCo4rg==\n", "VN1SDl9gMEM=\n"), StringFog.decrypt("9uc/349pX2fF+ibV3ShSWMb0IdmJMBZk1uEl35lp\n", "s5VNsP1JNgk=\n") + method.getName(), th, true);
                    return null;
                }
            }
        }
        try {
            this.f3340.m1242(obj, method, objArr);
        } catch (Throwable th2) {
            String strDecrypt = StringFog.decrypt("MCnQ/xJ4QIMMKA==\n", "YFu/h2stNOo=\n");
            StringBuilder sb = new StringBuilder();
            sb.append(StringFog.decrypt("Zat8vM7C9ZBWtmW2nI71jVS8YLbO2Lw=\n", "INkO07zinP4=\n"));
            Object obj2 = this.f3341;
            sb.append(obj2 != null ? obj2.toString() : StringFog.decrypt("zxaZ7w==\n", "oWP1g0+D37U=\n"));
            sb.append(StringFog.decrypt("RQyrIwF9Vxg=\n", "ZWHOV2kSMyI=\n"));
            sb.append(method.getName());
            AbstractC1003.m1592(strDecrypt, sb.toString(), th2, true);
        }
        Object obj3 = this.f3341;
        if (obj3 != null) {
            return method.invoke(obj3, objArr);
        }
        if (!Object.class.equals(method.getDeclaringClass())) {
            return null;
        }
        if (objArr != null) {
            try {
                ArrayList arrayList = new ArrayList();
                for (Object obj4 : objArr) {
                    if (Proxy.isProxyClass(obj4.getClass())) {
                        arrayList.add(Proxy.getInvocationHandler(obj4));
                    } else {
                        arrayList.add(obj4);
                    }
                }
                objArr = arrayList.toArray();
            } catch (Throwable th3) {
                AbstractC1003.m1592(StringFog.decrypt("Svd3qY65AKd29g==\n", "GoUY0ffsdM4=\n"), StringFog.decrypt("2n9aLt7gc7zreUEvy+B9t+liSyDYqXu3v2xaJt8=\n", "nw0oQazAFNk=\n"), th3, true);
            }
        }
        return method.invoke(this, objArr);
    }
}
