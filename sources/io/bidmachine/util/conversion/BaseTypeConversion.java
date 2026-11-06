package io.bidmachine.util.conversion;

/* JADX INFO: compiled from: BaseTypeConversion.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseTypeConversion<T> implements TypeConversion<T> {
    public abstract T to(Object obj);

    public abstract T to(String str);

    public T toOrDefault(Object obj, T t) {
        T t2;
        return (obj == null || (t2 = to(obj)) == null) ? t : t2;
    }

    @Override // io.bidmachine.util.conversion.TypeConversion
    public T toOrDefault(String str, T t) {
        T t2;
        return (str == null || (t2 = to(str)) == null) ? t : t2;
    }
}
