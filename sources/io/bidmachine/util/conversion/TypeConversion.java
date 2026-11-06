package io.bidmachine.util.conversion;

/* JADX INFO: compiled from: TypeConversion.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface TypeConversion<T> {
    T toOrDefault(String str, T t);

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Object toOrDefault$default(TypeConversion typeConversion, String str, Object obj, int i, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toOrDefault");
        }
        if ((i & 2) != 0) {
            obj = null;
        }
        return typeConversion.toOrDefault(str, obj);
    }
}
