package io.bidmachine.iab.vast;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.ironsource.C3558d4;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.iab.CacheControl;
import io.bidmachine.iab.IabError;
import io.bidmachine.iab.measurer.MraidAdMeasurer;
import io.bidmachine.iab.measurer.VastAdMeasurer;
import io.bidmachine.iab.utils.Utils;
import io.bidmachine.iab.vast.VastUrlProcessorRegistry;
import io.bidmachine.iab.vast.activity.VastActivity;
import io.bidmachine.iab.vast.activity.VastView;
import io.bidmachine.iab.vast.processor.DefaultMediaPicker;
import io.bidmachine.iab.vast.processor.VastAd;
import io.bidmachine.iab.vast.processor.VastMediaPicker;
import io.bidmachine.iab.vast.processor.VastProcessor;
import io.bidmachine.iab.vast.processor.VastProcessorResult;
import io.bidmachine.iab.vast.tags.AppodealExtensionTag;
import io.bidmachine.iab.vast.tags.MediaFileTag;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
public class VastRequest {
    public Uri c;
    public VastAd d;
    public Bundle f;
    public VastMediaPicker g;
    public VastVideoLoadedListener h;
    public VastAdMeasurer i;
    public Float k;
    public float l;
    public boolean m;
    public int n;
    public boolean p;
    public static final VastUrlProcessorRegistry.OnUrlReadyCallback z = new k();
    public static int A = 5;
    public CacheControl b = CacheControl.FullLoad;
    public VideoType e = VideoType.NonRewarded;
    public float j = 3.0f;
    public int o = 0;
    public boolean q = false;
    public boolean r = true;
    public boolean s = true;
    public boolean t = false;
    public boolean u = false;
    public int v = -1;
    public float w = 5.0f;
    public final AtomicBoolean x = new AtomicBoolean(false);
    public final AtomicBoolean y = new AtomicBoolean(false);
    public final String a = UUID.randomUUID().toString();

    public class Builder {
        public Builder() {
        }

        public VastRequest build() {
            return VastRequest.this;
        }

        public Builder forceUseNativeCloseTime(boolean forceUseNativeCloseTime) {
            VastRequest.this.m = forceUseNativeCloseTime;
            return this;
        }

        public Builder setAdMeasurer(VastAdMeasurer vastAdMeasurer) {
            VastRequest.this.i = vastAdMeasurer;
            return this;
        }

        public Builder setCacheControl(CacheControl cacheControl) {
            VastRequest.this.b = cacheControl;
            return this;
        }

        public Builder setCompanionCloseTime(int closeTime) {
            VastRequest.this.l = closeTime;
            return this;
        }

        public Builder setPlaceholderTimeoutSec(float placeholderTimeoutSec) {
            VastRequest.this.j = placeholderTimeoutSec;
            return this;
        }

