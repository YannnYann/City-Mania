package ads_mobile_sdk;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class oq0 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<oq0> CREATOR = new pq0();
    public final String a;
    public final int b;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oq0)) {
            return false;
        }
        oq0 oq0Var = (oq0) obj;
        return Intrinsics.areEqual(this.a, oq0Var.a) && this.b == oq0Var.b;
    }

    public final int hashCode() {
        String str = this.a;
        return Integer.hashCode(this.b) + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return "ExceptionParcel(message=" + this.a + ", errorCode=" + this.b + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int i) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(dest);
        SafeParcelWriter.writeString(dest, 1, this.a, false);
        SafeParcelWriter.writeInt(dest, 2, this.b);
        SafeParcelWriter.finishObjectHeader(dest, iBeginObjectHeader);
    }

    public final String b() {
        return this.a;
    }

    public final int a() {
        return this.b;
    }

    public oq0(String str, int i) {
        this.a = str;
        this.b = i;
    }
}
