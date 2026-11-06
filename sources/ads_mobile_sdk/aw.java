package ads_mobile_sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class aw implements r41 {
    public final Context a;
    public final ur3 b;

    public aw(Context context, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = context;
        this.b = traceLogger;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_CLEAR_LOCAL_STORAGE;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get("args");
        if (str == null) {
            xs3.a("Missing args parameter for clearLocalStorageKeys gmsg", null, 6);
            return Unit.INSTANCE;
        }
        try {
            JsonArray jsonArray = (JsonArray) new Gson().fromJson(str, JsonArray.class);
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.a);
            Intrinsics.checkNotNullExpressionValue(defaultSharedPreferences, "getDefaultSharedPreferences(...)");
            SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
            for (JsonElement jsonElement : jsonArray) {
                if (jsonElement.isJsonPrimitive()) {
                    editorEdit.remove(jsonElement.getAsString());
                }
            }
            editorEdit.apply();
        } catch (JsonParseException e) {
            xs3.a("Invalid JSON data for clearLocalStorageKeys gmsg", e, 4);
            ((as3) this.b).a("GMSG clear local storage keys handler", (Throwable) e);
        }
        return Unit.INSTANCE;
    }
}
