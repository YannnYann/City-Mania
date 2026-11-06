package ads_mobile_sdk;

import android.util.Pair;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.security.DigestException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class bk {
    public static int a(int i, int i2) {
        int iB = b(i);
        int iB2 = b(i2);
        if (iB == 1) {
            if (iB2 == 1) {
                return 0;
            }
            if (iB2 == 2) {
                return -1;
            }
            throw new IllegalArgumentException(uj.a("Unknown digestAlgorithm2: ", iB2));
        }
        if (iB != 2) {
            throw new IllegalArgumentException(uj.a("Unknown digestAlgorithm1: ", iB));
        }
        if (iB2 == 1) {
            return 1;
        }
        if (iB2 == 2) {
            return 0;
        }
        throw new IllegalArgumentException(uj.a("Unknown digestAlgorithm2: ", iB2));
    }

    public static int b(int i) {
        if (i == 513) {
            return 1;
        }
        if (i == 514) {
            return 2;
        }
        if (i == 769) {
            return 1;
        }
        switch (i) {
            case 257:
            case 259:
                return 1;
            case 258:
            case 260:
                return 2;
            default:
                throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i));
        }
    }

    public static byte[][] a(int[] iArr, wj[] wjVarArr) throws DigestException {
        long j;
        int i;
        int i2;
        wj[] wjVarArr2 = wjVarArr;
        int length = wjVarArr2.length;
        int i3 = 0;
        long size = 0;
        while (true) {
            j = 1048576;
            if (i3 >= length) {
                break;
            }
            size += (wjVarArr2[i3].size() + 1048575) / 1048576;
            i3++;
        }
        if (size < 2097151) {
            int i4 = (int) size;
            byte[][] bArr = new byte[iArr.length][];
            int i5 = 0;
            while (true) {
                char c = 5;
                if (i5 < iArr.length) {
                    int i6 = iArr[i5];
                    if (i6 == 1) {
                        i2 = 32;
                    } else {
                        if (i6 != 2) {
                            throw new IllegalArgumentException(uj.a("Unknown content digest algorthm: ", i6));
                        }
                        i2 = 64;
                    }
                    byte[] bArr2 = new byte[(i2 * i4) + 5];
                    bArr2[0] = 90;
                    a(bArr2, i4);
                    bArr[i5] = bArr2;
                    i5++;
                } else {
                    byte[] bArr3 = new byte[5];
                    bArr3[0] = -91;
                    int length2 = iArr.length;
                    MessageDigest[] messageDigestArr = new MessageDigest[length2];
                    for (int i7 = 0; i7 < iArr.length; i7++) {
                        String strA = a(iArr[i7]);
                        try {
                            messageDigestArr[i7] = MessageDigest.getInstance(strA);
                        } catch (NoSuchAlgorithmException e) {
                            throw new RuntimeException(strA.concat(" digest not supported"), e);
                        }
                    }
                    int length3 = wjVarArr2.length;
                    int i8 = 0;
                    int i9 = 0;
                    int i10 = 0;
                    while (i8 < length3) {
                        char c2 = c;
                        wj wjVar = wjVarArr2[i8];
                        wj wjVar2 = wjVar;
                        long size2 = wjVar.size();
                        long j2 = 0;
                        int i11 = i10;
                        while (size2 > 0) {
                            int iMin = (int) Math.min(size2, j);
                            a(bArr3, iMin);
                            length2 = length2;
                            for (int i12 = 0; i12 < length2; i12++) {
                                messageDigestArr[i12].update(bArr3);
                            }
                            byte[] bArr4 = bArr3;
                            wj wjVar3 = wjVar2;
                            long j3 = j2;
                            try {
                                wjVar3.a(messageDigestArr, j3, iMin);
                                int i13 = 0;
                                while (i13 < iArr.length) {
                                    int i14 = iArr[i13];
                                    int i15 = i13;
                                    byte[] bArr5 = bArr[i15];
                                    int i16 = length2;
                                    if (i14 == 1) {
                                        i = 32;
                                    } else {
                                        if (i14 != 2) {
                                            throw new IllegalArgumentException(uj.a("Unknown content digest algorthm: ", i14));
                                        }
                                        i = 64;
                                    }
                                    MessageDigest messageDigest = messageDigestArr[i15];
                                    int i17 = length3;
                                    int i18 = i11;
                                    byte[][] bArr6 = bArr;
                                    int iDigest = messageDigest.digest(bArr5, (i18 * i) + 5, i);
                                    if (iDigest != i) {
                                        throw new RuntimeException("Unexpected output size of " + messageDigest.getAlgorithm() + " digest: " + iDigest);
                                    }
                                    i13 = i15 + 1;
                                    i11 = i18;
                                    length2 = i16;
                                    length3 = i17;
                                    bArr = bArr6;
                                }
                                long j4 = iMin;
                                j2 = j3 + j4;
                                size2 -= j4;
                                i11++;
                                wjVar2 = wjVar3;
                                bArr3 = bArr4;
                                length3 = length3;
                                j = 1048576;
                            } catch (IOException e2) {
                                throw new DigestException("Failed to digest chunk #" + i11 + " of section #" + i9, e2);
                            }
                        }
                        i9++;
                        i8++;
                        wjVarArr2 = wjVarArr;
                        i10 = i11;
                        c = c2;
                        length3 = length3;
                        j = 1048576;
                    }
                    byte[][] bArr7 = bArr;
                    byte[][] bArr8 = new byte[iArr.length][];
                    for (int i19 = 0; i19 < iArr.length; i19++) {
                        int i20 = iArr[i19];
                        byte[] bArr9 = bArr7[i19];
                        String strA2 = a(i20);
                        try {
                            bArr8[i19] = MessageDigest.getInstance(strA2).digest(bArr9);
                        } catch (NoSuchAlgorithmException e3) {
                            throw new RuntimeException(strA2.concat(" digest not supported"), e3);
                        }
                    }
                    return bArr8;
                }
            }
        } else {
            throw new DigestException("Too many chunks: " + size);
        }
    }

    public static byte[] b(ByteBuffer byteBuffer) throws IOException {
        int i = byteBuffer.getInt();
        if (i >= 0) {
            if (i <= byteBuffer.remaining()) {
                byte[] bArr = new byte[i];
                byteBuffer.get(bArr);
                return bArr;
            }
            throw new IOException("Underflow while reading length-prefixed value. Length: " + i + ", available: " + byteBuffer.remaining());
        }
        throw new IOException("Negative length");
    }

    public static ByteBuffer a(ByteBuffer byteBuffer, int i) {
        if (i >= 0) {
            int iLimit = byteBuffer.limit();
            int iPosition = byteBuffer.position();
            int i2 = i + iPosition;
            if (i2 >= iPosition && i2 <= iLimit) {
                byteBuffer.limit(i2);
                try {
                    ByteBuffer byteBufferSlice = byteBuffer.slice();
                    byteBufferSlice.order(byteBuffer.order());
                    byteBuffer.position(i2);
                    return byteBufferSlice;
                } finally {
                    byteBuffer.limit(iLimit);
                }
            }
            throw new BufferUnderflowException();
        }
        throw new IllegalArgumentException(uj.a("size: ", i));
    }

    public static String a(int i) {
        if (i == 1) {
            return "SHA-256";
        }
        if (i == 2) {
            return "SHA-512";
        }
        throw new IllegalArgumentException(uj.a("Unknown content digest algorthm: ", i));
    }

    public static ByteBuffer a(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.remaining() >= 4) {
            int i = byteBuffer.getInt();
            if (i >= 0) {
                if (i <= byteBuffer.remaining()) {
                    return a(byteBuffer, i);
                }
                throw new IOException("Length-prefixed field longer than remaining buffer. Field length: " + i + ", remaining: " + byteBuffer.remaining());
            }
            throw new IllegalArgumentException("Negative length");
        }
        throw new IOException("Remaining buffer too short to contain length of length-prefixed field. Remaining: " + byteBuffer.remaining());
    }

    public static void a(byte[] bArr, int i) {
        bArr[1] = (byte) (i & 255);
        bArr[2] = (byte) ((i >>> 8) & 255);
        bArr[3] = (byte) ((i >>> 16) & 255);
        bArr[4] = (byte) ((i >>> 24) & 255);
    }

    public static X509Certificate[][] a(RandomAccessFile randomAccessFile) throws IOException, yj {
        Pair pairA;
        if (randomAccessFile.length() < 22) {
            pairA = null;
        } else {
            pairA = y24.a(randomAccessFile, 0);
            if (pairA == null) {
                pairA = y24.a(randomAccessFile, 65535);
            }
        }
        if (pairA != null) {
            ByteBuffer byteBuffer = (ByteBuffer) pairA.first;
            long jLongValue = ((Long) pairA.second).longValue();
            long j = jLongValue - 20;
            if (j >= 0) {
                randomAccessFile.seek(j);
                if (randomAccessFile.readInt() == 1347094023) {
                    throw new yj("ZIP64 APK not supported");
                }
            }
            ByteOrder byteOrderOrder = byteBuffer.order();
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            if (byteOrderOrder == byteOrder) {
                long j2 = ((long) byteBuffer.getInt(byteBuffer.position() + 16)) & 4294967295L;
                if (j2 < jLongValue) {
                    if (byteBuffer.order() != byteOrder) {
                        throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
                    }
                    if (j2 + (((long) byteBuffer.getInt(byteBuffer.position() + 12)) & 4294967295L) != jLongValue) {
                        throw new yj("ZIP Central Directory is not immediately followed by End of Central Directory");
                    }
                    if (j2 >= 32) {
                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(24);
                        byteBufferAllocate.order(byteOrder);
                        randomAccessFile.seek(j2 - ((long) byteBufferAllocate.capacity()));
                        randomAccessFile.readFully(byteBufferAllocate.array(), byteBufferAllocate.arrayOffset(), byteBufferAllocate.capacity());
                        if (byteBufferAllocate.getLong(8) == 2334950737559900225L && byteBufferAllocate.getLong(16) == 3617552046287187010L) {
                            long j3 = byteBufferAllocate.getLong(0);
                            if (j3 < byteBufferAllocate.capacity() || j3 > 2147483639) {
                                throw new yj("APK Signing Block size out of range: " + j3);
                            }
                            int i = (int) (8 + j3);
                            long j4 = j2 - ((long) i);
                            if (j4 >= 0) {
                                ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(i);
                                byteBufferAllocate2.order(byteOrder);
                                randomAccessFile.seek(j4);
                                randomAccessFile.readFully(byteBufferAllocate2.array(), byteBufferAllocate2.arrayOffset(), byteBufferAllocate2.capacity());
                                long j5 = byteBufferAllocate2.getLong(0);
                                if (j5 == j3) {
                                    Pair pairCreate = Pair.create(byteBufferAllocate2, Long.valueOf(j4));
                                    ByteBuffer byteBuffer2 = (ByteBuffer) pairCreate.first;
                                    long jLongValue2 = ((Long) pairCreate.second).longValue();
                                    if (byteBuffer2.order() == byteOrder) {
                                        int iCapacity = byteBuffer2.capacity() - 24;
                                        if (iCapacity >= 8) {
                                            int iCapacity2 = byteBuffer2.capacity();
                                            if (iCapacity <= byteBuffer2.capacity()) {
                                                int iLimit = byteBuffer2.limit();
                                                int iPosition = byteBuffer2.position();
                                                try {
                                                    byteBuffer2.position(0);
                                                    byteBuffer2.limit(iCapacity);
                                                    byteBuffer2.position(8);
                                                    ByteBuffer byteBufferSlice = byteBuffer2.slice();
                                                    byteBufferSlice.order(byteBuffer2.order());
                                                    byteBuffer2.position(0);
                                                    byteBuffer2.limit(iLimit);
                                                    byteBuffer2.position(iPosition);
                                                    int i2 = 0;
                                                    while (byteBufferSlice.hasRemaining()) {
                                                        i2++;
                                                        if (byteBufferSlice.remaining() >= 8) {
                                                            long j6 = byteBufferSlice.getLong();
                                                            if (j6 >= 4 && j6 <= 2147483647L) {
                                                                int i3 = (int) j6;
                                                                int iPosition2 = byteBufferSlice.position() + i3;
                                                                if (i3 <= byteBufferSlice.remaining()) {
                                                                    if (byteBufferSlice.getInt() == 1896449818) {
                                                                        ByteBuffer byteBufferA = a(byteBufferSlice, i3 - 4);
                                                                        FileChannel channel = randomAccessFile.getChannel();
                                                                        HashMap map = new HashMap();
                                                                        ArrayList arrayList = new ArrayList();
                                                                        try {
                                                                            CertificateFactory certificateFactory = CertificateFactory.getInstance(AndroidStaticDeviceInfoDataSource.CERTIFICATE_TYPE_X509);
                                                                            try {
                                                                                ByteBuffer byteBufferA2 = a(byteBufferA);
                                                                                int i4 = 0;
                                                                                while (byteBufferA2.hasRemaining()) {
                                                                                    i4++;
                                                                                    try {
                                                                                        arrayList.add(a(a(byteBufferA2), map, certificateFactory));
                                                                                    } catch (IOException | SecurityException | BufferUnderflowException e) {
                                                                                        throw new SecurityException("Failed to parse/verify signer #" + i4 + " block", e);
                                                                                    }
                                                                                }
                                                                                if (i4 >= 1) {
                                                                                    if (!map.isEmpty()) {
                                                                                        if (!map.isEmpty()) {
                                                                                            xj xjVar = new xj(channel, 0L, jLongValue2);
                                                                                            xj xjVar2 = new xj(channel, j2, jLongValue - j2);
                                                                                            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
                                                                                            ByteOrder byteOrder2 = ByteOrder.LITTLE_ENDIAN;
                                                                                            byteBufferDuplicate.order(byteOrder2);
                                                                                            if (byteBufferDuplicate.order() == byteOrder2) {
                                                                                                int iPosition3 = byteBufferDuplicate.position() + 16;
                                                                                                if (jLongValue2 >= 0 && jLongValue2 <= 4294967295L) {
                                                                                                    byteBufferDuplicate.putInt(byteBufferDuplicate.position() + iPosition3, (int) jLongValue2);
                                                                                                    vj vjVar = new vj(byteBufferDuplicate);
                                                                                                    int size = map.size();
                                                                                                    int[] iArr = new int[size];
                                                                                                    Iterator it = map.keySet().iterator();
                                                                                                    int i5 = 0;
                                                                                                    while (it.hasNext()) {
                                                                                                        iArr[i5] = ((Integer) it.next()).intValue();
                                                                                                        i5++;
                                                                                                    }
                                                                                                    try {
                                                                                                        byte[][] bArrA = a(iArr, new wj[]{xjVar, xjVar2, vjVar});
                                                                                                        for (int i6 = 0; i6 < size; i6++) {
                                                                                                            int i7 = iArr[i6];
                                                                                                            if (!MessageDigest.isEqual((byte[]) map.get(Integer.valueOf(i7)), bArrA[i6])) {
                                                                                                                throw new SecurityException(a(i7).concat(" digest of contents did not verify"));
                                                                                                            }
                                                                                                        }
                                                                                                        return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()][]);
                                                                                                    } catch (DigestException e2) {
                                                                                                        throw new SecurityException("Failed to compute digest(s) of contents", e2);
                                                                                                    }
                                                                                                }
                                                                                                throw new IllegalArgumentException("uint32 value of out range: " + jLongValue2);
                                                                                            }
                                                                                            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
                                                                                        }
                                                                                        throw new SecurityException("No digests provided");
                                                                                    }
                                                                                    throw new SecurityException("No content digests found");
                                                                                }
                                                                                throw new SecurityException("No signers found");
                                                                            } catch (IOException e3) {
                                                                                throw new SecurityException("Failed to read list of signers", e3);
                                                                            }
                                                                        } catch (CertificateException e4) {
                                                                            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e4);
                                                                        }
                                                                    }
                                                                    byteBufferSlice.position(iPosition2);
                                                                } else {
                                                                    throw new yj("APK Signing Block entry #" + i2 + " size out of range: " + i3 + ", available: " + byteBufferSlice.remaining());
                                                                }
                                                            } else {
                                                                throw new yj("APK Signing Block entry #" + i2 + " size out of range: " + j6);
                                                            }
                                                        } else {
                                                            throw new yj(uj.a("Insufficient data to read size of APK Signing Block entry #", i2));
                                                        }
                                                    }
                                                    throw new yj("No APK Signature Scheme v2 block in APK Signing Block");
                                                } catch (Throwable th) {
                                                    byteBuffer2.position(0);
                                                    byteBuffer2.limit(iLimit);
                                                    byteBuffer2.position(iPosition);
                                                    throw th;
                                                }
                                            }
                                            throw new IllegalArgumentException("end > capacity: " + iCapacity + " > " + iCapacity2);
                                        }
                                        throw new IllegalArgumentException("end < start: " + iCapacity + " < 8");
                                    }
                                    throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
                                }
                                throw new yj("APK Signing Block sizes in header and footer do not match: " + j5 + " vs " + j3);
                            }
                            throw new yj("APK Signing Block offset out of range: " + j4);
                        }
                        throw new yj("No APK Signing Block before ZIP Central Directory");
                    }
                    throw new yj("APK too small for APK Signing Block. ZIP Central Directory offset: " + j2);
                }
                throw new yj("ZIP Central Directory offset out of range: " + j2 + ". ZIP End of Central Directory offset: " + jLongValue);
            }
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
        throw new yj("Not an APK file: ZIP End of Central Directory record not found in file with " + randomAccessFile.length() + " bytes");
    }

    public static X509Certificate[] a(ByteBuffer byteBuffer, HashMap map, CertificateFactory certificateFactory) throws IOException {
        String str;
        Pair pairCreate;
        ByteBuffer byteBufferA = a(byteBuffer);
        ByteBuffer byteBufferA2 = a(byteBuffer);
        byte[] bArrB = b(byteBuffer);
        ArrayList arrayList = new ArrayList();
        byte[] bArrB2 = null;
        int i = 0;
        int i2 = -1;
        byte[] bArrB3 = null;
        while (byteBufferA2.hasRemaining()) {
            i++;
            try {
                ByteBuffer byteBufferA3 = a(byteBufferA2);
                if (byteBufferA3.remaining() >= 8) {
                    int i3 = byteBufferA3.getInt();
                    arrayList.add(Integer.valueOf(i3));
                    if (i3 != 513 && i3 != 514 && i3 != 769) {
                        switch (i3) {
                            case 257:
                            case 258:
                            case 259:
                            case 260:
                                break;
                            default:
                                continue;
                        }
                    }
                    if (i2 == -1 || a(i3, i2) > 0) {
                        bArrB3 = b(byteBufferA3);
                        i2 = i3;
                    }
                } else {
                    throw new SecurityException("Signature record too short");
                }
            } catch (IOException e) {
                e = e;
                throw new SecurityException(uj.a("Failed to parse signature record #", i), e);
            } catch (BufferUnderflowException e2) {
                e = e2;
                throw new SecurityException(uj.a("Failed to parse signature record #", i), e);
            }
        }
        if (i2 == -1) {
            if (i == 0) {
                throw new SecurityException("No signatures found");
            }
            throw new SecurityException("No supported signatures found");
        }
        if (i2 == 513 || i2 == 514) {
            str = "EC";
        } else if (i2 != 769) {
            switch (i2) {
                case 257:
                case 258:
                case 259:
                case 260:
                    str = "RSA";
                    break;
                default:
                    throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i2));
            }
        } else {
            str = "DSA";
        }
        if (i2 == 513) {
            pairCreate = Pair.create("SHA256withECDSA", null);
        } else if (i2 == 514) {
            pairCreate = Pair.create("SHA512withECDSA", null);
        } else if (i2 != 769) {
            switch (i2) {
                case 257:
                    pairCreate = Pair.create("SHA256withRSA/PSS", new PSSParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, 32, 1));
                    break;
                case 258:
                    pairCreate = Pair.create("SHA512withRSA/PSS", new PSSParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, 64, 1));
                    break;
                case 259:
                    pairCreate = Pair.create("SHA256withRSA", null);
                    break;
                case 260:
                    pairCreate = Pair.create("SHA512withRSA", null);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i2));
            }
        } else {
            pairCreate = Pair.create("SHA256withDSA", null);
        }
        String str2 = (String) pairCreate.first;
        AlgorithmParameterSpec algorithmParameterSpec = (AlgorithmParameterSpec) pairCreate.second;
        try {
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(bArrB));
            Signature signature = Signature.getInstance(str2);
            signature.initVerify(publicKeyGeneratePublic);
            if (algorithmParameterSpec != null) {
                signature.setParameter(algorithmParameterSpec);
            }
            signature.update(byteBufferA);
            if (signature.verify(bArrB3)) {
                byteBufferA.clear();
                ByteBuffer byteBufferA4 = a(byteBufferA);
                ArrayList arrayList2 = new ArrayList();
                int i4 = 0;
                while (byteBufferA4.hasRemaining()) {
                    i4++;
                    try {
                        ByteBuffer byteBufferA5 = a(byteBufferA4);
                        if (byteBufferA5.remaining() >= 8) {
                            int i5 = byteBufferA5.getInt();
                            arrayList2.add(Integer.valueOf(i5));
                            if (i5 == i2) {
                                bArrB2 = b(byteBufferA5);
                            }
                        } else {
                            throw new IOException("Record too short");
                        }
                    } catch (IOException e3) {
                        e = e3;
                        throw new IOException(uj.a("Failed to parse digest record #", i4), e);
                    } catch (BufferUnderflowException e4) {
                        e = e4;
                        throw new IOException(uj.a("Failed to parse digest record #", i4), e);
                    }
                }
                if (arrayList.equals(arrayList2)) {
                    int iB = b(i2);
                    byte[] bArr = (byte[]) map.put(Integer.valueOf(iB), bArrB2);
                    if (bArr != null && !MessageDigest.isEqual(bArr, bArrB2)) {
                        throw new SecurityException(a(iB).concat(" contents digest does not match the digest specified by a preceding signer"));
                    }
                    ByteBuffer byteBufferA6 = a(byteBufferA);
                    ArrayList arrayList3 = new ArrayList();
                    int i6 = 0;
                    while (byteBufferA6.hasRemaining()) {
                        i6++;
                        byte[] bArrB4 = b(byteBufferA6);
                        try {
                            arrayList3.add(new zj((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(bArrB4)), bArrB4));
                        } catch (CertificateException e5) {
                            throw new SecurityException(uj.a("Failed to decode certificate #", i6), e5);
                        }
                    }
                    if (!arrayList3.isEmpty()) {
                        if (Arrays.equals(bArrB, ((X509Certificate) arrayList3.get(0)).getPublicKey().getEncoded())) {
                            return (X509Certificate[]) arrayList3.toArray(new X509Certificate[arrayList3.size()]);
                        }
                        throw new SecurityException("Public key mismatch between certificate and signature record");
                    }
                    throw new SecurityException("No certificates listed");
                }
                throw new SecurityException("Signature algorithms don't match between digests and signatures records");
            }
            throw new SecurityException(str2 + " signature did not verify");
        } catch (InvalidAlgorithmParameterException e6) {
            e = e6;
            throw new SecurityException("Failed to verify " + str2 + " signature", e);
        } catch (InvalidKeyException e7) {
            e = e7;
            throw new SecurityException("Failed to verify " + str2 + " signature", e);
        } catch (NoSuchAlgorithmException e8) {
            e = e8;
            throw new SecurityException("Failed to verify " + str2 + " signature", e);
        } catch (SignatureException e9) {
            e = e9;
            throw new SecurityException("Failed to verify " + str2 + " signature", e);
        } catch (InvalidKeySpecException e10) {
            e = e10;
            throw new SecurityException("Failed to verify " + str2 + " signature", e);
        }
    }

    public static X509Certificate[][] a(String str) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ);
        try {
            X509Certificate[][] x509CertificateArrA = a(randomAccessFile);
            randomAccessFile.close();
            return x509CertificateArrA;
        } finally {
            try {
                randomAccessFile.close();
            } catch (IOException unused) {
            }
        }
    }
}
