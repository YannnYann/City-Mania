package io.bidmachine.nativead;

import io.bidmachine.ImageData;
import io.bidmachine.LabelData;
import io.bidmachine.PrivacySheetData;
import io.bidmachine.internal.C4227k;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public class NativeNetworkAdapter implements NativeData {
    public static final Companion Companion = new Companion(null);
    public LabelData adLabelData;
    public String callToAction;
    public String clickUrl;
    public String description;
    public C4227k disclaimerData;
    public boolean hasVideo;
    public ImageData iconImageData;
    public ImageData mainImageData;
    public PrivacySheetData privacySheetData;
    public String title;
    public String videoAdm;
    public String videoUrl;
    public float rating = -1.0f;
    public boolean isNetworkControlLoadingAssets = true;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public void destroy() {
    }

    public String getCallToAction() {
        return this.callToAction;
    }

    public String getClickUrl() {
        return this.clickUrl;
    }

    public String getDescription() {
        return this.description;
    }

    @Override // io.bidmachine.nativead.NativeData
    public C4227k getDisclaimerData() {
        return this.disclaimerData;
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public ImageData getIcon() {
        return this.iconImageData;
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public ImageData getMainImage() {
        return this.mainImageData;
    }

    public String getTitle() {
        return this.title;
    }

    @Override // io.bidmachine.nativead.NativeData
    public String getVideoAdm() {
        return this.videoAdm;
    }

    @Override // io.bidmachine.nativead.NativeData
    public String getVideoUrl() {
        return this.videoUrl;
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public boolean hasVideo() {
        return this.hasVideo;
    }

    public final boolean isNetworkControlLoadingAssets() {
        return this.isNetworkControlLoadingAssets;
    }

    public final boolean isValid() {
        String description;
        String callToAction;
        String title = getTitle();
        return (title == null || title.length() == 0 || (description = getDescription()) == null || description.length() == 0 || (callToAction = getCallToAction()) == null || callToAction.length() == 0) ? false : true;
    }

    public final NativeNetworkAdapter setAdLabelData(LabelData labelData) {
        this.adLabelData = labelData;
        return this;
    }

    public final NativeNetworkAdapter setCallToAction(String str) {
        this.callToAction = str;
        return this;
    }

    public final NativeNetworkAdapter setClickUrl(String str) {
        this.clickUrl = str;
        return this;
    }

    public final NativeNetworkAdapter setDescription(String str) {
        this.description = str;
        return this;
    }

    public final NativeNetworkAdapter setDisclaimerData(C4227k c4227k) {
        this.disclaimerData = c4227k;
        return this;
    }

    public final NativeNetworkAdapter setHasVideo(boolean z) {
        this.hasVideo = z;
        return this;
    }

    public final NativeNetworkAdapter setIcon(ImageData imageData) {
        this.iconImageData = imageData;
        return this;
    }

    public final NativeNetworkAdapter setMainImage(ImageData imageData) {
        this.mainImageData = imageData;
        return this;
    }

    public final NativeNetworkAdapter setNetworkControlLoadingAssets(boolean z) {
        this.isNetworkControlLoadingAssets = z;
        return this;
    }

    public final NativeNetworkAdapter setPrivacySheetData(PrivacySheetData privacySheetData) {
        this.privacySheetData = privacySheetData;
        return this;
    }

    public final NativeNetworkAdapter setRating(Float f) {
        this.rating = f != null ? f.floatValue() : -1.0f;
        return this;
    }

    public final NativeNetworkAdapter setTitle(String str) {
        this.title = str;
        return this;
    }

    public final NativeNetworkAdapter setVideoAdm(String str) {
        this.videoAdm = str;
        return this;
    }

    public final NativeNetworkAdapter setVideoUrl(String str) {
        this.videoUrl = str;
        return this;
    }

    public void unregisterNative() {
    }
}
