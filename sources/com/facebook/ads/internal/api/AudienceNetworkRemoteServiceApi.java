package com.facebook.ads.internal.api;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.IBinder;
import android.os.Message;
import androidx.annotation.Keep;
import com.facebook.infer.annotation.Nullsafe;
import com.facebook.proguard.annotations.DoNotStripAny;

/* JADX INFO: loaded from: classes3.dex */
@Keep
@DoNotStripAny
@Nullsafe(Nullsafe.Mode.LOCAL)
public interface AudienceNetworkRemoteServiceApi {

    @Keep
    @DoNotStripAny
    public interface HorizonWorldUrlLauncher {
        boolean launchUrl(Context context, Uri uri);
    }

    @Keep
    @DoNotStripAny
    public interface MessageHandler {
        boolean handleMessage(Message message);
    }

    @Keep
    @DoNotStripAny
    public interface PackageVerifier {
        String verifyPackage(Context context, Message message, String str);
    }

    IBinder onBind(Intent intent);

    void onCreate();

    void onDestroy();

    void setHorizonWorldUrlLauncher(HorizonWorldUrlLauncher horizonWorldUrlLauncher);

    void setMessageHandler(MessageHandler messageHandler);

    void setPackageVerifier(PackageVerifier packageVerifier);
}
