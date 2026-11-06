package ads_mobile_sdk;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import androidx.browser.customtabs.CustomTabsClient;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class um0 extends Lambda implements Function0 {
    public final /* synthetic */ an0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public um0(an0 an0Var) {
        super(0);
        this.a = an0Var;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        PackageManager packageManager = this.a.c.getPackageManager();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://"));
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        Intrinsics.checkNotNullExpressionValue(listQueryIntentActivities, "queryIntentActivities(...)");
        if (resolveInfoResolveActivity != null) {
            Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
            while (it.hasNext()) {
                if (resolveInfoResolveActivity.activityInfo.name.equals(it.next().activityInfo.name)) {
                    return Boolean.valueOf(resolveInfoResolveActivity.activityInfo.packageName.equals(CustomTabsClient.getPackageName(this.a.c, null)));
                }
            }
        }
        return Boolean.FALSE;
    }
}
