package io.bidmachine.iab.mraid;

/* JADX INFO: loaded from: classes5.dex */
public final class MraidNativeFeatureSchemeValidator {
    public final MraidNativeFeatureManager a;

    public MraidNativeFeatureSchemeValidator(MraidNativeFeatureManager mraidNativeFeatureManager) {
        this.a = mraidNativeFeatureManager;
    }

    public boolean a(String str) {
        if (str == null) {
            return true;
        }
        if (str.startsWith("sms")) {
            return this.a.isSmsFeatureAvailable();
        }
        if (str.startsWith("tel")) {
            return this.a.isTelFeatureAvailable();
        }
        if (str.startsWith("calendar")) {
            return this.a.isCalendarFeatureAvailable();
        }
        if (str.startsWith("storePicture")) {
            return this.a.isStorePictureFeatureAvailable();
        }
        return true;
    }
}
