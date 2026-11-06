package io.bidmachine.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.DownloadManager;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Process;
import android.telephony.TelephonyManager;
import android.util.Base64;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.util.conversion.BooleanTypeConversion;
import io.bidmachine.util.conversion.DoubleTypeConversion;
import io.bidmachine.util.conversion.FloatTypeConversion;
import io.bidmachine.util.conversion.IntTypeConversion;
import io.bidmachine.util.conversion.LongTypeConversion;
import io.bidmachine.util.conversion.StringTypeConversion;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.Flushable;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: Utils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class UtilsKt {
    public static final StringTypeConversion STRING_TYPE_CONVERSION = new StringTypeConversion();
    public static final BooleanTypeConversion BOOLEAN_TYPE_CONVERSION = new BooleanTypeConversion();
    public static final IntTypeConversion INT_TYPE_CONVERSION = new IntTypeConversion();
    public static final LongTypeConversion LONG_TYPE_CONVERSION = new LongTypeConversion();
    public static final FloatTypeConversion FLOAT_TYPE_CONVERSION = new FloatTypeConversion();
    public static final DoubleTypeConversion DOUBLE_TYPE_CONVERSION = new DoubleTypeConversion();

    public static final boolean isPermissionGranted(Context context, String str) {
        Boolean boolValueOf;
        Intrinsics.checkNotNullParameter(context, "<this>");
        if (str == null || str.length() == 0) {
            return false;
        }
        try {
            boolValueOf = Boolean.valueOf(context.checkPermission(str, Process.myPid(), Process.myUid()) == 0);
        } catch (Throwable unused) {
            boolValueOf = null;
        }
        return Intrinsics.areEqual(boolValueOf, Boolean.TRUE);
    }

    public static final byte[] applyMD5(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final String toStringOrDefault(Object obj, String str) {
        return STRING_TYPE_CONVERSION.toOrDefault(obj, str);
    }

    public static /* synthetic */ String toStringOrDefault$default(Object obj, String str, int i, Object obj2) {
        if ((i & 1) != 0) {
            str = null;
        }
        return toStringOrDefault(obj, str);
    }

    public static final Boolean toBooleanOrDefault(Object obj, Boolean bool) {
        return BOOLEAN_TYPE_CONVERSION.toOrDefault(obj, bool);
    }

    public static /* synthetic */ Boolean toBooleanOrDefault$default(Object obj, Boolean bool, int i, Object obj2) {
        if ((i & 1) != 0) {
            bool = null;
        }
        return toBooleanOrDefault(obj, bool);
    }

    public static final Integer toIntOrDefault(Object obj, Integer num) {
        return INT_TYPE_CONVERSION.toOrDefault(obj, num);
    }

    public static /* synthetic */ Integer toIntOrDefault$default(Object obj, Integer num, int i, Object obj2) {
        if ((i & 1) != 0) {
            num = null;
        }
        return toIntOrDefault(obj, num);
    }

    public static final Long toLongOrDefault(Object obj, Long l) {
        return LONG_TYPE_CONVERSION.toOrDefault(obj, l);
    }

    public static /* synthetic */ Long toLongOrDefault$default(Object obj, Long l, int i, Object obj2) {
        if ((i & 1) != 0) {
            l = null;
        }
        return toLongOrDefault(obj, l);
    }

    public static final Float toFloatOrDefault(Object obj, Float f) {
        return FLOAT_TYPE_CONVERSION.toOrDefault(obj, f);
    }

    public static /* synthetic */ Float toFloatOrDefault$default(Object obj, Float f, int i, Object obj2) {
        if ((i & 1) != 0) {
            f = null;
        }
        return toFloatOrDefault(obj, f);
    }

    public static final Double toDoubleOrDefault(Object obj, Double d) {
        return DOUBLE_TYPE_CONVERSION.toOrDefault(obj, d);
    }

    public static /* synthetic */ Double toDoubleOrDefault$default(Object obj, Double d, int i, Object obj2) {
        if ((i & 1) != 0) {
            d = null;
        }
        return toDoubleOrDefault(obj, d);
    }

    public static final List<Object> toList(JSONArray jSONArray) {
        Intrinsics.checkNotNullParameter(jSONArray, "<this>");
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            Object objFromJsonElementToObjectOrNull = Utils.fromJsonElementToObjectOrNull(jSONArray.opt(i));
            if (objFromJsonElementToObjectOrNull != null) {
                arrayList.add(objFromJsonElementToObjectOrNull);
            }
        }
        return arrayList;
    }

    public static final Map<String, Object> toMap(JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(jSONObject, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<String> itKeys = jSONObject.keys();
        Intrinsics.checkNotNullExpressionValue(itKeys, "keys()");
        for (String key : SequencesKt__SequencesKt.asSequence(itKeys)) {
            Object objFromJsonElementToObjectOrNull = Utils.fromJsonElementToObjectOrNull(jSONObject.opt(key));
            if (objFromJsonElementToObjectOrNull != null) {
                Intrinsics.checkNotNullExpressionValue(key, "key");
                linkedHashMap.put(key, objFromJsonElementToObjectOrNull);
            }
        }
        return linkedHashMap;
    }

    public static final JSONArray toJsonArray(List<?> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        JSONArray jSONArray = new JSONArray();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            Object objFromObjectToJsonElementOrNull = Utils.fromObjectToJsonElementOrNull(it.next());
            if (objFromObjectToJsonElementOrNull != null) {
                jSONArray.put(objFromObjectToJsonElementOrNull);
            }
        }
        return jSONArray;
    }

    public static final JSONObject toJsonObject(Map<?, ?> map) throws JSONException {
        Object objFromObjectToJsonElementOrNull;
        Intrinsics.checkNotNullParameter(map, "<this>");
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            String string = key != null ? key.toString() : null;
            Object value = entry.getValue();
            if (string != null && string.length() > 0 && value != null && (objFromObjectToJsonElementOrNull = Utils.fromObjectToJsonElementOrNull(value)) != null) {
                jSONObject.put(string, objFromObjectToJsonElementOrNull);
            }
        }
        return jSONObject;
    }

    public static final <T> void setSafely(Collection<T> collection, Collection<? extends T> collection2) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        collection.clear();
        addAllSafely(collection, collection2);
    }

    public static final <T> void addAllSafely(Collection<T> collection, Collection<? extends T> collection2) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        if (collection2 == null) {
            return;
        }
        collection.addAll(collection2);
    }

    public static final <K, V> void setSafely(Map<K, V> map, Map<K, ? extends V> map2) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        map.clear();
        putAllSafely(map, map2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V> void putAllSafely(Map<K, V> map, Map<K, ? extends V> map2) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        if (map2 == 0) {
            return;
        }
        map.putAll(map2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V> void putAllIfNotEmpty(Map<K, V> map, Map<K, ? extends V> map2) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        if (map2 == 0 || map2.isEmpty()) {
            return;
        }
        map.putAll(map2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [V, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v1, types: [V, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    public static final <K, V> V mergeOrRemove(Map<K, V> map, K k, V v, Function2<? super V, ? super V, ? extends V> mergeAction) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(mergeAction, "mergeAction");
        Object obj = (Object) map.get(k);
        ?? Invoke = v;
        if (obj != null) {
            Invoke = mergeAction.invoke(obj, v);
        }
        if (Invoke == 0) {
            map.remove(k);
            return (V) Invoke;
        }
        map.put(k, (Object) Invoke);
        return (V) Invoke;
    }

    public static final Pair<String, String> divide(String str, char c) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, c, 0, false, 6, (Object) null);
        if (iIndexOf$default < 0 || iIndexOf$default > str.length() - 1) {
            return null;
        }
        String strSubstring = str.substring(0, iIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        String strSubstring2 = str.substring(iIndexOf$default + 1, str.length());
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
        return TuplesKt.to(strSubstring, strSubstring2);
    }

    public static final boolean isHttpUrl(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return StringsKt__StringsJVMKt.startsWith$default(str, "http://", false, 2, null) || StringsKt__StringsJVMKt.startsWith$default(str, "https://", false, 2, null);
    }

    public static final <T extends KeyHolder> T find(T[] tArr, String str) {
        String lowerCase;
        String key;
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        if (str != null && str.length() != 0) {
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
            String lowerCase2 = str.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
            for (T t : tArr) {
                if (t == null || (key = t.getKey()) == null) {
                    lowerCase = null;
                } else {
                    Locale locale2 = Locale.getDefault();
                    Intrinsics.checkNotNullExpressionValue(locale2, "getDefault()");
                    lowerCase = key.toLowerCase(locale2);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                }
                if (StringsKt__StringsJVMKt.equals$default(lowerCase, lowerCase2, false, 2, null)) {
                    return t;
                }
            }
        }
        return null;
    }

    public static final long readIntoFile(InputStream inputStream, File file) throws Throwable {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        Intrinsics.checkNotNullParameter(file, "file");
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                long jCopyTo$default = ByteStreamsKt.copyTo$default(inputStream, fileOutputStream, 0, 2, null);
                CloseableKt.closeFinally(fileOutputStream, null);
                CloseableKt.closeFinally(inputStream, null);
                return jCopyTo$default;
            } finally {
            }
        } finally {
        }
    }

    public static final void closeSafely(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable unused) {
            }
        }
    }

    public static final void flushSafely(Flushable flushable) {
        if (flushable != null) {
            try {
                flushable.flush();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable unused) {
            }
        }
    }

    public static final Location getLocation(Context context) {
        LocationManager locationManager;
        String bestProvider;
        Location lastKnownLocation;
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            if (!isPermissionGranted(context, "android.permission.ACCESS_COARSE_LOCATION") || (locationManager = getLocationManager(context)) == null) {
                return null;
            }
            if (Build.VERSION.SDK_INT >= 34) {
                bestProvider = "fused";
            } else {
                bestProvider = locationManager.getBestProvider(new Criteria(), false);
            }
            if (bestProvider == null) {
                return null;
            }
            Location lastKnownLocation2 = locationManager.getLastKnownLocation(bestProvider);
            if (lastKnownLocation2 != null) {
                return lastKnownLocation2;
            }
            List<String> allProviders = locationManager.getAllProviders();
            Intrinsics.checkNotNullExpressionValue(allProviders, "locationManager.allProviders");
            if (allProviders.size() <= 1) {
                return null;
            }
            for (String str : allProviders) {
                if (str != null && !Intrinsics.areEqual(str, bestProvider) && (lastKnownLocation = locationManager.getLastKnownLocation(str)) != null) {
                    return lastKnownLocation;
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static final WindowManager getWindowManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            Object systemService = context.getSystemService("window");
            if (!(systemService instanceof WindowManager)) {
                systemService = null;
            }
            return (WindowManager) systemService;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final InputMethodManager getInputMethodManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            Object systemService = context.getSystemService("input_method");
            if (!(systemService instanceof InputMethodManager)) {
                systemService = null;
            }
            return (InputMethodManager) systemService;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final AudioManager getAudioManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
            Object systemService = applicationContext.getSystemService(com.unity3d.services.core.device.MimeTypes.BASE_TYPE_AUDIO);
            if (!(systemService instanceof AudioManager)) {
                systemService = null;
            }
            return (AudioManager) systemService;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final TelephonyManager getTelephonyManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            Object systemService = context.getSystemService("phone");
            if (!(systemService instanceof TelephonyManager)) {
                systemService = null;
            }
            return (TelephonyManager) systemService;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final LocationManager getLocationManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            Object systemService = context.getSystemService("location");
            if (!(systemService instanceof LocationManager)) {
                systemService = null;
            }
            return (LocationManager) systemService;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final DownloadManager getDownloadManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            Object systemService = context.getSystemService("download");
            if (!(systemService instanceof DownloadManager)) {
                systemService = null;
            }
            return (DownloadManager) systemService;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final ClipboardManager getClipboardManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            Object systemService = context.getSystemService("clipboard");
            if (!(systemService instanceof ClipboardManager)) {
                systemService = null;
            }
            return (ClipboardManager) systemService;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final ActivityManager getActivityManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            Object systemService = context.getSystemService("activity");
            if (!(systemService instanceof ActivityManager)) {
                systemService = null;
            }
            return (ActivityManager) systemService;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final UiModeManager getUiModeManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            Object systemService = context.getSystemService("uimode");
            if (!(systemService instanceof UiModeManager)) {
                systemService = null;
            }
            return (UiModeManager) systemService;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final int unitToPx(Context context, int i, float f) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        if (f == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return 0;
        }
        return (int) DeviceUtilsKt.applyDimension(DeviceUtilsKt.getDisplayMetrics(context), i, f);
    }

    public static final int dpToPx(Context context, float f) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return unitToPx(context, 1, f);
    }

    public static final int pxToDp(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return Utils.pxToDp(DeviceUtilsKt.getScreenDensity(context), i);
    }

    public static final int getColorCompat(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return context.getColor(i);
    }

    @SuppressLint({"UnspecifiedRegisterReceiverFlag"})
    public static final Intent registerBroadcastReceiver(Context context, BroadcastReceiver receiver, IntentFilter intentFilter) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(receiver, "receiver");
        Intrinsics.checkNotNullParameter(intentFilter, "intentFilter");
        if (Build.VERSION.SDK_INT >= 33) {
            return context.registerReceiver(receiver, intentFilter, 2);
        }
        return context.registerReceiver(receiver, intentFilter);
    }

    public static /* synthetic */ Activity findActivity$default(ContextWrapper contextWrapper, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return findActivity(contextWrapper, i);
    }

    public static final Activity findActivity(ContextWrapper contextWrapper, int i) {
        Intrinsics.checkNotNullParameter(contextWrapper, "<this>");
        if (i >= 10) {
            return null;
        }
        Context baseContext = contextWrapper.getBaseContext();
        if (baseContext instanceof Activity) {
            return (Activity) baseContext;
        }
        if (baseContext instanceof ContextWrapper) {
            return findActivity((ContextWrapper) baseContext, i + 1);
        }
        return null;
    }

    public static final String createHexHashCode(Object obj) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        String hexString = Integer.toHexString(obj.hashCode());
        Intrinsics.checkNotNullExpressionValue(hexString, "toHexString(hashCode())");
        return hexString;
    }

    public static final String notEmptyOrNull(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return str;
    }

    public static /* synthetic */ byte[] decodeBase64$default(String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 2;
        }
        return decodeBase64(str, i);
    }

    public static final byte[] decodeBase64(String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            byte[] bytes = str.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            return decodeBase64(bytes, i);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static /* synthetic */ String encodeToStringBase64$default(byte[] bArr, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 2;
        }
        return encodeToStringBase64(bArr, i);
    }

    public static final String encodeToStringBase64(byte[] bArr, int i) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        try {
            return Base64.encodeToString(bArr, i);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static /* synthetic */ byte[] decodeBase64$default(byte[] bArr, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 2;
        }
        return decodeBase64(bArr, i);
    }

    public static final byte[] decodeBase64(byte[] bArr, int i) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        try {
            return Base64.decode(bArr, i);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final String decodeBase64ToString(byte[] bArr, int i) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        byte[] bArrDecodeBase64 = decodeBase64(bArr, i);
        if (bArrDecodeBase64 != null) {
            return new String(bArrDecodeBase64, Charsets.UTF_8);
        }
        return null;
    }

    public static final String decodeBase64ToString(String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        return decodeBase64ToString(bytes, i);
    }

    public static /* synthetic */ float toRatio$default(Number number, float f, float f2, int i, Object obj) {
        if ((i & 2) != 0) {
            f2 = 100.0f;
        }
        return toRatio(number, f, f2);
    }

    public static final <T extends Number> float toRatio(T t, float f, float f2) {
        float fFloatValue;
        Intrinsics.checkNotNullParameter(t, "<this>");
        if (f2 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            fFloatValue = MathKt__MathJVMKt.roundToInt((t.floatValue() / f) * f2) / f2;
        } else {
            fFloatValue = t.floatValue() / f;
        }
        return RangesKt___RangesKt.coerceIn(fFloatValue, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
    }

    public static final <T extends Number> float fromRatio(T t, float f) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        return RangesKt___RangesKt.coerceIn((t.floatValue() * f) / 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f);
    }

    public static final void setDpFromPx(Rect rect, Rect rectPx, float f) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        Intrinsics.checkNotNullParameter(rectPx, "rectPx");
        rect.set(Utils.pxToDp(f, rectPx.left), Utils.pxToDp(f, rectPx.top), Utils.pxToDp(f, rectPx.right), Utils.pxToDp(f, rectPx.bottom));
    }

    public static final <T> T castSafely(Class<T> cls, Object obj) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        try {
            return cls.cast(obj);
        } catch (Throwable unused) {
            return null;
        }
    }
}
