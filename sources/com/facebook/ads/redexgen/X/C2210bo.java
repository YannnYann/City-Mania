package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2210bo {
    public static byte[] A07;
    public static String[] A08 = {"JsV4TFjYWvOVFh9fbEMBQ1yd", "zI9rFfLAPUbBcFVn1cs8sVfp7", "5vAFQLVRtXS7x8rkrLI0RrMKh", "5t", "1oeTKhLIb83oiC2b8AZ2Gaj38pe10VaJ", "yM2U", "BgBP9zcDMfdMiz0Sq4W1kP4oEPZ", "BxbzWHPj6NvSPUz9iUx4YOqPzI8l5Xlv"};
    public static final byte[] A09;
    public static final byte[] A0A;
    public static final byte[] A0B;
    public Bitmap A00;
    public final Canvas A01;
    public final Paint A02 = new Paint();
    public final Paint A03;
    public final C2202bg A04;
    public final C2203bh A05;
    public final C2209bn A06;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C2202bg A04(C1768Mj c1768Mj, int i) {
        int iA04;
        int iA042;
        int iA043;
        int iA044;
        int i2 = 8;
        int iA045 = c1768Mj.A04(8);
        c1768Mj.A09(8);
        int i3 = i - 2;
        int[] iArrA0F = A0F();
        int[] iArrA0G = A0G();
        int[] iArrA0H = A0H();
        while (i3 > 0) {
            int iA046 = c1768Mj.A04(i2);
            int iA047 = c1768Mj.A04(i2);
            int i4 = i3 - 2;
            int[] iArr = (iA047 & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0 ? iArrA0F : (iA047 & 64) != 0 ? iArrA0G : iArrA0H;
            if ((iA047 & 1) != 0) {
                iA04 = c1768Mj.A04(i2);
                iA042 = c1768Mj.A04(i2);
                iA043 = c1768Mj.A04(i2);
                iA044 = c1768Mj.A04(i2);
                i3 = i4 - 4;
            } else {
                iA04 = c1768Mj.A04(6) << 2;
                iA042 = c1768Mj.A04(4) << 4;
                iA043 = c1768Mj.A04(4) << 4;
                iA044 = c1768Mj.A04(2) << 6;
                i3 = i4 - 2;
            }
            if (iA04 == 0) {
                iA042 = 0;
                iA043 = 0;
                iA044 = 255;
            }
            iArr[iA046] = A00(255 - (iA044 & 255), N1.A07((int) (((double) iA04) + (((double) (iA042 - 128)) * 1.402d)), 0, 255), N1.A07((int) ((((double) iA04) - (((double) (iA043 - 128)) * 0.34414d)) - (((double) (iA042 - 128)) * 0.71414d)), 0, 255), N1.A07((int) (((double) iA04) + (((double) (iA043 - 128)) * 1.772d)), 0, 255));
            i2 = 8;
        }
        return new C2202bg(iA045, iArrA0F, iArrA0G, iArrA0H);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C2203bh A05(C1768Mj c1768Mj) {
        int iA04;
        int iA042;
        int iA043;
        int iA044;
        c1768Mj.A09(4);
        boolean zA0H = c1768Mj.A0H();
        c1768Mj.A09(3);
        int iA045 = c1768Mj.A04(16);
        int iA046 = c1768Mj.A04(16);
        if (zA0H) {
            iA04 = c1768Mj.A04(16);
            iA044 = c1768Mj.A04(16);
            iA042 = c1768Mj.A04(16);
            iA043 = c1768Mj.A04(16);
        } else {
            iA04 = 0;
            iA042 = 0;
            iA043 = iA046;
            iA044 = iA045;
        }
        return new C2203bh(iA045, iA046, iA04, iA044, iA042, iA043);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C2207bl A08(C1768Mj c1768Mj, int i) {
        int i2 = 8;
        int iA04 = c1768Mj.A04(8);
        c1768Mj.A09(4);
        boolean zA0H = c1768Mj.A0H();
        c1768Mj.A09(3);
        int iA042 = c1768Mj.A04(16);
        int iA043 = c1768Mj.A04(16);
        int iA044 = c1768Mj.A04(3);
        int iA045 = c1768Mj.A04(3);
        c1768Mj.A09(2);
        int iA046 = c1768Mj.A04(8);
        int iA047 = c1768Mj.A04(8);
        int iA048 = c1768Mj.A04(4);
        int iA049 = c1768Mj.A04(2);
        c1768Mj.A09(2);
        int i3 = i - 10;
        SparseArray sparseArray = new SparseArray();
        while (i3 > 0) {
            int iA0410 = c1768Mj.A04(16);
            int iA0411 = c1768Mj.A04(2);
            int iA0412 = c1768Mj.A04(2);
            int iA0413 = c1768Mj.A04(12);
            c1768Mj.A09(4);
            int iA0414 = c1768Mj.A04(12);
            i3 -= 6;
            int iA0415 = 0;
            int iA0416 = 0;
            if (iA0411 == 1 || iA0411 == 2) {
                iA0415 = c1768Mj.A04(i2);
                iA0416 = c1768Mj.A04(i2);
                i3 -= 2;
            }
            sparseArray.put(iA0410, new C2208bm(iA0411, iA0412, iA0413, iA0414, iA0415, iA0416));
            i2 = 8;
        }
        return new C2207bl(iA04, zA0H, iA042, iA043, iA044, iA045, iA046, iA047, iA048, iA049, sparseArray);
    }

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0A() {
        A07 = new byte[]{4, 33, 52, 33, 96, 38, 41, 37, 44, 36, 96, 44, 37, 46, 39, 52, 40, 96, 37, 56, 35, 37, 37, 36, 51, 96, 44, 41, 45, 41, 52, 55, 5, 17, 35, 18, 1, 0, 22, 1};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final List<C1936Th> A0I(byte[] bArr, int i) {
        C1768Mj c1768Mj = new C1768Mj(bArr, i);
        while (c1768Mj.A01() >= 48 && c1768Mj.A04(8) == 15) {
            A0B(c1768Mj, this.A06);
        }
        C2205bj c2205bj = this.A06.A01;
        if (c2205bj != null) {
            C2203bh c2203bh = this.A06.A00 != null ? this.A06.A00 : this.A05;
            if (this.A00 == null || c2203bh.A05 + 1 != this.A00.getWidth() || c2203bh.A00 + 1 != this.A00.getHeight()) {
                this.A00 = Bitmap.createBitmap(c2203bh.A05 + 1, c2203bh.A00 + 1, Bitmap.Config.ARGB_8888);
                this.A01.setBitmap(this.A00);
            }
            ArrayList arrayList = new ArrayList();
            SparseArray<C2206bk> sparseArray = c2205bj.A03;
            for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                this.A01.save();
                C2206bk c2206bkValueAt = sparseArray.valueAt(i2);
                C2207bl c2207bl = this.A06.A08.get(sparseArray.keyAt(i2));
                int i3 = c2206bkValueAt.A00 + c2203bh.A02;
                int i4 = c2206bkValueAt.A01 + c2203bh.A04;
                this.A01.clipRect(i3, i4, Math.min(c2207bl.A08 + i3, c2203bh.A01), Math.min(c2207bl.A02 + i4, c2203bh.A03));
                C2202bg c2202bg = this.A06.A06.get(c2207bl.A00);
                if (c2202bg == null && (c2202bg = this.A06.A04.get(c2207bl.A00)) == null) {
                    c2202bg = this.A04;
                }
                SparseArray<C2208bm> sparseArray2 = c2207bl.A09;
                for (int i5 = 0; i5 < sparseArray2.size(); i5++) {
                    int iKeyAt = sparseArray2.keyAt(i5);
                    C2208bm c2208bmValueAt = sparseArray2.valueAt(i5);
                    C2204bi c2204bi = this.A06.A07.get(iKeyAt);
                    if (c2204bi == null) {
                        c2204bi = this.A06.A05.get(iKeyAt);
                    }
                    if (c2204bi != null) {
                        Paint paint = c2204bi.A01 ? null : this.A02;
                        int i6 = c2207bl.A01;
                        int i7 = i3 + c2208bmValueAt.A02;
                        int i8 = i4 + c2208bmValueAt.A05;
                        Canvas canvas = this.A01;
                        String[] strArr = A08;
                        if (strArr[4].charAt(30) != strArr[7].charAt(30)) {
                            String[] strArr2 = A08;
                            strArr2[3] = "Vx";
                            strArr2[0] = "u9oPMu67mHNYaVuzznnGdinz";
                            A0C(c2204bi, c2202bg, i6, i7, i8, paint, canvas);
                        }
                    }
                }
                if (c2207bl.A0A) {
                    this.A03.setColor(c2207bl.A01 == 3 ? c2202bg.A03[c2207bl.A07] : c2207bl.A01 == 2 ? c2202bg.A02[c2207bl.A06] : c2202bg.A01[c2207bl.A05]);
                    this.A01.drawRect(i3, i4, c2207bl.A08 + i3, c2207bl.A02 + i4, this.A03);
                }
                arrayList.add(new C1737Ld().A0D(Bitmap.createBitmap(this.A00, i3, i4, c2207bl.A08, c2207bl.A02)).A04(i3 / c2203bh.A05).A0A(0).A07(i4 / c2203bh.A00, 0).A09(0).A06(c2207bl.A08 / c2203bh.A05).A03(c2207bl.A02 / c2203bh.A00).A0H());
                this.A01.drawColor(0, PorterDuff.Mode.CLEAR);
                this.A01.restore();
            }
            return Collections.unmodifiableList(arrayList);
        }
        List<C1936Th> listEmptyList = Collections.emptyList();
        String[] strArr3 = A08;
        if (strArr3[4].charAt(30) != strArr3[7].charAt(30)) {
            String[] strArr4 = A08;
            strArr4[4] = "k6wxMV5rogRqQXlJ7wPhPjAOTGXgdcai";
            strArr4[7] = "gpzzOf5VMtZ0FadQglIjA6shEguw2FFx";
            return listEmptyList;
        }
        throw new RuntimeException();
    }

    static {
        A0A();
        A09 = new byte[]{0, 7, 8, 15};
        A0A = new byte[]{0, 119, -120, -1};
        A0B = new byte[]{0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    }

    public C2210bo(int i, int i2) {
        this.A02.setStyle(Paint.Style.FILL_AND_STROKE);
        this.A02.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        this.A02.setPathEffect(null);
        this.A03 = new Paint();
        this.A03.setStyle(Paint.Style.FILL);
        this.A03.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        this.A03.setPathEffect(null);
        this.A01 = new Canvas();
        this.A05 = new C2203bh(719, 575, 0, 719, 0, 575);
        this.A04 = new C2202bg(0, A0F(), A0G(), A0H());
        this.A06 = new C2209bn(i, i2);
    }

    public static int A00(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    public static int A01(C1768Mj c1768Mj, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        boolean z = false;
        do {
            int clutIndex = 0;
            int iA04 = c1768Mj.A04(2);
            if (iA04 != 0) {
                clutIndex = 1;
            } else if (c1768Mj.A0H()) {
                clutIndex = c1768Mj.A04(3) + 3;
                iA04 = c1768Mj.A04(2);
            } else if (c1768Mj.A0H()) {
                clutIndex = 1;
                iA04 = 0;
            } else {
                switch (c1768Mj.A04(2)) {
                    case 0:
                        z = true;
                        iA04 = 0;
                        break;
                    case 1:
                        clutIndex = 2;
                        iA04 = 0;
                        break;
                    case 2:
                        clutIndex = c1768Mj.A04(4) + 12;
                        iA04 = c1768Mj.A04(2);
                        break;
                    case 3:
                        clutIndex = c1768Mj.A04(8) + 29;
                        if (A08[6].length() != 27) {
                            throw new RuntimeException();
                        }
                        String[] strArr = A08;
                        strArr[3] = "rf";
                        strArr[0] = "t15PXyEyf06LFckNamOoNHYS";
                        iA04 = c1768Mj.A04(2);
                        break;
                    default:
                        iA04 = 0;
                        break;
                }
            }
            if (clutIndex != 0 && paint != null) {
                if (bArr != null) {
                    iA04 = bArr[iA04];
                }
                paint.setColor(iArr[iA04]);
                canvas.drawRect(i, i2, i + clutIndex, i2 + 1, paint);
            }
            i += clutIndex;
        } while (!z);
        return i;
    }

    public static int A02(C1768Mj c1768Mj, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        boolean z = false;
        do {
            int iA04 = 0;
            int iA042 = c1768Mj.A04(4);
            if (iA042 != 0) {
                iA04 = 1;
            } else if (!c1768Mj.A0H()) {
                int iA043 = c1768Mj.A04(3);
                if (iA043 != 0) {
                    iA04 = iA043 + 2;
                    iA042 = 0;
                } else {
                    z = true;
                    iA042 = 0;
                }
            } else if (!c1768Mj.A0H()) {
                iA04 = c1768Mj.A04(2) + 4;
                iA042 = c1768Mj.A04(4);
            } else {
                switch (c1768Mj.A04(2)) {
                    case 0:
                        iA04 = 1;
                        iA042 = 0;
                        break;
                    case 1:
                        iA04 = 2;
                        iA042 = 0;
                        break;
                    case 2:
                        iA04 = c1768Mj.A04(4) + 9;
                        iA042 = c1768Mj.A04(4);
                        break;
                    case 3:
                        iA04 = c1768Mj.A04(8) + 25;
                        iA042 = c1768Mj.A04(4);
                        break;
                    default:
                        iA042 = 0;
                        break;
                }
            }
            if (iA04 != 0 && paint != null) {
                if (bArr != null) {
                    iA042 = bArr[iA042];
                }
                paint.setColor(iArr[iA042]);
                canvas.drawRect(i, i2, i + iA04, i2 + 1, paint);
            }
            i += iA04;
        } while (!z);
        return i;
    }

    public static int A03(C1768Mj c1768Mj, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        int iA04;
        int i3 = i;
        boolean z = false;
        do {
            int iA042 = c1768Mj.A04(8);
            if (iA042 != 0) {
                iA04 = 1;
            } else if (!c1768Mj.A0H()) {
                iA04 = c1768Mj.A04(7);
                if (iA04 != 0) {
                    iA042 = 0;
                } else {
                    z = true;
                    iA04 = 0;
                    iA042 = 0;
                }
            } else {
                iA04 = c1768Mj.A04(7);
                iA042 = c1768Mj.A04(8);
            }
            if (iA04 != 0 && paint != null) {
                if (bArr != null) {
                    iA042 = bArr[iA042];
                }
                paint.setColor(iArr[iA042]);
                float f = i3;
                float f2 = i2;
                String[] strArr = A08;
                if (strArr[3].length() == strArr[0].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A08;
                strArr2[4] = "nFAY43cuMtbo8GHNqxxyMaFJhuv8uT08";
                strArr2[7] = "nVtWZ378Kka1Q7VhBISIVs1iQwprxuF1";
                canvas.drawRect(f, f2, i3 + iA04, i2 + 1, paint);
            }
            i3 += iA04;
        } while (!z);
        return i3;
    }

    public static C2204bi A06(C1768Mj c1768Mj) {
        int iA04 = c1768Mj.A04(16);
        c1768Mj.A09(4);
        int objectId = c1768Mj.A04(2);
        boolean zA0H = c1768Mj.A0H();
        c1768Mj.A09(1);
        byte[] bArr = N1.A07;
        byte[] bArr2 = N1.A07;
        if (objectId == 1) {
            int numberOfCodes = c1768Mj.A04(8);
            c1768Mj.A09(numberOfCodes * 16);
        } else if (objectId == 0) {
            int objectCodingMethod = c1768Mj.A04(16);
            int objectId2 = c1768Mj.A04(16);
            if (objectCodingMethod > 0) {
                bArr = new byte[objectCodingMethod];
                c1768Mj.A0G(bArr, 0, objectCodingMethod);
            }
            if (objectId2 > 0) {
                bArr2 = new byte[objectId2];
                c1768Mj.A0G(bArr2, 0, objectId2);
            } else {
                bArr2 = bArr;
            }
        }
        return new C2204bi(iA04, zA0H, bArr, bArr2);
    }

    public static C2205bj A07(C1768Mj c1768Mj, int i) {
        int iA04 = c1768Mj.A04(8);
        int iA042 = c1768Mj.A04(4);
        int iA043 = c1768Mj.A04(2);
        c1768Mj.A09(2);
        int i2 = i - 2;
        SparseArray sparseArray = new SparseArray();
        while (i2 > 0) {
            int remainingLength = c1768Mj.A04(8);
            c1768Mj.A09(8);
            int version = c1768Mj.A04(16);
            int timeoutSecs = c1768Mj.A04(16);
            i2 -= 6;
            sparseArray.put(remainingLength, new C2206bk(version, timeoutSecs));
        }
        return new C2205bj(iA04, iA042, iA043, sparseArray);
    }

    public static void A0B(C1768Mj c1768Mj, C2209bn c2209bn) {
        int iA04 = c1768Mj.A04(8);
        int iA042 = c1768Mj.A04(16);
        int pageId = c1768Mj.A04(16);
        int dataFieldLimit = c1768Mj.A02() + pageId;
        int dataFieldLength = pageId * 8;
        int segmentType = c1768Mj.A01();
        if (dataFieldLength > segmentType) {
            MV.A07(A09(31, 9, 0), A09(0, 31, 51));
            int segmentType2 = c1768Mj.A01();
            c1768Mj.A09(segmentType2);
            return;
        }
        switch (iA04) {
            case 16:
                int segmentType3 = c2209bn.A03;
                if (iA042 == segmentType3) {
                    C2205bj c2205bj = c2209bn.A01;
                    C2205bj c2205bjA07 = A07(c1768Mj, pageId);
                    int segmentType4 = c2205bjA07.A00;
                    if (segmentType4 != 0) {
                        c2209bn.A01 = c2205bjA07;
                        c2209bn.A08.clear();
                        c2209bn.A06.clear();
                        c2209bn.A07.clear();
                    } else if (c2205bj != null) {
                        int dataFieldLength2 = c2205bj.A02;
                        int segmentType5 = c2205bjA07.A02;
                        if (dataFieldLength2 != segmentType5) {
                            c2209bn.A01 = c2205bjA07;
                        }
                    }
                }
                break;
            case 17:
                C2205bj c2205bj2 = c2209bn.A01;
                int segmentType6 = c2209bn.A03;
                if (iA042 == segmentType6 && c2205bj2 != null) {
                    C2207bl c2207blA08 = A08(c1768Mj, pageId);
                    int segmentType7 = c2205bj2.A00;
                    if (segmentType7 == 0) {
                        SparseArray<C2207bl> sparseArray = c2209bn.A08;
                        int segmentType8 = c2207blA08.A03;
                        C2207bl c2207bl = sparseArray.get(segmentType8);
                        if (c2207bl != null) {
                            c2207blA08.A00(c2207bl);
                        }
                    }
                    SparseArray<C2207bl> sparseArray2 = c2209bn.A08;
                    int segmentType9 = c2207blA08.A03;
                    sparseArray2.put(segmentType9, c2207blA08);
                }
                break;
            case 18:
                int segmentType10 = c2209bn.A03;
                if (iA042 == segmentType10) {
                    C2202bg c2202bgA04 = A04(c1768Mj, pageId);
                    SparseArray<C2202bg> sparseArray3 = c2209bn.A06;
                    int segmentType11 = c2202bgA04.A00;
                    sparseArray3.put(segmentType11, c2202bgA04);
                } else {
                    int segmentType12 = c2209bn.A02;
                    if (iA042 == segmentType12) {
                        C2202bg c2202bgA042 = A04(c1768Mj, pageId);
                        SparseArray<C2202bg> sparseArray4 = c2209bn.A04;
                        int segmentType13 = c2202bgA042.A00;
                        sparseArray4.put(segmentType13, c2202bgA042);
                    }
                }
                break;
            case 19:
                int segmentType14 = c2209bn.A03;
                if (iA042 == segmentType14) {
                    C2204bi c2204biA06 = A06(c1768Mj);
                    SparseArray<C2204bi> sparseArray5 = c2209bn.A07;
                    int segmentType15 = c2204biA06.A00;
                    sparseArray5.put(segmentType15, c2204biA06);
                } else {
                    int segmentType16 = c2209bn.A02;
                    if (iA042 == segmentType16) {
                        C2204bi c2204biA062 = A06(c1768Mj);
                        SparseArray<C2204bi> sparseArray6 = c2209bn.A05;
                        int segmentType17 = c2204biA062.A00;
                        sparseArray6.put(segmentType17, c2204biA062);
                    }
                }
                break;
            case 20:
                int segmentType18 = c2209bn.A03;
                if (iA042 == segmentType18) {
                    c2209bn.A00 = A05(c1768Mj);
                }
                break;
        }
        int segmentType19 = c1768Mj.A02();
        c1768Mj.A0A(dataFieldLimit - segmentType19);
    }

    public static void A0C(C2204bi c2204bi, C2202bg c2202bg, int i, int i2, int i3, Paint paint, Canvas canvas) {
        int[] iArr;
        if (i == 3) {
            iArr = c2202bg.A03;
        } else if (i == 2) {
            iArr = c2202bg.A02;
        } else {
            iArr = c2202bg.A01;
        }
        A0D(c2204bi.A03, iArr, i, i2, i3, paint, canvas);
        A0D(c2204bi.A02, iArr, i, i2, i3 + 1, paint, canvas);
    }

    public static void A0D(byte[] bArr, int[] iArr, int i, int i2, int i3, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        int i4 = i3;
        C1768Mj c1768Mj = new C1768Mj(bArr);
        byte[] clutMapTable2To8 = null;
        byte[] clutMapTable2To4 = null;
        byte[] bArrA0E = null;
        int line = i2;
        while (c1768Mj.A01() != 0) {
            switch (c1768Mj.A04(8)) {
                case 16:
                    if (i == 3) {
                        bArr2 = clutMapTable2To4 == null ? A0A : clutMapTable2To4;
                    } else if (i == 2) {
                        bArr2 = clutMapTable2To8 == null ? A09 : clutMapTable2To8;
                    } else {
                        bArr2 = null;
                    }
                    line = A01(c1768Mj, iArr, bArr2, line, i4, paint, canvas);
                    if (A08[5].length() != 4) {
                        throw new RuntimeException();
                    }
                    A08[5] = "INWB";
                    c1768Mj.A06();
                    break;
                case 17:
                    if (i == 3) {
                        bArr3 = bArrA0E == null ? A0B : bArrA0E;
                    } else {
                        bArr3 = null;
                    }
                    line = A02(c1768Mj, iArr, bArr3, line, i4, paint, canvas);
                    c1768Mj.A06();
                    break;
                case 18:
                    line = A03(c1768Mj, iArr, null, line, i4, paint, canvas);
                    break;
                case 32:
                    clutMapTable2To8 = A0E(4, 4, c1768Mj);
                    break;
                case 33:
                    clutMapTable2To4 = A0E(4, 8, c1768Mj);
                    break;
                case 34:
                    bArrA0E = A0E(16, 8, c1768Mj);
                    break;
                case 240:
                    i4 += 2;
                    line = i2;
                    break;
            }
        }
    }

    public static byte[] A0E(int i, int i2, C1768Mj c1768Mj) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) c1768Mj.A04(i2);
        }
        return bArr;
    }

    public static int[] A0F() {
        int[] iArr = new int[4];
        iArr[0] = 0;
        if (A08[6].length() != 27) {
            throw new RuntimeException();
        }
        A08[5] = "UKRJ";
        iArr[1] = -1;
        iArr[2] = -16777216;
        iArr[3] = -8421505;
        return iArr;
    }

    public static int[] A0G() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i = 1; i < iArr.length; i++) {
            if (i < 8) {
                int i2 = (i & 1) != 0 ? 255 : 0;
                iArr[i] = A00(255, i2, (i & 2) != 0 ? 255 : 0, (i & 4) != 0 ? 255 : 0);
            } else {
                int i3 = i & 1;
                int i4 = Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE;
                int i5 = i3 != 0 ? Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE : 0;
                int i6 = (i & 2) != 0 ? Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE : 0;
                if ((i & 4) == 0) {
                    i4 = 0;
                }
                iArr[i] = A00(255, i5, i6, i4);
            }
        }
        return iArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:138:0x0029, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0189  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int[] A0H() {
        /*
            Method dump skipped, instruction units count: 424
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2210bo.A0H():int[]");
    }

    public final void A0J() {
        this.A06.A00();
    }
}
