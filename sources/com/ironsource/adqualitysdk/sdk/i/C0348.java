package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ں, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0348 {

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final String f1947;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final byte[] f1948;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String f1949;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f1950;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final SecretKeySpec f1951;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public Cipher f1952;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public Cipher f1953;

    static {
        StringFog.decrypt("mOOyaigJiLyS9P1PPiOrj9HYjkU+NbKsl+SuZxoSkrw=\n", "8ZHdBHtm/c4=\n");
        f1950 = StringFog.decrypt("E1X6wTA=\n", "RgG87AhoLds=\n");
        StringFog.decrypt("SGFhytnceb5QYmXT1LoE21pqcNzV2xyuWmAJ39M=\n", "GCMknZCIMe0=\n");
        f1949 = StringFog.decrypt("xlNDF+/f2g3XXVNrmc34RuN/fl8=\n", "hxYQOKydmSI=\n");
        f1947 = StringFog.decrypt("/B7c9nF8T1/zEJ+6a39MW/EWn612ekwc3jTil2B1VUH8EMW3cD4RTg==\n", "n3Gx2AITIDI=\n");
        f1948 = new byte[]{16, 74, 71, -80, 32, 101, -47, 72, 117, -14, 0, -29, 70, 65, -12, 74};
    }

    public C0348(byte[] bArr, String str, String str2, String str3) {
        byte[] bArrDigest;
        try {
            bArrDigest = SecretKeyFactory.getInstance(StringFog.decrypt("Zs7u9Sl9NPd+zersJBtJknTF/+MlelHndM+G4CM=\n", "NoyromApfKQ=\n")).generateSecret(new PBEKeySpec((str + str2 + str3).toCharArray(), bArr, 1024, 256)).getEncoded();
        } catch (GeneralSecurityException unused) {
            String strDecrypt = StringFog.decrypt("z0tQI0YQ91XXQXcTckPVcfBhZw==\n", "hA4VdQcwthA=\n");
            String strDecrypt2 = StringFog.decrypt("zZlB+zCKphu9ikC5OIapDfCbT+04iqYHvY9L7ziLr0y9v1zgOIatQvmCSP80mq8M6ctP6SGapQP+\ngwA=\n", "nesumVHoymI=\n");
            String str4 = AbstractC0251.f1564;
            AbstractC0182.m1148(strDecrypt, strDecrypt2);
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(StringFog.decrypt("uuPz\n", "96fGEEJ+LfE=\n"));
                char[] charArray = (str + str2 + str3).toCharArray();
                for (char c : charArray) {
                    messageDigest.update((byte) c);
                }
                bArrDigest = messageDigest.digest();
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(StringFog.decrypt("ziOr+fst5EriI6vx5SvuB+IjqQ==\n", "h03dmJdEgGo=\n"), e);
            }
        }
        this.f1951 = new SecretKeySpec(bArrDigest, StringFog.decrypt("/Gad\n", "vSPOHbd8DzQ=\n"));
        m1248();
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized String m1246(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            try {
                try {
                    String str2 = new String(this.f1952.doFinal(AbstractC0345.m1245(str)), f1950);
                    String str3 = f1947;
                    if (str2.indexOf(str3) == 0) {
                        return str2.substring(str3.length(), str2.length());
                    }
                    throw new C0369(StringFog.decrypt("02Ar1rpbvKX0cWrUsFzyr7stI9ypSPCi/yUu06tIvKTpJSHXpgCm\n", "mwVKst8pnMs=\n") + str);
                } catch (IllegalBlockSizeException e) {
                    m1248();
                    StringBuilder sb = new StringBuilder();
                    sb.append(e.getMessage());
                    throw new C0369(AbstractC0202.m1159("0Q==\n", "63fdqRQYj7M=\n", sb, str));
                }
            } catch (C0322 e2) {
                m1248();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(e2.getMessage());
                throw new C0369(AbstractC0202.m1159("uQ==\n", "g7AbSgpZ0YU=\n", sb2, str));
            }
        } catch (UnsupportedEncodingException e3) {
            throw new RuntimeException(StringFog.decrypt("AK4gShftWi8sriBCCetQYiyuIg==\n", "ScBWK3uEPg8=\n"), e3);
        } catch (BadPaddingException e4) {
            m1248();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(e4.getMessage());
            throw new C0369(AbstractC0202.m1159("MQ==\n", "C25OkCFTrgw=\n", sb3, str));
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1248() {
        try {
            String str = f1949;
            Cipher cipher = Cipher.getInstance(str);
            this.f1953 = cipher;
            SecretKeySpec secretKeySpec = this.f1951;
            byte[] bArr = f1948;
            cipher.init(1, secretKeySpec, new IvParameterSpec(bArr));
            Cipher cipher2 = Cipher.getInstance(str);
            this.f1952 = cipher2;
            cipher2.init(2, this.f1951, new IvParameterSpec(bArr));
        } catch (GeneralSecurityException e) {
            throw new RuntimeException(StringFog.decrypt("2g1GC5KZKiP2DUYDjJ8gbvYNRErM\n", "k2Mwav7wTgM=\n"), e);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized String m1247(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return AbstractC0345.m1244(this.f1953.doFinal((f1947 + str).getBytes(f1950)));
        } catch (UnsupportedEncodingException e) {
            m1248();
            throw new RuntimeException(StringFog.decrypt("3+v8bxqYlpHz6/xnBJ6c3PPr/g==\n", "loWKDnbx8rE=\n"), e);
        } catch (GeneralSecurityException e2) {
            m1248();
            throw new RuntimeException(StringFog.decrypt("a4K01ESWDTlHgrTcWpAHdEeCtg==\n", "IuzCtSj/aRk=\n"), e2);
        }
    }
}
