package io.bidmachine.rendering;

import android.graphics.Bitmap;
import android.net.Uri;
import io.bidmachine.rendering.model.MediaSource;
import io.bidmachine.rendering.model.UrlMediaSource;
import io.bidmachine.util.Error;
import kotlin.Result;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes5.dex */
public interface Repository {

    public interface ResultCallback<SuccessType> extends io.bidmachine.util.ResultCallback<SuccessType, Error> {
        void onError(Error error);

        @Override // io.bidmachine.util.ResultCallback
        void onSuccess(SuccessType successtype);
    }

    void getImage(MediaSource mediaSource, Object obj, ResultCallback<Bitmap> resultCallback);

    /* JADX INFO: renamed from: getImageUri-0E7RQCE, reason: not valid java name */
    Object mo2687getImageUri0E7RQCE(UrlMediaSource urlMediaSource, Object obj, Continuation<? super Result<? extends Uri>> continuation);

    void getString(MediaSource mediaSource, Object obj, ResultCallback<String> resultCallback);

    void getVideo(MediaSource mediaSource, Object obj, ResultCallback<Uri> resultCallback);

    /* JADX INFO: renamed from: getVideo-0E7RQCE, reason: not valid java name */
    Object mo2688getVideo0E7RQCE(MediaSource mediaSource, Object obj, Continuation<? super Result<? extends Uri>> continuation);

    void unholdMediaFiles(Object obj);
}
