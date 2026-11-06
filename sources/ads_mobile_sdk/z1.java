package ads_mobile_sdk;

import com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class z1 {
    public static int a(JsonObject jsonObject, int i, int i2) {
        return (jsonObject.hashCode() + i) * i2;
    }
}
