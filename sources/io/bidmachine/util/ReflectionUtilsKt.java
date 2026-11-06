package io.bidmachine.util;

import java.lang.reflect.Method;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReflectionUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ReflectionUtilsKt {
    public static final Object invokeMethod(Class<?> cls, String methodName, Class<?>[] parameterTypes, Object[] parameterObjects, Object obj) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(parameterTypes, "parameterTypes");
        Intrinsics.checkNotNullParameter(parameterObjects, "parameterObjects");
        Method declaredMethod = cls.getDeclaredMethod(methodName, (Class[]) Arrays.copyOf(parameterTypes, parameterTypes.length));
        declaredMethod.setAccessible(true);
        return declaredMethod.invoke(obj, Arrays.copyOf(parameterObjects, parameterObjects.length));
    }

    public static final Object findAndInvokeMethod(Class<?> cls, String methodName, Class<?>[] parameterTypes, Object[] parameterObjects, Object obj) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(parameterTypes, "parameterTypes");
        Intrinsics.checkNotNullParameter(parameterObjects, "parameterObjects");
        try {
            return invokeMethod(cls, methodName, parameterTypes, parameterObjects, obj);
        } catch (Throwable unused) {
            Class<? super Object> superclass = cls.getSuperclass();
            if (superclass != null) {
                return findAndInvokeMethod(superclass, methodName, parameterTypes, parameterObjects, obj);
            }
            return null;
        }
    }

    public static final Object findAndInvokeMethod(Object obj, String methodName, Class<?>[] parameterTypes, Object[] parameterObjects) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(parameterTypes, "parameterTypes");
        Intrinsics.checkNotNullParameter(parameterObjects, "parameterObjects");
        return findAndInvokeMethod(obj.getClass(), methodName, parameterTypes, parameterObjects, obj);
    }
}
