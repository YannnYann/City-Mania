package io.bidmachine.nativead;

import io.bidmachine.AdProcessCallback;
import io.bidmachine.BidMachineAd;
import io.bidmachine.ContextProvider;
import io.bidmachine.ImageData;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.unified.UnifiedNativeAd;
import io.bidmachine.unified.UnifiedNativeAdRequestParams;

/* JADX INFO: loaded from: classes5.dex */
public final class NativeAd extends BidMachineAd<NativeAd, NativeRequest, NativeAdObject, AdObjectParams, UnifiedNativeAdRequestParams, NativeListener> implements NativePublicData {
    @Override // io.bidmachine.nativead.NativePublicData
    public ImageData getIcon() {
        if (hasLoadedObject()) {
            return getLoadedAdObject().getIcon();
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public ImageData getMainImage() {
        if (hasLoadedObject()) {
            return getLoadedAdObject().getMainImage();
        }
        return null;
    }

    public final boolean hasLoadedObject() {
        if (getLoadedAdObject() != null) {
            return true;
        }
        log("not loaded, please load ads first");
        return false;
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public boolean hasVideo() {
        return hasLoadedObject() && getLoadedAdObject().hasVideo();
    }

    @Override // io.bidmachine.BidMachineAd
    public boolean isDuplicateShowDisabled() {
        return false;
    }

    @Override // io.bidmachine.BidMachineAd
    public NativeAdObject createAdObject(ContextProvider contextProvider, NativeRequest nativeRequest, NetworkAdapter networkAdapter, AdObjectParams adObjectParams, AdProcessCallback adProcessCallback) {
        UnifiedNativeAd unifiedNativeAdCreateNativeAd = networkAdapter.createNativeAd();
        if (unifiedNativeAdCreateNativeAd == null) {
            return null;
        }
        return new NativeAdObject(contextProvider, adProcessCallback, nativeRequest, adObjectParams, unifiedNativeAdCreateNativeAd);
    }
}
