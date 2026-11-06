package ads_mobile_sdk;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.webkit.URLUtil;
import com.google.android.libraries.ads.mobile.sdk.R$string;
import com.google.common.base.Splitter;
import com.google.common.io.ByteStreams;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class mz1 {
    public static final Regex i = new Regex("[^/\\\\\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$");
    public final an0 a;
    public final ix1 b;
    public final CoroutineScope c;
    public final CoroutineScope d;
    public final e01 e;
    public final f0 f;
    public final g83 g;
    public final ks3 h;

    public mz1(an0 deviceProperties, ix1 mraidAfmaDispatcher, CoroutineScope uiScope, CoroutineScope backgroundScope, e01 httpClient, f0 activityTracker, g83 rootTraceCreator, ks3 traceMetaSet) {
        Intrinsics.checkNotNullParameter(deviceProperties, "deviceProperties");
        Intrinsics.checkNotNullParameter(mraidAfmaDispatcher, "mraidAfmaDispatcher");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        this.a = deviceProperties;
        this.b = mraidAfmaDispatcher;
        this.c = uiScope;
        this.d = backgroundScope;
        this.e = httpClient;
        this.f = activityTracker;
        this.g = rootTraceCreator;
        this.h = traceMetaSet;
    }

    public final void a(String str, r31 r31Var, boolean z) {
        Splitter splitter = f01.a;
        f01.c("Store picture error: " + str, null);
        if (z) {
            xs3.a(str, null, 6);
        }
        BuildersKt__Builders_commonKt.launch$default(this.c, null, null, new iz1(this, r31Var, str, null), 3, null);
    }

    public final Unit a(r31 r31Var, Map map) {
        return a(this, map, r31Var);
    }

    public static /* synthetic */ Unit a(mz1 mz1Var, Map map, r31 r31Var) {
        String string;
        String string2;
        String string3;
        String string4;
        if (!mz1Var.a.i()) {
            mz1Var.a("This feature is not available on the device.", r31Var, true);
            return Unit.INSTANCE;
        }
        Activity activityG = mz1Var.f.g();
        if (activityG == null) {
            mz1Var.a("Activity context is required to show store picture event alert.", r31Var, true);
            return Unit.INSTANCE;
        }
        String str = (String) map.get("iurl");
        if (str != null && str.length() != 0) {
            if (!URLUtil.isValidUrl(str)) {
                mz1Var.a("Invalid image url: " + str + ".", r31Var, true);
                return Unit.INSTANCE;
            }
            String lastPathSegment = Uri.parse(str).getLastPathSegment();
            if (lastPathSegment == null) {
                mz1Var.a("No image file name in " + str, r31Var, true);
                return Unit.INSTANCE;
            }
            MatchResult matchResultMatchEntire = i.matchEntire(lastPathSegment);
            if (matchResultMatchEntire != null && matchResultMatchEntire.getGroupValues().size() == 3) {
                String str2 = matchResultMatchEntire.getGroupValues().get(2);
                Resources resources = activityG.getResources();
                if (resources == null || (string = resources.getString(R$string.mraid_allow_store_picture)) == null) {
                    string = "Allow Ad to store image in Picture gallery?";
                }
                String str3 = string;
                if (resources == null || (string2 = resources.getString(R$string.mraid_save_image)) == null) {
                    string2 = "Save image";
                }
                if (resources == null || (string3 = resources.getString(R$string.mraid_alert_accept)) == null) {
                    string3 = "Accept";
                }
                if (resources == null || (string4 = resources.getString(R$string.mraid_alert_decline)) == null) {
                    string4 = "Decline";
                }
                BuildersKt__Builders_commonKt.launch$default(mz1Var.c, null, null, new jz1(activityG, string2, str3, string3, string4, mz1Var, str, lastPathSegment, str2, r31Var, null), 3, null);
                return Unit.INSTANCE;
            }
            mz1Var.a("Invalid image file name: " + lastPathSegment, r31Var, true);
            return Unit.INSTANCE;
        }
        mz1Var.a("Image url cannot be empty.", r31Var, true);
        return Unit.INSTANCE;
    }

    public final void a(ByteArrayInputStream byteArrayInputStream, String str, String str2, Context context, r31 r31Var) throws IOException {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_display_name", str);
        contentValues.put("mime_type", "image/" + str2);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            contentValues.put("is_pending", (Integer) 1);
        }
        ContentResolver contentResolver = context.getContentResolver();
        Uri uriInsert = contentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
        if (uriInsert == null) {
            a("Unable to store picture", r31Var, true);
            return;
        }
        ByteStreams.copy(byteArrayInputStream, w93.a(context, uriInsert, v93.d));
        if (i2 >= 30) {
            contentValues.clear();
            contentValues.put("is_pending", (Integer) 0);
            contentResolver.update(uriInsert, contentValues, null, null);
        }
        Splitter splitter = f01.a;
        f01.a(new hz1(str, uriInsert));
    }
}
