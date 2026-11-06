package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Formattable;
import java.util.MissingFormatArgumentException;
import java.util.UnknownFormatConversionException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class YP {
    public static byte[] A00;
    public static String[] A01 = {"s22ei7jEKUY9529lCkJcZ4gJOWEEq6sw", "duV9wRl87qqwtjVxV5Z0l273mrzPB", "wMMC0QDni77iJPSC6cwStA4u0doNggjm", "8ULfkGAtnNjfoAXaBKqRxFGDDrSAPchC", "VlaoSfTQE6wEJso3tLAiebs4KdKOrk2p", "qxQGNomuCID4prBZS5y4k4PWwIkvdajS", "", "T0faEiDKlZDlpeu3iXR"};
    public static final Object[] A02;

    public static String A0G(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 101);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0L() {
        A00 = new byte[]{6, -20, -54, -33, -26, -20, -29, -37, -105, -27, -26, -21, -105, -39, -36, -105, -27, -20, -29, -29, -105, -20, -27, -37, -36, -23, -105, -27, -26, -23, -28, -40, -29, -105, -38, -32, -23, -38, -20, -28, -22, -21, -40, -27, -38, -36, -22, -13, -6, -15, -15};
    }

    static {
        A0L();
        A02 = new Object[]{null};
    }

    public static int A00(String str) {
        return A0C(null, str, 0, null, null, null, null);
    }

    public static int A01(String str, int i) {
        int length = str.length();
        char ch = 0;
        while (i < length) {
            int index = str.charAt(i);
            if (index == 37) {
                int formatLen = A02(str, i);
                if (formatLen == -100) {
                    int index2 = i + 1;
                    if (str.charAt(index2) == 37) {
                        i++;
                        ch = 1;
                    } else {
                        int index3 = i + 2;
                        return index3;
                    }
                } else {
                    continue;
                }
            }
            i++;
        }
        return ch != 0 ? -201 : -200;
    }

    public static int A02(String str, int i) {
        int i2 = i + 1;
        int nextIndex = str.length();
        if (nextIndex > i2) {
            char nextChar = str.charAt(i2);
            if (nextChar == 's' || nextChar == 'd' || nextChar == '%') {
                return -100;
            }
            return -101;
        }
        return -101;
    }

    public static int A03(@Nullable String str, @Nullable int i, @Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, Object obj4, Object[] objArr) {
        switch (i) {
            case 0:
                int iA00 = A00(str);
                if (A01[6].length() == 24) {
                    throw new RuntimeException();
                }
                A01[7] = "WehvTxaaI3lXA2zhZ2U";
                return iA00;
            case 1:
                return A04(str, obj);
            case 2:
                return A05(str, obj, obj2);
            case 3:
                return A06(str, obj, obj2, obj3);
            case 4:
                return A07(str, obj, obj2, obj3, obj4);
            default:
                return A08(str, objArr);
        }
    }

    public static int A04(@Nullable String str, Object obj) {
        return A0C(null, str, 1, obj, null, null, null);
    }

    public static int A05(@Nullable String str, @Nullable Object obj, Object obj2) {
        return A0C(null, str, 2, obj, obj2, null, null);
    }

    public static int A06(@Nullable String str, @Nullable Object obj, @Nullable Object obj2, Object obj3) {
        return A0C(null, str, 3, obj, obj2, obj3, null);
    }

    public static int A07(@Nullable String str, @Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, Object obj4) {
        return A0C(null, str, 4, obj, obj2, obj3, obj4);
    }

    public static int A08(@Nullable String str, Object[] objArr) {
        return A0F(null, str, objArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00bb, code lost:
    
        if (r3 != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00bd, code lost:
    
        if (r6 != null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00bf, code lost:
    
        r5 = 0 + 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ca, code lost:
    
        if (r3 != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00cd, code lost:
    
        r6.append(((java.lang.Long) r7).longValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d8, code lost:
    
        if (r6 != null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00da, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e1, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0041 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0042 A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A09(@javax.annotation.Nullable java.lang.StringBuilder r6, @javax.annotation.Nullable java.lang.Object r7) {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.YP.A09(java.lang.StringBuilder, java.lang.Object):int");
    }

    public static int A0A(@Nullable StringBuilder sb, @Nullable Object obj) {
        if (obj instanceof Formattable) {
            if (sb != null) {
                throw new AssertionError();
            }
            String[] strArr = A01;
            if (strArr[0].charAt(21) != strArr[5].charAt(21)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[0] = "4BKkoEbfngOw5R5InwlEw4FZQQsGPoGb";
            strArr2[5] = "0QrsJ9emLHdwhPrF0n6J941lHnHZbBBM";
            return -1;
        }
        String string = null;
        if (obj instanceof String) {
            String str = A01[7];
            if (str.length() != 19) {
                string = (String) obj;
            } else {
                A01[6] = "2Hj2rBW3humzXZ";
                string = (String) obj;
            }
        } else if (obj != null) {
            string = obj.toString();
        }
        if (string == null) {
            string = A0G(47, 4, 32);
        }
        if (sb == null) {
            return string.length();
        }
        sb.append(string);
        return -3;
    }

    public static int A0B(@Nullable StringBuilder sb, String str, int i, int i2, boolean z) {
        int length = str.length();
        int i3 = 0;
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '%') {
                int formatLen = i + 1;
                if (length > formatLen) {
                    int formatLen2 = i + 1;
                    if (str.charAt(formatLen2) == 37) {
                        i++;
                    }
                }
                if (!z) {
                    throw new AssertionError();
                }
                int index = A01[1].length();
                if (index != 29) {
                    throw new RuntimeException();
                }
                A01[6] = "iV8t4Rd0";
                return -1;
            }
            if (sb == null) {
                i3++;
            } else {
                sb.append(cCharAt);
            }
            i++;
        }
        if (z) {
            return i2 + i3;
        }
        return -3;
    }

    public static int A0C(@Nullable StringBuilder sb, @Nullable String str, @Nullable int length, @Nullable Object obj, @Nullable Object obj2, Object obj3, Object obj4) {
        int appendLen;
        int argIdx = 0;
        int i = 0;
        boolean z = sb == null;
        int i2 = length == 0 ? -1 : 0;
        int i3 = i2;
        while (true) {
            if (i3 < length) {
                int appendLen2 = A0D(sb, str, argIdx, obj, obj2, obj3, obj4, i3);
                if (appendLen2 == -1) {
                    return -1;
                }
                if (z) {
                    i += appendLen2;
                }
                argIdx = A01(str, argIdx);
                if (i3 == i2) {
                    appendLen = -200;
                    if (argIdx == -200 && z) {
                        return -2;
                    }
                } else {
                    appendLen = -200;
                }
                if (argIdx < 0) {
                    break;
                }
                i3++;
            } else {
                appendLen = -200;
                break;
            }
        }
        if (argIdx == appendLen || argIdx == -201) {
            if (z) {
                return i;
            }
            return -3;
        }
        return A0B(sb, str, argIdx, i, z);
    }

    public static int A0D(@Nullable StringBuilder sb, @Nullable String str, @Nullable int i, @Nullable Object obj, @Nullable Object obj2, Object obj3, Object obj4, int i2) {
        switch (i2) {
            case -1:
                int iA0E = A0E(sb, str, i, null, false);
                if (A01[3].charAt(12) != 'o') {
                    throw new RuntimeException();
                }
                A01[1] = "hCwEXGE3aO1xOwN9cf3ilFtdUGpFL";
                return iA0E;
            case 0:
                return A0E(sb, str, i, obj, true);
            case 1:
                return A0E(sb, str, i, obj2, true);
            case 2:
                return A0E(sb, str, i, obj3, true);
            case 3:
                return A0E(sb, str, i, obj4, true);
            default:
                throw new AssertionError();
        }
    }

    public static int A0E(@Nullable StringBuilder sb, @Nullable String str, int i, Object obj, boolean z) {
        int index;
        int length = str.length();
        int i2 = 0;
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '%') {
                if (A02(str, i) != -100) {
                    return -1;
                }
                int index2 = i + 1;
                int length2 = str.charAt(index2);
                if (!z && length2 != 37) {
                    return -1;
                }
                int formatLen = 1;
                if (length2 == 115) {
                    index = A0A(sb, obj);
                } else if (length2 == 100) {
                    index = A09(sb, obj);
                } else if (length2 == 37) {
                    formatLen = 0;
                    if (sb != null) {
                        sb.append('%');
                    }
                    index = 1;
                    i++;
                } else {
                    index = -1;
                }
                if (index == -1) {
                    return -1;
                }
                if (sb == null) {
                    i2 += index;
                }
                if (formatLen != 0) {
                    break;
                }
            } else if (sb == null) {
                i2++;
            } else {
                sb.append(cCharAt);
            }
            i++;
        }
        if (sb == null) {
            return i2;
        }
        return -3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x002c, code lost:
    
        if (r6 == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x002e, code lost:
    
        if (r5 != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0030, code lost:
    
        return -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x003c, code lost:
    
        if (r9 == (-200)) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x003e, code lost:
    
        if (r9 != (-201)) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0040, code lost:
    
        if (r6 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0042, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x004f, code lost:
    
        if (com.facebook.ads.redexgen.X.YP.A01[1].length() == 29) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0056, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0057, code lost:
    
        com.facebook.ads.redexgen.X.YP.A01[6] = "CmNNkHWmndNZo1faI8JZxc9feyzulH";
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x005e, code lost:
    
        return -3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x005f, code lost:
    
        r0 = A0B(r11, r12, r9, r8, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0063, code lost:
    
        return r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:9:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A0F(@javax.annotation.Nullable java.lang.StringBuilder r11, @javax.annotation.Nullable java.lang.String r12, java.lang.Object... r13) {
        /*
            r9 = 0
            r8 = 0
            r7 = 0
            if (r11 != 0) goto L3a
            r6 = 1
        L6:
            r10 = 0
            if (r13 == 0) goto Lc
            int r0 = r13.length
            if (r0 != 0) goto Lf
        Lc:
            java.lang.Object[] r13 = com.facebook.ads.redexgen.X.YP.A02
            r10 = 1
        Lf:
            r5 = 0
            int r4 = r13.length
        L11:
            r3 = -201(0xffffffffffffff37, float:NaN)
            r2 = -200(0xffffffffffffff38, float:NaN)
            if (r7 >= r4) goto L2c
            r1 = r13[r7]
            r0 = r10 ^ 1
            int r1 = A0E(r11, r12, r9, r1, r0)
            r0 = -1
            if (r1 != r0) goto L23
            return r0
        L23:
            if (r6 == 0) goto L26
            int r8 = r8 + r1
        L26:
            int r9 = A01(r12, r9)
            if (r9 != r2) goto L32
        L2c:
            if (r6 == 0) goto L3c
            if (r5 != 0) goto L3c
            r0 = -2
            return r0
        L32:
            if (r9 != r3) goto L36
            r5 = 1
            goto L2c
        L36:
            r5 = 1
            int r7 = r7 + 1
            goto L11
        L3a:
            r6 = 0
            goto L6
        L3c:
            if (r9 == r2) goto L40
            if (r9 != r3) goto L5f
        L40:
            if (r6 == 0) goto L43
            return r8
        L43:
            r3 = -3
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.YP.A01
            r0 = 1
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 29
            if (r1 == r0) goto L57
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L57:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.YP.A01
            java.lang.String r1 = "CmNNkHWmndNZo1faI8JZxc9feyzulH"
            r0 = 6
            r2[r0] = r1
            return r3
        L5f:
            int r0 = A0B(r11, r12, r9, r8, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.YP.A0F(java.lang.StringBuilder, java.lang.String, java.lang.Object[]):int");
    }

    public static String A0H(@Nullable String str, @Nullable int i, @Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, Object obj4, Object[] objArr) {
        switch (i) {
            case 0:
                return A0K(str, new Object[0]);
            case 1:
                return A0K(str, obj);
            case 2:
                return A0K(str, obj, obj2);
            case 3:
                return A0K(str, obj, obj2, obj3);
            case 4:
                return A0K(str, obj, obj2, obj3, obj4);
            default:
                return A0K(str, objArr);
        }
    }

    public static String A0I(@Nullable String str, @Nullable int i, @Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, Object obj4, Object[] objArr) {
        int iA03 = A03(str, i, obj, obj2, obj3, obj4, objArr);
        if (iA03 == -1) {
            return A0H(str, i, obj, obj2, obj3, obj4, objArr);
        }
        if (iA03 == -2) {
            return str;
        }
        StringBuilder sb = new StringBuilder(iA03);
        if (i == -1) {
            A0F(sb, str, objArr);
        } else {
            A0C(sb, str, i, obj, obj2, obj3, obj4);
        }
        return sb.toString();
    }

    public static String A0J(@Nullable String str, Object obj) {
        return A0I(str, 1, obj, null, null, null, null);
    }

    public static String A0K(@Nullable String str, Object... objArr) {
        try {
            return String.format(null, str, (Object[]) YL.A00(objArr, A0G(2, 45, 18)));
        } catch (MissingFormatArgumentException | UnknownFormatConversionException ex) {
            throw new RuntimeException(ex.getMessage() + A0G(0, 2, 103) + str);
        }
    }
}
