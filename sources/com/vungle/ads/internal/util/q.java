package com.vungle.ads.internal.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.vungle.ads.internal.g1;
import com.vungle.ads.internal.k1;
import java.util.concurrent.Executor;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes4.dex */
public final class q {
    public static final q b = new q();
    public Executor a;

    public final void a(com.vungle.ads.internal.executor.j ioExecutor) {
        Intrinsics.checkNotNullParameter(ioExecutor, "ioExecutor");
        this.a = ioExecutor;
    }

    public final void a(final String str, final t tVar, final g1 onImageLoaded) {
        Intrinsics.checkNotNullParameter(onImageLoaded, "onImageLoaded");
        if (this.a == null) {
            boolean z = v.a;
            Intrinsics.checkNotNullExpressionValue("q", "TAG");
            u.c("q", "ImageLoader not initialized.");
        } else if (str.length() == 0) {
            boolean z2 = v.a;
            Intrinsics.checkNotNullExpressionValue("q", "TAG");
            u.c("q", "the uri is required.");
        } else {
            Executor executor = this.a;
            if (executor != null) {
                executor.execute(new Runnable() { // from class: com.vungle.ads.internal.util.q$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        q.a(str, tVar, onImageLoaded);
                    }
                });
            }
        }
    }

    public static final void a(String str, t tVar, Function1 onImageLoaded) {
        Intrinsics.checkNotNullParameter(onImageLoaded, "$onImageLoaded");
        if (StringsKt__StringsJVMKt.startsWith$default(str, "file://", false, 2, null)) {
            String strSubstring = str.substring(7);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String).substring(startIndex)");
            Bitmap bitmapA = k.a(strSubstring, tVar);
            if (bitmapA != null) {
                onImageLoaded.invoke(bitmapA);
                return;
            }
            boolean z = v.a;
            Intrinsics.checkNotNullExpressionValue("q", "TAG");
            u.c("q", "decode bitmap failed.");
        }
    }

    public static void a(String str, k1 onImageSizeLoaded) {
        Intrinsics.checkNotNullParameter(onImageSizeLoaded, "onImageSizeLoaded");
        if (str.length() != 0 && StringsKt__StringsJVMKt.startsWith$default(str, "file://", false, 2, null)) {
            String strSubstring = str.substring(7);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String).substring(startIndex)");
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(strSubstring, options);
            onImageSizeLoaded.invoke(Integer.valueOf(options.outWidth), Integer.valueOf(options.outHeight));
            return;
        }
        boolean z = v.a;
        Intrinsics.checkNotNullExpressionValue("q", "TAG");
        u.c("q", "the valid uri is required.");
    }
}
