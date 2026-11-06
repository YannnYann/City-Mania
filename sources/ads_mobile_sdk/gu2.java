package ads_mobile_sdk;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class gu2 extends x93 {
    public final /* synthetic */ mq2 b;
    public final /* synthetic */ TaskCompletionSource c;
    public final /* synthetic */ iu2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gu2(iu2 iu2Var, TaskCompletionSource taskCompletionSource, mq2 mq2Var, TaskCompletionSource taskCompletionSource2) {
        super(taskCompletionSource);
        this.d = iu2Var;
        this.b = mq2Var;
        this.c = taskCompletionSource2;
    }

    @Override // ads_mobile_sdk.x93
    public final void a() {
        try {
            iu2 iu2Var = this.d;
            x81 x81Var = (x81) iu2Var.a.n;
            String str = iu2Var.b;
            ArrayList arrayListA = iu2.a(this.b);
            Bundle bundle = new Bundle();
            hu2 hu2Var = new hu2(this.d);
            v81 v81Var = (v81) x81Var;
            v81Var.getClass();
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.writeInterfaceToken(v81Var.b);
            parcelObtain.writeString(str);
            parcelObtain.writeTypedList(arrayListA);
            int i = ly.$r8$clinit;
            parcelObtain.writeInt(1);
            bundle.writeToParcel(parcelObtain, 0);
            parcelObtain.writeStrongBinder(hu2Var);
            try {
                v81Var.a.transact(1, parcelObtain, null, 1);
            } finally {
                parcelObtain.recycle();
            }
        } catch (RemoteException e) {
            pt1 pt1Var = iu2.c;
            Object[] objArr = {this.d.b};
            pt1Var.getClass();
            if (Log.isLoggable("PlayCore", 6)) {
                Log.e("PlayCore", pt1.a(pt1Var.a, "prewarm(%s)", objArr), e);
            }
            this.c.trySetException(new RuntimeException(e));
        }
    }
}
