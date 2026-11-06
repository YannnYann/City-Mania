package ads_mobile_sdk;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class yt {
    public static v01 a(v01 jsResult) {
        String str;
        boolean z;
        String str2;
        List listSplit$default;
        String asString;
        String asString2;
        String asString3;
        Intrinsics.checkNotNullParameter(jsResult, "jsResult");
        if (!(jsResult instanceof q01)) {
            if (jsResult instanceof i01) {
                return jsResult;
            }
            throw new NoWhenBranchMatchedException();
        }
        JsonObject jsonObject = (JsonObject) ((q01) jsResult).a();
        JsonElement jsonElement = jsonObject.get("errors");
        String asString4 = jsonElement != null ? jsonElement.getAsString() : null;
        JsonElement jsonElement2 = jsonObject.get("valid");
        if (jsonElement2 == null || jsonElement2.getAsInt() != 1) {
            return new m01("Error building request URL: " + asString4, kk1.b);
        }
        JsonElement jsonElement3 = jsonObject.get("url");
        String asString5 = jsonElement3 != null ? jsonElement3.getAsString() : null;
        if (asString5 == null) {
            return new m01("BuildAdUrlResult url is null");
        }
        JsonElement jsonElement4 = jsonObject.get("base_uri");
        String asString6 = jsonElement4 != null ? jsonElement4.getAsString() : null;
        JsonElement jsonElement5 = jsonObject.get("post_parameters");
        String asString7 = jsonElement5 != null ? jsonElement5.getAsString() : null;
        JsonElement jsonElement6 = jsonObject.get("cookies_include");
        if (jsonElement6 == null || (asString3 = jsonElement6.getAsString()) == null || Intrinsics.areEqual(asString3, "1") || Intrinsics.areEqual(asString3, "true")) {
            str = asString7;
            z = true;
        } else {
            str = asString7;
            z = false;
        }
        JsonElement jsonElement7 = jsonObject.get("csrb_errors");
        if (jsonElement7 == null || (asString2 = jsonElement7.getAsString()) == null) {
            str2 = ",";
            listSplit$default = null;
        } else {
            listSplit$default = StringsKt__StringsKt.split$default((CharSequence) asString2, new String[]{","}, false, 0, 6, (Object) null);
            str2 = ",";
        }
        JsonElement jsonElement8 = jsonObject.get("use_compression");
        boolean z2 = (jsonElement8 == null || (asString = jsonElement8.getAsString()) == null || (!Intrinsics.areEqual(asString, "1") && !Intrinsics.areEqual(asString, "true"))) ? false : true;
        JsonElement jsonElement9 = jsonObject.get("content_type");
        return new q01(new zt(asString4 != null ? StringsKt__StringsKt.split$default((CharSequence) asString4, new String[]{str2}, false, 0, 6, (Object) null) : null, asString6, str, z, asString5, null, listSplit$default, z2, jsonElement9 != null ? jsonElement9.getAsString() : null));
    }
}
