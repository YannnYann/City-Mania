package ads_mobile_sdk;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.google.gson.JsonObject;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class cv implements r41 {
    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_CAN_OPEN_URLS;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get("urls");
        if (str != null && str.length() != 0) {
            List<String> listSplit$default = StringsKt__StringsKt.split$default((CharSequence) str, new String[]{","}, false, 0, 6, (Object) null);
            JsonObject jsonObject = new JsonObject();
            PackageManager packageManager = r31Var.getContext().getPackageManager();
            for (String str2 : listSplit$default) {
                List listSplit$default2 = StringsKt__StringsKt.split$default((CharSequence) str2, new String[]{";"}, false, 2, 2, (Object) null);
                boolean z = false;
                if (packageManager.resolveActivity(new Intent(listSplit$default2.size() > 1 ? StringsKt__StringsKt.trim((String) listSplit$default2.get(1)).toString() : "android.intent.action.VIEW", Uri.parse(StringsKt__StringsKt.trim((String) listSplit$default2.get(0)).toString())), 65536) != null) {
                    z = true;
                }
                jsonObject.addProperty(str2, Boxing.boxBoolean(z));
            }
            String str3 = (String) map.get("ad_mid");
            if (str3 != null && !StringsKt__StringsKt.isBlank(str3)) {
                jsonObject.addProperty("ad_mid", str3);
            }
            Object objA = r31Var.a(jsonObject, "openableURLs", continuation);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
        }
        f01.c("URLs missing in canOpenURLs GMSG.", null);
        return Unit.INSTANCE;
    }
}
