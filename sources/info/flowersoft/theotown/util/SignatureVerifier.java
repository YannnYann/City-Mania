package info.flowersoft.theotown.util;

import java.io.InputStream;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: SignatureVerifier.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class SignatureVerifier {
    public final byte[] magicBytes;
    public final List<PublicKey> publicKeys;
    public static final Companion Companion = new Companion(null);
    public static final byte[] DEFAULT_PUBLIC_KEY = Hex.hex2bin("305c300d06092a864886f70d0101010500034b003048024100d0e2136f978bf5a73beb35db436288984dc8806eb55bbacf1aa5573cf4c32da3e24415502e194590fcd0863ee302225f663128164a1a77764ed3e4709fe58e450203010001");
    public static final byte[] DEFAULT_MAGIC_BYTES = StringsKt__StringsJVMKt.encodeToByteArray("TTSIG");

    /* JADX WARN: Multi-variable type inference failed */
    public SignatureVerifier() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public SignatureVerifier(List<byte[]> publicKeys, byte[] magicBytes) {
        Intrinsics.checkNotNullParameter(publicKeys, "publicKeys");
        Intrinsics.checkNotNullParameter(magicBytes, "magicBytes");
        this.magicBytes = magicBytes;
        List<byte[]> list = publicKeys;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(Companion.getPublicKey((byte[]) it.next()));
        }
        this.publicKeys = arrayList;
    }

    public /* synthetic */ SignatureVerifier(List list, byte[] bArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt__CollectionsJVMKt.listOf(DEFAULT_PUBLIC_KEY) : list, (i & 2) != 0 ? DEFAULT_MAGIC_BYTES : bArr);
    }

    /* JADX INFO: compiled from: SignatureVerifier.kt */
    public interface Result {

        /* JADX INFO: compiled from: SignatureVerifier.kt */
        public static final class Failure implements Result {
            public static final Failure INSTANCE = new Failure();

            public boolean equals(Object obj) {
                return this == obj || (obj instanceof Failure);
            }

            public int hashCode() {
                return -1779517296;
            }

            public String toString() {
                return "Failure";
            }
        }

        /* JADX INFO: compiled from: SignatureVerifier.kt */
        public static final class Success implements Result {
            public final int bytesToSkip;
            public final int keyIndex;

            public static /* synthetic */ Success copy$default(Success success, int i, int i2, int i3, Object obj) {
                if ((i3 & 1) != 0) {
                    i = success.bytesToSkip;
                }
                if ((i3 & 2) != 0) {
                    i2 = success.keyIndex;
                }
                return success.copy(i, i2);
            }

            public final int component1() {
                return this.bytesToSkip;
            }

            public final int component2() {
                return this.keyIndex;
            }

            public final Success copy(int i, int i2) {
                return new Success(i, i2);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Success)) {
                    return false;
                }
                Success success = (Success) obj;
                return this.bytesToSkip == success.bytesToSkip && this.keyIndex == success.keyIndex;
            }

            public int hashCode() {
                return (Integer.hashCode(this.bytesToSkip) * 31) + Integer.hashCode(this.keyIndex);
            }

            public String toString() {
                return "Success(bytesToSkip=" + this.bytesToSkip + ", keyIndex=" + this.keyIndex + ')';
            }

            public Success(int i, int i2) {
                this.bytesToSkip = i;
                this.keyIndex = i2;
            }

            public final int getBytesToSkip() {
                return this.bytesToSkip;
            }

            public final int getKeyIndex() {
                return this.keyIndex;
            }
        }
    }

    /* JADX INFO: compiled from: SignatureVerifier.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final byte[] getDEFAULT_PUBLIC_KEY() {
            return SignatureVerifier.DEFAULT_PUBLIC_KEY;
        }

        public final byte[] getDEFAULT_MAGIC_BYTES() {
            return SignatureVerifier.DEFAULT_MAGIC_BYTES;
        }

        public final PublicKey getPublicKey(byte[] hexPublicKey) {
            Intrinsics.checkNotNullParameter(hexPublicKey, "hexPublicKey");
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(hexPublicKey));
        }
    }

    public final Result verify(InputStream stream) {
        int i;
        Intrinsics.checkNotNullParameter(stream, "stream");
        try {
            int length = this.magicBytes.length;
            byte[] bArr = new byte[length];
            if (stream.read(bArr) != length) {
                throw new IllegalArgumentException("Magic could not be read");
            }
            if (!Arrays.equals(bArr, this.magicBytes)) {
                throw new IllegalArgumentException("File does not have signature");
            }
            int i2 = stream.read();
            if (i2 == -1) {
                throw new IllegalStateException("Eof");
            }
            if (i2 != 1) {
                throw new IllegalStateException(("Unsupported signature version " + i2).toString());
            }
            byte[] bArr2 = new byte[64];
            if (stream.read(bArr2) != 64) {
                throw new IllegalArgumentException("Could not read signature");
            }
            List<PublicKey> list = this.publicKeys;
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            for (PublicKey publicKey : list) {
                Signature signature = Signature.getInstance("SHA256withRSA");
                signature.initVerify(publicKey);
                arrayList.add(signature);
            }
            byte[] bArr3 = new byte[4096];
            while (true) {
                i = 0;
                int i3 = stream.read(bArr3, 0, 4096);
                if (i3 == -1) {
                    break;
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((Signature) it.next()).update(bArr3, 0, i3);
                }
            }
            for (Object obj : arrayList) {
                int i4 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                if (((Signature) obj).verify(bArr2)) {
                    Result.Success success = new Result.Success(this.magicBytes.length + 65, i);
                    CloseableKt.closeFinally(stream, null);
                    return success;
                }
                i = i4;
            }
            Result.Failure failure = Result.Failure.INSTANCE;
            CloseableKt.closeFinally(stream, null);
            return failure;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(stream, th);
                throw th2;
            }
        }
    }
}
