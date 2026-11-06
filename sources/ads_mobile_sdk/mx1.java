package ads_mobile_sdk;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import com.google.android.libraries.ads.mobile.sdk.R$string;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class mx1 {
    public final an0 a;
    public final ix1 b;
    public final o21 c;
    public final CoroutineScope d;
    public final f0 e;

    public mx1(an0 deviceProperties, ix1 mraidAfmaDispatcher, o21 gmaUtil, CoroutineScope uiScope, f0 activityTracker) {
        Intrinsics.checkNotNullParameter(deviceProperties, "deviceProperties");
        Intrinsics.checkNotNullParameter(mraidAfmaDispatcher, "mraidAfmaDispatcher");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        this.a = deviceProperties;
        this.b = mraidAfmaDispatcher;
        this.c = gmaUtil;
        this.d = uiScope;
        this.e = activityTracker;
    }

    public final Unit a(r31 r31Var, Map map) {
        String string;
        String string2;
        String string3;
        String string4;
        Activity activityG = this.e.g();
        if (activityG == null) {
            BuildersKt__Builders_commonKt.launch$default(this.d, null, null, new kx1(this, r31Var, "Activity context is required to show calendar event alert.", null), 3, null);
            return Unit.INSTANCE;
        }
        an0 an0Var = this.a;
        an0Var.getClass();
        Intent type = new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event");
        Intrinsics.checkNotNullExpressionValue(type, "setType(...)");
        if (!an0Var.a(type)) {
            BuildersKt__Builders_commonKt.launch$default(this.d, null, null, new kx1(this, r31Var, "This feature is not available on the device.", null), 3, null);
            return Unit.INSTANCE;
        }
        String str = (String) map.get("start_ticks");
        Long longOrNull = str != null ? StringsKt__StringNumberConversionsKt.toLongOrNull(str) : null;
        String str2 = (String) map.get("end_ticks");
        Long longOrNull2 = str2 != null ? StringsKt__StringNumberConversionsKt.toLongOrNull(str2) : null;
        String str3 = (String) map.get("description");
        String str4 = str3 == null ? "" : str3;
        String str5 = (String) map.get("summary");
        String str6 = str5 == null ? "" : str5;
        String str7 = (String) map.get("location");
        String str8 = str7 == null ? "" : str7;
        Resources resources = activityG.getResources();
        if (resources == null || (string = resources.getString(R$string.mraid_create_calendar_event)) == null) {
            string = "Create calendar event";
        }
        if (resources == null || (string2 = resources.getString(R$string.mraid_allow_calendar_event)) == null) {
            string2 = "Allow Ad to create a calendar event?";
        }
        if (resources == null || (string3 = resources.getString(R$string.mraid_alert_accept)) == null) {
            string3 = "Accept";
        }
        if (resources == null || (string4 = resources.getString(R$string.mraid_alert_decline)) == null) {
            string4 = "Decline";
        }
        BuildersKt__Builders_commonKt.launch$default(this.d, null, null, new lx1(activityG, string, string2, string3, string4, str4, str8, str6, longOrNull, longOrNull2, this, r31Var, null), 3, null);
        return Unit.INSTANCE;
    }
}
