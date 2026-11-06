package io.bidmachine.nativead;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import io.bidmachine.AdObjectImpl;
import io.bidmachine.AdProcessCallback;
import io.bidmachine.ContextProvider;
import io.bidmachine.Executable;
import io.bidmachine.ImageData;
import io.bidmachine.ImageDataImpl;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.iab.vast.VastRequest;
import io.bidmachine.internal.AbstractC4221e;
import io.bidmachine.internal.C4223g;
import io.bidmachine.internal.C4227k;
import io.bidmachine.internal.C4228l;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.nativead.view.MediaView;
import io.bidmachine.rendering.Rendering;
import io.bidmachine.rendering.Repository;
import io.bidmachine.rendering.utils.UrlHandler;
import io.bidmachine.unified.UnifiedNativeAd;
import io.bidmachine.unified.UnifiedNativeAdCallback;
import io.bidmachine.unified.UnifiedNativeAdRequestParams;
import io.bidmachine.util.ProcessUrlResult;
import io.bidmachine.util.SafeExecutable;
import io.bidmachine.util.Tag;
import io.bidmachine.util.ViewUtils;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.lazy.LazyCachedValue;
import io.bidmachine.utils.lazy.LazyValue;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class NativeAdObject extends AdObjectImpl<NativeRequest, AdObjectParams, UnifiedNativeAd, UnifiedNativeAdCallback, UnifiedNativeAdRequestParams> implements NativeData, NativeMediaPrivateData, NativeInteractor, View.OnClickListener {
    public static final WeakHashMap<ViewGroup, WeakHashMap<View, View.OnClickListener>> clickStorage = new WeakHashMap<>(3);
    public ViewGroup container;
    public C4228l disclaimerTextView;
    public ImageDataImpl iconImageData;
    public ImageDataImpl mainImageData;
    public MediaView mediaView;
    public NativeNetworkAdapter nativeNetworkAdapter;
    public ProgressDialog progressDialog;
    public Handler progressDialogCanceller;
    public Runnable progressRunnable;
    public final LazyCachedValue<Repository> repository;
    public final Tag tag;
    public VastRequest vastRequest;
    public Uri videoUri;
    public boolean viewRegistered;
    public View.OnLayoutChangeListener watermarkAutoLayoutListener;
    public View watermarkView;

    public class a implements View.OnAttachStateChangeListener {
        public a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
            NativeAdObject.this.hideProgressDialog();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NativeAdObject.this.hideProgressDialog();
        }
    }

    public class d implements SafeExecutable {
        public d() {
        }

        @Override // io.bidmachine.util.SafeExecutable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onExecute(ProcessUrlResult processUrlResult) {
            if (processUrlResult.isSuccess()) {
                NativeAdObject.this.getAdProcessCallback().processClickVerified(processUrlResult.getSystemComponent(), null);
            }
            NativeAdObject.this.hideProgressDialog();
        }

        public /* synthetic */ d(NativeAdObject nativeAdObject, a aVar) {
            this();
        }
    }

    public final class e extends AbstractC4221e implements UnifiedNativeAdCallback {
        public e(AdProcessCallback adProcessCallback) {
            super(adProcessCallback);
        }

        @Override // io.bidmachine.unified.UnifiedNativeAdCallback
        public void onAdLoaded(NativeNetworkAdapter nativeNetworkAdapter) {
            try {
                NativeAdObject.this.setNativeNetworkAdapter(nativeNetworkAdapter);
                if (NativeAdObject.this.getAdRequest().getAdRequestParameters().isValidateAssets() && !nativeNetworkAdapter.isValid()) {
                    a().processLoadFail(BMError.incorrectContent("Native ad does not contain all required assets"));
                } else if (nativeNetworkAdapter.isNetworkControlLoadingAssets()) {
                    a().processLoadSuccess();
                } else {
                    NativeAdObject nativeAdObject = NativeAdObject.this;
                    nativeAdObject.loadAsset(nativeAdObject.getApplicationContext(), nativeNetworkAdapter);
                }
            } catch (Exception e) {
                Logger.w(NativeAdObject.this.tag, e);
                a().processLoadFail(BMError.throwable("Exception loading native ad assets", e));
            }
        }
    }

    public NativeAdObject(final ContextProvider contextProvider, AdProcessCallback adProcessCallback, NativeRequest nativeRequest, AdObjectParams adObjectParams, UnifiedNativeAd unifiedNativeAd) {
        super(contextProvider, adProcessCallback, nativeRequest, adObjectParams, unifiedNativeAd);
        this.tag = new Tag("NativeAdObject");
        this.repository = new LazyCachedValue<>(new LazyValue() { // from class: io.bidmachine.nativead.NativeAdObject$$ExternalSyntheticLambda0
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return Rendering.INSTANCE.createRepository(C4223g.a(contextProvider.getApplicationContext()));
            }
        });
    }

    public final void deConfigureClickableView(ViewGroup viewGroup) {
        WeakHashMap<View, View.OnClickListener> weakHashMap = clickStorage.get(viewGroup);
        if (weakHashMap != null) {
            for (Map.Entry<View, View.OnClickListener> entry : weakHashMap.entrySet()) {
                if (entry != null && entry.getKey() != null) {
                    entry.getKey().setOnClickListener(null);
                }
            }
            clickStorage.remove(viewGroup);
        }
    }

    public final void destroyDisclaimerTextView() {
        C4228l c4228l = this.disclaimerTextView;
        if (c4228l == null) {
            return;
        }
        c4228l.a();
        this.disclaimerTextView = null;
    }

    public void dispatchClick() {
        getAdProcessCallback().processClicked(null, null);
    }

    @Override // io.bidmachine.nativead.NativeInteractor
    public void dispatchVideoPlayFinished() {
    }

    public String getClickUrl() {
        NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
        if (nativeNetworkAdapter != null) {
            return nativeNetworkAdapter.getClickUrl();
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativeData
    public C4227k getDisclaimerData() {
        NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
        if (nativeNetworkAdapter != null) {
            return nativeNetworkAdapter.getDisclaimerData();
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public ImageData getIcon() {
        return this.iconImageData;
    }

    @Override // io.bidmachine.nativead.NativeMediaPublicData
    public Drawable getIconDrawable() {
        ImageDataImpl imageDataImpl = this.iconImageData;
        if (imageDataImpl != null) {
            return imageDataImpl.getImage();
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativeMediaPublicData
    public Uri getIconUri() {
        ImageDataImpl imageDataImpl = this.iconImageData;
        if (imageDataImpl != null) {
            return imageDataImpl.getLocalUri();
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativeMediaPublicData
    public Drawable getImageDrawable() {
        ImageDataImpl imageDataImpl = this.mainImageData;
        if (imageDataImpl != null) {
            return imageDataImpl.getImage();
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativeMediaPublicData
    public Uri getImageUri() {
        ImageDataImpl imageDataImpl = this.mainImageData;
        if (imageDataImpl != null) {
            return imageDataImpl.getLocalUri();
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public ImageData getMainImage() {
        return this.mainImageData;
    }

    public Tag getTag() {
        return this.tag;
    }

    @Override // io.bidmachine.nativead.NativeMediaPrivateData
    public VastRequest getVastRequest() {
        return this.vastRequest;
    }

    @Override // io.bidmachine.nativead.NativeData
    public String getVideoAdm() {
        NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
        if (nativeNetworkAdapter != null) {
            return nativeNetworkAdapter.getVideoAdm();
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativeMediaPublicData
    public Uri getVideoUri() {
        return this.videoUri;
    }

    @Override // io.bidmachine.nativead.NativeData
    public String getVideoUrl() {
        NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
        if (nativeNetworkAdapter != null) {
            return nativeNetworkAdapter.getVideoUrl();
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public boolean hasVideo() {
        if (this.videoUri != null) {
            return true;
        }
        NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
        return nativeNetworkAdapter != null && nativeNetworkAdapter.hasVideo();
    }

    public final void hideProgressDialog() {
        Handler handler;
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog != null && progressDialog.isShowing()) {
            this.progressDialog.dismiss();
            this.progressDialog = null;
        }
        Runnable runnable = this.progressRunnable;
        if (runnable == null || (handler = this.progressDialogCanceller) == null) {
            return;
        }
        handler.removeCallbacks(runnable);
        this.progressDialogCanceller = null;
        this.progressRunnable = null;
    }

    public final void loadAsset(Context context, NativeData nativeData) {
        new AssetLoader(context, this.tag, getAdRequest().getAdRequestParameters(), getAdProcessCallback(), nativeData, this).downloadNativeAdsImages(context);
    }

    public final boolean mayShowProgressDialog() {
        ProgressDialog progressDialog = this.progressDialog;
        return progressDialog == null || !progressDialog.isShowing();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        dispatchClick();
    }

    @Override // io.bidmachine.AdObjectImpl, io.bidmachine.models.AdObject
    public Boolean onClicked() {
        super.onClicked();
        String clickUrl = getClickUrl();
        if (TextUtils.isEmpty(clickUrl)) {
            return Boolean.FALSE;
        }
        showProgressDialog(getActivity());
        UrlHandler.openUrl(getApplicationContext(), clickUrl, new d(this, null));
        return Boolean.TRUE;
    }

    @Override // io.bidmachine.AdObjectImpl, io.bidmachine.models.AdObject
    public void onDestroy() {
        try {
            super.onDestroy();
            unregisterView();
            Utils.ifNotNull(this.iconImageData, new Executable() { // from class: io.bidmachine.nativead.NativeAdObject$$ExternalSyntheticLambda1
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((ImageDataImpl) obj).destroy();
                }
            });
            Utils.ifNotNull(this.mainImageData, new Executable() { // from class: io.bidmachine.nativead.NativeAdObject$$ExternalSyntheticLambda1
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((ImageDataImpl) obj).destroy();
                }
            });
            Utils.ifNotNull(this.nativeNetworkAdapter, new Executable() { // from class: io.bidmachine.nativead.NativeAdObject$$ExternalSyntheticLambda2
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((NativeNetworkAdapter) obj).destroy();
                }
            });
            this.iconImageData = null;
            this.mainImageData = null;
        } finally {
            try {
            } finally {
            }
        }
    }

    public final void removeWatermark() {
        View view = this.watermarkView;
        if (view != null) {
            ViewUtils.removeFromParent(view);
            this.watermarkView = null;
        }
    }

    public final void removeWatermarkAutoLayout(ViewGroup viewGroup) {
        View.OnLayoutChangeListener onLayoutChangeListener = this.watermarkAutoLayoutListener;
        if (onLayoutChangeListener != null) {
            viewGroup.removeOnLayoutChangeListener(onLayoutChangeListener);
            this.watermarkAutoLayoutListener = null;
        }
    }

    @Override // io.bidmachine.nativead.NativeMediaPrivateData
    public void setIconUri(Uri uri) {
        ImageDataImpl imageDataImpl = this.iconImageData;
        if (imageDataImpl != null) {
            imageDataImpl.setLocalUri(uri);
        }
    }

    @Override // io.bidmachine.nativead.NativeMediaPrivateData
    public void setImageUri(Uri uri) {
        ImageDataImpl imageDataImpl = this.mainImageData;
        if (imageDataImpl != null) {
            imageDataImpl.setLocalUri(uri);
        }
    }

    public void setNativeNetworkAdapter(NativeNetworkAdapter nativeNetworkAdapter) {
        this.nativeNetworkAdapter = nativeNetworkAdapter;
        if (nativeNetworkAdapter != null) {
            this.iconImageData = new ImageDataImpl(nativeNetworkAdapter.getIcon());
            this.mainImageData = new ImageDataImpl(nativeNetworkAdapter.getMainImage());
        }
    }

    @Override // io.bidmachine.nativead.NativeMediaPrivateData
    public void setVastRequest(VastRequest vastRequest) {
        this.vastRequest = vastRequest;
    }

    @Override // io.bidmachine.nativead.NativeMediaPrivateData
    public void setVideoUri(Uri uri) {
        this.videoUri = uri;
    }

    public final void showProgressDialog(Activity activity) {
        if (this.container != null && mayShowProgressDialog() && Utils.canAddWindowToActivity(activity)) {
            this.container.addOnAttachStateChangeListener(new a());
            ProgressDialog progressDialogShow = ProgressDialog.show(activity, "", "Loading...");
            this.progressDialog = progressDialogShow;
            progressDialogShow.setProgressStyle(0);
            this.progressDialog.setCancelable(false);
            this.progressRunnable = new b();
            Handler handler = new Handler(Looper.getMainLooper());
            this.progressDialogCanceller = handler;
            handler.postDelayed(this.progressRunnable, 5000L);
        }
    }

    public void unregisterView() {
        try {
            stopViewabilityTracker();
            ViewGroup viewGroup = this.container;
            if (viewGroup != null) {
                removeWatermarkAutoLayout(viewGroup);
                deConfigureClickableView(this.container);
                this.container = null;
            }
            MediaView mediaView = this.mediaView;
            if (mediaView != null) {
                mediaView.stopVideoVisibilityCheckerTimer();
                this.mediaView.release();
                this.mediaView = null;
            }
            NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
            if (nativeNetworkAdapter != null) {
                nativeNetworkAdapter.unregisterNative();
            }
            destroyDisclaimerTextView();
            removeWatermark();
            this.viewRegistered = false;
        } catch (Throwable th) {
            Logger.w(this.tag, th);
        }
    }

    @Override // io.bidmachine.AdObjectImpl, io.bidmachine.models.AdObject
    public UnifiedNativeAdCallback createUnifiedCallback(AdProcessCallback adProcessCallback) {
        return new e(adProcessCallback);
    }
}
