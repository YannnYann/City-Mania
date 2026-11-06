package ads_mobile_sdk;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.vungle.ads.internal.protos.Sdk;

/* JADX INFO: loaded from: classes.dex */
public abstract class zr extends BaseGmsClient {
    public zr(Context context, Looper looper, BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        super(context, looper, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, baseConnectionCallbacks, baseOnConnectionFailedListener, null);
    }
}
