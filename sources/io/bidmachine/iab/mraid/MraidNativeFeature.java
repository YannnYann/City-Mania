package io.bidmachine.iab.mraid;

import android.content.Context;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class MraidNativeFeature {
    public static final String[] a = {"sms", "tel", "inlineVideo", "calendar", "storePicture"};

    public static ArrayList a(MraidNativeFeatureManager mraidNativeFeatureManager) {
        ArrayList arrayList = new ArrayList();
        if (mraidNativeFeatureManager.isTelFeatureAvailable()) {
            arrayList.add("tel");
        }
        if (mraidNativeFeatureManager.isSmsFeatureAvailable()) {
            arrayList.add("sms");
        }
        if (mraidNativeFeatureManager.isInlineVideoFeatureAvailable()) {
            arrayList.add("inlineVideo");
        }
        if (mraidNativeFeatureManager.isCalendarFeatureAvailable()) {
            arrayList.add("calendar");
        }
        if (mraidNativeFeatureManager.isStorePictureFeatureAvailable()) {
            arrayList.add("storePicture");
        }
        return arrayList;
    }

    public static String[] getSupportedFeatures(Context context) {
        return (String[]) a(new MraidNativeFeatureManager(context, a)).toArray(new String[0]);
    }
}
