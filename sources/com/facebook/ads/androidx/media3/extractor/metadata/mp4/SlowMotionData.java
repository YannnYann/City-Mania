package com.facebook.ads.androidx.media3.extractor.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData;
import com.facebook.ads.redexgen.X.A6;
import com.facebook.ads.redexgen.X.AbstractC1747Ln;
import com.facebook.ads.redexgen.X.C2109aA;
import com.facebook.ads.redexgen.X.C2111aC;
import com.facebook.ads.redexgen.X.L3;
import com.facebook.ads.redexgen.X.N1;
import com.facebook.ads.redexgen.X.VC;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class SlowMotionData implements Metadata.Entry {
    public static byte[] A01;
    public static String[] A02 = {"4Hx7OvDSSY6Qn1Dlb29M9", "IjalnB", "VfpXP03MgioH1ypmjAoNGAx3WvRNgJFY", "x0bd", "ZPU15yp6", "jkdOWxrankEP9khq", "gTJFwo", "xvbGWmtrtKgtEhgKRff6QL0k8Z6vwV14"};
    public static final Parcelable.Creator<SlowMotionData> CREATOR;
    public final List<Segment> A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A02[4].length() != 8) {
                throw new RuntimeException();
            }
            A02[5] = "KLycsjpkvsjMD5X8";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 111);
            i4++;
        }
    }

    public static void A01() {
        A01 = new byte[]{47, 72, 75, 83, 41, 75, 80, 69, 75, 74, 22, -4, 79, 65, 67, 73, 65, 74, 80, 79, 25};
    }

    @Override // com.facebook.ads.androidx.media3.common.Metadata.Entry
    public final /* synthetic */ byte[] AAE() {
        return L3.A01(this);
    }

    @Override // com.facebook.ads.androidx.media3.common.Metadata.Entry
    public final /* synthetic */ VC AAF() {
        return L3.A00(this);
    }

    static {
        A01();
        CREATOR = new C2109aA();
    }

    public static final class Segment implements Parcelable {
        public static byte[] A03;
        public static final Comparator<Segment> A04;
        public static final Parcelable.Creator<Segment> CREATOR;
        public final int A00;
        public final long A01;
        public final long A02;

        public static String A01(int i, int i2, int i3) {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
            for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 20);
            }
            return new String(bArrCopyOfRange);
        }

        public static void A02() {
            A03 = new byte[]{11, 61, 63, 53, 61, 54, 44, 98, 120, 43, 44, 57, 42, 44, 12, 49, 53, 61, 21, 43, 101, 125, 60, 116, 120, 61, 54, 60, 12, 49, 53, 61, 21, 43, 101, 125, 60, 116, 120, 43, 40, 61, 61, 60, 28, 49, 46, 49, 43, 55, 42, 101, 125, 60};
        }

        static {
            A02();
            A04 = new Comparator() { // from class: com.facebook.ads.redexgen.X.aB
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    SlowMotionData.Segment segment = (SlowMotionData.Segment) obj;
                    SlowMotionData.Segment segment2 = (SlowMotionData.Segment) obj2;
                    return AbstractC1999Vy.A01().A07(segment.A02, segment2.A02).A07(segment.A01, segment2.A01).A06(segment.A00, segment2.A00).A05();
                }
            };
            CREATOR = new C2111aC();
        }

        public Segment(long j, long j2, int i) {
            AbstractC1747Ln.A07(j < j2);
            this.A02 = j;
            this.A01 = j2;
            this.A00 = i;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Segment segment = (Segment) obj;
            return this.A02 == segment.A02 && this.A01 == segment.A01 && this.A00 == segment.A00;
        }

        public final int hashCode() {
            return A6.A00(Long.valueOf(this.A02), Long.valueOf(this.A01), Integer.valueOf(this.A00));
        }

        public final String toString() {
            return N1.A0n(A01(0, 54, 76), Long.valueOf(this.A02), Long.valueOf(this.A01), Integer.valueOf(this.A00));
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.A02);
            parcel.writeLong(this.A01);
            parcel.writeInt(this.A00);
        }
    }

    public SlowMotionData(List<Segment> segments) {
        this.A00 = segments;
        AbstractC1747Ln.A07(!A02(segments));
    }

    /* JADX WARN: Incorrect condition in loop: B:7:0x0015 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A02(java.util.List<com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData.Segment> r7) {
        /*
            boolean r0 = r7.isEmpty()
            r6 = 0
            if (r0 == 0) goto L8
            return r6
        L8:
            java.lang.Object r0 = r7.get(r6)
            com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData$Segment r0 = (com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData.Segment) r0
            long r3 = r0.A01
            r5 = 1
        L11:
            int r0 = r7.size()
            if (r5 >= r0) goto L4a
            java.lang.Object r0 = r7.get(r5)
            com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData$Segment r0 = (com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData.Segment) r0
            long r1 = r0.A02
            int r0 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r0 >= 0) goto L37
            r3 = 1
            java.lang.String[] r1 = com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData.A02
            r0 = 4
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 8
            if (r1 == r0) goto L42
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L37:
            java.lang.Object r0 = r7.get(r5)
            com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData$Segment r0 = (com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData.Segment) r0
            long r3 = r0.A01
            int r5 = r5 + 1
            goto L11
        L42:
            java.lang.String[] r2 = com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData.A02
            java.lang.String r1 = "ZRcff976jmehsSMZ"
            r0 = 5
            r2[r0] = r1
            return r3
        L4a:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData.A02(java.util.List):boolean");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.A00.equals(((SlowMotionData) obj).A00);
    }

    public final int hashCode() {
        return this.A00.hashCode();
    }

    public final String toString() {
        return A00(0, 21, 109) + this.A00;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.A00);
    }
}
