package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class l4 {
    public static byte[] A00;
    public static String[] A01 = {"saA", "gsu0V7M30A0NMF7CCSUYPh3cFWPt1hff", "hVxu2Q6ZShYzBI97SqaChGOYIegrj2bT", "iLekaVu0ssZ24ywI2n5i0", "ZQTLQEWltIyhgyN12SCZP", "FIPHcIP", "kvf5zj6hzySbenz4GqUtk8dS7ChHa1Hj", "NwuZH9dVnpyA530YX9Yk4gKqarhwm0Sh"};

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 86);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{92, 88, 84, 82, 80};
    }

    static {
        A04();
    }

    public static int A00(BitmapFactory.Options options, int halfWidth, int i) {
        int width = options.outHeight;
        int height = options.outWidth;
        int halfHeight = 1;
        if (width > i || height > halfWidth) {
            int inSampleSize = width / 2;
            int width2 = height / 2;
            while (inSampleSize / halfHeight >= i && width2 / halfHeight >= halfWidth) {
                halfHeight *= 2;
            }
        }
        return halfHeight;
    }

    public static Bitmap A01(InputStream inputStream, int i, int i2) throws IOException {
        C2320da c2320da = new C2320da(inputStream);
        c2320da.mark(8192);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(c2320da, null, options);
        c2320da.reset();
        if (!c2320da.A00()) {
            options.inSampleSize = A00(options, i2, i);
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeStream(c2320da, null, options);
        }
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(c2320da);
        String[] strArr = A01;
        if (strArr[2].charAt(29) == strArr[6].charAt(29)) {
            throw new RuntimeException();
        }
        A01[7] = "VCmc3JPUbNaRwcggqLYvJLdbl9zvOrS8";
        return bitmapDecodeStream;
    }

    public static Bitmap A02(String str, int i, int i2, C2780lA c2780lA) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            options.inSampleSize = A00(options, i2, i);
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeFile(str, options);
        } catch (Throwable t) {
            c2780lA.A08().ABz(A03(0, 5, 99), AbstractC2811lf.A1h, new C2812lg(t));
            return null;
        }
    }
}
