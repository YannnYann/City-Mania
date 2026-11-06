package com.facebook.ads.androidx.media3.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.redexgen.X.AnonymousClass37;
import com.facebook.ads.redexgen.X.L2;
import com.facebook.ads.redexgen.X.N1;
import com.facebook.ads.redexgen.X.VC;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Metadata implements Parcelable {
    public static byte[] A02;
    public static String[] A03 = {"txW6bhTTUfWnO88BrZFmK", "DA90VrcSzbNuD", "Bw2xU5fE9Wv8MWbQGZOhZSlbHvYEC7ws", "", "wv7x1oMBiVi2Soy7GaiCpHORAusJqgIn", "1azfimeoVN20c5i3OLuMVyg121kQUg8Y", "uYbMHz7ZeqFjmWLHf9CZh", "lGq7yaEiVvWauNdwQA2AZmkOvLqpCu8E"};
    public static final Parcelable.Creator<Metadata> CREATOR;
    public final long A00;
    public final Entry[] A01;

    public interface Entry extends Parcelable {
        byte[] AAE();

        VC AAF();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 66);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-103, -115, -35, -33, -46, -32, -46, -37, -31, -50, -31, -42, -36, -37, -63, -42, -38, -46, -62, -32, -86, -23, -14, -8, -10, -19, -23, -9, -63};
    }

    static {
        A01();
        CREATOR = new L2();
    }

    public Metadata(long j, Entry... entryArr) {
        this.A00 = j;
        this.A01 = entryArr;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x000f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public Metadata(android.os.Parcel r4) {
        /*
            r3 = this;
            r3.<init>()
            int r0 = r4.readInt()
            com.facebook.ads.androidx.media3.common.Metadata$Entry[] r0 = new com.facebook.ads.androidx.media3.common.Metadata.Entry[r0]
            r3.A01 = r0
            r2 = 0
        Lc:
            com.facebook.ads.androidx.media3.common.Metadata$Entry[] r0 = r3.A01
            int r0 = r0.length
            if (r2 >= r0) goto L24
            com.facebook.ads.androidx.media3.common.Metadata$Entry[] r1 = r3.A01
            java.lang.Class<com.facebook.ads.androidx.media3.common.Metadata$Entry> r0 = com.facebook.ads.androidx.media3.common.Metadata.Entry.class
            java.lang.ClassLoader r0 = r0.getClassLoader()
            android.os.Parcelable r0 = r4.readParcelable(r0)
            com.facebook.ads.androidx.media3.common.Metadata$Entry r0 = (com.facebook.ads.androidx.media3.common.Metadata.Entry) r0
            r1[r2] = r0
            int r2 = r2 + 1
            goto Lc
        L24:
            long r0 = r4.readLong()
            r3.A00 = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.androidx.media3.common.Metadata.<init>(android.os.Parcel):void");
    }

    public Metadata(List<? extends Entry> entries) {
        this((Entry[]) entries.toArray(new Entry[0]));
    }

    public Metadata(Entry... entryArr) {
        this(-9223372036854775807L, entryArr);
    }

    public final int A02() {
        return this.A01.length;
    }

    public final Entry A03(int i) {
        return this.A01[i];
    }

    public final Metadata A04(Metadata metadata) {
        if (metadata == null) {
            return this;
        }
        return A05(metadata.A01);
    }

    public final Metadata A05(Entry... entryArr) {
        if (entryArr.length == 0) {
            return this;
        }
        return new Metadata(this.A00, (Entry[]) N1.A1K(this.A01, entryArr));
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            Class<?> cls = getClass();
            Class<?> cls2 = obj.getClass();
            if (A03[5].charAt(25) != '1') {
                throw new RuntimeException();
            }
            A03[5] = "RTksvh4Gzdljx18GvdZYnA3RX11NfxpK";
            if (cls == cls2) {
                Metadata metadata = (Metadata) obj;
                return Arrays.equals(this.A01, metadata.A01) && this.A00 == metadata.A00;
            }
        }
        return false;
    }

    public final int hashCode() {
        int result = Arrays.hashCode(this.A01);
        int i = result * 31;
        int result2 = AnonymousClass37.A00(this.A00);
        return i + result2;
    }

    public final String toString() {
        return A00(21, 8, 66) + Arrays.toString(this.A01) + (this.A00 == -9223372036854775807L ? A00(0, 0, 33) : A00(0, 21, 43) + this.A00);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.A01.length);
        for (Entry entry : this.A01) {
            parcel.writeParcelable(entry, 0);
        }
        parcel.writeLong(this.A00);
    }
}
