package com.ironsource.adapters.admob.banner;

import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.ironsource.adapters.admob.R;
import com.ironsource.mediationsdk.ISBannerSize;
import org.json.JSONObject;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'NB_TMP_BASIC' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:293)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:266)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: AdMobNativeBannerViewHandler.java */
/* JADX INFO: loaded from: classes3.dex */
final class NativeTemplateType {
    private static final /* synthetic */ NativeTemplateType[] $VALUES;
    private static final String NATIVE_TEMPLATE_NAME = "nativeBannerTemplateName";
    public static final NativeTemplateType NB_TMP_BASIC;
    public static final NativeTemplateType NB_TMP_BASIC_LARGE;
    public static final NativeTemplateType NB_TMP_ICON_TEXT;
    public static final NativeTemplateType NB_TMP_RECT;
    public static final NativeTemplateType NB_TMP_TEXT_CTA;
    private final AdChoicesPlacement mAdChoicesPlacement;
    private final boolean mHideCallToAction;
    private final boolean mHideVideoContent;
    private final int mLayoutId;
    private final NativeAd.NativeMediaAspectRatio mMediaAspectRatio;

    private static /* synthetic */ NativeTemplateType[] $values() {
        return new NativeTemplateType[]{NB_TMP_BASIC, NB_TMP_BASIC_LARGE, NB_TMP_ICON_TEXT, NB_TMP_TEXT_CTA, NB_TMP_RECT};
    }

    public static NativeTemplateType valueOf(String str) {
        return (NativeTemplateType) Enum.valueOf(NativeTemplateType.class, str);
    }

    public static NativeTemplateType[] values() {
        return (NativeTemplateType[]) $VALUES.clone();
    }

    static {
        int i = R.layout.ad_mob_native_banner_template_basic_layout;
        AdChoicesPlacement adChoicesPlacement = AdChoicesPlacement.TOP_RIGHT;
        NativeAd.NativeMediaAspectRatio nativeMediaAspectRatio = NativeAd.NativeMediaAspectRatio.ANY;
        NB_TMP_BASIC = new NativeTemplateType("NB_TMP_BASIC", 0, i, true, true, adChoicesPlacement, nativeMediaAspectRatio);
        NB_TMP_BASIC_LARGE = new NativeTemplateType("NB_TMP_BASIC_LARGE", 1, R.layout.ad_mob_native_banner_template_basic_layout, false, true, adChoicesPlacement, nativeMediaAspectRatio);
        NB_TMP_ICON_TEXT = new NativeTemplateType("NB_TMP_ICON_TEXT", 2, R.layout.ad_mob_native_banner_template_icon_text_layout, true, true, adChoicesPlacement, nativeMediaAspectRatio);
        NB_TMP_TEXT_CTA = new NativeTemplateType("NB_TMP_TEXT_CTA", 3, R.layout.ad_mob_native_banner_template_text_cta_layout, false, true, AdChoicesPlacement.BOTTOM_LEFT, nativeMediaAspectRatio);
        NB_TMP_RECT = new NativeTemplateType("NB_TMP_RECT", 4, R.layout.ad_mob_native_banner_template_rect_layout, false, false, adChoicesPlacement, nativeMediaAspectRatio);
        $VALUES = $values();
    }

    private NativeTemplateType(String str, int i, int i2, boolean z, boolean z2, AdChoicesPlacement adChoicesPlacement, NativeAd.NativeMediaAspectRatio nativeMediaAspectRatio) {
        this.mLayoutId = i2;
        this.mHideCallToAction = z;
        this.mHideVideoContent = z2;
        this.mAdChoicesPlacement = adChoicesPlacement;
        this.mMediaAspectRatio = nativeMediaAspectRatio;
    }

    public int getLayoutId() {
        return this.mLayoutId;
    }

    public boolean shouldHideCallToAction() {
        return this.mHideCallToAction;
    }

    public boolean shouldHideVideoContent() {
        return this.mHideVideoContent;
    }

    public AdChoicesPlacement getAdChoicesPlacement() {
        return this.mAdChoicesPlacement;
    }

    public NativeAd.NativeMediaAspectRatio getMediaAspectRatio() {
        return this.mMediaAspectRatio;
    }

    public static NativeTemplateType createTemplateType(JSONObject jSONObject, ISBannerSize iSBannerSize) {
        String description = iSBannerSize.getDescription();
        description.getClass();
        switch (description) {
            case "RECTANGLE":
                return NB_TMP_RECT;
            case "LARGE":
                return NB_TMP_BASIC_LARGE;
            case "SMART":
            case "BANNER":
                try {
                    return valueOf(jSONObject.optString(NATIVE_TEMPLATE_NAME, NB_TMP_ICON_TEXT.toString()));
                } catch (IllegalArgumentException unused) {
                    return NB_TMP_ICON_TEXT;
                }
            default:
                return NB_TMP_BASIC;
        }
    }
}
