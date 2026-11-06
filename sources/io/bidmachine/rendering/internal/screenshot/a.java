package io.bidmachine.rendering.internal.screenshot;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.view.PixelCopy;
import android.view.View;
import android.view.Window;
import io.bidmachine.util.ViewUtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a {
    public static final a a = new a();

    public final void a(View view, Handler handler, Bitmap.Config config, final b screenshotListener) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(handler, "handler");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(screenshotListener, "screenshotListener");
        if (Build.VERSION.SDK_INT < 26) {
            screenshotListener.a();
            return;
        }
        Window windowFindWindow = ViewUtilsKt.findWindow(view);
        if (windowFindWindow == null) {
            screenshotListener.a();
            return;
        }
        Rect locationInWindow = ViewUtilsKt.getLocationInWindow(view);
        try {
            final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(locationInWindow.width(), locationInWindow.height(), config);
            Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "{\n            Bitmap.cre…ight(), config)\n        }");
            try {
                PixelCopy.request(windowFindWindow, locationInWindow, bitmapCreateBitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: io.bidmachine.rendering.internal.screenshot.a$$ExternalSyntheticLambda0
                    @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                    public final void onPixelCopyFinished(int i) {
                        a.a(screenshotListener, bitmapCreateBitmap, i);
                    }
                }, handler);
            } catch (Throwable unused) {
                screenshotListener.a();
            }
        } catch (Throwable unused2) {
            screenshotListener.a();
        }
    }

    public static final void a(b screenshotListener, Bitmap bitmap, int i) {
        Intrinsics.checkNotNullParameter(screenshotListener, "$screenshotListener");
        Intrinsics.checkNotNullParameter(bitmap, "$bitmap");
        if (i == 0) {
            screenshotListener.a(bitmap);
        } else {
            screenshotListener.a();
        }
    }
}
