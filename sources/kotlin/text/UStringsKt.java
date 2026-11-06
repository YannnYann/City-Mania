package kotlin.text;

import kotlin.KotlinNothingValueException;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UStrings.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class UStringsKt {
    public static final byte toUByte(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UByte uByteOrNull = toUByteOrNull(str);
        if (uByteOrNull != null) {
            return uByteOrNull.m2774unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    public static final short toUShort(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UShort uShortOrNull = toUShortOrNull(str);
        if (uShortOrNull != null) {
            return uShortOrNull.m2840unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    public static final int toUInt(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str);
        if (uIntOrNull != null) {
            return uIntOrNull.m2796unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    public static final long toULong(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ULong uLongOrNull = toULongOrNull(str);
        if (uLongOrNull != null) {
            return uLongOrNull.m2818unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    public static final UByte toUByteOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUByteOrNull(str, 10);
    }

    public static final UByte toUByteOrNull(String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i);
        if (uIntOrNull == null) {
            return null;
        }
        int iM2796unboximpl = uIntOrNull.m2796unboximpl();
        if (Integer.compare(iM2796unboximpl ^ Integer.MIN_VALUE, UInt.m2792constructorimpl(255) ^ Integer.MIN_VALUE) > 0) {
            return null;
        }
        return UByte.m2769boximpl(UByte.m2770constructorimpl((byte) iM2796unboximpl));
    }

    public static final UShort toUShortOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUShortOrNull(str, 10);
    }

    public static final UShort toUShortOrNull(String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i);
        if (uIntOrNull == null) {
            return null;
        }
        int iM2796unboximpl = uIntOrNull.m2796unboximpl();
        if (Integer.compare(iM2796unboximpl ^ Integer.MIN_VALUE, UInt.m2792constructorimpl(65535) ^ Integer.MIN_VALUE) > 0) {
            return null;
        }
        return UShort.m2835boximpl(UShort.m2836constructorimpl((short) iM2796unboximpl));
    }

    public static final UInt toUIntOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUIntOrNull(str, 10);
    }

    public static final UInt toUIntOrNull(String str, int i) {
        int i2;
        Intrinsics.checkNotNullParameter(str, "<this>");
        CharsKt__CharJVMKt.checkRadix(i);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i3 = 0;
        char cCharAt = str.charAt(0);
        if (cCharAt < '0') {
            i2 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        } else {
            i2 = 0;
        }
        int iM2792constructorimpl = UInt.m2792constructorimpl(i);
        int iM = 119304647;
        while (i2 < length) {
            int iDigitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i2), i);
            if (iDigitOf < 0) {
                return null;
            }
            if (Integer.compare(i3 ^ Integer.MIN_VALUE, iM ^ Integer.MIN_VALUE) > 0) {
                if (iM == 119304647) {
                    iM = UStringsKt$$ExternalSyntheticBackport3.m(-1, iM2792constructorimpl);
                    if (Integer.compare(i3 ^ Integer.MIN_VALUE, iM ^ Integer.MIN_VALUE) > 0) {
                    }
                }
                return null;
            }
            int iM2792constructorimpl2 = UInt.m2792constructorimpl(i3 * iM2792constructorimpl);
            int iM2792constructorimpl3 = UInt.m2792constructorimpl(UInt.m2792constructorimpl(iDigitOf) + iM2792constructorimpl2);
            if (Integer.compare(iM2792constructorimpl3 ^ Integer.MIN_VALUE, iM2792constructorimpl2 ^ Integer.MIN_VALUE) < 0) {
                return null;
            }
            i2++;
            i3 = iM2792constructorimpl3;
        }
        return UInt.m2791boximpl(i3);
    }

    public static final ULong toULongOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toULongOrNull(str, 10);
    }

    public static final ULong toULongOrNull(String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        CharsKt__CharJVMKt.checkRadix(i);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char cCharAt = str.charAt(0);
        if (cCharAt < '0') {
            i2 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        }
        long jM2814constructorimpl = ULong.m2814constructorimpl(i);
        long j = 0;
        long jM = 512409557603043100L;
        while (i2 < length) {
            int iDigitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i2), i);
            if (iDigitOf < 0) {
                return null;
            }
            if (Long.compare(j ^ Long.MIN_VALUE, jM ^ Long.MIN_VALUE) > 0) {
                if (jM == 512409557603043100L) {
                    jM = UStringsKt$$ExternalSyntheticBackport1.m(-1L, jM2814constructorimpl);
                    if (Long.compare(j ^ Long.MIN_VALUE, jM ^ Long.MIN_VALUE) > 0) {
                    }
                }
                return null;
            }
            long jM2814constructorimpl2 = ULong.m2814constructorimpl(j * jM2814constructorimpl);
            long jM2814constructorimpl3 = ULong.m2814constructorimpl(ULong.m2814constructorimpl(((long) UInt.m2792constructorimpl(iDigitOf)) & 4294967295L) + jM2814constructorimpl2);
            if (Long.compare(jM2814constructorimpl3 ^ Long.MIN_VALUE, jM2814constructorimpl2 ^ Long.MIN_VALUE) < 0) {
                return null;
            }
            i2++;
            j = jM2814constructorimpl3;
        }
        return ULong.m2813boximpl(j);
    }
}
