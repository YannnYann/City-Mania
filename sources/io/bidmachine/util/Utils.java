package io.bidmachine.util;

import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import com.unity3d.services.UnityAdsConstants;
import java.io.Closeable;
import java.io.Flushable;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLDecoder;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: Utils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class Utils {
    public static final char[] HEX_ARRAY;
    public static final Utils INSTANCE = new Utils();
    public static final char[] UPPER_HEX_ARRAY;

    public static final int pxToDp(float f, int i) {
        return (int) ((i / f) + 0.5f);
    }

    static {
        char[] charArray = "0123456789abcdef".toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "this as java.lang.String).toCharArray()");
        HEX_ARRAY = charArray;
        char[] charArray2 = "0123456789ABCDEF".toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray2, "this as java.lang.String).toCharArray()");
        UPPER_HEX_ARRAY = charArray2;
    }

    public static final boolean isExternalMemoryAvailable() {
        return Intrinsics.areEqual(Environment.getExternalStorageState(), "mounted");
    }

    public static final Long toLongOrNull(Object obj) {
        return toLongOrDefault(obj, null);
    }

    public static final Long toLongOrDefault(Object obj, Long l) {
        return UtilsKt.toLongOrDefault(obj, l);
    }

    public static final List<Object> toList(JSONArray jsonArray) {
        Intrinsics.checkNotNullParameter(jsonArray, "jsonArray");
        return UtilsKt.toList(jsonArray);
    }

    public static final Object fromJsonElementToObjectOrNull(Object obj) {
        if (obj == null || Intrinsics.areEqual(obj, JSONObject.NULL)) {
            return null;
        }
        if (obj instanceof JSONObject) {
            return UtilsKt.toMap((JSONObject) obj);
        }
        return obj instanceof JSONArray ? UtilsKt.toList((JSONArray) obj) : obj;
    }

    public static final JSONArray toJsonArray(List<?> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return UtilsKt.toJsonArray(list);
    }

    public static final Object fromObjectToJsonElementOrNull(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof List) {
            return UtilsKt.toJsonArray((List) obj);
        }
        return obj instanceof Map ? UtilsKt.toJsonObject((Map) obj) : obj;
    }

    public static final void closeSafely(Closeable closeable) {
        UtilsKt.closeSafely(closeable);
    }

    public static final void flushSafely(Flushable flushable) {
        UtilsKt.flushSafely(flushable);
    }

    public static final Handler createHandlerWithMyOrMainLooper() {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == null) {
            looperMyLooper = Looper.getMainLooper();
        }
        return new Handler(looperMyLooper);
    }

    public static final boolean isHttpUrl(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return UtilsKt.isHttpUrl(url);
    }

    public static final boolean isUrlValid(String str) {
        Boolean bool;
        if (str == null || str.length() == 0) {
            return false;
        }
        try {
            new URL(str);
            bool = Boolean.TRUE;
        } catch (Throwable unused) {
            bool = null;
        }
        return Intrinsics.areEqual(bool, Boolean.TRUE);
    }

    public static final String getValidUrl(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (isUrlValid(str)) {
            return str;
        }
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException | IllegalArgumentException unused) {
            return str;
        }
    }

    public static final Uri getValidUri(String str) {
        try {
            return Uri.parse(getValidUrl(str));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final DownloadManager getDownloadManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return UtilsKt.getDownloadManager(context);
    }

    public static final float getNotOverlappedAreaPercent(Rect mainRect, Rect coverRect) {
        Intrinsics.checkNotNullParameter(mainRect, "mainRect");
        Intrinsics.checkNotNullParameter(coverRect, "coverRect");
        int iWidth = mainRect.width() * mainRect.height();
        if (iWidth == 0) {
            return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        return (iWidth - (Math.max(0, Math.min(mainRect.right, coverRect.right) - Math.max(mainRect.left, coverRect.left)) * Math.max(0, Math.min(mainRect.bottom, coverRect.bottom) - Math.max(mainRect.top, coverRect.top)))) / iWidth;
    }

    public static final int dpToPx(Context context, float f) {
        Intrinsics.checkNotNullParameter(context, "context");
        return UtilsKt.dpToPx(context, f);
    }

    public static final Intent registerBroadcastReceiver(BroadcastReceiver receiver, Context context, IntentFilter intentFilter) {
        Intrinsics.checkNotNullParameter(receiver, "receiver");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intentFilter, "intentFilter");
        return UtilsKt.registerBroadcastReceiver(context, receiver, intentFilter);
    }

    public static final <T> void ifNotNull(T t, Executable<T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (t != null) {
            action.execute(t);
        }
    }

    public static final byte[] decodeBase64(String base64, int i) {
        Intrinsics.checkNotNullParameter(base64, "base64");
        return UtilsKt.decodeBase64(base64, i);
    }

    public static /* synthetic */ byte[] decodeBase64$default(String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 2;
        }
        return decodeBase64(str, i);
    }

    public static final String decodeBase64ToString(String data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        return UtilsKt.decodeBase64ToString(data, i);
    }

    public static /* synthetic */ String decodeBase64ToString$default(String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 2;
        }
        return decodeBase64ToString(str, i);
    }
}
