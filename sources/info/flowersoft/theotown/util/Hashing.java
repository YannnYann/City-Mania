package info.flowersoft.theotown.util;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Hashing.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class Hashing {
    public static final Hashing INSTANCE = new Hashing();

    public static final int hash(int i) {
        int i2 = (i ^ (i >> 16)) * 73244475;
        int i3 = (i2 ^ (i2 >> 16)) * 73244475;
        return i3 ^ (i3 >> 16);
    }

    public static final String internalName(String name, String seed) {
        byte[] bArrDigest;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(seed, "seed");
        String str = name + ':' + seed;
        try {
            Charset charsetForName = Charset.forName("UTF-8");
            Intrinsics.checkNotNullExpressionValue(charsetForName, "forName(...)");
            byte[] bytes = str.getBytes(charsetForName);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            try {
                bArrDigest = MessageDigest.getInstance("md5").digest(bytes);
                Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
                bArrDigest = new byte[0];
            }
            String strBin2hex = Hex.bin2hex(bArrDigest);
            Intrinsics.checkNotNullExpressionValue(strBin2hex, "bin2hex(...)");
            return strBin2hex;
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static final String sha(String data) {
        byte[] bArrDigest;
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            Charset charsetForName = Charset.forName("UTF-8");
            Intrinsics.checkNotNullExpressionValue(charsetForName, "forName(...)");
            byte[] bytes = data.getBytes(charsetForName);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            int length = bytes.length;
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                messageDigest.update(bytes, 0, length);
                bArrDigest = messageDigest.digest();
                Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
                bArrDigest = new byte[0];
            }
            String strBin2hex = Hex.bin2hex(bArrDigest);
            Intrinsics.checkNotNullExpressionValue(strBin2hex, "bin2hex(...)");
            return strBin2hex;
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static final byte[] sha(byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        int length = data.length;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(data, 0, length);
            byte[] bArrDigest = messageDigest.digest();
            Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
            return bArrDigest;
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return new byte[0];
        }
    }

    public static final byte[] sha(byte[] data, int i, int i2) {
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(data, i, i2);
            byte[] bArrDigest = messageDigest.digest();
            Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
            return bArrDigest;
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return new byte[0];
        }
    }

    public static final byte[] sha(InputStream inputStream) throws IOException {
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        byte[] bArr = new byte[1024];
        try {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                while (inputStream.available() != 0) {
                    int i = inputStream.read(bArr);
                    if (i > 0) {
                        messageDigest.update(bArr, 0, i);
                    }
                }
                byte[] bArrDigest = messageDigest.digest();
                Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
                inputStream.close();
                return bArrDigest;
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
                byte[] bArr2 = new byte[0];
                inputStream.close();
                return bArr2;
            }
        } catch (Throwable th) {
            inputStream.close();
            throw th;
        }
    }

    public static final String md5(String data) {
        byte[] bArrDigest;
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            Charset charsetForName = Charset.forName("UTF-8");
            Intrinsics.checkNotNullExpressionValue(charsetForName, "forName(...)");
            byte[] bytes = data.getBytes(charsetForName);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            try {
                bArrDigest = MessageDigest.getInstance("md5").digest(bytes);
                Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
                bArrDigest = new byte[0];
            }
            String strBin2hex = Hex.bin2hex(bArrDigest);
            Intrinsics.checkNotNullExpressionValue(strBin2hex, "bin2hex(...)");
            return strBin2hex;
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static final byte[] md5(byte[] bArr) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("md5").digest(bArr);
            Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
            return bArrDigest;
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return new byte[0];
        }
    }

    public static final byte[] md5(InputStream inputStream) throws IOException {
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        byte[] bArr = new byte[1024];
        try {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("md5");
                while (inputStream.available() != 0) {
                    int i = inputStream.read(bArr);
                    if (i > 0) {
                        messageDigest.update(bArr, 0, i);
                    }
                }
                byte[] bArrDigest = messageDigest.digest();
                Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
                inputStream.close();
                return bArrDigest;
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
                byte[] bArr2 = new byte[0];
                inputStream.close();
                return bArr2;
            }
        } catch (Throwable th) {
            inputStream.close();
            throw th;
        }
    }

    public final byte[] md5(File file) throws IOException {
        return md5(new BufferedInputStream(new FileInputStream(file)));
    }

    public static final int hash(int i, int i2) {
        return hash(i + (i2 << 16));
    }
}
