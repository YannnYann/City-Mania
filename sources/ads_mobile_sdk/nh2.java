package ads_mobile_sdk;

import android.widget.LinearLayout;
import androidx.activity.ComponentActivity;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class nh2 implements h0 {
    @Override // ads_mobile_sdk.h0
    public final void a(ComponentActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        LinearLayout linearLayout = new LinearLayout(activity);
        activity.setContentView(linearLayout);
        a(activity, linearLayout);
    }

    public abstract void a(ComponentActivity componentActivity, LinearLayout linearLayout);
}
