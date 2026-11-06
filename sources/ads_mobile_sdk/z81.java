package ads_mobile_sdk;

import android.os.BadParcelableException;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class z81 extends hs {
    @Override // ads_mobile_sdk.hs
    public final boolean a(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            String trustlessToken = parcel.readString();
            Parcelable.Creator<dl0> creator = dl0.CREATOR;
            int i2 = ly.$r8$clinit;
            dl0 decagonRequestParcel = (dl0) (parcel.readInt() != 0 ? creator.createFromParcel(parcel) : null);
            int iDataAvail = parcel.dataAvail();
            if (iDataAvail > 0) {
                throw new BadParcelableException(uj.a("Parcel data not fully consumed, unread size: ", iDataAvail));
            }
            wt3 wt3Var = (wt3) this;
            Intrinsics.checkNotNullParameter(trustlessToken, "trustlessToken");
            Intrinsics.checkNotNullParameter(decagonRequestParcel, "decagonRequestParcel");
            q01 q01Var = new q01(trustlessToken);
            if (!wt3Var.f.getAndSet(true)) {
                wt3Var.h.complete(q01Var);
            }
        } else {
            if (i != 2) {
                return false;
            }
            Parcelable.Creator<oq0> creator2 = oq0.CREATOR;
            int i3 = ly.$r8$clinit;
            oq0 oq0Var = (oq0) (parcel.readInt() != 0 ? creator2.createFromParcel(parcel) : null);
            int iDataAvail2 = parcel.dataAvail();
            if (iDataAvail2 > 0) {
                throw new BadParcelableException(uj.a("Parcel data not fully consumed, unread size: ", iDataAvail2));
            }
            ((wt3) this).a(oq0Var);
        }
        parcel2.writeNoException();
        return true;
    }

    public z81() {
        super("com.google.android.gms.ads.internal.request.ITrustlessTokenListener");
    }
}
