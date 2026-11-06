package com.facebook.ads.androidx.media3.extractor.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.redexgen.X.C1769Mk;
import com.facebook.ads.redexgen.X.C1777Ms;
import com.facebook.ads.redexgen.X.C2122aO;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new C2122aO();
    public final long A00;
    public final long A01;

    public TimeSignalCommand(long j, long j2) {
        this.A01 = j;
        this.A00 = j2;
    }

    public /* synthetic */ TimeSignalCommand(long j, long j2, C2122aO c2122aO) {
        this(j, j2);
    }

    public static long A00(C1769Mk c1769Mk, long j) {
        long jA0I = c1769Mk.A0I();
        if ((128 & jA0I) == 0) {
            return -9223372036854775807L;
        }
        long ptsTime = 1 & jA0I;
        long firstByte = c1769Mk.A0Q();
        return (((ptsTime << 32) | firstByte) + j) & 8589934591L;
    }

    public static TimeSignalCommand A01(C1769Mk c1769Mk, long j, C1777Ms c1777Ms) {
        long jA00 = A00(c1769Mk, j);
        return new TimeSignalCommand(jA00, c1777Ms.A06(jA00));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.A01);
        parcel.writeLong(this.A00);
    }
}
