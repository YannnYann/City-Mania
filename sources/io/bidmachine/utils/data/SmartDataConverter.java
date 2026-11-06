package io.bidmachine.utils.data;

import io.bidmachine.core.Logger;

/* JADX INFO: loaded from: classes5.dex */
public class SmartDataConverter implements DataConverter {
    public final DataConverter castDataConverter = new CastDataConverter();

    @Override // io.bidmachine.utils.data.DataConverter
    public Boolean toBooleanOrNull(Object obj, Boolean bool) {
        if (obj != null) {
            Boolean booleanOrNull = this.castDataConverter.toBooleanOrNull(obj);
            if (booleanOrNull != null) {
                return booleanOrNull;
            }
            String stringOrNull = this.castDataConverter.toStringOrNull(obj);
            if (stringOrNull != null) {
                try {
                    return Boolean.valueOf(stringOrNull);
                } catch (Exception e) {
                    Logger.w(e);
                    return bool;
                }
            }
        }
        return bool;
    }

    @Override // io.bidmachine.utils.data.DataConverter
    public Double toDoubleOrNull(Object obj, Double d) {
        if (obj != null) {
            Double doubleOrNull = this.castDataConverter.toDoubleOrNull(obj);
            if (doubleOrNull != null) {
                return doubleOrNull;
            }
            Integer integerOrNull = this.castDataConverter.toIntegerOrNull(obj);
            if (integerOrNull != null) {
                return Double.valueOf(integerOrNull.doubleValue());
            }
            String stringOrNull = toStringOrNull(obj);
            if (stringOrNull != null) {
                try {
                    return Double.valueOf(stringOrNull);
                } catch (Exception e) {
                    Logger.w(e);
                }
            }
        }
        return d;
    }

    @Override // io.bidmachine.utils.data.DataConverter
    public Float toFloatOrNull(Object obj, Float f) {
        if (obj != null) {
            Float floatOrNull = this.castDataConverter.toFloatOrNull(obj);
            if (floatOrNull != null) {
                return floatOrNull;
            }
            Integer integerOrNull = this.castDataConverter.toIntegerOrNull(obj);
            if (integerOrNull != null) {
                return Float.valueOf(integerOrNull.floatValue());
            }
            String stringOrNull = toStringOrNull(obj);
            if (stringOrNull != null) {
                try {
                    return Float.valueOf(stringOrNull);
                } catch (Exception e) {
                    Logger.w(e);
                }
            }
        }
        return f;
    }

    @Override // io.bidmachine.utils.data.DataConverter
    public Integer toIntegerOrNull(Object obj, Integer num) {
        if (obj != null) {
            Integer integerOrNull = this.castDataConverter.toIntegerOrNull(obj);
            if (integerOrNull != null) {
                return integerOrNull;
            }
            Double doubleOrNull = this.castDataConverter.toDoubleOrNull(obj);
            if (doubleOrNull != null) {
                return Integer.valueOf(doubleOrNull.intValue());
            }
            Float floatOrNull = this.castDataConverter.toFloatOrNull(obj);
            if (floatOrNull != null) {
                return Integer.valueOf(floatOrNull.intValue());
            }
            String stringOrNull = this.castDataConverter.toStringOrNull(obj);
            if (stringOrNull != null) {
                try {
                    return Integer.valueOf(stringOrNull);
                } catch (Exception e) {
                    Logger.w(e);
                }
            }
        }
        return num;
    }

    @Override // io.bidmachine.utils.data.DataConverter
    public String toStringOrNull(Object obj, String str) {
        if (obj == null) {
            return str;
        }
        String stringOrNull = this.castDataConverter.toStringOrNull(obj);
        if (stringOrNull != null) {
            return stringOrNull;
        }
        try {
            return String.valueOf(obj);
        } catch (Exception e) {
            Logger.w(e);
            return str;
        }
    }
}
