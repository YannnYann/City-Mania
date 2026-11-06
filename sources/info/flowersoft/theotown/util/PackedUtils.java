package info.flowersoft.theotown.util;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: PackedUtils.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class PackedUtils {
    public static final PackedUtils INSTANCE = new PackedUtils();

    public final String readPackedTextStream(InputStream inputStream, int i) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new DecInputStream(inputStream, i), StandardCharsets.UTF_8));
        StringBuilder sb = new StringBuilder(1024);
        try {
            for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                if (sb.length() > 0) {
                    sb.append('\n');
                }
                sb.append(line);
            }
            try {
                bufferedReader.close();
                String string = sb.toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                return string;
            } catch (IOException e) {
                throw new RuntimeException("loadTextStream: ", e);
            }
        } catch (IOException e2) {
            throw new RuntimeException("loadTextStream: ", e2);
        }
    }

    public final InputStream readInternal(String fileName) throws IOException {
        String strBin2hex;
        byte[] bArrDigest;
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        com.badlogic.gdx.Files files = Gdx.files;
        String str = fileName + ":ae6bb9dcccb3ee65a2a5e1964c8ca37b";
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
            strBin2hex = Hex.bin2hex(bArrDigest);
            Intrinsics.checkNotNullExpressionValue(strBin2hex, "bin2hex(...)");
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            strBin2hex = "";
        }
        FileHandle fileHandleInternal = files.internal(strBin2hex);
        FileDecoder fileDecoder = new FileDecoder();
        InputStream inputStream = fileHandleInternal.read();
        Intrinsics.checkNotNullExpressionValue(inputStream, "read(...)");
        BufferedInputStream bufferedInputStream = inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, 8192);
        BytesCallbackFunction bytesCallbackFunctionDecode = fileDecoder.decode(bufferedInputStream, fileName);
        bufferedInputStream.skip(bytesCallbackFunctionDecode.getPaddingPrefix());
        return new BoundedXorInputStream(bufferedInputStream, bytesCallbackFunctionDecode.getMaskBytes(), bytesCallbackFunctionDecode.getLen());
    }

    public final String readInternalText(String fileName) {
        String strBin2hex;
        byte[] bArrDigest;
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        com.badlogic.gdx.Files files = Gdx.files;
        String str = fileName + ":ae6bb9dcccb3ee65a2a5e1964c8ca37b";
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
            strBin2hex = Hex.bin2hex(bArrDigest);
            Intrinsics.checkNotNullExpressionValue(strBin2hex, "bin2hex(...)");
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            strBin2hex = "";
        }
        FileHandle fileHandleInternal = files.internal(strBin2hex);
        FileDecoder fileDecoder = new FileDecoder();
        InputStream inputStream = fileHandleInternal.read();
        Intrinsics.checkNotNullExpressionValue(inputStream, "read(...)");
        BufferedInputStream bufferedInputStream = inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, 8192);
        BytesCallbackFunction bytesCallbackFunctionDecode = fileDecoder.decode(bufferedInputStream, fileName);
        bufferedInputStream.skip(bytesCallbackFunctionDecode.getPaddingPrefix());
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new BoundedXorInputStream(bufferedInputStream, bytesCallbackFunctionDecode.getMaskBytes(), bytesCallbackFunctionDecode.getLen()), Charsets.UTF_8), 8192);
        try {
            String text = TextStreamsKt.readText(bufferedReader);
            InlineMarker.finallyStart(2);
            CloseableKt.closeFinally(bufferedReader, null);
            InlineMarker.finallyEnd(2);
            return text;
        } finally {
        }
    }

    public final String readPackedTextFile(FileHandle file, int i) {
        Intrinsics.checkNotNullParameter(file, "file");
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new DecInputStream(file.read(), i), StandardCharsets.UTF_8));
        StringBuilder sb = new StringBuilder(1024);
        try {
            for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                if (sb.length() > 0) {
                    sb.append('\n');
                }
                sb.append(line);
            }
            try {
                bufferedReader.close();
                String string = sb.toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                return string;
            } catch (IOException e) {
                throw new RuntimeException("loadTextFile(" + file + "): ", e);
            }
        } catch (IOException e2) {
            throw new RuntimeException("loadTextFile(" + file + "): ", e2);
        }
    }
}
