package ads_mobile_sdk;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes.dex */
public final class rz0 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<rz0> CREATOR = new sz0();
    public final int a;
    public fh b = null;
    public byte[] c;

    public rz0(byte[] bArr, int i) {
        this.a = i;
        this.c = bArr;
        a();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.a);
        byte[] bArrC = this.c;
        if (bArrC == null) {
            bArrC = this.b.c();
        }
        SafeParcelWriter.writeByteArray(parcel, 2, bArrC, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final void a() {
        fh fhVar = this.b;
        if (fhVar != null || this.c == null) {
            if (fhVar == null || this.c != null) {
                if (fhVar != null && this.c != null) {
                    throw new IllegalStateException("Invalid internal representation - full");
                }
                if (fhVar == null && this.c == null) {
                    throw new IllegalStateException("Invalid internal representation - empty");
                }
                throw new IllegalStateException("Impossible");
            }
        }
    }
}
