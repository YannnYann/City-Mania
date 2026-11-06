package io.bidmachine.rendering.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.ironsource.C3522b4;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.util.UtilsKt;
import java.util.ArrayList;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class PrivacySheetParamsParser {
    public static final PrivacySheetParamsParser INSTANCE = new PrivacySheetParamsParser();

    public static final PrivacySheetParams parseJson(String json) {
        Object objM2760constructorimpl;
        Intrinsics.checkNotNullParameter(json, "json");
        PrivacySheetParamsParser privacySheetParamsParser = INSTANCE;
        try {
            Result.Companion companion = Result.Companion;
            JSONObject jSONObject = new JSONObject(json);
            String strOptString = jSONObject.optString(C3522b4.i.D0);
            Intrinsics.checkNotNullExpressionValue(strOptString, "rootObject.optString(\"title\")");
            String strOptString2 = jSONObject.optString("subtitle");
            Intrinsics.checkNotNullExpressionValue(strOptString2, "rootObject.optString(\"subtitle\")");
            String strOptString3 = jSONObject.optString("footer_title");
            Intrinsics.checkNotNullExpressionValue(strOptString3, "rootObject.optString(\"footer_title\")");
            String strOptString4 = jSONObject.optString("footer_text");
            Intrinsics.checkNotNullExpressionValue(strOptString4, "rootObject.optString(\"footer_text\")");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("actions");
            if (jSONArrayOptJSONArray == null) {
                jSONArrayOptJSONArray = new JSONArray();
            } else {
                Intrinsics.checkNotNullExpressionValue(jSONArrayOptJSONArray, "rootObject.optJSONArray(\"actions\") ?: JSONArray()");
            }
            ArrayList arrayList = new ArrayList();
            int length = jSONArrayOptJSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
                Intrinsics.checkNotNullExpressionValue(jSONObject2, "actionsArray.getJSONObject(i)");
                String strOptString5 = jSONObject2.optString("type");
                Intrinsics.checkNotNullExpressionValue(strOptString5, "actionObject.optString(\"type\")");
                PrivacySheetParams.ActionType actionTypeA = privacySheetParamsParser.a(strOptString5);
                if (actionTypeA != null) {
                    String strOptString6 = jSONObject2.optString(C3522b4.i.D0);
                    Intrinsics.checkNotNullExpressionValue(strOptString6, "actionObject.optString(\"title\")");
                    String strOptString7 = jSONObject2.optString("data");
                    Intrinsics.checkNotNullExpressionValue(strOptString7, "actionObject.optString(\"data\")");
                    String it = jSONObject2.optString(C3522b4.i.H0);
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    if (StringsKt__StringsKt.isBlank(it)) {
                        it = null;
                    }
                    arrayList.add(new PrivacySheetParams.Action(actionTypeA, strOptString6, strOptString7, it != null ? privacySheetParamsParser.b(it) : null));
                }
            }
            objM2760constructorimpl = Result.m2760constructorimpl(new PrivacySheetParams(strOptString, strOptString2, arrayList, strOptString3, strOptString4));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        return (PrivacySheetParams) (Result.m2765isFailureimpl(objM2760constructorimpl) ? null : objM2760constructorimpl);
    }

    public final PrivacySheetParams.ActionType a(String str) {
        for (PrivacySheetParams.ActionType actionType : PrivacySheetParams.ActionType.values()) {
            if (StringsKt__StringsJVMKt.equals(actionType.name(), str, true)) {
                return actionType;
            }
        }
        return null;
    }

    public final Bitmap b(String str) {
        Object objM2760constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            byte[] bytes = str.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            byte[] bArrDecodeBase64$default = UtilsKt.decodeBase64$default(bytes, 0, 1, (Object) null);
            objM2760constructorimpl = Result.m2760constructorimpl(bArrDecodeBase64$default == null ? null : BitmapFactory.decodeByteArray(bArrDecodeBase64$default, 0, bArrDecodeBase64$default.length));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        return (Bitmap) (Result.m2765isFailureimpl(objM2760constructorimpl) ? null : objM2760constructorimpl);
    }
}
