package com.ironsource.adqualitysdk.sdk.i;

import android.util.Base64;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ł, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0061 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final String f813 = StringFog.decrypt("JM8TvUTCbnkc/jahSd0=\n", "ZatCyCWuBw0=\n");

    static {
        StringFog.decrypt("gRPHBrA+XPSAHcsOvj4S6w==\n", "8nyoa9xfcYA=\n");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static byte[] m1072(String str, String str2, String str3, String str4) {
        CipherInputStream cipherInputStream;
        try {
            byte[] bArrDecode = Base64.decode(str.getBytes(), 0);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArrDecode, 16, bArrDecode.length);
            try {
                int length = str3.length();
                byte[] bArr = new byte[length / 2];
                for (int i = 0; i < length; i += 2) {
                    bArr[i / 2] = (byte) (Character.digit(str3.charAt(i + 1), 16) + (Character.digit(str3.charAt(i), 16) << 4));
                }
                int length2 = str4.length();
                byte[] bArr2 = new byte[length2 / 2];
                for (int i2 = 0; i2 < length2; i2 += 2) {
                    bArr2[i2 / 2] = (byte) (Character.digit(str4.charAt(i2 + 1), 16) + (Character.digit(str4.charAt(i2), 16) << 4));
                }
                Cipher cipher = Cipher.getInstance(StringFog.decrypt("SNNN6gq1eKJZ3V2WfKda6W3/cKI=\n", "CZYexUn3O40=\n"));
                cipher.init(2, SecretKeyFactory.getInstance(StringFog.decrypt("1WKZaMT9o3PBFZ1xyZveCMdpiH7I+sZ9x2PxcN3spW3WbA==\n", "hSDcP42p6z4=\n"), StringFog.decrypt("pqI=\n", "5OGNGWEaOdM=\n")).generateSecret(new PBEKeySpec(str2.toCharArray(), bArr2, 1, 256)), new IvParameterSpec(bArr, 0, cipher.getBlockSize()));
                cipherInputStream = new CipherInputStream(new ByteArrayInputStream(bArrCopyOfRange), cipher);
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr3 = new byte[8192];
                    for (int i3 = cipherInputStream.read(bArr3); i3 > -1; i3 = cipherInputStream.read(bArr3)) {
                        byteArrayOutputStream.write(bArr3, 0, i3);
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    try {
                        cipherInputStream.close();
                    } catch (Throwable unused) {
                    }
                    return byteArray;
                } catch (Throwable th) {
                    th = th;
                    try {
                        AbstractC1003.m1592(f813, StringFog.decrypt("7oOPuUca5Q3Ig4SmQVPvD4uCiaRcVOY=\n", "q/H91jU6gWg=\n"), th, false);
                        if (cipherInputStream != null) {
                            try {
                                cipherInputStream.close();
                            } catch (Throwable unused2) {
                            }
                        }
                        return null;
                    } catch (Throwable th2) {
                        if (cipherInputStream != null) {
                            try {
                                cipherInputStream.close();
                            } catch (Throwable unused3) {
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                cipherInputStream = null;
            }
        } catch (Throwable th4) {
            AbstractC1003.m1592(f813, StringFog.decrypt("jbqlI6l3RuytqaMltTAF+q2rpTWrIwX/pK+4\n", "yMjXTNtXJZ4=\n"), th4, false);
        }
    }
}
