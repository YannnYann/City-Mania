package io.bidmachine.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import io.bidmachine.util.network.NetworkUtils;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executors;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: IntentUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class IntentUtilsKt {
    public static final void findEndpointAndOpenUrl(Context context, String str, final Executable<ProcessUrlResult> executable) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        if (str == null || str.length() == 0) {
            if (executable != null) {
                executable.execute(ProcessUrlResult.Companion.getFAIL());
                return;
            }
            return;
        }
        final Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
        final String validUrl = Utils.getValidUrl(str);
        if (validUrl == null || validUrl.length() == 0) {
            if (executable != null) {
                executable.execute(ProcessUrlResult.Companion.getFAIL());
                return;
            }
            return;
        }
        Set<String> setExtractBmCustomParams = extractBmCustomParams(validUrl);
        if (setExtractBmCustomParams.contains("lraw")) {
            if (setExtractBmCustomParams.contains("rcp")) {
                str = removeBmCustomParams(str);
            }
            openRawUrl(context, str, executable);
        } else if (Utils.isHttpUrl(validUrl)) {
            Executors.newSingleThreadExecutor().execute(new Runnable() { // from class: io.bidmachine.util.IntentUtilsKt$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    IntentUtilsKt.findEndpointAndOpenUrl$lambda$0(applicationContext, validUrl, executable);
                }
            });
        } else {
            openUrlWithPostback(applicationContext, validUrl, executable);
        }
    }

    public static final void findEndpointAndOpenUrl$lambda$0(Context applicationContext, String str, Executable executable) {
        Intrinsics.checkNotNullParameter(applicationContext, "$applicationContext");
        openUrlWithPostback(applicationContext, NetworkUtils.findEndpoint$default(str, 0, 2, null), executable);
    }

    public static final ProcessUrlResult openUri(Context context, Uri uri) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(uri, "uri");
        return openUrl(context, uri.toString());
    }

    public static final ProcessUrlResult openUrl(Context context, String str) {
        ProcessUrlResult success;
        Intrinsics.checkNotNullParameter(context, "<this>");
        if (str == null || str.length() == 0) {
            return ProcessUrlResult.Companion.getFAIL();
        }
        try {
            Intent intentUrlToIntent = IntentUtils.urlToIntent(str);
            if (!findAndSetIntentComponent(context, intentUrlToIntent)) {
                String strDecode = URLDecoder.decode(str, Charsets.UTF_8.name());
                Intrinsics.checkNotNullExpressionValue(strDecode, "decode(url, Charsets.UTF_8.name())");
                intentUrlToIntent = IntentUtils.urlToIntent(strDecode);
                findAndSetIntentComponent(context, intentUrlToIntent);
            }
            context.startActivity(intentUrlToIntent);
            success = ProcessUrlResult.Companion.getSUCCESS();
        } catch (Throwable unused) {
            success = null;
        }
        return success == null ? ProcessUrlResult.Companion.getFAIL() : success;
    }

    public static final void openUrlWithPostback(Context context, String str, Executable<ProcessUrlResult> executable) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        UiUtils.INSTANCE.onUiThreadWithArgSafely(openUrl(context, str), executable);
    }

    public static /* synthetic */ Intent toIntent$default(Uri uri, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return toIntent(uri, z);
    }

    public static final Intent toIntent(Uri uri, boolean z) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        if (z) {
            intent.setFlags(268435456);
        }
        return intent;
    }

    public static final Intent toChooserIntent(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "<this>");
        Intent flags = Intent.createChooser(intent, "").setFlags(268435456);
        Intrinsics.checkNotNullExpressionValue(flags, "createChooser(this, \"\")\n…t.FLAG_ACTIVITY_NEW_TASK)");
        return flags;
    }

    public static final boolean findAndSetIntentComponent(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(intent, "intent");
        ComponentName componentNameFindComponentName = findComponentName(context, intent);
        if (componentNameFindComponentName == null) {
            return false;
        }
        intent.setComponent(componentNameFindComponentName);
        return true;
    }

    public static final ComponentName findComponentName(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(intent, "intent");
        List<ResolveInfo> listFindResolveInfoList = findResolveInfoList(context, intent);
        if (listFindResolveInfoList.isEmpty()) {
            return null;
        }
        ComponentName componentNameFindStoreComponentName = IntentUtils.findStoreComponentName(listFindResolveInfoList);
        return componentNameFindStoreComponentName == null ? new ComponentName(listFindResolveInfoList.get(0).activityInfo.packageName, listFindResolveInfoList.get(0).activityInfo.name) : componentNameFindStoreComponentName;
    }

    public static final List<ResolveInfo> findResolveInfoList(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(intent, "intent");
        List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        Intrinsics.checkNotNullExpressionValue(listQueryIntentActivities, "packageManager.queryIntentActivities(intent, 0)");
        return listQueryIntentActivities;
    }

    public static final void openRawUrl(Context context, String urlString, Executable<ProcessUrlResult> executable) {
        Object objM2760constructorimpl;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(urlString, "urlString");
        Uri uriSafely = UrlUtilsKt.parseUriSafely(urlString);
        if (uriSafely == null) {
            if (executable != null) {
                executable.execute(ProcessUrlResult.Companion.getFAIL());
                return;
            }
            return;
        }
        try {
            Result.Companion companion = Result.Companion;
            Unit unit = null;
            context.startActivity(toIntent$default(uriSafely, false, 1, null));
            if (executable != null) {
                executable.execute(ProcessUrlResult.Companion.getSUCCESS());
                unit = Unit.INSTANCE;
            }
            objM2760constructorimpl = Result.m2760constructorimpl(unit);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m2763exceptionOrNullimpl(objM2760constructorimpl) == null || executable == null) {
            return;
        }
        executable.execute(ProcessUrlResult.Companion.getFAIL());
    }

    public static final Set<String> extractBmCustomParams(String urlString) {
        Intrinsics.checkNotNullParameter(urlString, "urlString");
        Uri uriSafely = UrlUtilsKt.parseUriSafely(urlString);
        if (uriSafely == null) {
            return SetsKt__SetsKt.emptySet();
        }
        String queryParameter = uriSafely.getQueryParameter("bmcp");
        if (queryParameter == null) {
            queryParameter = "";
        }
        List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) queryParameter, new String[]{"_"}, false, 0, 6, (Object) null);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listSplit$default) {
            if (!StringsKt__StringsKt.isBlank((String) obj)) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public static final String removeBmCustomParams(String urlString) {
        Intrinsics.checkNotNullParameter(urlString, "urlString");
        Uri uriSafely = UrlUtilsKt.parseUriSafely(urlString);
        if (uriSafely == null) {
            return urlString;
        }
        String string = UrlUtilsKt.removeQueryParameters(uriSafely, "bmcp").toString();
        Intrinsics.checkNotNullExpressionValue(string, "uri.removeQueryParameter…CUSTOM_PARAMS).toString()");
        return string;
    }
}
