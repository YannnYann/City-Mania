package ads_mobile_sdk;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public final class kz0 implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    public final lz0 a;
    public final String b;
    public final String c;
    public final yn d;
    public final int e = 1;
    public final LinkedBlockingQueue f;
    public final HandlerThread g;
    public final x9 h;
    public final long i;

    public kz0(Context context, yn ynVar, String str, String str2, x9 x9Var) {
        this.b = str;
        this.d = ynVar;
        this.c = str2;
        this.h = x9Var;
        HandlerThread handlerThread = new HandlerThread("GassDGClient");
        this.g = handlerThread;
        handlerThread.start();
        this.i = System.currentTimeMillis();
        this.a = new lz0(context, handlerThread.getLooper(), this, this, 19621000);
        this.f = new LinkedBlockingQueue();
        a();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        r81 r81Var;
        lz0 lz0Var;
        try {
            r81Var = (r81) this.a.getService();
        } catch (DeadObjectException | IllegalStateException unused) {
            r81Var = null;
        }
        if (r81Var != null) {
            try {
                kv2 kv2Var = new kv2(1, this.e, this.d.a, this.b, this.c);
                p81 p81Var = (p81) r81Var;
                Parcel parcelObtain = Parcel.obtain();
                parcelObtain.writeInterfaceToken(p81Var.b);
                int i = ly.$r8$clinit;
                parcelObtain.writeInt(1);
                kv2Var.writeToParcel(parcelObtain, 0);
                Parcel parcelA = p81Var.a(parcelObtain, 3);
                mv2 mv2VarCreateFromParcel = parcelA.readInt() == 0 ? null : mv2.CREATOR.createFromParcel(parcelA);
                parcelA.recycle();
                a(IronSourceConstants.errorCode_internal, this.i, null);
                this.f.put(mv2VarCreateFromParcel);
                lz0Var = this.a;
            } catch (Throwable th) {
                try {
                    a(2010, this.i, new Exception(th));
                } finally {
                    lz0 lz0Var2 = this.a;
                    if (lz0Var2 != null && (lz0Var2.isConnected() || this.a.isConnecting())) {
                        this.a.disconnect();
                    }
                    this.g.quit();
                }
            }
            if (lz0Var != null && (lz0Var.isConnected() || this.a.isConnecting())) {
            }
        }
    }

    public final void a() {
        this.a.checkAvailabilityAndConnect();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        try {
            a(4011, this.i, null);
            this.f.put(new mv2(null, 1, 1));
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            a(4012, this.i, null);
            this.f.put(new mv2(null, 1, 1));
        } catch (InterruptedException unused) {
        }
    }

    public final void a(int i, long j, Exception exc) {
        x9 x9Var = this.h;
        if (x9Var != null) {
            x9Var.a(i, System.currentTimeMillis() - j, exc);
        }
    }
}
