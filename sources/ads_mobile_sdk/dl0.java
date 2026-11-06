package ads_mobile_sdk;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class dl0 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<dl0> CREATOR = new el0();
    public final String a;

    public dl0(String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        this.a = packageName;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof dl0) && Intrinsics.areEqual(this.a, ((dl0) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "DecagonRequestParcel(packageName=" + this.a + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int i) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(dest);
        SafeParcelWriter.writeString(dest, 1, this.a, false);
        SafeParcelWriter.finishObjectHeader(dest, iBeginObjectHeader);
    }
}
