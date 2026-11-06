package com.facebook.ads.redexgen.X;

import com.google.common.base.ElementTypesAreNonnullByDefault;
import com.google.common.base.Strings;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Wu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AbstractC2020Wu {
    public static byte[] A00;
    public static String[] A01 = {"yLf2HicXrUDTrCognVgn2uErClFvYzD7", "dZSCxToOGH4PBUg6Cr17nPJnJoJDV", "D3UFkwhQeChOYpXdWloUWCk5s0bAp9ud", "23BZbQDrhO9CuGymfsYgJ1pc3XIY1uwx", "EsCj8hFANHTQyQYBgfdBlVqcdUl1c", "RDqNHKRm7z3WZIkicfSvQp9DElLV3lip", "CBOTegxNDh2cFAbW6nn8DY3rguG0", "Ii3jxu3agXZO8FdWqBmYOKpcdCkW"};

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static <T> T A04(@CheckForNull T reference) {
        if (reference != null) {
            return reference;
        }
        throw new NullPointerException();
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static <T> T A05(@CheckForNull T reference, @CheckForNull Object errorMessage) {
        if (reference != null) {
            return reference;
        }
        throw new NullPointerException(String.valueOf(errorMessage));
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 5);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0A() {
        A00 = new byte[]{46, 120, 43, 35, 46, 120, 34, 43, 102, 126, 120, 127, 43, 105, 110, 43, 103, 110, 120, 120, 43, 127, 99, 106, 101, 43, 120, 98, 113, 110, 43, 35, 46, 120, 34, 31, 73, 26, 18, 31, 73, 19, 26, 87, 79, 73, 78, 26, 84, 85, 78, 26, 88, 95, 26, 93, 72, 95, 91, 78, 95, 72, 26, 78, 82, 91, 84, 26, 73, 83, 64, 95, 26, 18, 31, 73, 19, 12, 90, 9, 1, 12, 90, 0, 9, 68, 92, 90, 93, 9, 71, 70, 93, 9, 75, 76, 9, 71, 76, 78, 72, 93, 64, 95, 76, 88, 83, 89, 29, 84, 83, 89, 88, 69, 12, 7, 13, 73, 0, 7, 13, 12, 17, 73, 65, 76, 26, 64, 73, 4, 28, 26, 29, 73, 7, 6, 29, 73, 11, 12, 73, 5, 12, 26, 26, 73, 29, 1, 8, 7, 73, 26, 29, 8, 27, 29, 73, 0, 7, 13, 12, 17, 73, 65, 76, 26, 64, 80, 87, 93, 92, 65, 107, 96, 98, 100, 113, 108, 115, 96, 37, 118, 108, 127, 96, 63, 37, 98, 101, 112, 99, 101, 49, 120, 127, 117, 116, 105};
    }

    static {
        A0A();
    }

    public static int A00(int index, int size) {
        return A02(index, size, A06(167, 5, 60));
    }

    public static int A01(int index, int size) {
        return A03(index, size, A06(167, 5, 60));
    }

    public static int A02(int index, int size, String desc) {
        if (index >= 0 && index < size) {
            return index;
        }
        throw new IndexOutOfBoundsException(A08(index, size, desc));
    }

    public static int A03(int index, int size, String desc) {
        if (index >= 0 && index <= size) {
            return index;
        }
        throw new IndexOutOfBoundsException(A09(index, size, desc));
    }

    public static String A07(int start, int end, int size) {
        if (start < 0 || start > size) {
            return A09(start, size, A06(187, 11, 20));
        }
        if (end < 0 || end > size) {
            return A09(end, size, A06(105, 9, 56));
        }
        Integer numValueOf = Integer.valueOf(end);
        Integer numValueOf2 = Integer.valueOf(start);
        String[] strArr = A01;
        if (strArr[7].length() != strArr[6].length()) {
            throw new RuntimeException();
        }
        A01[5] = "MJl6yHMnAPDCWTfuq5FBuEhRAmk1QkZc";
        return Strings.A02(A06(Sdk.SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 53, 108), new Object[]{numValueOf, numValueOf2});
    }

    public static String A08(int index, int size, String desc) {
        if (index < 0) {
            return Strings.A02(A06(77, 28, 44), new Object[]{desc, Integer.valueOf(index)});
        }
        if (size >= 0) {
            return Strings.A02(A06(0, 35, 14), new Object[]{desc, Integer.valueOf(index), Integer.valueOf(size)});
        }
        throw new IllegalArgumentException(A06(172, 15, 0) + size);
    }

    public static String A09(int index, int size, String desc) {
        if (index < 0) {
            return Strings.A02(A06(77, 28, 44), new Object[]{desc, Integer.valueOf(index)});
        }
        if (size >= 0) {
            return Strings.A02(A06(35, 42, 63), new Object[]{desc, Integer.valueOf(index), Integer.valueOf(size)});
        }
        throw new IllegalArgumentException(A06(172, 15, 0) + size);
    }

    public static void A0B(int start, int end, int size) {
        if (start >= 0 && end >= start && end <= size) {
        } else {
            throw new IndexOutOfBoundsException(A07(start, end, size));
        }
    }

    public static void A0C(boolean expression) {
        if (expression) {
        } else {
            throw new IllegalArgumentException();
        }
    }

    public static void A0D(boolean expression) {
        if (expression) {
        } else {
            throw new IllegalStateException();
        }
    }

    public static void A0E(@CheckForNull boolean expression, Object errorMessage) {
        if (expression) {
        } else {
            throw new IllegalArgumentException(String.valueOf(errorMessage));
        }
    }

    public static void A0F(@CheckForNull boolean expression, Object errorMessage) {
        if (expression) {
        } else {
            throw new IllegalStateException(String.valueOf(errorMessage));
        }
    }

    public static void A0G(boolean expression, String errorMessageTemplate, int p1, int p2) {
        if (!expression) {
            throw new IllegalArgumentException(Strings.A02(errorMessageTemplate, new Object[]{Integer.valueOf(p1), Integer.valueOf(p2)}));
        }
    }

    public static void A0H(boolean expression, String errorMessageTemplate, long p1) {
        if (!expression) {
            throw new IllegalArgumentException(Strings.A02(errorMessageTemplate, new Object[]{Long.valueOf(p1)}));
        }
    }
}
