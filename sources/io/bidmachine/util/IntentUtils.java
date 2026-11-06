package io.bidmachine.util;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IntentUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class IntentUtils {
    public static final IntentUtils INSTANCE = new IntentUtils();

    public static final Intent urlToIntent(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Uri uri = Uri.parse(url);
        Intrinsics.checkNotNullExpressionValue(uri, "parse(url)");
        return IntentUtilsKt.toIntent$default(uri, false, 1, null);
    }

    public static final ComponentName findStoreComponentName(List<? extends ResolveInfo> resolveInfoList) {
        Object next;
        Intrinsics.checkNotNullParameter(resolveInfoList, "resolveInfoList");
        Iterator<T> it = resolveInfoList.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((ResolveInfo) next).activityInfo.packageName, "com.android.vending")) {
                break;
            }
        }
        ResolveInfo resolveInfo = (ResolveInfo) next;
        if (resolveInfo == null) {
            return null;
        }
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        return new ComponentName(activityInfo.packageName, activityInfo.name);
    }
}
