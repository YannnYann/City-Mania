package ads_mobile_sdk;

import android.content.Context;
import android.hardware.display.DisplayManager;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xn0 implements rh3 {
    public final Context a;

    public xn0(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = context;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.DISPLAY_COUNT;
    }

    @Override // ads_mobile_sdk.rh3
    public final Object s(Continuation continuation) {
        DisplayManager displayManager = (DisplayManager) this.a.getSystemService(DisplayManager.class);
        if (displayManager != null) {
            return new q01(new wn0(displayManager.getDisplays().length));
        }
        return new m01("Unable to get display service", kk1.a);
    }
}
