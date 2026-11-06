package io.bidmachine.nativead;

import android.content.Context;
import android.net.Uri;
import io.bidmachine.AdProcessCallback;
import io.bidmachine.ImageData;
import io.bidmachine.MediaAssetType;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.iab.vast.VastRequest;
import io.bidmachine.internal.C4223g;
import io.bidmachine.nativead.tasks.DownloadImageTask;
import io.bidmachine.nativead.tasks.DownloadVastVideoTask;
import io.bidmachine.nativead.tasks.DownloadVideoTask;
import io.bidmachine.nativead.utils.NativeNetworkExecutor;
import io.bidmachine.rendering.Rendering;
import io.bidmachine.rendering.Repository;
import io.bidmachine.util.file.FileUtilsKt;
import io.bidmachine.utils.BMError;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes5.dex */
public final class AssetLoader {
    public static final Companion Companion = new Companion(null);
    public final NativeAdRequestParameters adRequestParameters;
    public final Object assetsHolder;
    public final AdProcessCallback callback;
    public final NativeData nativeData;
    public final NativeMediaPrivateData nativeMediaData;
    public final List<Runnable> pendingTasks;
    public final Lazy repository$delegate;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public static final class a extends Lambda implements Function1 {
        public a() {
            super(1);
        }

        public final void a(Uri imagePath) {
            Intrinsics.checkNotNullParameter(imagePath, "imagePath");
            AssetLoader.this.nativeMediaData.setIconUri(imagePath);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((Uri) obj);
            return Unit.INSTANCE;
        }
    }

    public static final class b extends Lambda implements Function1 {
        public b() {
            super(1);
        }

        public final void a(Uri imagePath) {
            Intrinsics.checkNotNullParameter(imagePath, "imagePath");
            AssetLoader.this.nativeMediaData.setImageUri(imagePath);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((Uri) obj);
            return Unit.INSTANCE;
        }
    }

    public static final class c extends Lambda implements Function0 {
        public final /* synthetic */ Context a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context) {
            super(0);
            this.a = context;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Repository invoke() {
            return Rendering.INSTANCE.createRepository(C4223g.a(this.a));
        }
    }

