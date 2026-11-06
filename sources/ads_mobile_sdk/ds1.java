package ads_mobile_sdk;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.common.base.Splitter;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonPrimitive;
import com.ironsource.C3522b4;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes.dex */
public final class ds1 {
    public static final ds1 a = new ds1();

    static {
        CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"true", "t", "yes", "y", "1"});
    }

    public static void a(JsonObject jsonObject, String key, JsonElement jsonElement) {
        Intrinsics.checkNotNullParameter(jsonObject, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        if (jsonElement == null || jsonElement.isJsonNull()) {
            return;
        }
        jsonObject.add(key, jsonElement);
    }

    public static Bundle b(JsonObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "<this>");
        Bundle bundleC = c(jsonObject);
        return bundleC == null ? new Bundle() : bundleC;
    }

    public static long g(JsonObject jsonObject, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (jsonObject == null) {
            return 0L;
        }
        try {
            Intrinsics.checkNotNullParameter(jsonObject, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            return jsonObject.get(key).getAsLong();
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static JsonArray e(JsonObject jsonObject, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (jsonObject == null) {
            return null;
        }
        try {
            return jsonObject.getAsJsonArray(key);
        } catch (Exception unused) {
            return null;
        }
    }

    public static JsonObject b(JsonObject jsonObject, String key) {
        Intrinsics.checkNotNullParameter(jsonObject, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        JsonObject jsonObjectA = a(jsonObject, key, (JsonObject) null);
        if (jsonObjectA != null) {
            return jsonObjectA;
        }
        JsonObject jsonObject2 = new JsonObject();
        jsonObject.add(key, jsonObject2);
        return jsonObject2;
    }

    public static Bundle c(JsonObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "<this>");
        try {
            Bundle bundle = new Bundle();
            for (String str : jsonObject.keySet()) {
                JsonElement jsonElement = jsonObject.get(str);
                if (jsonElement.isJsonPrimitive()) {
                    JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
                    Intrinsics.checkNotNullExpressionValue(asJsonPrimitive, "getAsJsonPrimitive(...)");
                    Intrinsics.checkNotNull(str);
                    a(asJsonPrimitive, bundle, str);
                } else if (jsonElement.isJsonArray()) {
                    JsonArray asJsonArray = jsonElement.getAsJsonArray();
                    Intrinsics.checkNotNullExpressionValue(asJsonArray, "getAsJsonArray(...)");
                    Intrinsics.checkNotNull(str);
                    a(asJsonArray, bundle, str);
                } else if (jsonElement.isJsonObject()) {
                    JsonObject asJsonObject = jsonElement.getAsJsonObject();
                    Intrinsics.checkNotNullExpressionValue(asJsonObject, "getAsJsonObject(...)");
                    bundle.putBundle(str, b(asJsonObject));
                }
            }
            return bundle;
        } catch (Exception e) {
            List list = a2.a(e, "t", e).s;
            String message = e.getMessage();
            if (message == null) {
                message = e.getClass().getName();
            }
            Intrinsics.checkNotNull(message);
            list.add(message);
            return null;
        }
    }

    public static boolean a(JsonObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "<this>");
        Intrinsics.checkNotNullParameter("isSuccessful", C3522b4.i.W);
        return jsonObject.get("isSuccessful").getAsBoolean();
    }

    public static Object a(JsonPrimitive jsonPrimitive) {
        if (jsonPrimitive.isBoolean()) {
            return Boolean.valueOf(jsonPrimitive.getAsBoolean());
        }
        if (jsonPrimitive.isNumber()) {
            Number asNumber = jsonPrimitive.getAsNumber();
            int iIntValue = asNumber.intValue();
            double dDoubleValue = asNumber.doubleValue();
            if (iIntValue == dDoubleValue) {
                return Integer.valueOf(iIntValue);
            }
            return Double.valueOf(dDoubleValue);
        }
        if (jsonPrimitive.isString()) {
            return jsonPrimitive.getAsString();
        }
        Splitter splitter = f01.a;
        f01.c("Unexpected primitive json type: " + jsonPrimitive, null);
        return null;
    }

    public static String a(JsonObject jsonObject, String key) {
        Intrinsics.checkNotNullParameter(jsonObject, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        String asString = jsonObject.get(key).getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
        return asString;
    }

    public static boolean a(JsonElement jsonElement, List truthyStrings) {
        Intrinsics.checkNotNullParameter(truthyStrings, "truthyStrings");
        if (jsonElement != null && !jsonElement.isJsonNull() && jsonElement.isJsonPrimitive()) {
            JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
            if (asJsonPrimitive.isBoolean()) {
                return asJsonPrimitive.getAsBoolean();
            }
            if (asJsonPrimitive.isNumber()) {
                return asJsonPrimitive.getAsLong() != 0;
            }
            if (asJsonPrimitive.isString()) {
                String asString = asJsonPrimitive.getAsString();
                if (!(truthyStrings instanceof Collection) || !truthyStrings.isEmpty()) {
                    Iterator it = truthyStrings.iterator();
                    while (it.hasNext()) {
                        if (StringsKt__StringsJVMKt.equals((String) it.next(), asString, true)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static Bundle a(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            JsonObject asJsonObject = JsonParser.parseString(str).getAsJsonObject();
            Intrinsics.checkNotNullExpressionValue(asJsonObject, "getAsJsonObject(...)");
            return c(asJsonObject);
        } catch (Exception e) {
            List list = a2.a(e, "t", e).s;
            String message = e.getMessage();
            if (message == null) {
                message = e.getClass().getName();
            }
            Intrinsics.checkNotNull(message);
            list.add(message);
            return null;
        }
    }

    public static JsonObject a(JsonElement jsonElement) {
        if (jsonElement == null) {
            return null;
        }
        try {
            return jsonElement.getAsJsonObject();
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean a(JsonObject jsonObject, String key, boolean z) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (jsonObject != null) {
            try {
                Intrinsics.checkNotNullParameter(jsonObject, "<this>");
                Intrinsics.checkNotNullParameter(key, "key");
                return jsonObject.get(key).getAsBoolean();
            } catch (Exception unused) {
            }
        }
        return z;
    }

    public static double a(JsonObject jsonObject, String key, double d) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (jsonObject != null) {
            try {
                Intrinsics.checkNotNullParameter(jsonObject, "<this>");
                Intrinsics.checkNotNullParameter(key, "key");
                return jsonObject.get(key).getAsDouble();
            } catch (Exception unused) {
            }
        }
        return d;
    }

    public static int a(JsonObject jsonObject, String key, int i) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (jsonObject != null) {
            try {
                Intrinsics.checkNotNullParameter(jsonObject, "<this>");
                Intrinsics.checkNotNullParameter(key, "key");
                return jsonObject.get(key).getAsInt();
            } catch (Exception unused) {
            }
        }
        return i;
    }

    public static JsonObject a(JsonObject jsonObject, String key, JsonObject jsonObject2) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (jsonObject != null) {
            try {
                return jsonObject.getAsJsonObject(key);
            } catch (Exception unused) {
            }
        }
        return jsonObject2;
    }

    public static JsonObject a(JsonArray jsonArray, int i) {
        if (jsonArray == null || i >= jsonArray.size()) {
            return null;
        }
        try {
            return jsonArray.get(i).getAsJsonObject();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String a(JsonObject jsonObject, String key, String str) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(str, "default");
        if (jsonObject != null) {
            try {
                Intrinsics.checkNotNullParameter(jsonObject, "<this>");
                Intrinsics.checkNotNullParameter(key, "key");
                String asString = jsonObject.get(key).getAsString();
                Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
                return asString;
            } catch (Exception unused) {
            }
        }
        return str;
    }

    public static void a(JsonArray jsonArray, Bundle bundle, String str) {
        if (jsonArray.isEmpty()) {
            Splitter splitter = f01.a;
            f01.c("Unable to parse empty JsonArray for key: " + str, null);
            return;
        }
        JsonElement jsonElement = (JsonElement) CollectionsKt___CollectionsKt.first(jsonArray);
        int i = 0;
        if (jsonElement.isJsonObject()) {
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(jsonArray, 10));
            Iterator<JsonElement> it = jsonArray.iterator();
            while (it.hasNext()) {
                JsonObject asJsonObject = it.next().getAsJsonObject();
                Intrinsics.checkNotNullExpressionValue(asJsonObject, "getAsJsonObject(...)");
                arrayList.add(b(asJsonObject));
            }
            bundle.putParcelableArray(str, (Parcelable[]) arrayList.toArray(new Bundle[0]));
            return;
        }
        if (jsonElement.isJsonPrimitive()) {
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(jsonArray, 10));
            Iterator<JsonElement> it2 = jsonArray.iterator();
            while (it2.hasNext()) {
                JsonPrimitive asJsonPrimitive = it2.next().getAsJsonPrimitive();
                Intrinsics.checkNotNullExpressionValue(asJsonPrimitive, "getAsJsonPrimitive(...)");
                Object objA = a(asJsonPrimitive);
                Intrinsics.checkNotNull(objA);
                arrayList2.add(objA);
            }
            if (CollectionsKt___CollectionsKt.first((List) arrayList2) instanceof String) {
                ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10));
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    arrayList3.add(it3.next().toString());
                }
                bundle.putStringArray(str, (String[]) arrayList3.toArray(new String[0]));
                return;
            }
            if (CollectionsKt___CollectionsKt.first((List) arrayList2) instanceof Integer) {
                int size = arrayList2.size();
                int[] iArr = new int[size];
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
                    iArr[i] = ((Integer) obj).intValue();
                    i++;
                }
                bundle.putIntArray(str, iArr);
                return;
            }
            if (CollectionsKt___CollectionsKt.first((List) arrayList2) instanceof Double) {
                int size2 = arrayList2.size();
                double[] dArr = new double[size2];
                while (i < size2) {
                    Object obj2 = arrayList2.get(i);
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Double");
                    dArr[i] = ((Double) obj2).doubleValue();
                    i++;
                }
                bundle.putDoubleArray(str, dArr);
                return;
            }
            if (CollectionsKt___CollectionsKt.first((List) arrayList2) instanceof Boolean) {
                int size3 = arrayList2.size();
                boolean[] zArr = new boolean[size3];
                while (i < size3) {
                    Object obj3 = arrayList2.get(i);
                    Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Boolean");
                    zArr[i] = ((Boolean) obj3).booleanValue();
                    i++;
                }
                bundle.putBooleanArray(str, zArr);
                return;
            }
            Splitter splitter2 = f01.a;
            f01.c("Unable to parse array element type: " + CollectionsKt___CollectionsKt.first((List<? extends Object>) arrayList2), null);
            return;
        }
        Splitter splitter3 = f01.a;
        f01.c("Unable to parse array element type: " + jsonElement, null);
    }

    public static void a(JsonPrimitive jsonPrimitive, Bundle bundle, String str) {
        if (jsonPrimitive.isBoolean()) {
            bundle.putBoolean(str, jsonPrimitive.getAsBoolean());
            return;
        }
        if (jsonPrimitive.isNumber()) {
            Number asNumber = jsonPrimitive.getAsNumber();
            int iIntValue = asNumber.intValue();
            double dDoubleValue = asNumber.doubleValue();
            if (iIntValue == dDoubleValue) {
                bundle.putInt(str, iIntValue);
                return;
            } else {
                bundle.putDouble(str, dDoubleValue);
                return;
            }
        }
        if (jsonPrimitive.isString()) {
            bundle.putString(str, jsonPrimitive.getAsString());
            return;
        }
        Splitter splitter = f01.a;
        f01.c("Unexpected primitive json type: " + jsonPrimitive, null);
    }
}
