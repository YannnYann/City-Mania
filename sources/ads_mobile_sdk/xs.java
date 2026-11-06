package ads_mobile_sdk;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.google.android.gms.ads.AdSize;
import com.ironsource.C3522b4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xs {
    public final e01 a;
    public final ex0 b;
    public final ur3 c;

    public xs(e01 httpClient, ex0 flags, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = httpClient;
        this.b = flags;
        this.c = traceLogger;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.xs r18, java.lang.String r19, double r20, boolean r22, kotlin.coroutines.Continuation r23) {
        /*
            Method dump skipped, instruction units count: 378
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.xs.a(ads_mobile_sdk.xs, java.lang.String, double, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final v01 a(byte[] bArr, double d, boolean z) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (((double) AdSize.WIDE_SKYSCRAPER_WIDTH) * d);
        if (!z) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        options.inJustDecodeBounds = false;
        int i = options.outWidth * options.outHeight;
        if (i > 0) {
            ex0 ex0Var = this.b;
            options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros((i - 1) / ((Number) ex0Var.a("gads:nativeads:image:sample:pixels", by0.a(ex0Var, "gads:nativeads:image:sample:pixels", C3522b4.i.W, 1048576), yr.f)).intValue())) / 2);
        }
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        if (bitmapDecodeByteArray == null) {
            return new m01("Cannot decode image", kk1.a);
        }
        return new q01(bitmapDecodeByteArray);
    }
}
