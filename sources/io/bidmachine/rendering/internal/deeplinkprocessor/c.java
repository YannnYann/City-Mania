package io.bidmachine.rendering.internal.deeplinkprocessor;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.ironsource.C3670j8;
import io.bidmachine.util.Executable;
import io.bidmachine.util.IntentUtilsKt;
import io.bidmachine.util.ProcessUrlResult;
import io.bidmachine.util.SystemComponent;
import io.bidmachine.util.UiUtils;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class c implements b {
    @Override // io.bidmachine.rendering.internal.deeplinkprocessor.b
    public boolean a(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        try {
            String scheme = uri.getScheme();
            if (scheme != null && scheme.hashCode() == -1081306052 && scheme.equals("market")) {
                if (Intrinsics.areEqual(uri.getHost(), "details") && uri.getQueryParameterNames().contains(C3670j8.x)) {
                    return true;
                }
            } else if (Intrinsics.areEqual(uri.getHost(), "play.google.com") && uri.getQueryParameterNames().contains(C3670j8.x) && (Intrinsics.areEqual(uri.getPath(), "/d") || Intrinsics.areEqual(uri.getPath(), "/store/apps/details"))) {
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    @Override // io.bidmachine.rendering.internal.deeplinkprocessor.b
    public void a(Context context, Uri uri, Executable executable) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uri, "uri");
        UiUtils.INSTANCE.onUiThreadWithArgSafely(a(context, d.a(uri)), executable);
    }

    public final ProcessUrlResult a(Context context, Uri uri) {
        Intent intent;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uri, "uri");
        try {
            intent = IntentUtilsKt.toIntent(uri, false);
            intent.setPackage("com.android.vending");
            intent.putExtra("overlay", true);
            intent.putExtra("callerId", context.getPackageName());
        } catch (Throwable unused) {
        }
        if (intent.resolveActivity(context.getPackageManager()) != null) {
            if (context instanceof Activity) {
                ((Activity) context).startActivityForResult(intent, 0);
            } else {
                context.startActivity(intent);
            }
            return new ProcessUrlResult(true, SystemComponent.InlineInstall);
        }
        Unit unit = Unit.INSTANCE;
        return ProcessUrlResult.Companion.getFAIL();
    }
}
