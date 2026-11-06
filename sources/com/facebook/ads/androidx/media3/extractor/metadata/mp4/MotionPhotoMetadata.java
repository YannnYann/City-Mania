package com.facebook.ads.androidx.media3.extractor.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.redexgen.X.AnonymousClass37;
import com.facebook.ads.redexgen.X.C2108a9;
import com.facebook.ads.redexgen.X.L3;
import com.facebook.ads.redexgen.X.VC;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class MotionPhotoMetadata implements Metadata.Entry {
    public static byte[] A05;
    public static String[] A06 = {"PNWawPj1L0QkIz8HpTht8", "OURlRWwitzRzM5nF", "CsT5G3pr2R90MC8uN", "jpyLjyHTo8YwccJDB", "6fZZYjUz7W2hOon3QwyXRukUwG2IfK1Y", "7CSpEmpA18RFiQsioQ2zv363ZnsXerIl", "UxZBsud08pgSboH6toO", "EwyfhpOfpzucV5WzlDKEZgsKZt0tosJq"};
    public static final Parcelable.Creator<MotionPhotoMetadata> CREATOR;
    public final long A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final long A04;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 4);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{57, 53, 101, 125, 122, 97, 122, 69, 103, 112, 102, 112, 123, 97, 116, 97, 124, 122, 123, 65, 124, 120, 112, 102, 97, 116, 120, 101, 64, 102, 40, 46, 34, 114, 106, 109, 118, 109, 81, 107, 120, 103, 63, 123, 119, 33, 62, 51, 50, 56, 4, 62, 45, 50, 106, 30, 18, 68, 91, 86, 87, 93, 97, 70, 83, 64, 70, 98, 93, 65, 91, 70, 91, 93, 92, 15, 67, 97, 122, 103, 97, 96, 46, 126, 102, 97, 122, 97, 46, 99, 107, 122, 111, 106, 111, 122, 111, 52, 46, 126, 102, 97, 122, 97, 93, 122, 111, 124, 122, 94, 97, 125, 103, 122, 103, 97, 96, 51};
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
        CREATOR = new C2108a9();
    }

    public MotionPhotoMetadata(long j, long j2, long j3, long j4, long j5) {
        this.A02 = j;
        this.A01 = j2;
        this.A00 = j3;
        this.A04 = j4;
        this.A03 = j5;
    }

    public MotionPhotoMetadata(Parcel parcel) {
        this.A02 = parcel.readLong();
        this.A01 = parcel.readLong();
        this.A00 = parcel.readLong();
        this.A04 = parcel.readLong();
        this.A03 = parcel.readLong();
    }

    public /* synthetic */ MotionPhotoMetadata(Parcel parcel, C2108a9 c2108a9) {
        this(parcel);
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
        MotionPhotoMetadata motionPhotoMetadata = (MotionPhotoMetadata) obj;
        if (this.A02 == motionPhotoMetadata.A02 && this.A01 == motionPhotoMetadata.A01 && this.A00 == motionPhotoMetadata.A00 && this.A04 == motionPhotoMetadata.A04) {
            long j = this.A03;
            if (A06[7].charAt(15) == '2') {
                throw new RuntimeException();
            }
            A06[0] = "5TjzSOxFV2Y86ArdDBmXi";
            if (j == motionPhotoMetadata.A03) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int result = AnonymousClass37.A00(this.A02);
        int iA00 = ((((17 * 31) + result) * 31) + AnonymousClass37.A00(this.A01)) * 31;
        int result2 = AnonymousClass37.A00(this.A00);
        int iA002 = (((iA00 + result2) * 31) + AnonymousClass37.A00(this.A04)) * 31;
        int result3 = AnonymousClass37.A00(this.A03);
        return iA002 + result3;
    }

    public final String toString() {
        return A00(76, 42, 10) + this.A02 + A00(31, 12, 6) + this.A01 + A00(0, 31, 17) + this.A00 + A00(55, 21, 54) + this.A04 + A00(43, 12, 83) + this.A03;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.A02);
        parcel.writeLong(this.A01);
        parcel.writeLong(this.A00);
        parcel.writeLong(this.A04);
        parcel.writeLong(this.A03);
    }
}
