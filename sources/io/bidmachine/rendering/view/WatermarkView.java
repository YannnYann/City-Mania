package io.bidmachine.rendering.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import io.bidmachine.rendering.internal.s;
import io.bidmachine.util.UiUtils;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class WatermarkView extends View {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatermarkView(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        setClickable(false);
        setFocusable(false);
    }

    public static final void a(WatermarkView this$0, Drawable drawable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setBackground(drawable);
    }

    public final void setWatermark(final Drawable drawable) {
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.view.WatermarkView$$ExternalSyntheticLambda0
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                WatermarkView.a(this.f$0, drawable);
            }
        });
    }
}
