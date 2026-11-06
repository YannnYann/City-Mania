package ads_mobile_sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.os.Build;
import android.view.WindowManager;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ni {
    public final Context a;
    public final tx b;
    public final g30 c;
    public final uv d;
    public final ex0 e;
    public final ao0 f;
    public final zw3 g;
    public final qn h;
    public final cn0 i;
    public final e11 j;

    public ni(Context context, ja1 initializationConfigWrapper, String afmaVersionString, String gmaVersion, tx clock, g30 consentManager, uv chromeVariationsProvider, ex0 flags, ao0 displayUtil, zw3 userAgentProvider, qn appState, cn0 deviceTierManager) {
        String applicationId;
        PackageInfo packageInfo;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        Intrinsics.checkNotNullParameter(afmaVersionString, "afmaVersionString");
        Intrinsics.checkNotNullParameter(gmaVersion, "gmaVersion");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        Intrinsics.checkNotNullParameter(chromeVariationsProvider, "chromeVariationsProvider");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(displayUtil, "displayUtil");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(deviceTierManager, "deviceTierManager");
        this.a = context;
        this.b = clock;
        this.c = consentManager;
        this.d = chromeVariationsProvider;
        this.e = flags;
        this.f = displayUtil;
        this.g = userAgentProvider;
        this.h = appState;
        this.i = deviceTierManager;
        Rect rectA = a();
        PackageManager packageManager = context.getPackageManager();
        String str = "";
        String str2 = (packageManager == null || (packageInfo = packageManager.getPackageInfo(context.getPackageName(), Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE)) == null || (str2 = packageInfo.versionName) == null) ? "" : str2;
        b11 b11VarW = e11.w();
        Intrinsics.checkNotNullExpressionValue(b11VarW, "newBuilder(...)");
        g11 g11VarA = f11.a(b11VarW);
        g11VarA.b();
        g11VarA.c();
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        g11VarA.g(RELEASE);
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        g11VarA.f(MODEL);
        g11VarA.c(Build.VERSION.SDK_INT);
        g11VarA.h(gmaVersion);
        g11VarA.a(afmaVersionString);
        String packageName = context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
        g11VarA.c(packageName);
        g11VarA.d(str2);
        InitializationConfig initializationConfigA = initializationConfigWrapper.a();
        if (initializationConfigA != null && (applicationId = initializationConfigA.getApplicationId()) != null) {
            str = applicationId;
        }
        g11VarA.b(str);
        String country = Locale.getDefault().getCountry();
        Intrinsics.checkNotNullExpressionValue(country, "getCountry(...)");
        g11VarA.e(country);
        g11VarA.b(rectA.width());
        g11VarA.a(rectA.height());
        this.j = g11VarA.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x04c9  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x04cc  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0507  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0530  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02d0 A[LOOP:1: B:69:0x02ca->B:71:0x02d0, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x032b A[LOOP:3: B:79:0x0325->B:81:0x032b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x03a8 A[LOOP:4: B:83:0x03a2->B:85:0x03a8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0403 A[LOOP:6: B:93:0x03fd->B:95:0x0403, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instruction units count: 1338
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ni.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Rect a() {
        Rect bounds;
        WindowManager windowManagerB = this.f.b(this.a);
        if (Build.VERSION.SDK_INT >= 30) {
            bounds = windowManagerB.getMaximumWindowMetrics().getBounds();
        } else {
            Rect rect = new Rect();
            windowManagerB.getDefaultDisplay().getRectSize(rect);
            bounds = rect;
        }
        Intrinsics.checkNotNull(bounds);
        return bounds;
    }
}
