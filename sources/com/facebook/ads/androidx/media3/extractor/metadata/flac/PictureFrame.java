package com.facebook.ads.androidx.media3.extractor.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.redexgen.X.C1769Mk;
import com.facebook.ads.redexgen.X.C2087Zo;
import com.facebook.ads.redexgen.X.L3;
import com.facebook.ads.redexgen.X.N1;
import com.facebook.ads.redexgen.X.VC;
import com.facebook.ads.redexgen.X.XA;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class PictureFrame implements Metadata.Entry {
    public static byte[] A08;
    public static String[] A09 = {"OEWQHdHKgPYFW4UmJZSs1wLaggTlFrxr", "waMbrcM8qoTtEkBApjN5p1a", "6yMPGZH96QR4WCbmqoKxMZQBNyhovrJB", "5yeh7Sv7kPdaa3Oy5ecN09YdxRbxfYFL", "MXpdZkCygbqmt6rHfkYXODdNuOw9k", "fSZnHaU1S5Mmg8xVkfiK", "T3Zede4S3mdTuD0u", "Jpu7xhrvK3O"};
    public static final Parcelable.Creator<PictureFrame> CREATOR;
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final String A05;
    public final String A06;
    public final byte[] A07;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static PictureFrame A00(C1769Mk c1769Mk) {
        int iA0C = c1769Mk.A0C();
        String strA0X = c1769Mk.A0X(c1769Mk.A0C(), XA.A01);
        String strA0W = c1769Mk.A0W(c1769Mk.A0C());
        int iA0C2 = c1769Mk.A0C();
        int iA0C3 = c1769Mk.A0C();
        int iA0C4 = c1769Mk.A0C();
        int iA0C5 = c1769Mk.A0C();
        int iA0C6 = c1769Mk.A0C();
        byte[] bArr = new byte[iA0C6];
        c1769Mk.A0k(bArr, 0, iA0C6);
        return new PictureFrame(iA0C, strA0X, strA0W, iA0C2, iA0C3, iA0C4, iA0C5, bArr);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A08 = new byte[]{123, 119, 51, 50, 36, 52, 37, 62, 39, 35, 62, 56, 57, 106, 100, 93, 87, 64, 65, 70, 81, 14, 20, 89, 93, 89, 81, 96, 77, 68, 81, 9};
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
        A02();
        CREATOR = new C2087Zo();
    }

    public PictureFrame(int i, String str, String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.A03 = i;
        this.A06 = str;
        this.A05 = str2;
        this.A04 = i2;
        this.A02 = i3;
        this.A01 = i4;
        this.A00 = i5;
        this.A07 = bArr;
    }

    public PictureFrame(Parcel parcel) {
        this.A03 = parcel.readInt();
        this.A06 = (String) N1.A0f(parcel.readString());
        this.A05 = (String) N1.A0f(parcel.readString());
        this.A04 = parcel.readInt();
        this.A02 = parcel.readInt();
        this.A01 = parcel.readInt();
        this.A00 = parcel.readInt();
        this.A07 = (byte[]) N1.A0f(parcel.createByteArray());
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
        PictureFrame pictureFrame = (PictureFrame) obj;
        if (this.A03 == pictureFrame.A03 && this.A06.equals(pictureFrame.A06) && this.A05.equals(pictureFrame.A05) && this.A04 == pictureFrame.A04) {
            int i = this.A02;
            String[] strArr = A09;
            if (strArr[0].charAt(6) != strArr[2].charAt(6)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A09;
            strArr2[6] = "GknEvsfrVZFKueRf";
            strArr2[5] = "CjfRU2mA75Xxzw6IVfJg";
            if (i == pictureFrame.A02 && this.A01 == pictureFrame.A01 && this.A00 == pictureFrame.A00 && Arrays.equals(this.A07, pictureFrame.A07)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int result = this.A03;
        int result2 = ((((17 * 31) + result) * 31) + this.A06.hashCode()) * 31;
        int result3 = this.A05.hashCode();
        int result4 = (((result2 + result3) * 31) + this.A04) * 31;
        int result5 = this.A02;
        int result6 = (((result4 + result5) * 31) + this.A01) * 31;
        int result7 = this.A00;
        return ((result6 + result7) * 31) + Arrays.hashCode(this.A07);
    }

    public final String toString() {
        return A01(14, 18, 78) + this.A06 + A01(0, 14, 45) + this.A05;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.A03);
        parcel.writeString(this.A06);
        parcel.writeString(this.A05);
        parcel.writeInt(this.A04);
        parcel.writeInt(this.A02);
        parcel.writeInt(this.A01);
        parcel.writeInt(this.A00);
        parcel.writeByteArray(this.A07);
    }
}
