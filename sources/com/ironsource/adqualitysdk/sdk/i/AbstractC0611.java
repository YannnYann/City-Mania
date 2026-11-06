package com.ironsource.adqualitysdk.sdk.i;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᗮ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0611 {
    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static String m1371(String str) {
        if (str == null) {
            return null;
        }
        try {
            byte[] bArrDigest = MessageDigest.getInstance(StringFog.decrypt("PnMZRppC8w==\n", "bTtYa6h3xYQ=\n")).digest(str.getBytes(StringFog.decrypt("FaHbRLo=\n", "QPWdaYI8tfQ=\n")));
            StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
            for (byte b : bArrDigest) {
                sb.append(String.format(StringFog.decrypt("4Qoxng==\n", "xDoD5pHMtNo=\n"), Integer.valueOf(b & 255)));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException(StringFog.decrypt("cIsxmlyeOh9NrASXD91tVk+iEtsL\n", "I8Nwt26rDD8=\n"), e2);
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static ArrayList m1372(String str, String str2, boolean z) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile(str2).matcher(str);
        loop0: while (matcher.find()) {
            if (matcher.groupCount() == 0) {
                arrayList.add(matcher.group());
                if (z) {
                    break;
                }
            } else {
                for (int i = 1; i <= matcher.groupCount(); i++) {
                    arrayList.add(matcher.group(i));
                    if (z) {
                        break loop0;
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static int m1374(String str, String str2) {
        String[] strArrSplit = str.replaceAll(StringFog.decrypt("ySTzh8zXJA==\n", "knrDqvX5eSM=\n"), "").split(StringFog.decrypt("1HM=\n", "iF31cUWgrxU=\n"));
        String[] strArrSplit2 = str2.replaceAll(StringFog.decrypt("T2vhmhbH8w==\n", "FDXRty/prmY=\n"), "").split(StringFog.decrypt("zWQ=\n", "kUq1PHyprEE=\n"));
        int i = 0;
        while (i < strArrSplit.length && i < strArrSplit2.length && strArrSplit[i].equals(strArrSplit2[i])) {
            i++;
        }
        return (i >= strArrSplit.length || i >= strArrSplit2.length) ? Integer.signum(strArrSplit.length - strArrSplit2.length) : Integer.signum(Integer.valueOf(strArrSplit[i]).compareTo(Integer.valueOf(strArrSplit2[i])));
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static boolean m1373(String str) {
        Handler handler = AbstractC0272.f1610;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return false;
        }
        try {
            new GZIPInputStream(new ByteArrayInputStream(Base64.decode(str, 0))).close();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static boolean m1377(String str, int i) {
        return !TextUtils.isEmpty(str) && str.length() >= 1 && str.length() <= i;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1376(String str, String str2, boolean z) {
        if (z && !TextUtils.isEmpty(str2)) {
            if (!str2.startsWith(StringFog.decrypt("1g==\n", "iA1uCPaUEOg=\n"))) {
                str2 = AbstractC0202.m1159("6kGYI5Iw9zE=\n", "tBrEUM5jqhs=\n", new StringBuilder(), str2);
            }
            if (!str2.endsWith(StringFog.decrypt("sQ==\n", "lcM1t3ZXtaY=\n"))) {
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                str2 = AbstractC0829.m1456("f8e3YdC/aQ==\n", "JJvEPYPiQ3o=\n", sb);
            }
        }
        ArrayList arrayListM1372 = m1372(str, str2, true);
        if (arrayListM1372.size() > 0) {
            return (String) arrayListM1372.get(0);
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1375(String str) {
        if (str != null) {
            Handler handler = AbstractC0272.f1610;
            if (Looper.myLooper() != Looper.getMainLooper() && m1373(str)) {
                int i = 0;
                try {
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(Base64.decode(str, 0));
                    GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
                    new ByteArrayOutputStream();
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int i2 = gZIPInputStream.read(bArr, i, 8192 - i);
                        if (i2 == -1) {
                            gZIPInputStream.close();
                            byteArrayInputStream.close();
                            return new String(bArr, StringFog.decrypt("pCsa2as=\n", "8X9c9JPEdJ4=\n"));
                        }
                        i += i2;
                    }
                } catch (Throwable unused) {
                }
            }
        }
        return null;
    }
}
