package kotlin.jvm.internal;

import com.ironsource.C3522b4;
import java.io.IOException;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Method;
import kotlin.reflect.KDeclarationContainer;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: KotlinGenericDeclaration.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KotlinGenericDeclarationKt {
    public static final GenericDeclaration findMethodBySignature(KDeclarationContainer kDeclarationContainer, String signature) {
        Intrinsics.checkNotNullParameter(signature, "signature");
        if (!(kDeclarationContainer instanceof ClassBasedDeclarationContainer)) {
            return null;
        }
        String strSubstringBefore$default = StringsKt__StringsKt.substringBefore$default(signature, '(', (String) null, 2, (Object) null);
        if (Intrinsics.areEqual(strSubstringBefore$default, "<init>")) {
            throw new UnsupportedOperationException("Generic Java constructors are not supported: " + kDeclarationContainer + '/' + signature);
        }
        Method[] declaredMethods = ((ClassBasedDeclarationContainer) kDeclarationContainer).getJClass().getDeclaredMethods();
        Intrinsics.checkNotNullExpressionValue(declaredMethods, "getDeclaredMethods(...)");
        for (Method method : declaredMethods) {
            if (Intrinsics.areEqual(method.getName(), strSubstringBefore$default)) {
                Intrinsics.checkNotNull(method);
                if (Intrinsics.areEqual(computeMethodSignature(method), signature)) {
                    return method;
                }
            }
        }
        return null;
    }

    public static final String computeMethodSignature(Method method) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append(method.getName());
        sb.append("(");
        Class<?>[] parameterTypes = method.getParameterTypes();
        Intrinsics.checkNotNullExpressionValue(parameterTypes, "getParameterTypes(...)");
        for (Class<?> cls : parameterTypes) {
            Intrinsics.checkNotNull(cls);
            appendClass(sb, cls);
        }
        sb.append(")");
        Class<?> returnType = method.getReturnType();
        Intrinsics.checkNotNullExpressionValue(returnType, "getReturnType(...)");
        appendClass(sb, returnType);
        return sb.toString();
    }

    public static final void appendClass(Appendable appendable, Class<?> cls) throws IOException {
        while (cls.isArray()) {
            appendable.append(C3522b4.j.d);
            cls = cls.getComponentType();
            Intrinsics.checkNotNullExpressionValue(cls, "getComponentType(...)");
        }
        if (Intrinsics.areEqual(cls, Void.TYPE)) {
            appendable.append("V");
            return;
        }
        if (Intrinsics.areEqual(cls, Integer.TYPE)) {
            appendable.append("I");
            return;
        }
        if (Intrinsics.areEqual(cls, Long.TYPE)) {
            appendable.append("J");
            return;
        }
        if (Intrinsics.areEqual(cls, Short.TYPE)) {
            appendable.append("S");
            return;
        }
        if (Intrinsics.areEqual(cls, Byte.TYPE)) {
            appendable.append("B");
            return;
        }
        if (Intrinsics.areEqual(cls, Boolean.TYPE)) {
            appendable.append("Z");
            return;
        }
        if (Intrinsics.areEqual(cls, Character.TYPE)) {
            appendable.append("C");
            return;
        }
        if (Intrinsics.areEqual(cls, Float.TYPE)) {
            appendable.append("F");
            return;
        }
        if (Intrinsics.areEqual(cls, Double.TYPE)) {
            appendable.append("D");
            return;
        }
        appendable.append("L");
        String name = cls.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        appendable.append(StringsKt__StringsJVMKt.replace$default(name, '.', '/', false, 4, (Object) null));
        appendable.append(";");
    }
}
