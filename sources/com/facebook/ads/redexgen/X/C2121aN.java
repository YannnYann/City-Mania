package com.facebook.ads.redexgen.X;

import android.os.Parcel;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2121aN {
    public static String[] A0B = {"TuWJi2cYsoT9dLii3npux0sZAy1jwC08", "eBFWvkTBVMtxqTmj6jG5SyAgPlI", "inierKVZuj4rSUavhHrLi14WvYj", "EQCV1o2WFIzNzDZKwXuuyyerWBD2I41v", "B7gJvdb5AbzKTDl5rGb812n4c7p", "tWnRqg1Vt6gw8C8JiPUc47txRTHcpVPV", "BpxNItbcjJjc0HwOpOMsLISsyRB4GAZw", "tza1ufjZfaVgjTRhu6xOUN"};
    public final int A00;
    public final int A01;
    public final int A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final List<C2120aM> A06;
    public final boolean A07;
    public final boolean A08;
    public final boolean A09;
    public final boolean A0A;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C2121aN A02(C1769Mk c1769Mk) {
        long jA0Q = c1769Mk.A0Q();
        boolean z = (c1769Mk.A0I() & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0;
        boolean z2 = false;
        boolean z3 = false;
        ArrayList arrayList = new ArrayList();
        int iA0M = 0;
        int iA0I = 0;
        int iA0I2 = 0;
        boolean z4 = false;
        long j = -9223372036854775807L;
        if (!z) {
            int iA0I3 = c1769Mk.A0I();
            z2 = (iA0I3 & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0;
            z3 = (iA0I3 & 64) != 0;
            int i = iA0I3 & 32;
            if (A0B[2].length() == 27) {
                A0B[6] = "yPbBo5TlAYvVAZsTQtkRlLZD09kTQCIb";
                boolean z5 = i != 0;
                jA0Q = z3 ? c1769Mk.A0Q() : -9223372036854775807L;
                if (!z3) {
                    int iA0I4 = c1769Mk.A0I();
                    arrayList = new ArrayList(iA0I4);
                    for (int i2 = 0; i2 < iA0I4; i2++) {
                        arrayList.add(new C2120aM(c1769Mk.A0I(), c1769Mk.A0Q(), null));
                    }
                }
                if (z5) {
                    long jA0I = c1769Mk.A0I();
                    z4 = (128 & jA0I) != 0;
                    long jA0Q2 = 1000 * (((1 & jA0I) << 32) | c1769Mk.A0Q());
                    String[] strArr = A0B;
                    if (strArr[4].length() == strArr[1].length()) {
                        A0B[6] = "3XRcy1Vew1SlJt9fmQEfcYY2rwVcqbzh";
                        j = jA0Q2 / 90;
                    }
                }
                iA0M = c1769Mk.A0M();
                iA0I = c1769Mk.A0I();
                iA0I2 = c1769Mk.A0I();
            }
            throw new RuntimeException();
        }
        if (A0B[7].length() != 22) {
            throw new RuntimeException();
        }
        A0B[6] = "giHFEu5da3Ixfww9pGn6bENrbqC0BS1p";
        return new C2121aN(jA0Q, z, z2, z3, arrayList, jA0Q, z4, j, iA0M, iA0I, iA0I2);
    }

    public C2121aN(long j, boolean z, boolean z2, boolean z3, List<C2120aM> list, long j2, boolean z4, long j3, int i, int i2, int i3) {
        this.A04 = j;
        this.A0A = z;
        this.A08 = z2;
        this.A09 = z3;
        this.A06 = Collections.unmodifiableList(list);
        this.A05 = j2;
        this.A07 = z4;
        this.A03 = j3;
        this.A02 = i;
        this.A00 = i2;
        this.A01 = i3;
    }

    public C2121aN(Parcel parcel) {
        this.A04 = parcel.readLong();
        this.A0A = parcel.readByte() == 1;
        this.A08 = parcel.readByte() == 1;
        this.A09 = parcel.readByte() == 1;
        int i = parcel.readInt();
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(C2120aM.A00(parcel));
        }
        this.A06 = Collections.unmodifiableList(arrayList);
        this.A05 = parcel.readLong();
        int componentSpliceListLength = parcel.readByte();
        this.A07 = componentSpliceListLength == 1;
        this.A03 = parcel.readLong();
        int componentSpliceListLength2 = parcel.readInt();
        this.A02 = componentSpliceListLength2;
        int componentSpliceListLength3 = parcel.readInt();
        this.A00 = componentSpliceListLength3;
        int componentSpliceListLength4 = parcel.readInt();
        this.A01 = componentSpliceListLength4;
    }

    public static C2121aN A00(Parcel parcel) {
        return new C2121aN(parcel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04(Parcel parcel) {
        parcel.writeLong(this.A04);
        parcel.writeByte(this.A0A ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.A08 ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.A09 ? (byte) 1 : (byte) 0);
        int size = this.A06.size();
        parcel.writeInt(size);
        for (int i = 0; i < size; i++) {
            this.A06.get(i).A02(parcel);
        }
        parcel.writeLong(this.A05);
        parcel.writeByte(this.A07 ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.A03);
        parcel.writeInt(this.A02);
        parcel.writeInt(this.A00);
        parcel.writeInt(this.A01);
    }
}
