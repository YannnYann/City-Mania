package com.unity3d.ads.core.domain;

import com.google.android.gms.common.api.Api;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.CacheResult;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;
import org.json.JSONArray;

/* JADX INFO: compiled from: CacheFile.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface CacheFile {
    Object invoke(String str, AdObject adObject, JSONArray jSONArray, int i, int i2, Function3<? super Long, ? super Long, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super CacheResult> continuation);

    /* JADX INFO: compiled from: CacheFile.kt */
    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Object invoke$default(CacheFile cacheFile, String str, AdObject adObject, JSONArray jSONArray, int i, int i2, Function3 function3, Continuation continuation, int i3, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invoke");
            }
            if ((i3 & 16) != 0) {
                i2 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            }
            int i4 = i2;
            if ((i3 & 32) != 0) {
                function3 = null;
            }
            return cacheFile.invoke(str, adObject, jSONArray, i, i4, function3, continuation);
        }
    }
}
