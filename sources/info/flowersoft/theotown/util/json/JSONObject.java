package info.flowersoft.theotown.util.json;

import info.flowersoft.theotown.util.json.JSONStringer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class JSONObject {
    public static final Double NEGATIVE_ZERO = Double.valueOf(-0.0d);
    public static final Object NULL = new Object() { // from class: info.flowersoft.theotown.util.json.JSONObject.1
        public boolean equals(Object obj) {
            return obj == this || obj == null;
        }

        public String toString() {
            return "null";
        }
    };
    public final Map<String, Object> nameValuePairs;

    public JSONObject() {
        this.nameValuePairs = new LinkedHashMap();
    }

    public JSONObject(Map map) {
        this();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            str.getClass();
            this.nameValuePairs.put(str, entry.getValue());
        }
    }

    public JSONObject(JSONTokener jSONTokener) throws JSONException {
        Object objNextValue = jSONTokener.nextValue();
        if (objNextValue instanceof JSONObject) {
            this.nameValuePairs = ((JSONObject) objNextValue).nameValuePairs;
            return;
        }
        throw JSON.typeMismatch(objNextValue, "JSONObject");
    }

    public JSONObject(String str) throws JSONException {
        this(new JSONTokener(str));
    }

    public JSONObject(JSONObject jSONObject, String[] strArr) throws JSONException {
        this();
        for (String str : strArr) {
            Object objOpt = jSONObject.opt(str);
            if (objOpt != null) {
                this.nameValuePairs.put(str, objOpt);
            }
        }
    }

    public int length() {
        return this.nameValuePairs.size();
    }

    public JSONObject put(String str, boolean z) throws JSONException {
        this.nameValuePairs.put(checkName(str), Boolean.valueOf(z));
        return this;
    }

    public JSONObject put(String str, double d) throws JSONException {
        this.nameValuePairs.put(checkName(str), Double.valueOf(JSON.checkDouble(d)));
        return this;
    }

    public JSONObject put(String str, int i) throws JSONException {
        this.nameValuePairs.put(checkName(str), Integer.valueOf(i));
        return this;
    }

    public JSONObject put(String str, long j) throws JSONException {
        this.nameValuePairs.put(checkName(str), Long.valueOf(j));
        return this;
    }

    public JSONObject put(String str, Object obj) throws JSONException {
        if (obj == null) {
            this.nameValuePairs.remove(str);
            return this;
        }
        if (obj instanceof Number) {
            JSON.checkDouble(((Number) obj).doubleValue());
        }
        this.nameValuePairs.put(checkName(str), obj);
        return this;
    }

    public JSONObject putOpt(String str, Object obj) throws JSONException {
        return (str == null || obj == null) ? this : put(str, obj);
    }

    public JSONObject accumulate(String str, Object obj) throws JSONException {
        Object obj2 = this.nameValuePairs.get(checkName(str));
        if (obj2 == null) {
            return put(str, obj);
        }
        if (obj instanceof Number) {
            JSON.checkDouble(((Number) obj).doubleValue());
        }
        if (obj2 instanceof JSONArray) {
            ((JSONArray) obj2).put(obj);
            return this;
        }
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(obj2);
        jSONArray.put(obj);
        this.nameValuePairs.put(str, jSONArray);
        return this;
    }

    public String checkName(String str) throws JSONException {
        if (str != null) {
            return str;
        }
        throw new JSONException("Names must be non-null");
    }

    public Object remove(String str) {
        return this.nameValuePairs.remove(str);
    }

    public boolean isNull(String str) {
        Object obj = this.nameValuePairs.get(str);
        return obj == null || obj == NULL;
    }

    public boolean has(String str) {
        return this.nameValuePairs.containsKey(str);
    }

    public Object get(String str) throws JSONException {
        Object obj = this.nameValuePairs.get(str);
        if (obj != null) {
            return obj;
        }
        throw new JSONException("No value for " + str);
    }

    public Object opt(String str) {
        return this.nameValuePairs.get(str);
    }

    public boolean getBoolean(String str) throws JSONException {
        Object obj = get(str);
        Boolean bool = JSON.toBoolean(obj);
        if (bool == null) {
            throw JSON.typeMismatch(str, obj, "boolean");
        }
        return bool.booleanValue();
    }

    public boolean optBoolean(String str) {
        return optBoolean(str, false);
    }

    public boolean optBoolean(String str, boolean z) {
        Boolean bool = JSON.toBoolean(opt(str));
        return bool != null ? bool.booleanValue() : z;
    }

    public double getDouble(String str) throws JSONException {
        Object obj = get(str);
        Double d = JSON.toDouble(obj);
        if (d == null) {
            throw JSON.typeMismatch(str, obj, "double");
        }
        return d.doubleValue();
    }

    public double optDouble(String str) {
        return optDouble(str, Double.NaN);
    }

    public double optDouble(String str, double d) {
        Double d2 = JSON.toDouble(opt(str));
        return d2 != null ? d2.doubleValue() : d;
    }

    public int getInt(String str) throws JSONException {
        Object obj = get(str);
        Integer integer = JSON.toInteger(obj);
        if (integer == null) {
            throw JSON.typeMismatch(str, obj, "int");
        }
        return integer.intValue();
    }

    public int optInt(String str) {
        return optInt(str, 0);
    }

    public int optInt(String str, int i) {
        Integer integer = JSON.toInteger(opt(str));
        return integer != null ? integer.intValue() : i;
    }

    public long getLong(String str) throws JSONException {
        Object obj = get(str);
        Long l = JSON.toLong(obj);
        if (l == null) {
            throw JSON.typeMismatch(str, obj, "long");
        }
        return l.longValue();
    }

    public long optLong(String str) {
        return optLong(str, 0L);
    }

    public long optLong(String str, long j) {
        Long l = JSON.toLong(opt(str));
        return l != null ? l.longValue() : j;
    }

    public String getString(String str) throws JSONException {
        Object obj = get(str);
        String string = JSON.toString(obj);
        if (string != null) {
            return string;
        }
        throw JSON.typeMismatch(str, obj, "String");
    }

    public String optString(String str) {
        return optString(str, "");
    }

    public String optString(String str, String str2) {
        String string = JSON.toString(opt(str));
        return string != null ? string : str2;
    }

    public JSONArray getJSONArray(String str) throws JSONException {
        Object obj = get(str);
        if (obj instanceof JSONArray) {
            return (JSONArray) obj;
        }
        throw JSON.typeMismatch(str, obj, "JSONArray");
    }

    public JSONArray optJSONArray(String str) {
        Object objOpt = opt(str);
        if (objOpt instanceof JSONArray) {
            return (JSONArray) objOpt;
        }
        return null;
    }

    public JSONObject getJSONObject(String str) throws JSONException {
        Object obj = get(str);
        if (obj instanceof JSONObject) {
            return (JSONObject) obj;
        }
        throw JSON.typeMismatch(str, obj, "JSONObject");
    }

    public JSONObject optJSONObject(String str) {
        Object objOpt = opt(str);
        if (objOpt instanceof JSONObject) {
            return (JSONObject) objOpt;
        }
        return null;
    }

    public JSONArray toJSONArray(JSONArray jSONArray) throws JSONException {
        int length;
        JSONArray jSONArray2 = new JSONArray();
        if (jSONArray == null || (length = jSONArray.length()) == 0) {
            return null;
        }
        for (int i = 0; i < length; i++) {
            jSONArray2.put(opt(JSON.toString(jSONArray.opt(i))));
        }
        return jSONArray2;
    }

    public Iterator<String> keys() {
        return this.nameValuePairs.keySet().iterator();
    }

    public JSONArray names() {
        if (this.nameValuePairs.isEmpty()) {
            return null;
        }
        return new JSONArray(new ArrayList(this.nameValuePairs.keySet()));
    }

    public JSONObject copy() {
        return new JSONObject(this.nameValuePairs);
    }

    public String toString() {
        try {
            JSONStringer jSONStringer = new JSONStringer();
            writeTo(jSONStringer);
            return jSONStringer.toString();
        } catch (JSONException unused) {
            return null;
        }
    }

    public String toString(int i) throws JSONException {
        JSONStringer jSONStringer = new JSONStringer(i);
        writeTo(jSONStringer);
        return jSONStringer.toString();
    }

    public void writeTo(JSONStringer jSONStringer) throws JSONException {
        jSONStringer.object();
        for (Map.Entry<String, Object> entry : this.nameValuePairs.entrySet()) {
            jSONStringer.key(entry.getKey()).value(entry.getValue());
        }
        jSONStringer.endObject();
    }

    public static String numberToString(Number number) throws JSONException {
        if (number == null) {
            throw new JSONException("Number must be non-null");
        }
        double dDoubleValue = number.doubleValue();
        JSON.checkDouble(dDoubleValue);
        if (number.equals(NEGATIVE_ZERO)) {
            return "-0";
        }
        long jLongValue = number.longValue();
        if (dDoubleValue == jLongValue) {
            return Long.toString(jLongValue);
        }
        return number.toString();
    }

    public static String quote(String str) {
        if (str == null) {
            return "\"\"";
        }
        try {
            JSONStringer jSONStringer = new JSONStringer();
            JSONStringer.Scope scope = JSONStringer.Scope.NULL;
            jSONStringer.open(scope, "");
            jSONStringer.value(str);
            jSONStringer.close(scope, scope, "");
            return jSONStringer.toString();
        } catch (JSONException unused) {
            throw new AssertionError();
        }
    }
}