        public Builder setVideoCloseTime(int closeTimeSec) {
            VastRequest.this.k = Float.valueOf(closeTimeSec);
            return this;
        }
    }

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[CacheControl.values().length];
            a = iArr;
            try {
                iArr[CacheControl.FullLoad.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[CacheControl.Stream.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[CacheControl.PartialLoad.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class c extends Thread {
        public final /* synthetic */ Context a;
        public final /* synthetic */ String b;
        public final /* synthetic */ VastRequestListener c;

        public c(Context context, String str, VastRequestListener vastRequestListener) {
            this.a = context;
            this.b = str;
            this.c = vastRequestListener;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            VastRequest.this.loadVideoWithDataSync(this.a, this.b, this.c);
        }
    }

    public class d extends Thread {
        public final /* synthetic */ Context a;
        public final /* synthetic */ VastRequestListener b;

        public d(Context context, VastRequestListener vastRequestListener) {
            this.a = context;
            this.b = vastRequestListener;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            VastRequest vastRequest = VastRequest.this;
            vastRequest.a(this.a, vastRequest.d, this.b);
        }
    }

    public class e implements Runnable {
        public final /* synthetic */ VastRequestListener a;

        public e(VastRequestListener vastRequestListener) {
            this.a = vastRequestListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.onVastLoaded(VastRequest.this);
        }
    }

    public class f implements Runnable {
        public final /* synthetic */ IabError a;
        public final /* synthetic */ VastRequestListener b;

        public f(IabError iabError, VastRequestListener vastRequestListener) {
            this.a = iabError;
            this.b = vastRequestListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VastRequest.this.i != null) {
                VastRequest.this.i.onError(this.a);
            }
            if (this.b != null) {
                if (VastRequest.this.b != CacheControl.PartialLoad || !VastRequest.this.x.get() || VastRequest.this.y.get()) {
                    this.b.onVastLoadFailed(VastRequest.this, this.a);
                    return;
                }
                VastRequestListener vastRequestListener = this.b;
                VastRequest vastRequest = VastRequest.this;
                vastRequestListener.onVastLoadFailed(vastRequest, IabError.expired(String.format("%s load failed after display - %s", vastRequest.b, this.a)));
            }
        }
    }

    public class g implements Runnable {
        public final /* synthetic */ VastActivityListener a;
        public final /* synthetic */ IabError b;

        public g(VastActivityListener vastActivityListener, IabError iabError) {
            this.a = vastActivityListener;
            this.b = iabError;
        }

        @Override // java.lang.Runnable
        public void run() {
            VastActivityListener vastActivityListener = this.a;
            if (vastActivityListener != null) {
                vastActivityListener.onVastShowFailed(VastRequest.this, this.b);
            }
        }
    }

    public class i implements Runnable {
        public final /* synthetic */ VastAd a;

        public i(VastAd vastAd) {
            this.a = vastAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VastRequest.this.h != null) {
                VastRequest.this.h.onSuccess(VastRequest.this, this.a);
            }
        }
    }

    public class j implements Runnable {
        public final /* synthetic */ IabError a;

        public j(IabError iabError) {
            this.a = iabError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VastRequest.this.h != null) {
                VastRequest.this.h.onError(VastRequest.this, this.a);
            }
        }
    }

    public static class k implements VastUrlProcessorRegistry.OnUrlReadyCallback {
        @Override // io.bidmachine.iab.vast.VastUrlProcessorRegistry.OnUrlReadyCallback
        public void onUrlReady(String str) {
            VastLog.d("VastRequest", "Fire url: %s", str);
            Utils.simpleTrackUrl(str);
        }
    }

    public static class l implements Comparable {
        public long a;
        public File b;

        public l(File file) {
            this.b = file;
            this.a = file.lastModified();
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            long j = this.a;
            long j2 = ((l) obj).a;
            if (j > j2) {
                return -1;
            }
            return j == j2 ? 0 : 1;
        }
    }

    public static Builder newBuilder() {
        return new VastRequest().new Builder();
    }

    public static void setCacheSize(int cacheSize) {
        if (cacheSize > 0) {
            A = cacheSize;
        }
    }

    public boolean canDisplay() {
        if (this.x.get()) {
            return this.b != CacheControl.FullLoad || checkFile();
        }
        return false;
    }

    public boolean checkFile() {
        try {
            Uri uri = this.c;
            if (uri == null || TextUtils.isEmpty(uri.getPath())) {
                return false;
            }
            return new File(this.c.getPath()).exists();
        } catch (Exception unused) {
            return false;
        }
    }

    public void fireErrorUrls(List<String> urls, Bundle params) {
        fireUrls(urls, params);
    }

    public void fireUrls(List<String> urls, Bundle params) {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        if (params != null) {
            bundle.putAll(params);
        }
        if (urls != null) {
            VastUrlProcessorRegistry.processUrls(urls, bundle, z);
        } else {
            VastLog.d("VastRequest", "Url list is null", new Object[0]);
        }
    }

    public CacheControl getCacheControl() {
        return this.b;
    }

    public float getCompanionCloseTime() {
        return this.l;
    }

    public Uri getFileUri() {
        return this.c;
    }

    public int getForceOrientation() {
        return this.v;
    }

    public float getFusedVideoCloseTimeSec() {
        return this.w;
    }

    public String getId() {
        return this.a;
    }

    public int getMaxDurationMillis() {
        return this.n;
    }

    public float getPlaceholderTimeoutSec() {
        return this.j;
    }

    public int getPreferredVideoOrientation() {
        if (!shouldUseScreenSizeForVideoOrientation()) {
            return 0;
        }
        VastAd vastAd = this.d;
        if (vastAd == null) {
            return 2;
        }
        MediaFileTag pickedMediaFileTag = vastAd.getPickedMediaFileTag();
        return Utils.orientationBySize(pickedMediaFileTag.getWidth(), pickedMediaFileTag.getHeight());
    }

    public int getRequestedOrientation() {
        return this.o;
    }

    public VastAd getVastAd() {
        return this.d;
    }

    public Float getVideoCloseTime() {
        return this.k;
    }

    public VideoType getVideoType() {
        return this.e;
    }

    public boolean isAutoClose() {
        return this.p;
    }

    public boolean isForceUseNativeCloseTime() {
        return this.m;
    }

    public boolean isR1() {
        return this.t;
    }

    public boolean isR2() {
        return this.u;
    }

    public void loadVideoWithData(final Context context, final String xmlData, final VastRequestListener vastRequestListener) {
        VastLog.d("VastRequest", "loadVideoWithData\n%s", xmlData);
        this.d = null;
        if (!Utils.isNetworkAvailable(context)) {
            a(IabError.NO_NETWORK, vastRequestListener);
            return;
        }
        try {
            new c(context, xmlData, vastRequestListener).start();
        } catch (Exception e2) {
            VastLog.e("VastRequest", e2);
            a(IabError.throwable("Exception during creating background thread", e2), vastRequestListener);
        }
    }

    public void loadVideoWithDataSync(final Context context, final String xmlData, final VastRequestListener vastRequestListener) {
        String str;
        VastMediaPicker defaultMediaPicker = this.g;
        if (defaultMediaPicker == null) {
            defaultMediaPicker = new DefaultMediaPicker(context);
        }
        VastProcessorResult vastProcessorResultProcess = new VastProcessor(this, defaultMediaPicker).process(xmlData);
        VastAd vastAd = vastProcessorResultProcess.getVastAd();
        this.d = vastAd;
        if (vastAd == null) {
            VastSpecError vastSpecError = vastProcessorResultProcess.getVastSpecError();
            if (vastSpecError != null) {
                sendVastSpecError(vastSpecError);
                str = String.format("VastAd is null during loadVideoWithDataSync with VastSpecCode - %s", Integer.valueOf(vastSpecError.getCode()));
            } else {
                str = "VastAd is null during loadVideoWithDataSync without VastSpecCode";
            }
            a(IabError.badContent(str), vastRequestListener);
            return;
        }
        vastAd.setVastRequest(this);
        AppodealExtensionTag appodealExtension = this.d.getAppodealExtension();
        if (appodealExtension != null) {
            Boolean boolIsAutoRotate = appodealExtension.isAutoRotate();
            if (boolIsAutoRotate != null) {
                if (boolIsAutoRotate.booleanValue()) {
                    this.q = false;
                    this.r = false;
                } else {
                    this.q = true;
                    this.r = true;
                }
            }
            if (appodealExtension.getPostBannerTag().getCloseTimeSec() > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                this.l = appodealExtension.getPostBannerTag().getCloseTimeSec();
            }
            this.t = appodealExtension.isR1();
            this.u = appodealExtension.isR2();
            Integer forceOrientation = appodealExtension.getForceOrientation();
            if (forceOrientation != null) {
                this.v = forceOrientation.intValue();
            }
        }
        this.w = a(this.d, appodealExtension).floatValue();
        VastAdMeasurer vastAdMeasurer = this.i;
        if (vastAdMeasurer != null) {
            vastAdMeasurer.onVastModelLoaded(this);
        }
        int i2 = a.a[this.b.ordinal()];
        if (i2 == 1) {
            a(context, this.d, vastRequestListener);
            return;
        }
        if (i2 == 2) {
            a(vastRequestListener);
        } else {
            if (i2 != 3) {
                return;
            }
            a(vastRequestListener);
            a(context, this.d, vastRequestListener);
        }
    }

    public void performCache(final Context context, final VastRequestListener vastRequestListener) {
        if (this.d == null) {
            a(IabError.internal("VastAd is null during performCache"), vastRequestListener);
            return;
        }
        try {
            new d(context, vastRequestListener).start();
        } catch (Exception e2) {
            VastLog.e("VastRequest", e2);
            a(IabError.throwable("Exception during creating background thread", e2), vastRequestListener);
        }
    }

    public void sendVastSpecError(VastSpecError vastSpecError) {
        VastLog.d("VastRequest", "sendVastSpecError - %s", vastSpecError);
        try {
            if (this.d != null) {
                Bundle bundle = new Bundle();
                bundle.putInt("params_error_code", vastSpecError.getCode());
                fireErrorUrls(this.d.getErrorUrlList(), bundle);
            }
        } catch (Exception e2) {
            VastLog.e("VastRequest", e2);
        }
    }

    public synchronized void setVastVideoLoadedListener(VastVideoLoadedListener vastVideoLoadedListener) {
        this.h = vastVideoLoadedListener;
    }

    public boolean shouldPreloadCompanion() {
        return this.s;
    }

    public boolean shouldUseScreenSizeForCompanionOrientation() {
        return this.r;
    }

    public boolean shouldUseScreenSizeForVideoOrientation() {
        return this.q;
    }

    public void display(Context context, VideoType videoType, VastActivityListener vastActivityListener, VastView vastView, VastPlaybackListener vastPlaybackListener, MraidAdMeasurer postBannerAdMeasurer) {
        VastLog.d("VastRequest", "display", new Object[0]);
        this.y.set(true);
        if (this.d == null) {
            a(IabError.internal("VastAd is null during display VastActivity"), vastActivityListener);
            return;
        }
        this.e = videoType;
        this.o = context.getResources().getConfiguration().orientation;
        IabError iabErrorDisplay = new VastActivity.Builder().setRequest(this).setListener(vastActivityListener).setVastView(vastView).setPlaybackListener(vastPlaybackListener).setAdMeasurer(this.i).setPostBannerAdMeasurer(postBannerAdMeasurer).display(context);
        if (iabErrorDisplay != null) {
            a(iabErrorDisplay, vastActivityListener);
        }
    }

    public final String b(Context context) {
        File externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            return null;
        }
        return externalFilesDir.getPath() + "/vast_rtb_cache/";
    }

