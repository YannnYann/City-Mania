package info.flowersoft.theotown.util;

import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class JSONUtil {
    public static final Pattern PARAMETER_REGEX = Pattern.compile("(\\{[^\\}]*\\})");

    public static boolean contains(JSONArray jSONArray, Object obj) {
        if (jSONArray == null) {
            return false;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                Object obj2 = jSONArray.get(i);
                if (obj2 == null && obj == null) {
                    return true;
                }
                if (obj2 != null && obj2.equals(obj)) {
                    return true;
                }
            } catch (JSONException unused) {
            }
        }
        return false;
    }

    public static JSONArray optArrayOrSingle(JSONObject jSONObject, String str) {
        Object objOpt = jSONObject.opt(str);
        if (objOpt instanceof JSONArray) {
            return (JSONArray) objOpt;
        }
        if (objOpt == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(objOpt);
        return jSONArray;
    }

    public static JSONArray optArray(JSONObject jSONObject, String str) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null) {
            jSONArrayOptJSONArray = new JSONArray();
            try {
                jSONObject.put(str, jSONArrayOptJSONArray);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return jSONArrayOptJSONArray;
    }

    public static JSONObject optObject(JSONObject jSONObject, String str) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(str);
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
            try {
                jSONObject.put(str, jSONObjectOptJSONObject);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return jSONObjectOptJSONObject;
    }

    public static void mergeJSONObjects(JSONObject jSONObject, JSONObject jSONObject2, boolean z, boolean z2) throws JSONException {
        JSONArray jSONArrayNames = jSONObject2.names();
        if (jSONArrayNames != null) {
            for (int i = 0; i < jSONArrayNames.length(); i++) {
                String string = jSONArrayNames.getString(i);
                if ("$$remove".equals(string)) {
                    if (z) {
                        jSONObject.remove(string);
                    }
                } else if (!jSONObject.has(string) || z) {
                    jSONObject.put(string, deepCopyJSONValue(jSONObject2.get(string)));
                } else if (jSONObject.has(string) && z2) {
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(string);
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(string);
                    JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray(string);
                    JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject(string);
                    if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray2 != null) {
                        for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                            jSONArrayOptJSONArray.put(deepCopyJSONValue(jSONArrayOptJSONArray2.get(i2)));
                        }
                    } else if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject2 != null) {
                        mergeJSONObjects(jSONObjectOptJSONObject, jSONObjectOptJSONObject2, z, z2);
                    }
                }
            }
        }
    }

    public static void applyParameters(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        applyParameters(jSONObject, buildParametersMap(jSONObject2));
    }

    public static void applyParameters(JSONArray jSONArray, JSONObject jSONObject) throws JSONException {
        applyParameters(jSONArray, buildParametersMap(jSONObject));
    }

    public static void applyParameters(JSONObject jSONObject, Map<String, Object> map) throws JSONException {
        JSONArray jSONArrayNames = jSONObject.names();
        if (jSONArrayNames != null) {
            for (int i = 0; i < jSONArrayNames.length(); i++) {
                String string = jSONArrayNames.getString(i);
                Object obj = jSONObject.get(string);
                if (obj instanceof String) {
                    Object obj2 = map.get(obj);
                    if (obj2 != null) {
                        jSONObject.put(string, deepCopyJSONValue(obj2));
                    } else {
                        Matcher matcher = PARAMETER_REGEX.matcher((String) obj);
                        StringBuffer stringBuffer = new StringBuffer();
                        while (matcher.find()) {
                            String strGroup = matcher.group();
                            Object obj3 = map.get(strGroup.substring(1, strGroup.length() - 1));
                            if (obj3 != null && !(obj3 instanceof JSONObject) && !(obj3 instanceof JSONArray)) {
                                matcher.appendReplacement(stringBuffer, "" + obj3);
                            }
                        }
                        matcher.appendTail(stringBuffer);
                        jSONObject.put(string, stringBuffer.toString());
                    }
                } else if (obj instanceof JSONObject) {
                    applyParameters((JSONObject) obj, map);
                } else if (obj instanceof JSONArray) {
                    applyParameters((JSONArray) obj, map);
                }
            }
        }
    }

    public static void applyParameters(JSONArray jSONArray, Map<String, Object> map) throws JSONException {
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (obj instanceof String) {
                Object obj2 = map.get(obj);
                if (obj2 != null) {
                    jSONArray.put(i, deepCopyJSONValue(obj2));
                }
            } else if (obj instanceof JSONObject) {
                applyParameters((JSONObject) obj, map);
            } else if (obj instanceof JSONArray) {
                applyParameters((JSONArray) obj, map);
            }
        }
    }

    public static Map<String, Object> buildParametersMap(JSONObject jSONObject) throws JSONException {
        HashMap map = new HashMap();
        JSONArray jSONArrayNames = jSONObject.names();
        if (jSONArrayNames != null) {
            for (int i = 0; i < jSONArrayNames.length(); i++) {
                String string = jSONArrayNames.getString(i);
                map.put(string, jSONObject.get(string));
            }
        }
        return map;
    }

    public static JSONObject deepCopy(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        JSONArray jSONArrayNames = jSONObject.names();
        if (jSONArrayNames != null) {
            for (int i = 0; i < jSONArrayNames.length(); i++) {
                String string = jSONArrayNames.getString(i);
                jSONObject2.put(string, deepCopyJSONValue(jSONObject.get(string)));
            }
        }
        return jSONObject2;
    }

    public static JSONArray deepCopy(JSONArray jSONArray) throws JSONException {
        JSONArray jSONArray2 = new JSONArray();
        for (int i = 0; i < jSONArray.length(); i++) {
            jSONArray2.put(deepCopyJSONValue(jSONArray.get(i)));
        }
        return jSONArray2;
    }

    public static Object deepCopyJSONValue(Object obj) throws JSONException {
        if (obj instanceof JSONArray) {
            return deepCopy((JSONArray) obj);
        }
        return obj instanceof JSONObject ? deepCopy((JSONObject) obj) : obj;
    }
}
