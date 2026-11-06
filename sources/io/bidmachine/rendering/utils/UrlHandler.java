package io.bidmachine.rendering.utils;

import android.content.Context;
import android.net.Uri;
import io.bidmachine.iab.mraid.MraidNativeFeatureUrlParser;
import io.bidmachine.rendering.Rendering;
import io.bidmachine.rendering.internal.deeplinkprocessor.a;
import io.bidmachine.rendering.internal.deeplinkprocessor.b;
import io.bidmachine.rendering.internal.deeplinkprocessor.e;
import io.bidmachine.rendering.internal.deeplinkprocessor.f;
import io.bidmachine.rendering.internal.o;
import io.bidmachine.rendering.internal.x;
import io.bidmachine.rendering.utils.NetworkRequest;
import io.bidmachine.util.Executable;
import io.bidmachine.util.ProcessUrlResult;
import io.bidmachine.util.UrlUtilsKt;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class UrlHandler {
    public static final UrlHandler INSTANCE = new UrlHandler();
    public static final o a;
    public static final b b;
    public static final b c;
    public static final List d;

    static {
        o oVar = new o();
        a = oVar;
        MraidNativeFeatureUrlParser mraidNativeFeatureUrlParser = new MraidNativeFeatureUrlParser();
        e eVar = new e(mraidNativeFeatureUrlParser, oVar);
        b = eVar;
        f fVar = new f(mraidNativeFeatureUrlParser, new x());
        c = fVar;
        d = CollectionsKt__CollectionsKt.listOf((Object[]) new b[]{eVar, fVar, new a()});
    }

    public static final void openBrowser$bidmachine_android_sdk_bb_3_8_0(Context context, Uri uri, Executable<ProcessUrlResult> executable) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uri, "uri");
        a.a(context, uri, executable);
    }

    public static final void openCalendar(Context context, String url, Executable<ProcessUrlResult> executable) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        b.a(context, url, executable);
    }

    public static final void openUrl(Context context, String url, Executable<ProcessUrlResult> executable) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        openUrl(context, UrlUtilsKt.parseUri(url), executable);
    }

    public static final void storePicture(Context context, String url, Executable<ProcessUrlResult> executable) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        c.a(context, url, executable);
    }

    public static final void track$bidmachine_android_sdk_bb_3_8_0(String str) {
        String validUrl = io.bidmachine.util.Utils.getValidUrl(str);
        if (validUrl == null || validUrl.length() == 0) {
            return;
        }
        new NetworkRequest.Builder(validUrl, NetworkRequest.Method.Get).setUserAgent(Rendering.getUserAgent()).send();
    }

    public static final void openUrl(Context context, Uri uri, Executable<ProcessUrlResult> executable) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uri, "uri");
        for (b bVar : d) {
            if (bVar.a(uri)) {
                bVar.a(context, uri, executable);
                return;
            }
        }
        openBrowser$bidmachine_android_sdk_bb_3_8_0(context, uri, executable);
    }
}
