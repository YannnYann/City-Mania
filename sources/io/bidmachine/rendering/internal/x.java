package io.bidmachine.rendering.internal;

import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import io.bidmachine.util.Executable;
import io.bidmachine.util.ProcessUrlResult;
import io.bidmachine.util.UiUtils;
import io.bidmachine.util.Utils;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class x {

    public static final class a extends BroadcastReceiver {
        public final /* synthetic */ Executable a;

        public a(Executable executable) {
            this.a = executable;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(intent, "intent");
            context.unregisterReceiver(this);
            UiUtils.INSTANCE.onUiThreadWithArgSafely(ProcessUrlResult.Companion.getSUCCESS(), this.a);
        }
    }

    public final void a(Context context, Uri uri, Executable executable) {
        long jA;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uri, "uri");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        try {
            jA = a(applicationContext, uri);
        } catch (Exception e) {
            t.b(e);
            jA = -1;
        }
        if (jA == -1) {
            UiUtils.INSTANCE.onUiThreadWithArgSafely(ProcessUrlResult.Companion.getFAIL(), executable);
        } else {
            Utils.registerBroadcastReceiver(new a(executable), applicationContext, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
        }
    }

    public final long a(Context context, Uri uri) {
        DownloadManager downloadManager = Utils.getDownloadManager(context);
        if (downloadManager == null) {
            return -1L;
        }
        DownloadManager.Request notificationVisibility = new DownloadManager.Request(uri).setNotificationVisibility(1);
        Intrinsics.checkNotNullExpressionValue(notificationVisibility, "Request(uri)\n           …VISIBLE_NOTIFY_COMPLETED)");
        return downloadManager.enqueue(notificationVisibility);
    }
}
