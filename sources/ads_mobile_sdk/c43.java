package ads_mobile_sdk;

import ads_mobile_sdk.yh1;
import android.net.Uri;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringNumberConversionsJVMKt;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class c43 {
    public static final void a(Uri.Builder builder, String str, String str2) {
        if (str2 != null) {
            if ((str2.length() > 0 ? str2 : null) != null) {
                builder.appendQueryParameter(str, str2);
            }
        }
    }

    public static final String b(JsonElement jsonElement, ia1 ia1Var) {
        if (jsonElement.isJsonPrimitive() && jsonElement.getAsJsonPrimitive().isNumber()) {
            return a(jsonElement.getAsJsonPrimitive().getAsNumber().doubleValue(), ia1Var);
        }
        if (!jsonElement.isJsonPrimitive() || !jsonElement.getAsJsonPrimitive().isString()) {
            if (jsonElement.isJsonPrimitive() && jsonElement.getAsJsonPrimitive().isBoolean()) {
                return jsonElement.getAsJsonPrimitive().getAsBoolean() ? "1" : "0";
            }
            return null;
        }
        String asString = jsonElement.getAsJsonPrimitive().getAsString();
        Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
        Double doubleOrNull = StringsKt__StringNumberConversionsJVMKt.toDoubleOrNull(asString);
        if (doubleOrNull != null) {
            return a(doubleOrNull.doubleValue(), ia1Var);
        }
        return null;
    }

    public static String d(JsonElement jsonElement, ia1 ia1Var) {
        CharSequence charSequenceSubSequence;
        if (jsonElement.isJsonObject()) {
            JsonObject asJsonObject = jsonElement.getAsJsonObject();
            Intrinsics.checkNotNullExpressionValue(asJsonObject, "getAsJsonObject(...)");
            return a(asJsonObject, ia1Var);
        }
        if (!jsonElement.isJsonArray()) {
            if (jsonElement.isJsonPrimitive() && jsonElement.getAsJsonPrimitive().isString()) {
                String asString = jsonElement.getAsString();
                Intrinsics.checkNotNull(asString);
                return asString;
            }
            if (jsonElement.isJsonPrimitive() && jsonElement.getAsJsonPrimitive().isBoolean()) {
                return jsonElement.getAsJsonPrimitive().getAsBoolean() ? "1" : "0";
            }
            String string = jsonElement.toString();
            Intrinsics.checkNotNull(string);
            return string;
        }
        JsonArray asJsonArray = jsonElement.getAsJsonArray();
        Intrinsics.checkNotNullExpressionValue(asJsonArray, "getAsJsonArray(...)");
        int iE = ia1Var.N() ? ia1Var.E() : -1;
        ArrayList arrayList = new ArrayList();
        for (JsonElement jsonElement2 : asJsonArray) {
            Intrinsics.checkNotNull(jsonElement2);
            String strD = d(jsonElement2, ia1Var);
            if (ia1Var.y() > 0 && strD.length() > ia1Var.y()) {
                strD = null;
            }
            if (strD != null) {
                arrayList.add(strD);
            }
        }
        String strV = ia1Var.v();
        Intrinsics.checkNotNullExpressionValue(strV, "getArraySeparator(...)");
        String strJoinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, strV, null, null, iE, "", null, 38, null);
        int length = strJoinToString$default.length() - 1;
        if (length >= 0) {
            while (true) {
                int i = length - 1;
                if (strJoinToString$default.charAt(length) != ia1Var.v().charAt(0)) {
                    charSequenceSubSequence = strJoinToString$default.subSequence(0, length + 1);
                    break;
                }
                if (i < 0) {
                    break;
                }
                length = i;
            }
            charSequenceSubSequence = "";
        } else {
            charSequenceSubSequence = "";
        }
        return charSequenceSubSequence.toString();
    }

    public static final String a(JsonElement jsonElement, ia1 ia1Var) {
        Boolean boolA = a(jsonElement, true);
        if (boolA == null) {
            return null;
        }
        boolean zBooleanValue = boolA.booleanValue();
        if (zBooleanValue && ia1Var.A()) {
            return null;
        }
        if (zBooleanValue || !ia1Var.z()) {
            return zBooleanValue ? "1" : "0";
        }
        return null;
    }

    public static JsonElement b(JsonObject jsonObject, yh1.f fVar) {
        JsonObject asJsonObject;
        Iterator<E> it = fVar.iterator();
        JsonElement jsonElement = null;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (jsonElement != null && !jsonElement.isJsonObject()) {
                return null;
            }
            if (jsonElement == null || (asJsonObject = jsonElement.getAsJsonObject()) == null || (jsonElement = asJsonObject.get(str)) == null) {
                jsonElement = jsonObject.get(str);
            }
        }
        return jsonElement;
    }

    public static final vt a(String str) {
        List listEmptyList;
        ut builder = vt.v();
        Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
        Intrinsics.checkNotNullParameter(builder, "builder");
        if (str == null || (listEmptyList = StringsKt__StringsKt.split$default((CharSequence) str, new String[]{"."}, false, 0, 6, (Object) null)) == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        if (listEmptyList.size() == 3) {
            Long longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull((String) listEmptyList.get(0));
            builder.a(longOrNull != null ? longOrNull.longValue() : 0L);
            Long longOrNull2 = StringsKt__StringNumberConversionsKt.toLongOrNull((String) listEmptyList.get(1));
            builder.c(longOrNull2 != null ? longOrNull2.longValue() : 0L);
            Long longOrNull3 = StringsKt__StringNumberConversionsKt.toLongOrNull((String) listEmptyList.get(2));
            builder.b(longOrNull3 != null ? longOrNull3.longValue() : 0L);
        }
        vz0 vz0VarB = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
        return (vt) vz0VarB;
    }

    public static Boolean a(JsonElement jsonElement, boolean z) {
        String string;
        boolean z2;
        if (jsonElement.isJsonPrimitive() && jsonElement.getAsJsonPrimitive().isBoolean()) {
            return Boolean.valueOf(jsonElement.getAsBoolean() == z);
        }
        if (jsonElement.isJsonPrimitive() && jsonElement.getAsJsonPrimitive().isNumber()) {
            return Boolean.valueOf(z == ((jsonElement.getAsJsonPrimitive().getAsNumber().longValue() > 0L ? 1 : (jsonElement.getAsJsonPrimitive().getAsNumber().longValue() == 0L ? 0 : -1)) > 0));
        }
        if (jsonElement.isJsonPrimitive() && jsonElement.getAsJsonPrimitive().isString()) {
            string = jsonElement.getAsString();
        } else {
            string = jsonElement.toString();
        }
        Intrinsics.checkNotNull(string);
        String lowerCase = string.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        if (CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"1", "t", "true"}).contains(lowerCase)) {
            z2 = true;
        } else {
            if (!CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"0", "f", "false"}).contains(lowerCase)) {
                return null;
            }
            z2 = false;
        }
        return Boolean.valueOf(z == z2);
    }

    public static String a(JsonObject jsonObject, ia1 ia1Var) {
        CharSequence charSequenceSubSequence;
        int iE = ia1Var.N() ? ia1Var.E() : -1;
        Set<String> setKeySet = jsonObject.keySet();
        Intrinsics.checkNotNullExpressionValue(setKeySet, "keySet(...)");
        ArrayList arrayList = new ArrayList();
        for (String str : setKeySet) {
            JsonElement jsonElement = jsonObject.get(str);
            Intrinsics.checkNotNullExpressionValue(jsonElement, "get(...)");
            String strD = d(jsonElement, ia1Var);
            String str2 = (ia1Var.y() <= 0 || strD.length() <= ia1Var.y()) ? str + ia1Var.C() + strD : null;
            if (str2 != null) {
                arrayList.add(str2);
            }
        }
        String strB = ia1Var.B();
        Intrinsics.checkNotNullExpressionValue(strB, "getItemSeparator(...)");
        String strJoinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, strB, null, null, iE, "", null, 38, null);
        int length = strJoinToString$default.length() - 1;
        if (length >= 0) {
            while (true) {
                int i = length - 1;
                if (strJoinToString$default.charAt(length) != ia1Var.v().charAt(0)) {
                    charSequenceSubSequence = strJoinToString$default.subSequence(0, length + 1);
                    break;
                }
                if (i < 0) {
                    break;
                }
                length = i;
            }
            charSequenceSubSequence = "";
        } else {
            charSequenceSubSequence = "";
        }
        return charSequenceSubSequence.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x002a, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean a(ads_mobile_sdk.qu1 r6, double r7) {
        /*
            boolean r0 = r6.y()
            double r1 = r6.z()
            boolean r3 = r6.F()
            r4 = 0
            r5 = 1
            if (r3 == 0) goto L1b
            int r6 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r0 == 0) goto L17
            if (r6 < 0) goto L1a
            goto L19
        L17:
            if (r6 <= 0) goto L1a
        L19:
            return r5
        L1a:
            return r4
        L1b:
            boolean r3 = r6.G()
            if (r3 == 0) goto L2c
            int r6 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r0 == 0) goto L28
            if (r6 > 0) goto L2b
            goto L2a
        L28:
            if (r6 >= 0) goto L2b
        L2a:
            return r5
        L2b:
            return r4
        L2c:
            boolean r6 = r6.D()
            if (r6 == 0) goto L3d
            long r0 = (long) r1
            long r6 = (long) r7
            long r6 = r6 & r0
            r0 = 0
            int r6 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r6 <= 0) goto L3c
            return r5
        L3c:
            return r4
        L3d:
            int r6 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r6 != 0) goto L42
            return r5
        L42:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.c43.a(ads_mobile_sdk.qu1, double):boolean");
    }

    public static boolean a(JsonElement jsonElement, qu1 qu1Var) {
        String string;
        String string2;
        if (qu1Var.I()) {
            String strB = qu1Var.B();
            Intrinsics.checkNotNullExpressionValue(strB, "getStringValue(...)");
            if (jsonElement.isJsonPrimitive() && jsonElement.getAsJsonPrimitive().isString()) {
                string2 = jsonElement.getAsString();
            } else if (jsonElement.isJsonPrimitive() && jsonElement.getAsJsonPrimitive().isBoolean()) {
                string2 = jsonElement.getAsBoolean() ? "1" : "0";
            } else {
                string2 = jsonElement.toString();
            }
            Regex regex = new Regex(strB);
            Intrinsics.checkNotNull(string2);
            return regex.matches(string2);
        }
        if (qu1Var.E()) {
            Boolean boolA = a(jsonElement, qu1Var.w());
            if (boolA != null) {
                return boolA.booleanValue();
            }
            return false;
        }
        if (qu1Var.H()) {
            if (jsonElement.isJsonPrimitive() && jsonElement.getAsJsonPrimitive().isNumber()) {
                return a(qu1Var, jsonElement.getAsNumber().doubleValue());
            }
            if (jsonElement.isJsonPrimitive() && jsonElement.getAsJsonPrimitive().isNumber()) {
                return a(qu1Var, jsonElement.getAsBoolean() ? 1.0d : 0.0d);
            }
            if (jsonElement.isJsonPrimitive() && jsonElement.getAsJsonPrimitive().isString()) {
                string = jsonElement.getAsString();
            } else {
                string = jsonElement.toString();
            }
            Intrinsics.checkNotNull(string);
            String lowerCase = string.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            Double doubleOrNull = StringsKt__StringNumberConversionsJVMKt.toDoubleOrNull(lowerCase);
            if (doubleOrNull != null) {
                return a(qu1Var, doubleOrNull.doubleValue());
            }
            return false;
        }
        if (!qu1Var.C()) {
            return true;
        }
        qu1 qu1VarV = qu1Var.v();
        Intrinsics.checkNotNullExpressionValue(qu1VarV, "getArrayContains(...)");
        if (!jsonElement.isJsonArray()) {
            return false;
        }
        Iterable asJsonArray = jsonElement.getAsJsonArray();
        Intrinsics.checkNotNullExpressionValue(asJsonArray, "getAsJsonArray(...)");
        if ((asJsonArray instanceof Collection) && ((Collection) asJsonArray).isEmpty()) {
            return false;
        }
        for (JsonElement jsonElement2 : asJsonArray) {
            if (qu1VarV.A().isEmpty()) {
                Intrinsics.checkNotNull(jsonElement2);
                if (a(jsonElement2, qu1VarV)) {
                    return true;
                }
            } else if (jsonElement2.isJsonObject()) {
                JsonObject asJsonObject = jsonElement2.getAsJsonObject();
                Intrinsics.checkNotNullExpressionValue(asJsonObject, "getAsJsonObject(...)");
                if (a(asJsonObject, qu1VarV)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public static boolean a(JsonObject jsonObject, qu1 qu1Var) {
        if (qu1Var.A().isEmpty()) {
            return false;
        }
        yh1.f fVarA = qu1Var.A();
        Intrinsics.checkNotNullExpressionValue(fVarA, "getPathList(...)");
        JsonElement jsonElementB = b(jsonObject, fVarA);
        if (jsonElementB == null) {
            return false;
        }
        return a(jsonElementB, qu1Var);
    }

    public static String a(double d, ia1 ia1Var) {
        Object objValueOf;
        String str;
        double dF = d * (ia1Var.O() ? ia1Var.F() : 1.0d);
        if (ia1Var.P()) {
            iH = ia1Var.H() >= 0 ? ia1Var.H() : 5;
            objValueOf = Double.valueOf(((long) (dF * r2)) / Math.pow(10.0d, ia1Var.H()));
        } else if (ia1Var.K()) {
            objValueOf = Long.valueOf(((long) (dF / ((double) ia1Var.w()))) * ((long) ia1Var.w()));
        } else if (dF == Math.floor(dF)) {
            objValueOf = Long.valueOf(MathKt__MathJVMKt.roundToLong(dF));
        } else {
            objValueOf = Double.valueOf(dF);
        }
        if (objValueOf instanceof Double) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            str = String.format(Locale.US, "%." + iH + "f", Arrays.copyOf(new Object[]{objValueOf}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        } else if (objValueOf instanceof Float) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            str = String.format(Locale.US, "%." + iH + "f", Arrays.copyOf(new Object[]{objValueOf}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        } else {
            StringCompanionObject stringCompanionObject3 = StringCompanionObject.INSTANCE;
            str = String.format(Locale.US, "%d", Arrays.copyOf(new Object[]{objValueOf}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        }
        if (StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) ".", false, 2, (Object) null)) {
            return new Regex("\\.$").replace(new Regex("0*$").replace(str, ""), "");
        }
        return str;
    }
}
