package ads_mobile_sdk;

import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public abstract class y81 extends hs {
    @Override // ads_mobile_sdk.hs
    public final boolean a(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            return false;
        }
        Parcelable.Creator creator = Bundle.CREATOR;
        int i2 = ly.$r8$clinit;
        int iDataAvail = parcel.dataAvail();
        if (iDataAvail > 0) {
            throw new BadParcelableException(uj.a("Parcel data not fully consumed, unread size: ", iDataAvail));
        }
        iu2 iu2Var = ((hu2) this).a;
        if (iu2Var.a != null) {
            iu2.c.a("detach", new Object[0]);
            lc3 lc3Var = iu2Var.a;
            lc3Var.getClass();
            lc3Var.b(new gc3(lc3Var));
        }
        return true;
    }

    public y81() {
        super("com.google.android.play.core.prewarm.protocol.IPrewarmServiceCallback");
    }
}
