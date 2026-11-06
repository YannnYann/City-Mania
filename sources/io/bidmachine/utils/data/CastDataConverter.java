package io.bidmachine.utils.data;

/* JADX INFO: loaded from: classes5.dex */
public class CastDataConverter implements DataConverter {
    @Override // io.bidmachine.utils.data.DataConverter
    public Boolean toBooleanOrNull(Object obj, Boolean bool) {
        return obj instanceof Boolean ? (Boolean) obj : bool;
    }

    @Override // io.bidmachine.utils.data.DataConverter
    public Double toDoubleOrNull(Object obj, Double d) {
        return obj instanceof Double ? (Double) obj : d;
    }

    @Override // io.bidmachine.utils.data.DataConverter
    public Float toFloatOrNull(Object obj, Float f) {
        return obj instanceof Float ? (Float) obj : f;
    }

    @Override // io.bidmachine.utils.data.DataConverter
    public Integer toIntegerOrNull(Object obj, Integer num) {
        return obj instanceof Integer ? (Integer) obj : num;
    }

    @Override // io.bidmachine.utils.data.DataConverter
    public String toStringOrNull(Object obj, String str) {
        return obj instanceof String ? (String) obj : str;
    }
}
