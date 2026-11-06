package io.bidmachine.iab.mraid;

import android.content.Context;
import io.bidmachine.iab.utils.SystemFeatureAvailability;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class MraidNativeFeatureManager {
    public final boolean a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final boolean e;

    public MraidNativeFeatureManager(Context context, String[] nativeFeatures) {
        this(context, (List<String>) (nativeFeatures != null ? Arrays.asList(nativeFeatures) : null));
    }

    public final boolean a(String str, List list) {
        return list != null && list.contains(str);
    }

    public boolean isCalendarFeatureAvailable() {
        return this.d;
    }

    public boolean isInlineVideoFeatureAvailable() {
        return this.c;
    }

    public boolean isSmsFeatureAvailable() {
        return this.a;
    }

    public boolean isStorePictureFeatureAvailable() {
        return this.e;
    }

    public boolean isTelFeatureAvailable() {
        return this.b;
    }

    public MraidNativeFeatureManager(Context context, List<String> nativeFeatures) {
        SystemFeatureAvailability systemFeatureAvailability = new SystemFeatureAvailability(context);
        boolean z = false;
        this.a = a("sms", nativeFeatures) && systemFeatureAvailability.hasTelephony();
        if (a("tel", nativeFeatures) && systemFeatureAvailability.hasTelephony()) {
            z = true;
        }
        this.b = z;
        this.c = a("inlineVideo", nativeFeatures);
        this.d = a("calendar", nativeFeatures);
        this.e = a("storePicture", nativeFeatures);
    }
}
