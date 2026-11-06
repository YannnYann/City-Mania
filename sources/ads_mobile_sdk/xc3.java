package ads_mobile_sdk;

import com.google.common.base.Splitter;
import com.google.gson.JsonObject;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xc3 implements m {
    public final zd3 a;

    public xc3(zd3 sharedSettingsDataStore) {
        Intrinsics.checkNotNullParameter(sharedSettingsDataStore, "sharedSettingsDataStore");
        this.a = sharedSettingsDataStore;
    }

    @Override // ads_mobile_sdk.m
    public final Object a(JsonObject jsonObject, j jVar) {
        int iA = ds1.a(jsonObject, "total_inflight_ad_limit", 0);
        if (iA > 0) {
            Object objA = this.a.a(iA, jVar);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
        }
        Splitter splitter = f01.a;
        f01.b("Received non-positive total_inflight_ad_limit: " + iA, null);
        return Unit.INSTANCE;
    }
}
