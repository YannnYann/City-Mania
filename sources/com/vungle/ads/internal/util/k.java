package com.vungle.ads.internal.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.protos.Sdk;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class k {
    public static Bitmap a(String assetFile, t tVar) {
        Intrinsics.checkNotNullParameter(assetFile, "assetFile");
        String name = new File(assetFile).getName();
        Intrinsics.checkNotNullExpressionValue(name, "File(assetFile).name");
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(assetFile, options);
        int iA = a(options.outWidth, options.outHeight);
        if (iA <= 1) {
            return BitmapFactory.decodeFile(assetFile);
        }
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        options2.inSampleSize = iA;
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(assetFile, options2);
        if (bitmapDecodeFile != null) {
            a(name, options.outWidth, options.outHeight, iA, bitmapDecodeFile, tVar);
        }
        return bitmapDecodeFile;
    }

    public static Bitmap a(byte[] bytes, t tVar) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bytes, 0, bytes.length, options);
        int iA = a(options.outWidth, options.outHeight);
        if (iA <= 1) {
            return BitmapFactory.decodeByteArray(bytes, 0, bytes.length);
        }
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        options2.inSampleSize = iA;
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bytes, 0, bytes.length, options2);
        if (bitmapDecodeByteArray != null) {
            a("base64", options.outWidth, options.outHeight, iA, bitmapDecodeByteArray, tVar);
        }
        return bitmapDecodeByteArray;
    }

    public static void a(String str, int i, int i2, int i3, Bitmap bitmap, t tVar) {
        String str2 = "original=" + i + 'x' + i2 + ",decoded=" + bitmap.getWidth() + 'x' + bitmap.getHeight() + ",file=" + str;
        boolean z = v.a;
        u.a("BoundedBitmapDecoder", "Downsampled native image with sampleSize=" + i3 + ", " + str2);
        AnalyticsClient.INSTANCE.c(Sdk.SDKMetric.SDKMetricType.NATIVE_IMAGE_DOWNSAMPLED, (long) i3, tVar, str2);
    }

    public static int a(int i, int i2) {
        int i3 = 1;
        if (i <= 0 || i2 <= 0) {
            return 1;
        }
        while (true) {
            long j = i3;
            long jMax = Math.max(1L, ((long) i) / j);
            long jMax2 = Math.max(1L, ((long) i2) / j);
            if (jMax <= 4096 && jMax2 <= 4096 && jMax * jMax2 <= 4194304) {
                return i3;
            }
            i3 *= 2;
        }
    }
}
