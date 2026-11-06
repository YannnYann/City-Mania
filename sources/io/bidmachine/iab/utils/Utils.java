package io.bidmachine.iab.utils;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Insets;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.ironsource.C3746nc;
import io.bidmachine.rendering.Rendering;
import io.bidmachine.util.network.NetworkUtils;
import java.io.Closeable;
import java.io.Flushable;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes5.dex */
public class Utils {
    public static final Handler a = new Handler(Looper.getMainLooper());

    public class a implements View.OnApplyWindowInsetsListener {
        public final /* synthetic */ int a;

        public a(int i) {
            this.a = i;
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            Insets insets = windowInsets.getInsets(this.a);
            view.setPadding(insets.left, insets.top, insets.right, insets.bottom);
            return windowInsets;
        }
    }

    public static void applyWindowInsets(Activity activity) {
        if (Build.VERSION.SDK_INT >= 34) {
            Window window = activity.getWindow();
            if (window != null) {
                applyWindowInsets(window.getDecorView());
            } else {
                applyWindowInsets(activity.findViewById(R.id.content));
            }
        }
    }

    public static void close(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                CommonLog.e("Utils", th);
            }
        }
    }

    public static Float convertCssSizeToPx(String value) {
        return Float.valueOf(value.replace("px", ""));
    }

    public static int dpToPx(Context context, float size) {
        return (int) TypedValue.applyDimension(1, size, context.getResources().getDisplayMetrics());
    }

    public static void flush(Flushable flushable) {
        if (flushable != null) {
            try {
                flushable.flush();
            } catch (Throwable th) {
                CommonLog.e("Utils", th);
            }
        }
    }

    public static int getScreenOrientation(Context context) {
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        int i = context.getResources().getConfiguration().orientation;
        if (i == 1) {
            return (rotation == 2 || rotation == 3) ? 9 : 1;
        }
        if (i == 2) {
            return (rotation == 2 || rotation == 3) ? 8 : 0;
        }
        return 9;
    }

    public static boolean isLandscapeOrientation(Context context) {
        int screenOrientation = getScreenOrientation(context);
        return screenOrientation == 0 || screenOrientation == 8 || screenOrientation == 6 || screenOrientation == 11;
    }

    @SuppressLint({"MissingPermission"})
    public static boolean isNetworkAvailable(Context context) {
        NetworkInfo activeNetworkInfo;
        CommonLog.d("Utils", "Testing connectivity:", new Object[0]);
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) {
            CommonLog.d("Utils", "No Internet connection", new Object[0]);
            return false;
        }
        CommonLog.d("Utils", "Connected to Internet", new Object[0]);
        return true;
    }

    public static boolean isTablet(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        double d = displayMetrics.widthPixels / displayMetrics.xdpi;
        double d2 = displayMetrics.heightPixels / displayMetrics.ydpi;
        return Math.sqrt((d * d) + (d2 * d2)) >= 6.6d;
    }

    public static Float max(Float first, Float second) {
        return first == null ? second : second == null ? first : Float.valueOf(Math.max(first.floatValue(), second.floatValue()));
    }

    public static Float min(Float first, Float second) {
        return first == null ? second : second == null ? first : Float.valueOf(Math.min(first.floatValue(), second.floatValue()));
    }

    public static void onUiThread(Runnable runnable) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            runnable.run();
        } else {
            a.post(runnable);
        }
    }

    public static int orientationBySize(int width, int height) {
        return width > height ? 2 : 1;
    }

    public static String orientationToString(int orientation) {
        return orientation != 0 ? orientation != 1 ? orientation != 2 ? "UNKNOWN" : "LANDSCAPE" : "PORTRAIT" : "UNDEFINED";
    }

    public static void removeFromParent(View view) {
        if (view == null || view.getParent() == null || !(view.getParent() instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) view.getParent()).removeView(view);
    }

    public static void simpleTrackUrl(final String url) {
        simpleTrackUrl(url, Executors.newSingleThreadExecutor());
    }

    public static String stringifyRect(Rect rect) {
        return rect.left + "," + rect.top + "," + rect.width() + "," + rect.height();
    }

    public static String stringifySize(Rect rect) {
        return rect.width() + "," + rect.height();
    }

    public static /* synthetic */ void a(String str) throws Throwable {
        HttpURLConnection httpURLConnection;
        Exception e;
        HttpURLConnection httpURLConnection2 = null;
        try {
            CommonLog.d("Utils", "Connection to URL: %s", str);
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                try {
                    httpURLConnection.setInstanceFollowRedirects(true);
                    httpURLConnection.setConnectTimeout(5000);
                    httpURLConnection.setRequestProperty("Connection", "close");
                    httpURLConnection.setRequestMethod(C3746nc.a);
                    String userAgent = Rendering.getUserAgent();
                    if (!TextUtils.isEmpty(userAgent)) {
                        httpURLConnection.setRequestProperty("User-Agent", userAgent);
                    }
                    CommonLog.d("Utils", "Response code: %d, for URL: %s", Integer.valueOf(httpURLConnection.getResponseCode()), str);
                } catch (Exception e2) {
                    e = e2;
                    CommonLog.e("Utils", "%s: %s: %s", str, e.getMessage(), e.toString());
                }
            } catch (Throwable th) {
                th = th;
                httpURLConnection2 = httpURLConnection;
                NetworkUtils.disconnectSafely(httpURLConnection2);
                throw th;
            }
        } catch (Exception e3) {
            httpURLConnection = null;
            e = e3;
        } catch (Throwable th2) {
            th = th2;
            NetworkUtils.disconnectSafely(httpURLConnection2);
            throw th;
        }
        NetworkUtils.disconnectSafely(httpURLConnection);
    }

    public static void simpleTrackUrl(final String url, final Executor executor) {
        if (TextUtils.isEmpty(url)) {
            CommonLog.d("Utils", "url is null or empty", new Object[0]);
            return;
        }
        try {
            executor.execute(new Runnable() { // from class: io.bidmachine.iab.utils.Utils$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    Utils.a(url);
                }
            });
        } catch (Exception e) {
            CommonLog.e("Utils", e);
        }
    }

    public static void applyWindowInsets(View view) {
        applyWindowInsets(view, WindowInsets.Type.systemBars() | WindowInsets.Type.displayCutout());
    }

    public static void applyWindowInsets(View view, int typeInsets) {
        view.setOnApplyWindowInsetsListener(new a(typeInsets));
        view.requestApplyInsets();
    }
}
