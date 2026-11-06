package info.flowersoft.theotown.util;

import com.ironsource.R6;
import java.io.DataInputStream;
import java.io.InputStream;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PluginFileDecoder.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class PluginFileDecoder {
    public final KeyImplementation keyProvider;

    /* JADX INFO: compiled from: PluginFileDecoder.kt */
    public interface KeyImplementation {
        byte[] getKey(byte[] bArr);
    }

    public PluginFileDecoder(KeyImplementation keyProvider) {
        Intrinsics.checkNotNullParameter(keyProvider, "keyProvider");
        this.keyProvider = keyProvider;
    }

    public final Cipher getCipher() {
        return Cipher.getInstance("AES/CBC/PKCS5Padding");
    }

    public final byte[] decode(InputStream inputStream) {
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        try {
            int i = dataInputStream.read();
            if (i == -1) {
                throw new IllegalStateException(R6.x1);
            }
            if (i != 1) {
                throw new IllegalStateException(("Unkown version " + i).toString());
            }
            byte[] bArr = new byte[32];
            byte[] bArr2 = new byte[16];
            if (dataInputStream.read(bArr) != 32) {
                throw new IllegalArgumentException(R6.x1);
            }
            if (dataInputStream.read(bArr2) != 16) {
                throw new IllegalArgumentException(R6.x1);
            }
            SecretKeySpec secretKeySpec = new SecretKeySpec(this.keyProvider.getKey(bArr), "AES");
            IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr2);
            Cipher cipher = getCipher();
            cipher.init(2, secretKeySpec, ivParameterSpec);
            byte[] bArrDoFinal = cipher.doFinal(ByteStreamsKt.readBytes(dataInputStream));
            Intrinsics.checkNotNullExpressionValue(bArrDoFinal, "doFinal(...)");
            CloseableKt.closeFinally(dataInputStream, null);
            return bArrDoFinal;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(dataInputStream, th);
                throw th2;
            }
        }
    }
}
