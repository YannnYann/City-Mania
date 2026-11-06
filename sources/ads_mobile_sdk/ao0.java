package ads_mobile_sdk;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.PowerManager;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import com.google.common.base.Splitter;
import com.ironsource.C3522b4;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ao0 {
    public final f0 a;
    public final ex0 b;
    public final PowerManager c;
    public final KeyguardManager d;

    public ao0(Context context, f0 activityTracker, ex0 flags) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = activityTracker;
        this.b = flags;
        this.c = (PowerManager) context.getSystemService(PowerManager.class);
        this.d = (KeyguardManager) context.getSystemService(KeyguardManager.class);
    }

    public final Display a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context contextC = c(context);
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                return contextC.getDisplay();
            } catch (Exception e) {
                Splitter splitter = f01.a;
                f01.a("Unable to get display: " + e.getMessage(), null, null, 6);
            }
        }
        return b(contextC).getDefaultDisplay();
    }

    public final WindowManager b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = c(context).getSystemService((Class<Object>) WindowManager.class);
        Intrinsics.checkNotNullExpressionValue(systemService, "getSystemService(...)");
        return (WindowManager) systemService;
    }

    public final Context c(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity != null) {
            return activity;
        }
        Activity activityG = this.a.g();
        return activityG != null ? activityG : context;
    }

    public final boolean a(j53 requestType, i2 adConfiguration) {
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        ex0 ex0Var = this.b;
        ex0Var.getClass();
        h53 h53Var = j53.b;
        List defaultValue = CollectionsKt__CollectionsJVMKt.listOf("native");
        Intrinsics.checkNotNullParameter("gads:lock_screen_viewable_formats", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        if (((List) ex0Var.a("gads:lock_screen_viewable_formats", defaultValue, yr.g)).contains(requestType.a)) {
            return true;
        }
        ex0 ex0Var2 = this.b;
        ex0Var2.getClass();
        Intrinsics.checkNotNullParameter("gads:lockscreen_display_allowlist", C3522b4.i.W);
        return ((Boolean) ex0Var2.a("gads:lockscreen_display_allowlist", Boolean.TRUE, yr.b)).booleanValue() && adConfiguration.B;
    }

    public final boolean a(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (this.c.isInteractive() && view.getVisibility() == 0 && view.isShown() && view.getLocalVisibleRect(new Rect()) && view.getGlobalVisibleRect(new Rect())) {
            return z || !this.d.isKeyguardLocked();
        }
        return false;
    }
}
