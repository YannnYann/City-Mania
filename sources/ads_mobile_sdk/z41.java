package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.util.AndroidBundleTypeAdapterFactory;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class z41 implements jr0 {
    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        Gson gsonCreate = new GsonBuilder().registerTypeAdapterFactory(new AndroidBundleTypeAdapterFactory()).create();
        Intrinsics.checkNotNullExpressionValue(gsonCreate, "create(...)");
        return (Gson) kq2.b(gsonCreate);
    }
}
