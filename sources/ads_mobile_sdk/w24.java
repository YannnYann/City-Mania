package ads_mobile_sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonParser;
import com.google.gson.JsonPrimitive;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class w24 implements r41 {
    public final Context a;
    public final ur3 b;

    public w24(Context context, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = context;
        this.b = traceLogger;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_WRITE_LOCAL_STORAGE;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get("args");
        if (str == null) {
            xs3.a("Missing args parameter for writeToLocalStorage gmsg", null, 6);
            return Unit.INSTANCE;
        }
        try {
            JsonObject asJsonObject = JsonParser.parseString(str).getAsJsonObject();
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.a);
            Intrinsics.checkNotNullExpressionValue(defaultSharedPreferences, "getDefaultSharedPreferences(...)");
            SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
            for (Map.Entry<String, JsonElement> entry : asJsonObject.entrySet()) {
                Intrinsics.checkNotNull(entry);
                String key = entry.getKey();
                JsonElement value = entry.getValue();
                if (value.isJsonPrimitive()) {
                    JsonPrimitive asJsonPrimitive = value.getAsJsonPrimitive();
                    if (asJsonPrimitive.isBoolean()) {
                        editorEdit.putBoolean(key, asJsonPrimitive.getAsBoolean());
                    } else if (asJsonPrimitive.isString()) {
                        editorEdit.putString(key, asJsonPrimitive.getAsString());
                    } else if (asJsonPrimitive.isNumber()) {
                        String asString = asJsonPrimitive.getAsString();
                        Intrinsics.checkNotNull(asString);
                        if (!StringsKt__StringsKt.contains$default((CharSequence) asString, (CharSequence) ".", false, 2, (Object) null) && !StringsKt__StringsKt.contains$default((CharSequence) asString, (CharSequence) "e", false, 2, (Object) null) && !StringsKt__StringsKt.contains$default((CharSequence) asString, (CharSequence) "E", false, 2, (Object) null)) {
                            long asLong = asJsonPrimitive.getAsLong();
                            if (-2147483648L <= asLong && asLong <= 2147483647L) {
                                editorEdit.putInt(key, (int) asLong);
                            } else {
                                editorEdit.putLong(key, asLong);
                            }
                        } else {
                            editorEdit.putFloat(key, asJsonPrimitive.getAsFloat());
                        }
                    }
                }
            }
            editorEdit.apply();
        } catch (JsonParseException e) {
            xs3.a("Invalid JSON data for writeToLocalStorage gmsg", e, 4);
            ((as3) this.b).a("GMSG write local storage KV pairs handler", (Throwable) e);
        }
        return Unit.INSTANCE;
    }
}