    public AssetLoader(Context context, Object assetsHolder, NativeAdRequestParameters adRequestParameters, AdProcessCallback callback, NativeData nativeData, NativeMediaPrivateData nativeMediaData) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(assetsHolder, "assetsHolder");
        Intrinsics.checkNotNullParameter(adRequestParameters, "adRequestParameters");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(nativeData, "nativeData");
        Intrinsics.checkNotNullParameter(nativeMediaData, "nativeMediaData");
        this.assetsHolder = assetsHolder;
        this.adRequestParameters = adRequestParameters;
        this.callback = callback;
        this.nativeData = nativeData;
        this.nativeMediaData = nativeMediaData;
        this.repository$delegate = LazyKt__LazyJVMKt.lazy(new c(context));
        this.pendingTasks = new CopyOnWriteArrayList();
    }

    public final void checkTasksCount() {
        if (this.pendingTasks.isEmpty()) {
            notifyNativeCallback();
        }
    }

    public final void createIconTask(ImageData imageData) {
        createImageTask(imageData, new a());
    }

    public final void createImageTask(ImageData imageData) {
        createImageTask(imageData, new b());
    }

    public final void createVastVideoTask(final Context context, String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        this.pendingTasks.add(new DownloadVastVideoTask(context, this.assetsHolder, getRepository(), new DownloadVastVideoTask.OnLoadedListener() { // from class: io.bidmachine.nativead.AssetLoader$createVastVideoTask$listener$1
            @Override // io.bidmachine.nativead.tasks.DownloadVastVideoTask.OnLoadedListener
            public void onVideoLoaded(DownloadVastVideoTask task, Uri videoFileUri, VastRequest vastRequest) throws Throwable {
                Intrinsics.checkNotNullParameter(task, "task");
                Intrinsics.checkNotNullParameter(videoFileUri, "videoFileUri");
                Intrinsics.checkNotNullParameter(vastRequest, "vastRequest");
                this.this$0.nativeMediaData.setVastRequest(vastRequest);
                this.this$0.nativeMediaData.setVideoUri(videoFileUri);
                this.this$0.retrieveAndSaveImageFrame(context, videoFileUri);
                this.this$0.removePendingTask(task);
            }

            @Override // io.bidmachine.nativead.tasks.DownloadVastVideoTask.OnLoadedListener
            public void onVideoLoadingError(DownloadVastVideoTask task) {
                Intrinsics.checkNotNullParameter(task, "task");
                this.this$0.removePendingTask(task);
            }
        }, str, null, 32, null));
    }

    public final void createVideoTask(final Context context, String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        this.pendingTasks.add(new DownloadVideoTask(this.assetsHolder, getRepository(), new DownloadVideoTask.OnLoadedListener() { // from class: io.bidmachine.nativead.AssetLoader$createVideoTask$listener$1
            @Override // io.bidmachine.nativead.tasks.DownloadVideoTask.OnLoadedListener
            public void onVideoLoaded(DownloadVideoTask task, Uri videoFileUri) throws Throwable {
                Intrinsics.checkNotNullParameter(task, "task");
                Intrinsics.checkNotNullParameter(videoFileUri, "videoFileUri");
                this.this$0.nativeMediaData.setVideoUri(videoFileUri);
                this.this$0.retrieveAndSaveImageFrame(context, videoFileUri);
                this.this$0.removePendingTask(task);
            }

            @Override // io.bidmachine.nativead.tasks.DownloadVideoTask.OnLoadedListener
            public void onVideoLoadingError(DownloadVideoTask task) {
                Intrinsics.checkNotNullParameter(task, "task");
                this.this$0.removePendingTask(task);
            }
        }, str, null, 16, null));
    }

    public final void downloadNativeAdsImages(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        startDownloadTask(context);
        checkTasksCount();
    }

    public final Repository getRepository() {
        return (Repository) this.repository$delegate.getValue();
    }

    public final boolean isAssetsValid() {
        try {
            if (isIconValid() && isImageValid()) {
                if (isVideoValid()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            Logger.w(e);
            return false;
        }
    }

    public final boolean isIconValid() {
        return (this.adRequestParameters.containsAssetType(MediaAssetType.Icon) && this.nativeMediaData.getIconUri() == null && this.nativeMediaData.getIconDrawable() == null) ? false : true;
    }

    public final boolean isImageValid() {
        return (this.adRequestParameters.containsAssetType(MediaAssetType.Image) && this.nativeMediaData.getImageUri() == null && this.nativeMediaData.getImageDrawable() == null) ? false : true;
    }

    public final boolean isVideoValid() {
        if (this.adRequestParameters.containsAssetType(MediaAssetType.Video)) {
            return this.nativeData.hasVideo();
        }
        return true;
    }

    public final synchronized void notifyNativeCallback() {
        try {
            if (!this.adRequestParameters.isValidateAssets() || isAssetsValid()) {
                this.callback.processLoadSuccess();
            } else {
                AdProcessCallback adProcessCallback = this.callback;
                BMError bMErrorInternal = BMError.internal("Native assets are invalid");
                Intrinsics.checkNotNullExpressionValue(bMErrorInternal, "internal(\"Native assets are invalid\")");
                adProcessCallback.processLoadFail(bMErrorInternal);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void removePendingTask(Runnable runnable) {
        this.pendingTasks.remove(runnable);
        checkTasksCount();
    }

    public final void retrieveAndSaveImageFrame(Context context, Uri uri) throws Throwable {
        String path;
        ImageData mainImage = this.nativeData.getMainImage();
        String remoteUrl = mainImage != null ? mainImage.getRemoteUrl() : null;
        if (uri == null || (path = uri.getPath()) == null) {
            return;
        }
        if ((remoteUrl == null || remoteUrl.length() == 0) && new File(path).exists()) {
            File fileRetrieveAndSaveFrame = Utils.retrieveAndSaveFrame(context, uri, "native_video_thumb");
            this.nativeMediaData.setImageUri(fileRetrieveAndSaveFrame != null ? FileUtilsKt.toUri(fileRetrieveAndSaveFrame) : null);
        }
    }

    public final void startDownloadTask(Context context) {
        String videoUrl = this.nativeData.getVideoUrl();
        String videoAdm = this.nativeData.getVideoAdm();
        if (this.adRequestParameters.containsAssetType(MediaAssetType.Icon)) {
            createIconTask(this.nativeData.getIcon());
        }
        if (this.adRequestParameters.containsAssetType(MediaAssetType.Image)) {
            createImageTask(this.nativeData.getMainImage());
        }
        if (this.adRequestParameters.containsAssetType(MediaAssetType.Video)) {
            if (videoUrl != null && videoUrl.length() != 0) {
                createVideoTask(context, videoUrl);
            } else if (videoAdm != null && videoAdm.length() != 0) {
                createVastVideoTask(context, videoAdm);
            }
        }
        if (this.pendingTasks.isEmpty()) {
            checkTasksCount();
            return;
        }
        Iterator<T> it = this.pendingTasks.iterator();
        while (it.hasNext()) {
            NativeNetworkExecutor.getInstance().execute((Runnable) it.next());
        }
    }

    public final void createImageTask(ImageData imageData, final Function1<? super Uri, Unit> function1) {
        String remoteUrl;
        if (imageData == null || imageData.getImage() != null || (remoteUrl = imageData.getRemoteUrl()) == null || remoteUrl.length() == 0) {
            return;
        }
        this.pendingTasks.add(new DownloadImageTask(this.assetsHolder, getRepository(), new DownloadImageTask.OnCacheImageListener() { // from class: io.bidmachine.nativead.AssetLoader$createImageTask$listener$1
            @Override // io.bidmachine.nativead.tasks.DownloadImageTask.OnCacheImageListener
            public void onFail(DownloadImageTask task) {
                Intrinsics.checkNotNullParameter(task, "task");
                this.removePendingTask(task);
            }

            @Override // io.bidmachine.nativead.tasks.DownloadImageTask.OnCacheImageListener
            public void onPathSuccess(DownloadImageTask task, Uri imagePath) {
                Intrinsics.checkNotNullParameter(task, "task");
                Intrinsics.checkNotNullParameter(imagePath, "imagePath");
                function1.invoke(imagePath);
                this.removePendingTask(task);
            }
        }, remoteUrl, null, 16, null));
    }
}
