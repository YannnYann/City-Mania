package io.bidmachine.rendering.internal;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.window.OnBackInvokedCallback;
import io.bidmachine.util.UiUtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public class AdActivity extends Activity {
    public void a() {
    }

    public void b() {
        UiUtilsKt.setActivityBackgroundColor(this, -16777216);
        UiUtilsKt.setNoActivityTransition(this);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        a();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        b();
        super.onCreate(bundle);
        setVolumeControlStream(3);
        if (Build.VERSION.SDK_INT >= 33) {
            getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, new OnBackInvokedCallback() { // from class: io.bidmachine.rendering.internal.AdActivity$$ExternalSyntheticLambda0
                public final void onBackInvoked() {
                    AdActivity.a(this.f$0);
                }
            });
        }
    }

    public static final void a(AdActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a();
    }
}
