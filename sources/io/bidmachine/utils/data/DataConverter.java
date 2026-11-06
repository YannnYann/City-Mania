package io.bidmachine.utils.data;

/* JADX INFO: loaded from: classes5.dex */
public interface DataConverter {
    default boolean toBoolean(Object obj, boolean z) {
        Boolean booleanOrNull = toBooleanOrNull(obj);
        return booleanOrNull != null ? booleanOrNull.booleanValue() : z;
    }

    default Boolean toBooleanOrNull(Object obj) {
        return toBooleanOrNull(obj, null);
    }

    Boolean toBooleanOrNull(Object obj, Boolean bool);

    default Double toDoubleOrNull(Object obj) {
        return toDoubleOrNull(obj, null);
    }

    Double toDoubleOrNull(Object obj, Double d);

    default float toFloat(Object obj, float f) {
        Float floatOrNull = toFloatOrNull(obj);
        return floatOrNull != null ? floatOrNull.floatValue() : f;
    }

    default Float toFloatOrNull(Object obj) {
        return toFloatOrNull(obj, null);
    }

    Float toFloatOrNull(Object obj, Float f);

    default int toInteger(Object obj, int i) {
        Integer integerOrNull = toIntegerOrNull(obj);
        return integerOrNull != null ? integerOrNull.intValue() : i;
    }

    default Integer toIntegerOrNull(Object obj) {
        return toIntegerOrNull(obj, null);
    }

    Integer toIntegerOrNull(Object obj, Integer num);

    default String toStringOrNull(Object obj) {
        return toStringOrNull(obj, null);
    }

    String toStringOrNull(Object obj, String str);
}