    public final Float a(VastAd vastAd, VastExtension vastExtension) {
        Float closeTimeSec = vastExtension != null ? vastExtension.getCloseTimeSec() : null;
        if (isForceUseNativeCloseTime()) {
            closeTimeSec = Utils.max(closeTimeSec, getVideoCloseTime());
        }
        Float fMin = Utils.min(closeTimeSec, vastAd.getDurationSec());
        return fMin == null ? Float.valueOf(5.0f) : fMin;
    }

    public final void a(Context context, VastAd vastAd, VastRequestListener vastRequestListener) {
        try {
            Uri uriA = a(context, vastAd.getPickedMediaFileTag().getText());
            if (uriA != null && !TextUtils.isEmpty(uriA.getPath()) && new File(uriA.getPath()).exists()) {
                Bitmap bitmapCreateVideoThumbnail = ThumbnailUtils.createVideoThumbnail(uriA.getPath(), 1);
                if (bitmapCreateVideoThumbnail != null) {
                    if (!bitmapCreateVideoThumbnail.equals(Bitmap.createBitmap(bitmapCreateVideoThumbnail.getWidth(), bitmapCreateVideoThumbnail.getHeight(), bitmapCreateVideoThumbnail.getConfig()))) {
                        try {
                            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                            mediaMetadataRetriever.setDataSource(context, uriA);
                            long j2 = Long.parseLong(mediaMetadataRetriever.extractMetadata(9));
                            int i2 = this.n;
                            if (i2 != 0 && j2 > i2) {
                                sendVastSpecError(VastSpecError.DURATION);
                                a(IabError.badContent("Estimated duration does not match actual duration"), vastRequestListener);
                            } else {
                                this.c = uriA;
                                a(vastAd);
                                a(vastRequestListener);
                            }
                        } catch (Exception e2) {
                            VastLog.e("VastRequest", e2);
                            sendVastSpecError(VastSpecError.BAD_FILE);
                            a(IabError.throwable("Exception during metadata retrieval", e2), vastRequestListener);
                        }
                    } else {
                        VastLog.d("VastRequest", "Empty thumbnail", new Object[0]);
                        sendVastSpecError(VastSpecError.BAD_FILE);
                        a(IabError.badContent("Thumbnail is empty"), vastRequestListener);
                    }
                } else {
                    VastLog.d("VastRequest", "Video file not supported", new Object[0]);
                    sendVastSpecError(VastSpecError.BAD_FILE);
                    a(IabError.badContent("Failed to get thumbnail by file URI"), vastRequestListener);
                }
                a(context);
                return;
            }
            VastLog.d("VastRequest", "fileUri is null", new Object[0]);
            sendVastSpecError(VastSpecError.BAD_URI);
            a(IabError.badContent("Can't find video by local URI"), vastRequestListener);
        } catch (Exception e3) {
            VastLog.e("VastRequest", e3);
            sendVastSpecError(VastSpecError.BAD_URI);
            a(IabError.throwable("Exception during caching media file", e3), vastRequestListener);
        }
    }

