package com.facebook.ads.androidx.media3.extractor.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.redexgen.X.C2107a8;
import com.facebook.ads.redexgen.X.L3;
import com.facebook.ads.redexgen.X.N1;
import com.facebook.ads.redexgen.X.VC;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class MdtaMetadataEntry implements Metadata.Entry {
    public static byte[] A04;
    public static String[] A05 = {"TKz69VIN8JoZrrOZP8V0pla6pABFeU3D", "TYrnOpTSx2BLyyx", "IFft2hj8ocKMfmGdOQdlBiTCg2VR", "zXeA8qiLLlL1F8AkHX1xSr1mTg7UG8ZT", "DqVR1NzpoIJLVxRFW66qkdez9oWr3PU7", "zhBLudd8EFE4Q71OnygrqSkVNrgbenQf", "AYLuOjzh3dktCTh8pk3CJZDQiauqWzeG", "7j79Ec3H4UsmfYXxwvnjo4vaSQgAyTVE"};
    public static final Parcelable.Creator<MdtaMetadataEntry> CREATOR;
    public final int A00;
    public final int A01;
    public final String A02;
    public final byte[] A03;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] - i3) - 106);
            if (A05[1].length() == 20) {
                throw new RuntimeException();
            }
            A05[6] = "KEjdsINDUWMURIGA7X1xzrcJ3tXs8gqI";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{83, 74, 90, 71, 32, 6, 81, 75, 95, 35};
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
        CREATOR = new C2107a8();
    }

    public MdtaMetadataEntry(Parcel parcel) {
        this.A02 = (String) N1.A0f(parcel.readString());
        this.A03 = (byte[]) N1.A0f(parcel.createByteArray());
        this.A00 = parcel.readInt();
        this.A01 = parcel.readInt();
    }

    public /* synthetic */ MdtaMetadataEntry(Parcel parcel, C2107a8 c2107a8) {
        this(parcel);
    }

    public MdtaMetadataEntry(String str, byte[] bArr, int i, int i2) {
        this.A02 = str;
        this.A03 = bArr;
        this.A00 = i;
        this.A01 = i2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (A05[2].length() == 2) {
            throw new RuntimeException();
        }
        A05[0] = "2DGGST2lP0V1TBHQI2FqYcflIlk8wrMX";
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) obj;
        if (this.A02.equals(mdtaMetadataEntry.A02) && Arrays.equals(this.A03, mdtaMetadataEntry.A03) && this.A00 == mdtaMetadataEntry.A00 && this.A01 == mdtaMetadataEntry.A01) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int result = this.A02.hashCode();
        int result2 = ((((17 * 31) + result) * 31) + Arrays.hashCode(this.A03)) * 31;
        int result3 = this.A00;
        return ((result2 + result3) * 31) + this.A01;
    }

    public final String toString() {
        return A00(0, 10, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE) + this.A02;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.A02);
        parcel.writeByteArray(this.A03);
        parcel.writeInt(this.A00);
        parcel.writeInt(this.A01);
    }
}
