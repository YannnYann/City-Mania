package io.bidmachine.core;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import android.view.View;
import io.bidmachine.Executable;
import io.bidmachine.Function;
import io.bidmachine.SimpleContextProvider;
import io.bidmachine.util.ViewUtils;
import io.bidmachine.utils.DeviceUtils;
import io.bidmachine.utils.ThrowableRunnable;
import io.bidmachine.utils.lazy.LazyCachedValue;
import io.bidmachine.utils.lazy.LazyValue;
import j$.util.DesugarTimeZone;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.Flushable;
import java.io.InputStream;
import java.math.BigInteger;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class Utils {
    public static final Handler BACKGROUND_HANDLER;
    public static final LazyCachedValue<Integer> CURRENT_YEAR;
    public static String appName;
    public static String appVersion;
    public static final Handler UI_HANDLER = new Handler(Looper.getMainLooper());
    public static final char[] HEX_ARRAY = "0123456789abcdef".toCharArray();
    public static final char[] UPPER_HEX_ARRAY = "0123456789ABCDEF".toCharArray();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.net.HttpURLConnection, java.net.URLConnection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ void $r8$lambda$6PpyNOzsq3bZ750xVN8nA7B7gQ8(java.lang.String r3) throws java.lang.Throwable {
        /*
            r0 = 0
            java.net.URL r1 = new java.net.URL     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L4a
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L4a
            java.net.URLConnection r3 = r1.openConnection()     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L4a
            java.net.HttpURLConnection r3 = (java.net.HttpURLConnection) r3     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L4a
            r0 = 1
            r3.setInstanceFollowRedirects(r0)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            r0 = 5000(0x1388, float:7.006E-42)
            r3.setConnectTimeout(r0)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            java.lang.String r0 = "Connection"
            java.lang.String r1 = "close"
            r3.setRequestProperty(r0, r1)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            java.lang.String r0 = "GET"
            r3.setRequestMethod(r0)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            java.lang.String r0 = io.bidmachine.UserAgentManager.getUserAgent()     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            if (r1 != 0) goto L35
            java.lang.String r1 = "User-Agent"
            r3.setRequestProperty(r1, r0)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            goto L35
        L31:
            r0 = move-exception
            goto L63
        L33:
            r0 = move-exception
            goto L4e
        L35:
            r3.getResponseCode()     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            java.io.InputStream r0 = r3.getInputStream()     // Catch: java.lang.Exception -> L40
            close(r0)     // Catch: java.lang.Exception -> L40
            goto L5f
        L40:
            r0 = move-exception
            io.bidmachine.core.Logger.w(r0)
            goto L5f
        L45:
            r3 = move-exception
            r2 = r0
            r0 = r3
            r3 = r2
            goto L63
        L4a:
            r3 = move-exception
            r2 = r0
            r0 = r3
            r3 = r2
        L4e:
            io.bidmachine.core.Logger.w(r0)     // Catch: java.lang.Throwable -> L31
            if (r3 == 0) goto L5f
            java.io.InputStream r0 = r3.getInputStream()     // Catch: java.lang.Exception -> L5b
            close(r0)     // Catch: java.lang.Exception -> L5b
            goto L5f
        L5b:
            r0 = move-exception
            io.bidmachine.core.Logger.w(r0)
        L5f:
            io.bidmachine.util.network.NetworkUtils.disconnectSafely(r3)
            return
        L63:
            if (r3 == 0) goto L71
            java.io.InputStream r1 = r3.getInputStream()     // Catch: java.lang.Exception -> L6d
            close(r1)     // Catch: java.lang.Exception -> L6d
            goto L71
        L6d:
            r1 = move-exception
            io.bidmachine.core.Logger.w(r1)
        L71:
            io.bidmachine.util.network.NetworkUtils.disconnectSafely(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.core.Utils.$r8$lambda$6PpyNOzsq3bZ750xVN8nA7B7gQ8(java.lang.String):void");
    }

    static {
        HandlerThread handlerThread = new HandlerThread("BackgroundHandlerThread");
        handlerThread.start();
        BACKGROUND_HANDLER = new Handler(handlerThread.getLooper());
        CURRENT_YEAR = new LazyCachedValue<>(new LazyValue() { // from class: io.bidmachine.core.Utils$$ExternalSyntheticLambda3
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return Integer.valueOf(Utils.safeCalendarGetInstance().get(1));
            }
        });
    }

    public static boolean canAddWindowToActivity(Activity activity) {
        return (activity == null || activity.getWindow() == null || !activity.getWindow().isActive() || activity.getWindow().getDecorView().getWindowToken() == null) ? false : true;
    }

    public static void cancelBackgroundThreadTask(Runnable runnable) {
        BACKGROUND_HANDLER.removeCallbacks(runnable);
    }

    public static String checkIfEmpty(String str, String str2) {
        return !TextUtils.isEmpty(str) ? str : str2;
    }

    public static void close(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e) {
                Logger.w(e);
            }
        }
    }

    public static Float convertToFloatOrDefault(Object obj, Float f) {
        return obj == null ? f : obj instanceof Number ? Float.valueOf(((Number) obj).floatValue()) : parseFloatOrDefault(obj.toString(), f);
    }

    public static Integer convertToIntOrDefault(Object obj, Integer num) {
        return obj == null ? num : obj instanceof Number ? Integer.valueOf(((Number) obj).intValue()) : parseIntOrDefault(obj.toString(), num);
    }

    public static Context findDialogContext(Context context) {
        return findDialogContext(context, null);
    }

    public static void flush(Flushable flushable) {
        if (flushable != null) {
            try {
                flushable.flush();
            } catch (Exception e) {
                Logger.w(e);
            }
        }
    }

    public static String generateFileName(String str) {
        return new BigInteger(getMD5(str.getBytes())).abs().toString(36);
    }

    public static NetworkCapabilities getActiveNetworkCapabilities(Context context) {
        ConnectivityManager connectivityManager = getConnectivityManager(context);
        if (connectivityManager == null) {
            return null;
        }
        try {
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork == null) {
                return null;
            }
            return connectivityManager.getNetworkCapabilities(activeNetwork);
        } catch (Throwable th) {
            Logger.w(th);
            return null;
        }
    }

    public static NetworkInfo getActiveNetworkInfo(Context context) {
        try {
            ConnectivityManager connectivityManager = getConnectivityManager(context);
            if (connectivityManager != null) {
                return connectivityManager.getActiveNetworkInfo();
            }
            return null;
        } catch (Throwable th) {
            Logger.w(th);
            return null;
        }
    }

    public static String getAppName(Context context) {
        if (appName == null) {
            appName = (String) context.getPackageManager().getApplicationLabel(context.getApplicationInfo());
        }
        return appName;
    }

    public static String getAppVersion(Context context) {
        if (appVersion == null) {
            try {
                String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
                if (str != null) {
                    appVersion = str;
                }
            } catch (Exception e) {
                Logger.w(e);
            }
        }
        return appVersion;
    }

    public static File getCacheDir(Context context, String str) {
        File file = new File(context.getCacheDir(), str);
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        return null;
    }

    @SuppressLint({"MissingPermission"})
    public static ConnectivityManager getConnectivityManager(Context context) {
        if (!isPermissionGranted(context, "android.permission.ACCESS_NETWORK_STATE")) {
            Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.core.Utils$$ExternalSyntheticLambda2
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return String.format("Manifest permission not found: %s. Check the integration.", "android.permission.ACCESS_NETWORK_STATE");
                }
            });
            return null;
        }
        try {
            return (ConnectivityManager) context.getSystemService("connectivity");
        } catch (Throwable th) {
            Logger.w(th);
            return null;
        }
    }

    public static byte[] getMD5(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            Logger.w(e);
            return null;
        }
    }

    public static long getOrDefault(long j, long j2, long j3) {
        return j == j2 ? j3 : j;
    }

    public static float getScreenDensity(Context context) {
        return DeviceUtils.getDisplayMetrics(context).density;
    }

    public static int getUtcOffsetMinutes() {
        return (int) TimeUnit.MILLISECONDS.toMinutes(TimeZone.getDefault().getOffset(System.currentTimeMillis()));
    }

    public static <T> void ifNotNull(T t, Executable<T> executable) {
        if (t != null) {
            executable.execute(t);
        }
    }

    public static boolean isEmpty(Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    public static boolean isExternalMemoryAvailable() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static boolean isHttpUrl(String str) {
        return str.startsWith("http://") || str.startsWith("https://");
    }

    @SuppressLint({"MissingPermission"})
    public static boolean isNetworkAvailable(Context context) {
        NetworkInfo activeNetworkInfo = getActiveNetworkInfo(context);
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public static boolean isPermissionGranted(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return context.checkPermission(str, Process.myPid(), Process.myUid()) == 0;
    }

    public static boolean isUiThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean isUrlValid(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            new URL(str);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isYearValid(int i) {
        return i >= 1900 && i <= CURRENT_YEAR.get().intValue();
    }

    public static <T> String join(List<T> list) {
        return join(list, ", ");
    }

    public static void onBackgroundThread(Runnable runnable) {
        Looper looperMyLooper = Looper.myLooper();
        Handler handler = BACKGROUND_HANDLER;
        if (looperMyLooper == handler.getLooper()) {
            runnable.run();
        } else {
            handler.post(runnable);
        }
    }

    public static void onUiThread(Runnable runnable) {
        if (isUiThread()) {
            runnable.run();
        } else {
            UI_HANDLER.post(runnable);
        }
    }

    public static <T> T oneOf(T t, T t2, T t3) {
        return t != null ? t : t2 != null ? t2 : t3;
    }

    public static Float parseFloatOrDefault(String str, Float f) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Float.valueOf(Float.parseFloat(str));
            } catch (Throwable unused) {
            }
        }
        return f;
    }

    @SuppressLint({"RtlHardcoded"})
    public static Integer parseHorizontalPosition(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        str.getClass();
        switch (str) {
        }
        return null;
    }

    public static int parseIntOrDefault(String str, int i) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.parseInt(str);
            } catch (Throwable unused) {
            }
        }
        return i;
    }

    public static Integer parseVerticalPosition(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        str.getClass();
        switch (str) {
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> void putAll(Map<K, V> map, Map<K, V> map2) {
        if (map == null || map2 == 0) {
            return;
        }
        map.putAll(map2);
    }

    public static File retrieveAndSaveFrame(Context context, Uri uri, String str) throws Throwable {
        Bitmap frameAtTime;
        Throwable th;
        FileOutputStream fileOutputStream;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(context, uri);
        String strExtractMetadata = mediaMetadataRetriever.extractMetadata(9);
        FileOutputStream fileOutputStream2 = null;
        if (strExtractMetadata != null && (frameAtTime = mediaMetadataRetriever.getFrameAtTime(Long.parseLong(strExtractMetadata), 2)) != null) {
            try {
                File file = new File(getCacheDir(context, str), generateFileName(uri.toString()));
                fileOutputStream = new FileOutputStream(file);
                try {
                    frameAtTime.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                    flush(fileOutputStream);
                    close(fileOutputStream);
                    return file;
                } catch (Exception e) {
                    e = e;
                    try {
                        Logger.w(e);
                        flush(fileOutputStream);
                        close(fileOutputStream);
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream2 = fileOutputStream;
                        fileOutputStream = fileOutputStream2;
                        flush(fileOutputStream);
                        close(fileOutputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    flush(fileOutputStream);
                    close(fileOutputStream);
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                fileOutputStream = null;
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = fileOutputStream2;
                flush(fileOutputStream);
                close(fileOutputStream);
                throw th;
            }
        }
        return null;
    }

    public static void runCatching(ThrowableRunnable throwableRunnable) {
        try {
            throwableRunnable.run();
        } catch (Throwable unused) {
        }
    }

    public static Calendar safeCalendarGetInstance() {
        try {
            try {
                return Calendar.getInstance();
            } catch (Throwable unused) {
                return Calendar.getInstance(Locale.US);
            }
        } catch (Throwable unused2) {
            return Calendar.getInstance(DesugarTimeZone.getTimeZone("GMT"), Locale.US);
        }
    }

    public static void simpleTrackUrl(final String str, Executor executor) {
        if (TextUtils.isEmpty(str) || executor == null) {
            return;
        }
        try {
            executor.execute(new Runnable() { // from class: io.bidmachine.core.Utils$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    Utils.$r8$lambda$6PpyNOzsq3bZ750xVN8nA7B7gQ8(str);
                }
            });
        } catch (Exception e) {
            Logger.w(e);
        }
    }

    public static void startActivity(Context context, Intent intent) {
        try {
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            context.startActivity(intent);
        } catch (Throwable th) {
            Logger.w(th);
        }
    }

    public static String streamToString(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
        } catch (Throwable unused) {
            byteArrayOutputStream = null;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStream.read(bArr);
                if (i == -1) {
                    String string = byteArrayOutputStream.toString("UTF-8");
                    flush(byteArrayOutputStream);
                    close(byteArrayOutputStream);
                    close(inputStream);
                    return string;
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
        } catch (Throwable unused2) {
            flush(byteArrayOutputStream);
            close(byteArrayOutputStream);
            close(inputStream);
            return null;
        }
    }

    public static Map<String, String> toMap(JSONObject jSONObject) throws Exception {
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objOpt = jSONObject.opt(next);
            if (objOpt != null) {
                map.put(next, objOpt.toString());
            }
        }
        return map;
    }

    public static String toSignatureHexString(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return "";
        }
        char[] cArr = new char[(bArr.length * 3) - 1];
        int i = 0;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            byte b = bArr[i2];
            char[] cArr2 = UPPER_HEX_ARRAY;
            cArr[i] = cArr2[(b & 255) >>> 4];
            int i3 = i + 2;
            cArr[i + 1] = cArr2[b & 15];
            if (i2 < bArr.length - 1) {
                i += 3;
                cArr[i3] = ':';
            } else {
                i = i3;
            }
        }
        return new String(cArr);
    }

    public static boolean canUseCleartextTraffic() {
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
    }

    public static Context findDialogContext(Context context, View view) {
        Activity activity = new SimpleContextProvider(context).getActivity();
        if (activity != null) {
            return activity;
        }
        if (view == null) {
            return context;
        }
        View viewFindContentOrRootView = ViewUtils.findContentOrRootView(view);
        return viewFindContentOrRootView != null ? viewFindContentOrRootView.getContext() : view.getContext();
    }

    public static <T> String join(List<T> list, CharSequence charSequence) {
        return join(list, charSequence, new Function() { // from class: io.bidmachine.core.Utils$$ExternalSyntheticLambda1
            @Override // io.bidmachine.Function
            public final Object apply(Object obj) {
                return obj.toString();
            }
        });
    }

    public static <T> T oneOf(T t, T t2) {
        return (T) oneOf(t, t2, null);
    }

    public static <T> String join(List<T> list, CharSequence charSequence, Function<T, String> function) {
        String strApply;
        if (isEmpty(list)) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder(list.size());
            for (T t : list) {
                if (t != null && (strApply = function.apply(t)) != null) {
                    if (sb.length() > 0) {
                        sb.append(charSequence);
                    }
                    sb.append(strApply);
                }
            }
            return sb.toString();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Integer parseIntOrDefault(String str, Integer num) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Integer.parseInt(str));
            } catch (Throwable unused) {
            }
        }
        return num;
    }

    public static void onBackgroundThread(Runnable runnable, long j) {
        BACKGROUND_HANDLER.postDelayed(runnable, j);
    }
}
