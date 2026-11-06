package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.ApicFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.BinaryFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.ChapterFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.ChapterTocFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.CommentFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.GeobFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.Id3Frame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.MlltFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.PrivFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.TextInformationFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.UrlLinkFrame;
import com.ironsource.InterfaceC3681k1;
import com.vungle.ads.internal.protos.Sdk;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8V, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C8V extends AbstractC1843Pn {
    public static byte[] A01;
    public static String[] A02 = {"", "cj5A7A3gSiMrjq6AfdRtUzMbAEmYo4f3", "rN0JSnT6BKYEo3a1vAa71uiPZpT3Npi4", "TFfDjeYUbSMox1u3Lh", "USqEMSAtWn6GCJW8", "LWCCD3Qy9N2tqhYZ51Cp6k4Ti82bug", "tGTUqJzeCARhQZlaOnJcj6ftdoc", "hcOUpEd5Vf6AXCwQ9vkWGhfgcjokDV"};
    public static final InterfaceC2099a0 A03;
    public final InterfaceC2099a0 A00;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static ApicFrame A04(C1769Mk c1769Mk, int i, int i2) {
        int iA02;
        String strA01;
        int iA0I = c1769Mk.A0I();
        Charset charsetA0M = A0M(iA0I);
        byte[] bArr = new byte[i - 1];
        c1769Mk.A0k(bArr, 0, i - 1);
        String strA0J = A0J(402, 6, 32);
        if (i2 == 2) {
            iA02 = 2;
            strA01 = strA0J + XC.A01(new String(bArr, 0, 3, XA.A00));
            if (A0J(418, 9, 76).equals(strA01)) {
                strA01 = A0J(InterfaceC3681k1.a.b.h, 10, 56);
            }
        } else {
            iA02 = A02(bArr, 0);
            strA01 = XC.A01(new String(bArr, 0, iA02, XA.A00));
            if (strA01.indexOf(47) == -1) {
                strA01 = strA0J + strA01;
            }
        }
        int i3 = bArr[iA02 + 1] & 255;
        int i4 = iA02 + 2;
        int iA03 = A03(bArr, i4, iA0I);
        return new ApicFrame(strA01, new String(bArr, i4, iA03 - i4, charsetA0M), i3, A0Q(bArr, A00(iA0I) + iA03, bArr.length));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static ChapterFrame A06(C1769Mk c1769Mk, int i, int i2, boolean z, int i3, InterfaceC2099a0 interfaceC2099a0) {
        int iA09 = c1769Mk.A09();
        int iA02 = A02(c1769Mk.A0l(), iA09);
        String str = new String(c1769Mk.A0l(), iA09, iA02 - iA09, XA.A00);
        c1769Mk.A0f(iA02 + 1);
        int iA0C = c1769Mk.A0C();
        int iA0C2 = c1769Mk.A0C();
        long jA0Q = c1769Mk.A0Q();
        if (jA0Q == 4294967295L) {
            jA0Q = -1;
        }
        long jA0Q2 = c1769Mk.A0Q();
        String[] strArr = A02;
        if (strArr[4].length() == strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[4] = "16GLdZTfXwhLC42l";
        strArr2[6] = "GYTFmdJXXk2kcTCmyq6sFxfgRhF";
        if (jA0Q2 == 4294967295L) {
            jA0Q2 = -1;
        }
        ArrayList arrayList = new ArrayList();
        int i4 = iA09 + i;
        while (c1769Mk.A09() < i4) {
            Id3Frame id3FrameA0B = A0B(i2, c1769Mk, z, i3, interfaceC2099a0);
            if (id3FrameA0B != null) {
                arrayList.add(id3FrameA0B);
            }
        }
        return new ChapterFrame(str, iA0C, iA0C2, jA0Q, jA0Q2, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static GeobFrame A09(C1769Mk c1769Mk, int i) {
        int iA0I = c1769Mk.A0I();
        Charset charsetA0M = A0M(iA0I);
        byte[] bArr = new byte[i - 1];
        c1769Mk.A0k(bArr, 0, i - 1);
        int iA02 = A02(bArr, 0);
        String str = new String(bArr, 0, iA02, XA.A00);
        int i2 = iA02 + 1;
        int iA03 = A03(bArr, i2, iA0I);
        String strA0L = A0L(bArr, i2, iA03, charsetA0M);
        int iA00 = A00(iA0I) + iA03;
        int iA032 = A03(bArr, iA00, iA0I);
        return new GeobFrame(str, strA0L, A0L(bArr, iA00, iA032, charsetA0M), A0Q(bArr, A00(iA0I) + iA032, bArr.length));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static MlltFrame A0C(C1769Mk c1769Mk, int i) {
        int iA0M = c1769Mk.A0M();
        int iA0K = c1769Mk.A0K();
        int iA0K2 = c1769Mk.A0K();
        int iA0I = c1769Mk.A0I();
        int iA0I2 = c1769Mk.A0I();
        C1768Mj c1768Mj = new C1768Mj();
        c1768Mj.A0C(c1769Mk);
        int i2 = ((i - 10) * 8) / (iA0I + iA0I2);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int iA04 = c1768Mj.A04(iA0I);
            int iA042 = c1768Mj.A04(iA0I2);
            iArr[i3] = iA04;
            iArr2[i3] = iA042;
        }
        return new MlltFrame(iA0M, iA0K, iA0K2, iArr, iArr2);
    }

    public static String A0J(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.TPAT_ERROR_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0N() {
        A01 = new byte[]{61, 40, 46, 64, 110, 40, 110, 40, 110, 40, 21, 83, 21, 83, 21, 83, 21, 83, 49, 61, 123, 111, 124, 112, 120, 78, 116, 103, 120, 32, 3, 38, 51, 38, 103, 51, 40, 40, 103, 52, 47, 40, 53, 51, 103, 51, 40, 103, 37, 34, 103, 38, 41, 103, 14, 3, 116, 103, 51, 38, 32, 102, 65, 73, 76, 69, 68, 0, 84, 79, 0, 68, 69, 67, 79, 68, 69, 0, 70, 82, 65, 77, 69, 26, 0, 73, 68, 29, 59, 28, 20, 17, 24, 25, 93, 9, 18, 93, 11, 28, 17, 20, 25, 28, 9, 24, 93, 52, 57, 78, 93, 9, 28, 26, 93, 10, 20, 9, 21, 93, 16, 28, 23, 18, 15, 43, 24, 15, 14, 20, 18, 19, 64, 74, 126, 109, 97, 105, 44, 127, 101, 118, 105, 44, 105, 116, 111, 105, 105, 104, 127, 44, 126, 105, 97, 109, 101, 98, 101, 98, 107, 44, 120, 109, 107, 44, 104, 109, 120, 109, 71, 106, 61, 74, 107, 109, 97, 106, 107, 124, 15, 55, 53, 44, 44, 57, 56, 124, 21, 24, 111, 124, 40, 61, 59, 124, 43, 53, 40, 52, 124, 49, 61, 54, 51, 46, 10, 57, 46, 47, 53, 51, 50, 97, 110, 124, 61, 50, 56, 124, 41, 50, 56, 57, 58, 53, 50, 57, 56, 124, 63, 51, 49, 44, 46, 57, 47, 47, 53, 51, 50, 124, 47, 63, 52, 57, 49, 57, 107, 83, 81, 72, 72, 93, 92, 24, 113, 124, 11, 24, 76, 89, 95, 24, 79, 81, 76, 80, 24, 77, 86, 75, 77, 72, 72, 87, 74, 76, 93, 92, 24, 85, 89, 82, 87, 74, 110, 93, 74, 75, 81, 87, 86, 5, 65, 121, 123, 98, 98, 123, 124, 117, 50, 103, 124, 97, 103, 98, 98, 125, 96, 102, 119, 118, 50, 113, 125, 127, 98, 96, 119, 97, 97, 119, 118, 50, 125, 96, 50, 119, 124, 113, 96, 107, 98, 102, 119, 118, 50, 116, 96, 115, 127, 119, 50, 62, 62, 62, 23, 44, 39, 58, 50, 39, 33, 54, 39, 38, 98, 36, 43, 48, 49, 54, 98, 54, 42, 48, 39, 39, 98, 32, 59, 54, 39, 49, 98, 45, 36, 98, 11, 6, 113, 98, 54, 35, 37, 98, 42, 39, 35, 38, 39, 48, 120, 98, 114, 58, 35, 44, 44, 44, 48, 52, 56, 62, 60, 118, 40, 44, 32, 38, 36, 110, 43, 49, 36, 38, 92, 88, 84, 82, 80, 26, 95, 69, 82};
    }

    static {
        A0N();
        A03 = new InterfaceC2099a0() { // from class: com.facebook.ads.redexgen.X.Pc
            @Override // com.facebook.ads.redexgen.X.InterfaceC2099a0
            public final boolean A6z(int i, int i2, int i3, int i4, int i5) {
                return C8V.A0O(i, i2, i3, i4, i5);
            }
        };
    }

    public C8V() {
        this(null);
    }

    public C8V(InterfaceC2099a0 interfaceC2099a0) {
        this.A00 = interfaceC2099a0;
    }

    public static int A00(int i) {
        if (i == 0 || i == 3) {
            return 1;
        }
        return 2;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x000d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A01(com.facebook.ads.redexgen.X.C1769Mk r6, int r7) {
        /*
            byte[] r5 = r6.A0l()
            int r4 = r6.A09()
            r3 = r4
        L9:
            int r1 = r3 + 1
            int r0 = r4 + r7
            if (r1 >= r0) goto L2e
            r1 = r5[r3]
            r0 = 255(0xff, float:3.57E-43)
            r1 = r1 & r0
            if (r1 != r0) goto L2b
            int r0 = r3 + 1
            r0 = r5[r0]
            if (r0 != 0) goto L2b
            int r0 = r3 - r4
            int r2 = r3 + 2
            int r1 = r3 + 1
            int r0 = r7 - r0
            int r0 = r0 + (-2)
            java.lang.System.arraycopy(r5, r2, r5, r1, r0)
            int r7 = r7 + (-1)
        L2b:
            int r3 = r3 + 1
            goto L9
        L2e:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C8V.A01(com.facebook.ads.redexgen.X.Mk, int):int");
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x0001 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A02(byte[] r1, int r2) {
        /*
        L0:
            int r0 = r1.length
            if (r2 >= r0) goto Lb
            r0 = r1[r2]
            if (r0 != 0) goto L8
            return r2
        L8:
            int r2 = r2 + 1
            goto L0
        Lb:
            int r0 = r1.length
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C8V.A02(byte[], int):int");
    }

    /* JADX WARN: Incorrect condition in loop: B:8:0x000d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A03(byte[] r2, int r3, int r4) {
        /*
            int r1 = A02(r2, r3)
            if (r4 == 0) goto L9
            r0 = 3
            if (r4 != r0) goto La
        L9:
            return r1
        La:
            int r0 = r2.length
            int r0 = r0 + (-1)
            if (r1 >= r0) goto L23
            int r0 = r1 - r3
            int r0 = r0 % 2
            if (r0 != 0) goto L1c
            int r0 = r1 + 1
            r0 = r2[r0]
            if (r0 != 0) goto L1c
            return r1
        L1c:
            int r0 = r1 + 1
            int r1 = A02(r2, r0)
            goto La
        L23:
            int r0 = r2.length
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C8V.A03(byte[], int, int):int");
    }

    public static BinaryFrame A05(C1769Mk c1769Mk, int i, String str) {
        byte[] bArr = new byte[i];
        c1769Mk.A0k(bArr, 0, i);
        return new BinaryFrame(str, bArr);
    }

    public static ChapterTocFrame A07(C1769Mk c1769Mk, int i, int i2, boolean z, int elementIdEndIndex, InterfaceC2099a0 interfaceC2099a0) {
        int iA09 = c1769Mk.A09();
        int iA02 = A02(c1769Mk.A0l(), iA09);
        String str = new String(c1769Mk.A0l(), iA09, iA02 - iA09, XA.A00);
        c1769Mk.A0f(iA02 + 1);
        int framePosition = c1769Mk.A0I();
        boolean z2 = (framePosition & 2) != 0;
        boolean z3 = (framePosition & 1) != 0;
        int iA0I = c1769Mk.A0I();
        String[] strArr = new String[iA0I];
        for (int i3 = 0; i3 < iA0I; i3++) {
            int startIndex = c1769Mk.A09();
            int iA022 = A02(c1769Mk.A0l(), startIndex);
            int elementIdEndIndex2 = iA022 - startIndex;
            strArr[i3] = new String(c1769Mk.A0l(), startIndex, elementIdEndIndex2, XA.A00);
            c1769Mk.A0f(iA022 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i4 = iA09 + i;
        while (c1769Mk.A09() < i4) {
            Id3Frame id3FrameA0B = A0B(i2, c1769Mk, z, elementIdEndIndex, interfaceC2099a0);
            if (id3FrameA0B != null) {
                arrayList.add(id3FrameA0B);
            }
        }
        return new ChapterTocFrame(str, z2, z3, strArr, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    public static CommentFrame A08(C1769Mk c1769Mk, int i) {
        if (i < 4) {
            return null;
        }
        int textStartIndex = c1769Mk.A0I();
        Charset charsetA0M = A0M(textStartIndex);
        byte[] bArr = new byte[3];
        c1769Mk.A0k(bArr, 0, 3);
        String description = new String(bArr, 0, 3);
        int encoding = i - 4;
        byte[] data = new byte[encoding];
        int encoding2 = i - 4;
        c1769Mk.A0k(data, 0, encoding2);
        int encoding3 = A03(data, 0, textStartIndex);
        String language = new String(data, 0, encoding3, charsetA0M);
        int iA00 = A00(textStartIndex) + encoding3;
        int encoding4 = A03(data, iA00, textStartIndex);
        return new CommentFrame(description, language, A0L(data, iA00, encoding4, charsetA0M));
    }

    public static C2100a1 A0A(C1769Mk c1769Mk) {
        int iA07 = c1769Mk.A07();
        String strA0J = A0J(170, 10, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE);
        if (iA07 < 10) {
            MV.A07(strA0J, A0J(30, 31, 62));
            return null;
        }
        int iA0K = c1769Mk.A0K();
        boolean z = false;
        if (iA0K != 4801587) {
            MV.A07(strA0J, A0J(348, 50, 59) + String.format(A0J(0, 4, 97), Integer.valueOf(iA0K)));
            return null;
        }
        int iA0I = c1769Mk.A0I();
        c1769Mk.A0g(1);
        int framesSize = c1769Mk.A0I();
        int extendedHeaderSize = c1769Mk.A0H();
        if (iA0I == 2) {
            int id = framesSize & 64;
            int id2 = id != 0 ? 1 : 0;
            if (id2 != 0) {
                MV.A07(strA0J, A0J(180, 68, 37));
                return null;
            }
        } else if (iA0I == 3) {
            int i = framesSize & 64;
            if (A02[3].length() == 3) {
                throw new RuntimeException();
            }
            A02[0] = "pllyyO0jSkbVxRBNu1SFBoHx8r2sOd";
            int id3 = i != 0 ? 1 : 0;
            if (id3 != 0) {
                int id4 = c1769Mk.A0C();
                c1769Mk.A0g(id4);
                extendedHeaderSize -= id4 + 4;
            }
        } else if (iA0I == 4) {
            int id5 = framesSize & 64;
            int id6 = id5 != 0 ? 1 : 0;
            if (id6 != 0) {
                int majorVersion = c1769Mk.A0H();
                int id7 = majorVersion - 4;
                c1769Mk.A0g(id7);
                extendedHeaderSize -= majorVersion;
            }
            int id8 = framesSize & 16;
            int id9 = id8 != 0 ? 1 : 0;
            if (id9 != 0) {
                extendedHeaderSize -= 10;
            }
        } else {
            MV.A07(strA0J, A0J(248, 46, 65) + iA0I);
            return null;
        }
        if (iA0I < 4) {
            int id10 = framesSize & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
            if (id10 != 0) {
                z = true;
            }
        }
        return new C2100a1(iA0I, z, extendedHeaderSize);
    }

    /* JADX WARN: Removed duplicated region for block: B:154:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x029f A[Catch: all -> 0x02e1, TryCatch #0 {all -> 0x02e1, blocks: (B:92:0x013f, B:182:0x02a9, B:94:0x0147, B:101:0x015d, B:103:0x0165, B:133:0x01e1, B:134:0x01e7, B:140:0x01f7, B:147:0x0209, B:161:0x024e, B:167:0x0265, B:179:0x029a, B:180:0x029f), top: B:188:0x0135 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.androidx.media3.extractor.metadata.id3.Id3Frame A0B(int r23, com.facebook.ads.redexgen.X.C1769Mk r24, boolean r25, int r26, com.facebook.ads.redexgen.X.InterfaceC2099a0 r27) {
        /*
            Method dump skipped, instruction units count: 742
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C8V.A0B(int, com.facebook.ads.redexgen.X.Mk, boolean, int, com.facebook.ads.redexgen.X.a0):com.facebook.ads.androidx.media3.extractor.metadata.id3.Id3Frame");
    }

    public static PrivFrame A0D(C1769Mk c1769Mk, int i) {
        byte[] bArr = new byte[i];
        c1769Mk.A0k(bArr, 0, i);
        int iA02 = A02(bArr, 0);
        return new PrivFrame(new String(bArr, 0, iA02, XA.A00), A0Q(bArr, iA02 + 1, bArr.length));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9l != com.google.common.collect.ImmutableList<java.lang.String> */
    public static TextInformationFrame A0E(C1769Mk c1769Mk, int i) {
        if (i < 1) {
            return null;
        }
        int iA0I = c1769Mk.A0I();
        int encoding = i - 1;
        byte[] bArr = new byte[encoding];
        int encoding2 = i - 1;
        c1769Mk.A0k(bArr, 0, encoding2);
        int iA03 = A03(bArr, 0, iA0I);
        String str = new String(bArr, 0, iA03, A0M(iA0I));
        int encoding3 = A00(iA0I);
        return new TextInformationFrame(A0J(344, 4, 31), str, A0I(bArr, iA0I, encoding3 + iA03));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9l != com.google.common.collect.ImmutableList<java.lang.String> */
    public static TextInformationFrame A0F(C1769Mk c1769Mk, int i, String str) {
        if (i < 1) {
            return null;
        }
        int iA0I = c1769Mk.A0I();
        int encoding = i - 1;
        byte[] data = new byte[encoding];
        c1769Mk.A0k(data, 0, i - 1);
        return new TextInformationFrame(str, null, A0I(data, iA0I, 0));
    }

    public static UrlLinkFrame A0G(C1769Mk c1769Mk, int i) {
        if (i < 1) {
            String[] strArr = A02;
            if (strArr[7].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[4] = "SPxeGoZSNSgTbWym";
            strArr2[6] = "33lkerVVGiVeq1xCyMDroZS8rCI";
            return null;
        }
        int iA0I = c1769Mk.A0I();
        int encoding = i - 1;
        byte[] bArr = new byte[encoding];
        int encoding2 = i - 1;
        c1769Mk.A0k(bArr, 0, encoding2);
        int iA03 = A03(bArr, 0, iA0I);
        String str = new String(bArr, 0, iA03, A0M(iA0I));
        int descriptionEndIndex = A00(iA0I) + iA03;
        String description = A0L(bArr, descriptionEndIndex, A02(bArr, descriptionEndIndex), XA.A00);
        return new UrlLinkFrame(A0J(398, 4, 13), str, description);
    }

    public static UrlLinkFrame A0H(C1769Mk c1769Mk, int i, String str) {
        byte[] bArr = new byte[i];
        c1769Mk.A0k(bArr, 0, i);
        return new UrlLinkFrame(str, null, new String(bArr, 0, A02(bArr, 0), XA.A00));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4e != com.google.common.collect.ImmutableList$Builder<java.lang.String> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9l != com.google.common.collect.ImmutableList<java.lang.String> */
    public static AbstractC14399l<String> A0I(byte[] bArr, int i, int i2) {
        int length = bArr.length;
        String strA0J = A0J(0, 0, 96);
        if (i2 >= length) {
            return AbstractC14399l.A04(strA0J);
        }
        C13194e c13194eA01 = AbstractC14399l.A01();
        int valueEndIndex = A03(bArr, i2, i);
        while (i2 < valueEndIndex) {
            int valueStartIndex = valueEndIndex - i2;
            c13194eA01.A04(new String(bArr, i2, valueStartIndex, A0M(i)));
            i2 = valueEndIndex + A00(i);
            valueEndIndex = A03(bArr, i2, i);
        }
        AbstractC14399l<String> abstractC14399lA05 = c13194eA01.A05();
        return abstractC14399lA05.isEmpty() ? AbstractC14399l.A04(strA0J) : abstractC14399lA05;
    }

    public static String A0K(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, A0J(4, 6, 50), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, A0J(10, 8, 73), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    public static String A0L(byte[] bArr, int i, int i2, Charset charset) {
        if (i2 <= i || i2 > bArr.length) {
            String strA0J = A0J(0, 0, 96);
            String[] strArr = A02;
            if (strArr[4].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[4] = "Ajw25UA1JzSG5nck";
            strArr2[6] = "CW3KTU3u5THrbhQ2QNxXB8tc6gb";
            return strA0J;
        }
        return new String(bArr, i, i2 - i, charset);
    }

    public static Charset A0M(int i) {
        switch (i) {
            case 1:
                return XA.A02;
            case 2:
                return XA.A03;
            case 3:
                return XA.A05;
            default:
                return XA.A00;
        }
    }

    public static /* synthetic */ boolean A0O(int i, int i2, int i3, int i4, int i5) {
        return false;
    }

    public static boolean A0P(C1769Mk c1769Mk, int i, int i2, boolean z) throws Throwable {
        int iA0C;
        long jA0Q;
        int iA0M;
        int iA09 = c1769Mk.A09();
        while (true) {
            try {
                if (c1769Mk.A07() < i2) {
                    c1769Mk.A0f(iA09);
                    return true;
                }
                if (i >= 3) {
                    try {
                        iA0C = c1769Mk.A0C();
                        jA0Q = c1769Mk.A0Q();
                        iA0M = c1769Mk.A0M();
                    } catch (Throwable th) {
                        th = th;
                        c1769Mk.A0f(iA09);
                        throw th;
                    }
                } else {
                    iA0C = c1769Mk.A0K();
                    jA0Q = c1769Mk.A0K();
                    iA0M = 0;
                }
                if (iA0C == 0 && jA0Q == 0 && iA0M == 0) {
                    c1769Mk.A0f(iA09);
                    return true;
                }
                if (i == 4 && !z) {
                    if ((8421504 & jA0Q) != 0) {
                        c1769Mk.A0f(iA09);
                        return false;
                    }
                    jA0Q = (((jA0Q >> 24) & 255) << 21) | (jA0Q & 255) | (((jA0Q >> 8) & 255) << 7) | (((jA0Q >> 16) & 255) << 14);
                }
                boolean z2 = false;
                boolean z3 = false;
                if (i == 4) {
                    z2 = (iA0M & 64) != 0;
                    z3 = (iA0M & 1) != 0;
                } else if (i == 3) {
                    int minimumFrameSize = iA0M & 32;
                    z2 = minimumFrameSize != 0;
                    int minimumFrameSize2 = iA0M & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
                    z3 = minimumFrameSize2 != 0;
                }
                int minimumFrameSize3 = 0;
                if (z2) {
                    minimumFrameSize3 = 0 + 1;
                }
                if (z3) {
                    minimumFrameSize3 += 4;
                }
                if (jA0Q < minimumFrameSize3) {
                    c1769Mk.A0f(iA09);
                    return false;
                }
                int minimumFrameSize4 = c1769Mk.A07();
                if (minimumFrameSize4 >= jA0Q) {
                    int minimumFrameSize5 = (int) jA0Q;
                    c1769Mk.A0g(minimumFrameSize5);
                } else {
                    c1769Mk.A0f(iA09);
                    return false;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public static byte[] A0Q(byte[] bArr, int i, int i2) {
        if (i2 <= i) {
            return N1.A07;
        }
        return Arrays.copyOfRange(bArr, i, i2);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1843Pn
    public final Metadata A0R(C14218e c14218e, ByteBuffer byteBuffer) {
        return A0S(byteBuffer.array(), byteBuffer.limit());
    }

    public final Metadata A0S(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        C1769Mk c1769Mk = new C1769Mk(bArr, i);
        C2100a1 c2100a1A0A = A0A(c1769Mk);
        if (c2100a1A0A == null) {
            return null;
        }
        int startPosition = c1769Mk.A09();
        int frameHeaderSize = c2100a1A0A.A01 == 2 ? 6 : 10;
        int iA01 = c2100a1A0A.A00;
        if (c2100a1A0A.A02) {
            iA01 = A01(c1769Mk, c2100a1A0A.A00);
        }
        c1769Mk.A0e(startPosition + iA01);
        boolean z = false;
        if (!A0P(c1769Mk, c2100a1A0A.A01, frameHeaderSize, false)) {
            if (c2100a1A0A.A01 == 4 && A0P(c1769Mk, 4, frameHeaderSize, true)) {
                z = true;
            } else {
                MV.A07(A0J(170, 10, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE), A0J(88, 45, 4) + c2100a1A0A.A01);
                return null;
            }
        }
        while (c1769Mk.A07() >= frameHeaderSize) {
            Id3Frame id3FrameA0B = A0B(c2100a1A0A.A01, c1769Mk, z, frameHeaderSize, this.A00);
            if (id3FrameA0B != null) {
                arrayList.add(id3FrameA0B);
            }
        }
        return new Metadata(arrayList);
    }
}
