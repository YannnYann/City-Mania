package ads_mobile_sdk;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.view.WindowMetrics;
import com.google.gson.JsonObject;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class zx3 implements r41 {
    public final Context a;
    public final f0 b;

    public zx3(Context applicationContext, f0 activityTracker) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        this.a = applicationContext;
        this.b = activityTracker;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_VIEW_LOCATION;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        int iWidth;
        int iHeight;
        WindowMetrics currentWindowMetrics;
        JsonObject jsonObject = new JsonObject();
        int[] iArr = new int[2];
        r31Var.getLocationInWindow(iArr);
        jsonObject.addProperty("xInPixels", Boxing.boxInt(iArr[0]));
        jsonObject.addProperty("yInPixels", Boxing.boxInt(iArr[1]));
        Context contextG = this.b.g();
        if (contextG == null) {
            contextG = this.a;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            WindowManager windowManager = (WindowManager) contextG.getSystemService(WindowManager.class);
            if (windowManager != null && (currentWindowMetrics = windowManager.getCurrentWindowMetrics()) != null) {
                iWidth = currentWindowMetrics.getBounds().width();
                iHeight = currentWindowMetrics.getBounds().height();
            } else {
                return Unit.INSTANCE;
            }
        } else {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager2 = (WindowManager) contextG.getSystemService(WindowManager.class);
            Display defaultDisplay = windowManager2 != null ? windowManager2.getDefaultDisplay() : null;
            if (defaultDisplay == null) {
                return Unit.INSTANCE;
            }
            defaultDisplay.getMetrics(displayMetrics);
            int i = displayMetrics.widthPixels;
            int i2 = displayMetrics.heightPixels;
            iWidth = i;
            iHeight = i2;
        }
        jsonObject.addProperty("windowWidthInPixels", Boxing.boxInt(iWidth));
        jsonObject.addProperty("windowHeightInPixels", Boxing.boxInt(iHeight));
        Object objA = r31Var.a(jsonObject, "locationReady", continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }
}
