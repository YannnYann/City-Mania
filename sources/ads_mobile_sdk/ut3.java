package ads_mobile_sdk;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.BaseGmsClient;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ut3 extends BaseGmsClient {
    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final int getMinApkVersion() {
        return 243300000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getServiceDescriptor() {
        return "com.google.android.gms.ads.internal.request.IAdRequestService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getStartServiceAction() {
        return "com.google.android.gms.ads.service.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final IInterface createServiceInterface(IBinder binder) {
        Intrinsics.checkNotNullParameter(binder, "binder");
        int i = n81.$r8$clinit;
        if (binder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = binder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
        return iInterfaceQueryLocalInterface instanceof o81 ? (o81) iInterfaceQueryLocalInterface : new m81(binder);
    }

    public ut3(wt3 wt3Var, Context context, Looper looper) {
        super(context, looper, 8, wt3Var, wt3Var, null);
    }
}
