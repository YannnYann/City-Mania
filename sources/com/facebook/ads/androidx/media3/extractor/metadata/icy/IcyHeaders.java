package com.facebook.ads.androidx.media3.extractor.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.redexgen.X.C2090Zr;
import com.facebook.ads.redexgen.X.L3;
import com.facebook.ads.redexgen.X.N1;
import com.facebook.ads.redexgen.X.VC;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class IcyHeaders implements Metadata.Entry {
    public static byte[] A06;
    public static String[] A07 = {"0IguTEw4U6C2NMcdViEhCLNrP1HBe", "yjHmTg2gQICt2PVTiETqFkORSp", "rZOgJCuyaxsYqLcXBTq4BDh2Xjgm", "fHfz63T2aeiVkvt9", "XnZuLu5RJoBgAGeNpl0P4Sbvu2", "fhjC2OfPeM4M2KScJ5GNV6JP3cG9r", "ix1hMeqSOqhtFJaBainpvHaLGDfTe", "LaCaPBF2"};
    public static final Parcelable.Creator<IcyHeaders> CREATOR;
    public final int A00;
    public final int A01;
    public final String A02;
    public final String A03;
    public final String A04;
    public final boolean A05;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE);
            if (A07[6].length() != 29) {
                throw new RuntimeException();
            }
            String[] strArr = A07;
            strArr[0] = "8JA8MZTI0WIsqu6T3uF5melGPUyys";
            strArr[5] = "qOom5UOYrwWd2zc5O0W3JqQ6ci33z";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A06 = new byte[]{106, 100, 104, 42, 33, 60, 58, 41, 60, 45, 117, 36, 42, 38, 97, 99, 104, 116, 99, 59, 36, 126, 114, 63, 55, 38, 51, 54, 51, 38, 51, 27, 60, 38, 55, 32, 36, 51, 62, 111, 65, 107, 113, 64, 109, 105, 108, 109, 122, 123, 50, 40, 102, 105, 101, 109, 53, 42};
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
        CREATOR = new C2090Zr();
    }

    public IcyHeaders(Parcel parcel) {
        this.A00 = parcel.readInt();
        this.A02 = parcel.readString();
        this.A03 = parcel.readString();
        this.A04 = parcel.readString();
        this.A05 = N1.A1C(parcel);
        this.A01 = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r4 = 1
            if (r5 != r6) goto L4
            return r4
        L4:
            r2 = 0
            if (r6 == 0) goto L11
            java.lang.Class r1 = r5.getClass()
            java.lang.Class r0 = r6.getClass()
            if (r1 == r0) goto L12
        L11:
            return r2
        L12:
            com.facebook.ads.androidx.media3.extractor.metadata.icy.IcyHeaders r6 = (com.facebook.ads.androidx.media3.extractor.metadata.icy.IcyHeaders) r6
            int r1 = r5.A00
            int r0 = r6.A00
            if (r1 != r0) goto L35
            java.lang.String r1 = r5.A02
            java.lang.String r0 = r6.A02
            boolean r3 = com.facebook.ads.redexgen.X.N1.A1E(r1, r0)
            java.lang.String[] r1 = com.facebook.ads.androidx.media3.extractor.metadata.icy.IcyHeaders.A07
            r0 = 6
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 29
            if (r1 == r0) goto L37
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L35:
            r4 = 0
            goto L97
        L37:
            java.lang.String[] r2 = com.facebook.ads.androidx.media3.extractor.metadata.icy.IcyHeaders.A07
            java.lang.String r1 = "JpT9CTUxMPKPlvoxjRH7byhB25"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = "hAXsDCyi4RpVequHi7UEAwneWC"
            r0 = 4
            r2[r0] = r1
            if (r3 == 0) goto L35
            java.lang.String r1 = r5.A03
            java.lang.String r0 = r6.A03
            boolean r3 = com.facebook.ads.redexgen.X.N1.A1E(r1, r0)
            java.lang.String[] r2 = com.facebook.ads.androidx.media3.extractor.metadata.icy.IcyHeaders.A07
            r0 = 0
            r1 = r2[r0]
            r0 = 5
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L9b
            java.lang.String[] r2 = com.facebook.ads.androidx.media3.extractor.metadata.icy.IcyHeaders.A07
            java.lang.String r1 = "NVQ5SALKGdqVlmStLLDhWOO"
            r0 = 2
            r2[r0] = r1
            if (r3 == 0) goto L35
        L68:
            java.lang.String r1 = r5.A04
            java.lang.String r0 = r6.A04
            boolean r3 = com.facebook.ads.redexgen.X.N1.A1E(r1, r0)
            java.lang.String[] r1 = com.facebook.ads.androidx.media3.extractor.metadata.icy.IcyHeaders.A07
            r0 = 2
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 25
            if (r1 == r0) goto L98
            java.lang.String[] r2 = com.facebook.ads.androidx.media3.extractor.metadata.icy.IcyHeaders.A07
            java.lang.String r1 = "4CCF8H7kr34MtfYiTjDNzJjNGh"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = "u0Grbcu5l5FMz4mkqOaA0zRQaQ"
            r0 = 4
            r2[r0] = r1
            if (r3 == 0) goto L35
        L8b:
            boolean r1 = r5.A05
            boolean r0 = r6.A05
            if (r1 != r0) goto L35
            int r1 = r5.A01
            int r0 = r6.A01
            if (r1 != r0) goto L35
        L97:
            return r4
        L98:
            if (r3 == 0) goto L35
            goto L8b
        L9b:
            java.lang.String[] r2 = com.facebook.ads.androidx.media3.extractor.metadata.icy.IcyHeaders.A07
            java.lang.String r1 = "hFCFlWjk6QqfprmCExCbZpsEchnUQ"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "dZJ5theZhu30X0X0QULvdHaGEyEoC"
            r0 = 5
            r2[r0] = r1
            if (r3 == 0) goto L35
            goto L68
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.androidx.media3.extractor.metadata.icy.IcyHeaders.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int iHashCode = ((((((((((17 * 31) + this.A00) * 31) + (this.A02 != null ? this.A02.hashCode() : 0)) * 31) + (this.A03 != null ? this.A03.hashCode() : 0)) * 31) + (this.A04 != null ? this.A04.hashCode() : 0)) * 31) + (this.A05 ? 1 : 0)) * 31;
        String[] strArr = A07;
        if (strArr[0].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        A07[2] = "jo4bIXacV69BRUxSfoYGijRE2uUlXO";
        return iHashCode + this.A01;
    }

    public final String toString() {
        return A00(40, 18, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE) + this.A03 + A00(11, 10, Sdk.SDKError.Reason.ASSET_WRITE_ERROR_VALUE) + this.A02 + A00(0, 11, 60) + this.A00 + A00(21, 19, 38) + this.A01;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.A00);
        parcel.writeString(this.A02);
        parcel.writeString(this.A03);
        parcel.writeString(this.A04);
        N1.A0w(parcel, this.A05);
        parcel.writeInt(this.A01);
    }
}
