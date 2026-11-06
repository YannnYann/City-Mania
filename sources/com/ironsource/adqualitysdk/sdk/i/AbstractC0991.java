package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0991 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final String f3784 = StringFog.decrypt("GQfPEq0CLpMkDPwKoQ0p\n", "S2KpfshhWvo=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final ConcurrentHashMap f3783 = new ConcurrentHashMap();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Method m1585(Object obj, String str, List list) {
        Method methodM1583;
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (obj2 != null) {
                arrayList.add(obj2.getClass());
            } else {
                arrayList.add(Object.class);
            }
        }
        C0091 c0091 = new C0091(obj, str, arrayList);
        ConcurrentHashMap concurrentHashMap = f3783;
        Method method = (Method) concurrentHashMap.get(c0091);
        if (method != null) {
            if (m1587(method.getParameterTypes(), list)) {
                return method;
            }
            AbstractC0923.m1543(f3784, StringFog.decrypt("93K8SkNUcOrGdKdLVlR07tFoq0ERGXL72m+qBQ==\n", "sgDOJTF0F48=\n") + c0091, null, null);
        }
        if (obj instanceof Class) {
            methodM1583 = m1583((Class) obj, str, list, true);
            if (methodM1583 == null) {
                methodM1583 = m1583(Class.class.getClass(), str, list, false);
            }
        } else {
            methodM1583 = m1583(obj.getClass(), str, list, false);
        }
        if (methodM1583 != null) {
            concurrentHashMap.put(c0091, methodM1583);
        }
        return methodM1583;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Method m1583(Class cls, String str, List list, boolean z) {
        for (Method method : cls.getMethods()) {
            if (method.getName().equals(str) && method.getParameterTypes().length == list.size() && Modifier.isStatic(method.getModifiers()) == z && m1587(method.getParameterTypes(), list)) {
                return method;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static boolean m1587(Class[] clsArr, List list) {
        int i = 0;
        while (true) {
            boolean zIsAssignableFrom = true;
            if (i >= clsArr.length) {
                return true;
            }
            Object obj = list.get(i);
            if (obj == null && !Object.class.isAssignableFrom(clsArr[i])) {
                break;
            }
            if (obj != null) {
                Class cls = clsArr[i];
                Class<?> cls2 = obj.getClass();
                if (!cls.isAssignableFrom(Byte.TYPE) || !cls2.isAssignableFrom(Byte.class)) {
                    Class<?> cls3 = Short.TYPE;
                    if ((!cls.isAssignableFrom(cls3) || !cls2.isAssignableFrom(Short.class)) && (!cls.isAssignableFrom(cls3) || !cls2.isAssignableFrom(Byte.class))) {
                        Class<?> cls4 = Integer.TYPE;
                        if ((!cls.isAssignableFrom(cls4) || !cls2.isAssignableFrom(Integer.class)) && ((!cls.isAssignableFrom(cls4) || !cls2.isAssignableFrom(Short.class)) && (!cls.isAssignableFrom(cls4) || !cls2.isAssignableFrom(Byte.class)))) {
                            Class<?> cls5 = Long.TYPE;
                            if ((!cls.isAssignableFrom(cls5) || !cls2.isAssignableFrom(Long.class)) && ((!cls.isAssignableFrom(cls5) || !cls2.isAssignableFrom(Integer.class)) && ((!cls.isAssignableFrom(cls5) || !cls2.isAssignableFrom(Short.class)) && (!cls.isAssignableFrom(cls5) || !cls2.isAssignableFrom(Byte.class))))) {
                                Class<?> cls6 = Float.TYPE;
                                if ((!cls.isAssignableFrom(cls6) || !cls2.isAssignableFrom(Float.class)) && ((!cls.isAssignableFrom(cls6) || !cls2.isAssignableFrom(Long.class)) && ((!cls.isAssignableFrom(cls6) || !cls2.isAssignableFrom(Integer.class)) && ((!cls.isAssignableFrom(cls6) || !cls2.isAssignableFrom(Short.class)) && (!cls.isAssignableFrom(cls6) || !cls2.isAssignableFrom(Byte.class)))))) {
                                    Class<?> cls7 = Double.TYPE;
                                    if ((!cls.isAssignableFrom(cls7) || !cls2.isAssignableFrom(Double.class)) && ((!cls.isAssignableFrom(cls7) || !cls2.isAssignableFrom(Float.class)) && ((!cls.isAssignableFrom(cls7) || !cls2.isAssignableFrom(Long.class)) && ((!cls.isAssignableFrom(cls7) || !cls2.isAssignableFrom(Integer.class)) && ((!cls.isAssignableFrom(cls7) || !cls2.isAssignableFrom(Short.class)) && ((!cls.isAssignableFrom(cls7) || !cls2.isAssignableFrom(Byte.class)) && (!cls.isAssignableFrom(Boolean.TYPE) || !cls2.isAssignableFrom(Boolean.class)))))))) {
                                        zIsAssignableFrom = cls.isAssignableFrom(cls2);
                                    }
                                }
                            }
                        }
                    }
                }
                if (!zIsAssignableFrom) {
                    break;
                }
            }
            i++;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.reflect.Method] */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Method m1584(Object obj, String str, ArrayList arrayList) {
        try {
            Class<?>[] clsArr = new Class[arrayList.size()];
            for (int i = 0; i < arrayList.size(); i++) {
                clsArr[i] = (Class) arrayList.get(i);
            }
            if (obj instanceof Class) {
                try {
                    obj = ((Class) obj).getMethod(str, clsArr);
                    return obj;
                } catch (NoSuchMethodException unused) {
                    return Class.class.getMethod(str, clsArr);
                }
            }
            return obj.getClass().getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            String str2 = f3784;
            StringBuilder sbM1349 = AbstractC0594.m1349("ohNk8Q==\n", "7HxE1lmCGVg=\n", new StringBuilder(), str);
            sbM1349.append(StringFog.decrypt("65JauHB98x3s1FioanG8H6PAFw==\n", "zLI33QQVnHk=\n"));
            sbM1349.append(obj);
            AbstractC0923.m1543(str2, sbM1349.toString(), e, null);
            return null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static boolean m1586(Class cls, List list) {
        if (list == null || list.isEmpty()) {
            return true;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if ((str.equals("") && (cls.getPackage() == null || cls.getPackage().getName().equals(""))) || (!str.equals("") && cls.getName().startsWith(str))) {
                return true;
            }
        }
        return !AbstractC0991.class.getName().startsWith(StringFog.decrypt("f/g82+RlVl1v+CSH7nIXUnjmJJThfk1K\n", "HJdR9Y0XOTM=\n")) && ((AbstractC0991.class.getPackage() == null && cls.getPackage() == null) || (AbstractC0991.class.getPackage() != null && AbstractC0991.class.getPackage().equals(cls.getPackage())));
    }
}
