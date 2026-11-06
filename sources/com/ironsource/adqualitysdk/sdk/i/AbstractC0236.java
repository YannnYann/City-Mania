package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.э, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0236 {
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static byte[] m1198(byte[] bArr) throws IOException {
        int i;
        if (bArr.length == 0) {
            return bArr;
        }
        if (bArr.length < 4) {
            throw new IOException(StringFog.decrypt("KC5LPrjMBMojO0MquMgK3G8nSiHqyEXHIHRBL+rOHJMudE4r9tsR228gUC/x0ADB\n", "T1QiTpi8ZbM=\n"));
        }
        int length = bArr.length;
        long j = (((long) bArr[length - 4]) & 255) | ((((long) bArr[length - 3]) & 255) << 8) | ((((long) bArr[length - 2]) & 255) << 16) | ((255 & ((long) bArr[length - 1])) << 24);
        if (j > 67108864) {
            StringBuilder sb = new StringBuilder();
            sb.append(StringFog.decrypt("KME1mu6bpAwozzTKuoWgCyPeLsqnmrEOLs4vg6ybpFhv\n", "T7tc6s73wWI=\n"));
            sb.append(j);
            throw new IOException(AbstractC0829.m1456("UEmhaZLo\n", "cCvYHfebsqY=\n", sb));
        }
        int i2 = (int) j;
        GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(bArr));
        try {
            byte[] bArr2 = new byte[i2];
            int i3 = 0;
            while (i3 < i2 && (i = gZIPInputStream.read(bArr2, i3, i2 - i3)) != -1) {
                i3 += i;
            }
            if (i3 >= i2 && gZIPInputStream.read() == -1) {
                gZIPInputStream.close();
                return bArr2;
            }
            throw new IOException(StringFog.decrypt("v8tQpCYMSYu03liwJhhHl6uRV7tyXEWTrNJR9G8IW9K01FezchQIhqrQULhjDgja\n", "2LE51AZ8KPI=\n") + i3 + StringFog.decrypt("ksxMDA==\n", "sqMqLFgI0D0=\n") + i2 + StringFog.decrypt("HqQuxh46tg==\n", "PsZXsntJn5s=\n"));
        } catch (Throwable th) {
            try {
                gZIPInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static byte[] m1199(byte[] bArr) throws IOException {
        if (bArr.length == 0) {
            return bArr;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        try {
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.finish();
            gZIPOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th) {
            try {
                gZIPOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