    public final Uri a(Context context, String str) throws IOException {
        String strB = b(context);
        if (strB != null) {
            File file = new File(strB);
            if (!file.exists()) {
                file.mkdirs();
            }
            int length = 230 - file.getPath().length();
            String str2 = C3558d4.D + System.currentTimeMillis();
            String strReplace = str.substring(0, Math.min(length, str.length())).replace("/", "").replace(":", "");
            File file2 = new File(file, strReplace);
            if (file2.exists()) {
                return Uri.fromFile(file2);
            }
            File file3 = new File(file, str2);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            InputStream inputStream = httpURLConnection.getInputStream();
            FileOutputStream fileOutputStream = new FileOutputStream(file3);
            long contentLength = httpURLConnection.getContentLength();
            byte[] bArr = new byte[1024];
            long j2 = 0;
            while (true) {
                int i2 = inputStream.read(bArr);
                if (i2 <= 0) {
                    break;
                }
                fileOutputStream.write(bArr, 0, i2);
                j2 += (long) i2;
            }
            fileOutputStream.close();
            if (contentLength == j2) {
                file3.renameTo(new File(file, strReplace));
                return Uri.fromFile(new File(file, strReplace));
            }
            throw new IllegalStateException("The downloaded file size does not match the stated size");
        }
        throw new FileNotFoundException("No dir for caching file");
    }

