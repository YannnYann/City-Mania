package androidx.datastore.preferences.protobuf;

import com.ironsource.mediationsdk.logger.IronSourceError;
import com.vungle.ads.internal.protos.Sdk;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class Utf8 {
    public static final Processor processor;

    public static abstract class Processor {
        public abstract String decodeUtf8(byte[] bytes, int index, int size) throws InvalidProtocolBufferException;

        public abstract int encodeUtf8(String in, byte[] out, int offset, int length);
    }

    static {
        Processor safeProcessor;
        if (UnsafeProcessor.isAvailable() && !Android.isOnAndroidDevice()) {
            safeProcessor = new UnsafeProcessor();
        } else {
            safeProcessor = new SafeProcessor();
        }
        processor = safeProcessor;
    }

    public static class UnpairedSurrogateException extends IllegalArgumentException {
        public UnpairedSurrogateException(int index, int length) {
            super("Unpaired surrogate at index " + index + " of " + length);
        }
    }

    public static int encodedLength(String string) {
        int length = string.length();
        int i = 0;
        while (i < length && string.charAt(i) < 128) {
            i++;
        }
        int iEncodedLengthGeneral = length;
        while (true) {
            if (i < length) {
                char cCharAt = string.charAt(i);
                if (cCharAt >= 2048) {
                    iEncodedLengthGeneral += encodedLengthGeneral(string, i);
                    break;
                }
                iEncodedLengthGeneral += (127 - cCharAt) >>> 31;
                i++;
            } else {
                break;
            }
        }
        if (iEncodedLengthGeneral >= length) {
            return iEncodedLengthGeneral;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) iEncodedLengthGeneral) + 4294967296L));
    }

    public static int encodedLengthGeneral(String string, int start) {
        int length = string.length();
        int i = 0;
        while (start < length) {
            char cCharAt = string.charAt(start);
            if (cCharAt < 2048) {
                i += (127 - cCharAt) >>> 31;
            } else {
                i += 2;
                if (55296 <= cCharAt && cCharAt <= 57343) {
                    if (Character.codePointAt(string, start) < 65536) {
                        throw new UnpairedSurrogateException(start, length);
                    }
                    start++;
                }
            }
            start++;
        }
        return i;
    }

    public static int encode(String in, byte[] out, int offset, int length) {
        return processor.encodeUtf8(in, out, offset, length);
    }

    public static String decodeUtf8(byte[] bytes, int index, int size) throws InvalidProtocolBufferException {
        return processor.decodeUtf8(bytes, index, size);
    }

    public static final class SafeProcessor extends Processor {
        @Override // androidx.datastore.preferences.protobuf.Utf8.Processor
        public String decodeUtf8(byte[] bytes, int index, int size) throws InvalidProtocolBufferException {
            if ((index | size | ((bytes.length - index) - size)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bytes.length), Integer.valueOf(index), Integer.valueOf(size)));
            }
            int i = index + size;
            char[] cArr = new char[size];
            int i2 = 0;
            while (index < i) {
                byte b = bytes[index];
                if (!DecodeUtil.isOneByte(b)) {
                    break;
                }
                index++;
                DecodeUtil.handleOneByte(b, cArr, i2);
                i2++;
            }
            int i3 = i2;
            while (index < i) {
                int i4 = index + 1;
                byte b2 = bytes[index];
                if (DecodeUtil.isOneByte(b2)) {
                    int i5 = i3 + 1;
                    DecodeUtil.handleOneByte(b2, cArr, i3);
                    int i6 = i4;
                    while (i6 < i) {
                        byte b3 = bytes[i6];
                        if (!DecodeUtil.isOneByte(b3)) {
                            break;
                        }
                        i6++;
                        DecodeUtil.handleOneByte(b3, cArr, i5);
                        i5++;
                    }
                    i3 = i5;
                    index = i6;
                } else if (DecodeUtil.isTwoBytes(b2)) {
                    if (i4 >= i) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    index += 2;
                    DecodeUtil.handleTwoBytes(b2, bytes[i4], cArr, i3);
                    i3++;
                } else if (DecodeUtil.isThreeBytes(b2)) {
                    if (i4 >= i - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    int i7 = index + 2;
                    index += 3;
                    DecodeUtil.handleThreeBytes(b2, bytes[i4], bytes[i7], cArr, i3);
                    i3++;
                } else {
                    if (i4 >= i - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    byte b4 = bytes[i4];
                    int i8 = index + 3;
                    byte b5 = bytes[index + 2];
                    index += 4;
                    DecodeUtil.handleFourBytes(b2, b4, b5, bytes[i8], cArr, i3);
                    i3 += 2;
                }
            }
            return new String(cArr, 0, i3);
        }

        @Override // androidx.datastore.preferences.protobuf.Utf8.Processor
        public int encodeUtf8(String in, byte[] out, int offset, int length) {
            int i;
            int i2;
            char cCharAt;
            int length2 = in.length();
            int i3 = length + offset;
            int i4 = 0;
            while (i4 < length2 && (i2 = i4 + offset) < i3 && (cCharAt = in.charAt(i4)) < 128) {
                out[i2] = (byte) cCharAt;
                i4++;
            }
            if (i4 == length2) {
                return offset + length2;
            }
            int i5 = offset + i4;
            while (i4 < length2) {
                char cCharAt2 = in.charAt(i4);
                if (cCharAt2 < 128 && i5 < i3) {
                    out[i5] = (byte) cCharAt2;
                    i5++;
                } else if (cCharAt2 < 2048 && i5 <= i3 - 2) {
                    int i6 = i5 + 1;
                    out[i5] = (byte) ((cCharAt2 >>> 6) | 960);
                    i5 += 2;
                    out[i6] = (byte) ((cCharAt2 & '?') | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                } else {
                    if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i5 > i3 - 3) {
                        if (i5 <= i3 - 4) {
                            int i7 = i4 + 1;
                            if (i7 != in.length()) {
                                char cCharAt3 = in.charAt(i7);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    out[i5] = (byte) ((codePoint >>> 18) | 240);
                                    out[i5 + 1] = (byte) (((codePoint >>> 12) & 63) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                                    int i8 = i5 + 3;
                                    out[i5 + 2] = (byte) (((codePoint >>> 6) & 63) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                                    i5 += 4;
                                    out[i8] = (byte) ((codePoint & 63) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                                    i4 = i7;
                                } else {
                                    i4 = i7;
                                }
                            }
                            throw new UnpairedSurrogateException(i4 - 1, length2);
                        }
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i = i4 + 1) == in.length() || !Character.isSurrogatePair(cCharAt2, in.charAt(i)))) {
                            throw new UnpairedSurrogateException(i4, length2);
                        }
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + i5);
                    }
                    out[i5] = (byte) ((cCharAt2 >>> '\f') | 480);
                    int i9 = i5 + 2;
                    out[i5 + 1] = (byte) (((cCharAt2 >>> 6) & 63) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                    i5 += 3;
                    out[i9] = (byte) ((cCharAt2 & '?') | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                }
                i4++;
            }
            return i5;
        }
    }

    public static final class UnsafeProcessor extends Processor {
        public static boolean isAvailable() {
            return UnsafeUtil.hasUnsafeArrayOperations() && UnsafeUtil.hasUnsafeByteBufferOperations();
        }

        @Override // androidx.datastore.preferences.protobuf.Utf8.Processor
        public String decodeUtf8(byte[] bytes, int index, int size) throws InvalidProtocolBufferException {
            Charset charset = Internal.UTF_8;
            String str = new String(bytes, index, size, charset);
            if (str.indexOf(65533) >= 0 && !Arrays.equals(str.getBytes(charset), Arrays.copyOfRange(bytes, index, size + index))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            return str;
        }

        @Override // androidx.datastore.preferences.protobuf.Utf8.Processor
        public int encodeUtf8(final String in, final byte[] out, final int offset, final int length) {
            long j;
            long j2;
            long j3;
            int i;
            char cCharAt;
            long j4 = offset;
            long j5 = ((long) length) + j4;
            int length2 = in.length();
            if (length2 > length || out.length - length < offset) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + in.charAt(length2 - 1) + " at index " + (offset + length));
            }
            int i2 = 0;
            while (true) {
                j = 1;
                if (i2 >= length2 || (cCharAt = in.charAt(i2)) >= 128) {
                    break;
                }
                UnsafeUtil.putByte(out, j4, (byte) cCharAt);
                i2++;
                j4 = 1 + j4;
            }
            if (i2 == length2) {
                return (int) j4;
            }
            while (i2 < length2) {
                char cCharAt2 = in.charAt(i2);
                if (cCharAt2 < 128 && j4 < j5) {
                    UnsafeUtil.putByte(out, j4, (byte) cCharAt2);
                    j3 = j5;
                    j2 = j;
                    j4 += j;
                } else if (cCharAt2 >= 2048 || j4 > j5 - 2) {
                    j2 = j;
                    if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || j4 > j5 - 3) {
                        j3 = j5;
                        if (j4 <= j3 - 4) {
                            int i3 = i2 + 1;
                            if (i3 != length2) {
                                char cCharAt3 = in.charAt(i3);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    UnsafeUtil.putByte(out, j4, (byte) ((codePoint >>> 18) | 240));
                                    UnsafeUtil.putByte(out, j4 + j2, (byte) (((codePoint >>> 12) & 63) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE));
                                    long j6 = j4 + 3;
                                    UnsafeUtil.putByte(out, j4 + 2, (byte) (((codePoint >>> 6) & 63) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE));
                                    j4 += 4;
                                    UnsafeUtil.putByte(out, j6, (byte) ((codePoint & 63) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE));
                                    i2 = i3;
                                } else {
                                    i2 = i3;
                                }
                            }
                            throw new UnpairedSurrogateException(i2 - 1, length2);
                        }
                        if (55296 > cCharAt2 || cCharAt2 > 57343 || ((i = i2 + 1) != length2 && Character.isSurrogatePair(cCharAt2, in.charAt(i)))) {
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + j4);
                        }
                        throw new UnpairedSurrogateException(i2, length2);
                    }
                    UnsafeUtil.putByte(out, j4, (byte) ((cCharAt2 >>> '\f') | 480));
                    long j7 = j4 + 2;
                    j3 = j5;
                    UnsafeUtil.putByte(out, j4 + j2, (byte) (((cCharAt2 >>> 6) & 63) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE));
                    j4 += 3;
                    UnsafeUtil.putByte(out, j7, (byte) ((cCharAt2 & '?') | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE));
                } else {
                    j2 = j;
                    long j8 = j4 + j2;
                    UnsafeUtil.putByte(out, j4, (byte) ((cCharAt2 >>> 6) | 960));
                    j4 += 2;
                    UnsafeUtil.putByte(out, j8, (byte) ((cCharAt2 & '?') | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE));
                    j3 = j5;
                }
                i2++;
                j = j2;
                j5 = j3;
            }
            return (int) j4;
        }
    }

    public static class DecodeUtil {
        public static char highSurrogate(int codePoint) {
            return (char) ((codePoint >>> 10) + 55232);
        }

        public static boolean isNotTrailingByte(byte b) {
            return b > -65;
        }

        public static boolean isOneByte(byte b) {
            return b >= 0;
        }

        public static boolean isThreeBytes(byte b) {
            return b < -16;
        }

        public static boolean isTwoBytes(byte b) {
            return b < -32;
        }

        public static char lowSurrogate(int codePoint) {
            return (char) ((codePoint & IronSourceError.ERROR_RV_SHOW_CALLED_WRONG_STATE) + 56320);
        }

        public static int trailingByteValue(byte b) {
            return b & 63;
        }

        public static void handleOneByte(byte byte1, char[] resultArr, int resultPos) {
            resultArr[resultPos] = (char) byte1;
        }

        public static void handleTwoBytes(byte byte1, byte byte2, char[] resultArr, int resultPos) throws InvalidProtocolBufferException {
            if (byte1 < -62 || isNotTrailingByte(byte2)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            resultArr[resultPos] = (char) (((byte1 & 31) << 6) | trailingByteValue(byte2));
        }

        public static void handleThreeBytes(byte byte1, byte byte2, byte byte3, char[] resultArr, int resultPos) throws InvalidProtocolBufferException {
            if (isNotTrailingByte(byte2) || ((byte1 == -32 && byte2 < -96) || ((byte1 == -19 && byte2 >= -96) || isNotTrailingByte(byte3)))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            resultArr[resultPos] = (char) (((byte1 & 15) << 12) | (trailingByteValue(byte2) << 6) | trailingByteValue(byte3));
        }

        public static void handleFourBytes(byte byte1, byte byte2, byte byte3, byte byte4, char[] resultArr, int resultPos) throws InvalidProtocolBufferException {
            if (isNotTrailingByte(byte2) || (((byte1 << 28) + (byte2 + 112)) >> 30) != 0 || isNotTrailingByte(byte3) || isNotTrailingByte(byte4)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            int iTrailingByteValue = ((byte1 & 7) << 18) | (trailingByteValue(byte2) << 12) | (trailingByteValue(byte3) << 6) | trailingByteValue(byte4);
            resultArr[resultPos] = highSurrogate(iTrailingByteValue);
            resultArr[resultPos + 1] = lowSurrogate(iTrailingByteValue);
        }
    }
}
