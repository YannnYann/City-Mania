package ads_mobile_sdk;

import android.util.Log;
import com.google.common.base.Splitter;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class f01 {
    public static final Splitter a = Splitter.fixedLength(Sdk.SDKError.Reason.VUNGLE_OIT_CREATION_ERROR_VALUE);

    public static void a(String msg, Throwable th) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (a(6, "GoogleMobileAds")) {
            for (String str : a.split(msg)) {
                Log.e("GoogleMobileAds", Thread.currentThread().getName() + ": " + str);
            }
            if (th != null) {
                String stackTraceString = Log.getStackTraceString(th);
                Intrinsics.checkNotNullExpressionValue(stackTraceString, "getStackTraceString(...)");
                Log.e("GoogleMobileAds", stackTraceString);
            }
        }
    }

    public static void b(String msg, Throwable th) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (a(2, "GoogleMobileAds")) {
            for (String str : a.split(msg)) {
                Log.v("GoogleMobileAds", Thread.currentThread().getName() + ": " + str);
            }
            if (th != null) {
                String stackTraceString = Log.getStackTraceString(th);
                Intrinsics.checkNotNullExpressionValue(stackTraceString, "getStackTraceString(...)");
                Log.v("GoogleMobileAds", stackTraceString);
            }
        }
    }

    public static void c(String msg, Throwable th) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (a(5, "GoogleMobileAds")) {
            for (String str : a.split(msg)) {
                Log.w("GoogleMobileAds", Thread.currentThread().getName() + ": " + str);
            }
            if (th != null) {
                String stackTraceString = Log.getStackTraceString(th);
                Intrinsics.checkNotNullExpressionValue(stackTraceString, "getStackTraceString(...)");
                Log.w("GoogleMobileAds", stackTraceString);
            }
        }
    }

    public static void a(String msg, Throwable th, String tag) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (a(4, tag)) {
            for (String str : a.split(msg)) {
                Log.i(tag, Thread.currentThread().getName() + ": " + str);
            }
            if (th != null) {
                String stackTraceString = Log.getStackTraceString(th);
                Intrinsics.checkNotNullExpressionValue(stackTraceString, "getStackTraceString(...)");
                Log.i(tag, stackTraceString);
            }
        }
    }

    public static /* synthetic */ void a(String str, RuntimeException runtimeException, String str2, int i) {
        if ((i & 2) != 0) {
            runtimeException = null;
        }
        if ((i & 4) != 0) {
            str2 = "GoogleMobileAds";
        }
        a(str, runtimeException, str2);
    }

    public static boolean a(int i, String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        return i >= au.b || Log.isLoggable(tag, i);
    }

    public static void a(Function0 msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (au.a() == bu.a || !a(2, "GoogleMobileAds")) {
            return;
        }
        for (String str : a.split((CharSequence) msg.invoke())) {
            Log.v("GoogleMobileAds", Thread.currentThread().getName() + ": " + str);
        }
    }

    public static Splitter a() {
        return a;
    }
}