    public final void a(Context context) {
        File[] fileArrListFiles;
        try {
            String strB = b(context);
            if (strB == null || (fileArrListFiles = new File(strB).listFiles()) == null || fileArrListFiles.length <= A) {
                return;
            }
            l[] lVarArr = new l[fileArrListFiles.length];
            for (int i2 = 0; i2 < fileArrListFiles.length; i2++) {
                lVarArr[i2] = new l(fileArrListFiles[i2]);
            }
            Arrays.sort(lVarArr);
            for (int i3 = 0; i3 < fileArrListFiles.length; i3++) {
                fileArrListFiles[i3] = lVarArr[i3].b;
            }
            for (int i4 = A; i4 < fileArrListFiles.length; i4++) {
                if (!Uri.fromFile(fileArrListFiles[i4]).equals(this.c)) {
                    fileArrListFiles[i4].delete();
                }
            }
        } catch (Exception e2) {
            VastLog.e("VastRequest", e2);
        }
    }

    public final void a(VastRequestListener vastRequestListener) {
        if (this.x.getAndSet(true)) {
            return;
        }
        VastLog.d("VastRequest", "sendLoaded", new Object[0]);
        if (vastRequestListener != null) {
            Utils.onUiThread(new e(vastRequestListener));
        }
    }

    public final void a(IabError iabError, VastRequestListener vastRequestListener) {
        VastLog.d("VastRequest", "sendLoadFailed - %s", iabError);
        a(iabError);
        Utils.onUiThread(new f(iabError, vastRequestListener));
    }

    public final void a(IabError iabError, VastActivityListener vastActivityListener) {
        VastLog.d("VastRequest", "sendShowFailed - %s", iabError);
        Utils.onUiThread(new g(vastActivityListener, iabError));
    }

    public final synchronized void a(VastAd vastAd) {
        if (this.h == null) {
            return;
        }
        Utils.onUiThread(new i(vastAd));
    }

    public final synchronized void a(IabError iabError) {
        if (this.h == null) {
            return;
        }
        Utils.onUiThread(new j(iabError));
    }
}
