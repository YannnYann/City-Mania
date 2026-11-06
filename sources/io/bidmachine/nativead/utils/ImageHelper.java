package io.bidmachine.nativead.utils;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Size;
import android.widget.ImageView;
import com.ironsource.InterfaceC3676je;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.util.DeviceUtils;
import java.io.InputStream;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public class ImageHelper {

    public interface OnImageHelperListener {
        void onError(String str);

        void onImagePrepared(ImageView imageView, Drawable drawable);
    }

    public class a implements OnImageHelperListener {
        @Override // io.bidmachine.nativead.utils.ImageHelper.OnImageHelperListener
        public void onError(String str) {
            Logger.d(str);
        }

        @Override // io.bidmachine.nativead.utils.ImageHelper.OnImageHelperListener
        public void onImagePrepared(ImageView imageView, Drawable drawable) {
            imageView.setImageDrawable(drawable);
        }
    }

    public static class b implements Runnable {
        public final Uri a;
        public final Context b;
        public final WeakReference c;
        public final OnImageHelperListener d;
        public Drawable e;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ImageView imageView = (ImageView) b.this.c.get();
                if (imageView == null || b.this.e == null) {
                    b.this.d.onError("Target ImageView or Bitmap is invalid");
                } else {
                    b.this.d.onImagePrepared(imageView, b.this.e);
                }
            }
        }

        public b(Context context, Uri uri, ImageView imageView, OnImageHelperListener onImageHelperListener) {
            this.b = context;
            this.a = uri;
            this.c = new WeakReference(imageView);
            this.d = onImageHelperListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                InputStream inputStreamOpenInputStream = this.b.getContentResolver().openInputStream(this.a);
                try {
                    BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
                    Utils.close(inputStreamOpenInputStream);
                    if (options.outWidth != 0 && options.outHeight != 0) {
                        int iCalculateReqWidth = ImageHelper.calculateReqWidth(this.b);
                        options.inSampleSize = ImageHelper.calculateInSamplesSize(options, iCalculateReqWidth, ImageHelper.calculateReqHeight(iCalculateReqWidth));
                        options.inJustDecodeBounds = false;
                        inputStreamOpenInputStream = this.b.getContentResolver().openInputStream(this.a);
                        try {
                            this.e = new BitmapDrawable(this.b.getResources(), BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options));
                            Utils.close(inputStreamOpenInputStream);
                            Utils.onUiThread(new a());
                            return;
                        } finally {
                        }
                    }
                    this.d.onError("Image size is (0;0)");
                } finally {
                }
            } catch (Throwable th) {
                String message = th.getMessage();
                OnImageHelperListener onImageHelperListener = this.d;
                if (message == null) {
                    message = "ImagePreparation error";
                }
                onImageHelperListener.onError(message);
            }
        }
    }

    public static int calculateInSamplesSize(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        int i5 = 1;
        while (true) {
            if (i3 / i5 <= i && i4 / i5 <= i2) {
                return i5;
            }
            i5 *= 2;
        }
    }

    public static int calculateReqHeight(int i) {
        if (i > 700) {
            return 700;
        }
        return i;
    }

    public static int calculateReqWidth(Context context) {
        Size screenSize = DeviceUtils.getScreenSize(context);
        return Math.min(InterfaceC3676je.c.d, Math.min(screenSize.getWidth(), screenSize.getHeight()));
    }

    public static void fillImageView(Context context, ImageView imageView, Uri uri, Drawable drawable) {
        if (drawable != null) {
            imageView.setImageDrawable(drawable);
        } else {
            loadImageByPath(context, uri, imageView, new a());
        }
    }

    public static void loadImageByPath(Context context, Uri uri, ImageView imageView, OnImageHelperListener onImageHelperListener) {
        if (onImageHelperListener == null) {
            return;
        }
        if (uri == null || TextUtils.isEmpty(uri.getPath())) {
            onImageHelperListener.onError("ImagePath is invalid");
        } else if (imageView == null) {
            onImageHelperListener.onError("Target ImageView is null");
        } else {
            NativeNetworkExecutor.getInstance().execute(new b(context, uri, imageView, onImageHelperListener));
        }
    }
}
