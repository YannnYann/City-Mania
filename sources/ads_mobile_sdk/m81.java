package ads_mobile_sdk;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class m81 extends fs implements o81 {
    public final void a(dl0 dl0Var, wt3 wt3Var) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.b);
        int i = ly.$r8$clinit;
        parcelObtain.writeInt(1);
        dl0Var.writeToParcel(parcelObtain, 0);
        if (wt3Var == null) {
            parcelObtain.writeStrongBinder(null);
        } else {
            parcelObtain.writeStrongBinder(wt3Var);
        }
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            this.a.transact(8, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    public m81(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }
}
