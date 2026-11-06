package ads_mobile_sdk;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.os.ext.SdkExtensions;
import androidx.core.os.BuildCompat;
import com.ironsource.C3522b4;

/* JADX INFO: loaded from: classes.dex */
public final class dh1 extends bh1 {
    public int a = 0;
    public final Context b;
    public final String c;
    public u81 d;
    public ch1 e;

    public final f23 a() throws RemoteException {
        if (this.a != 2 || this.d == null || this.e == null) {
            throw new IllegalStateException("Service not connected. Please start a connection before using the service.");
        }
        Bundle bundle = new Bundle();
        bundle.putString(C3522b4.i.V, this.c);
        try {
            s81 s81Var = (s81) this.d;
            s81Var.getClass();
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.writeInterfaceToken(s81Var.b);
            int i = ly.$r8$clinit;
            parcelObtain.writeInt(1);
            bundle.writeToParcel(parcelObtain, 0);
            Parcel parcelA = s81Var.a(parcelObtain, 1);
            Parcelable parcelable = parcelA.readInt() == 0 ? null : (Parcelable) Bundle.CREATOR.createFromParcel(parcelA);
            parcelA.recycle();
            return new f23((Bundle) parcelable);
        } catch (RemoteException e) {
            gh1.b("RemoteException getting install referrer information");
            this.a = 0;
            throw e;
        }
    }

    public static String a(Context context) {
        if (BuildCompat.isAtLeastU() && SdkExtensions.getExtensionVersion(34) >= 8) {
            if (Process.isSdkSandbox()) {
                return dh1$$ExternalSyntheticApiModelOutline3.m(context.getSystemService(dh1$$ExternalSyntheticApiModelOutline2.m())).getClientPackageName();
            }
            return context.getPackageName();
        }
        return context.getPackageName();
    }

    public dh1(Context context) {
        this.b = context.getApplicationContext();
        this.c = a(context);
    }
}
