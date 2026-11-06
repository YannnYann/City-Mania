package io.bidmachine;

import android.content.Context;
import android.graphics.drawable.Drawable;
import io.bidmachine.rendering.utils.WatermarkUtils;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class RendererConfiguration {
    public static final Companion Companion = new Companion(null);
    private static final String GOOGLE_WATERMARK = "google_watermark";
    private final Map<String, Object> extras;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public RendererConfiguration(Map<String, ? extends Object> extras) {
        Intrinsics.checkNotNullParameter(extras, "extras");
        this.extras = extras;
    }

    public final Map<String, Object> getExtras() {
        return this.extras;
    }

    public final String getWatermark() {
        Object obj = this.extras.get(GOOGLE_WATERMARK);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public final Drawable getWatermarkDrawable(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return WatermarkUtils.INSTANCE.convertToRepeatedDrawable(context, getWatermark());
    }
}
