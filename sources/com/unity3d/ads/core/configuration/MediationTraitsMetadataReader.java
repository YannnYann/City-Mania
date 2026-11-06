package com.unity3d.ads.core.configuration;

import com.unity3d.services.core.misc.JsonStorage;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: compiled from: MediationTraitsMetadataReader.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class MediationTraitsMetadataReader extends MetadataReader<JSONObject> {
    public static final String BOLD_SDK_ENABLED = "boldSdkEnabled";
    public static final Companion Companion = new Companion(null);
    public static final String HTTP_CLIENT_FETCH_TIMEOUT_MS = "httpClientFetchTimeoutMs";
    public static final String MEDIATION_TRAITS = "mediation.traits.value";
    public static final String USE_HTTP_CLIENT = "useHttpClient";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediationTraitsMetadataReader(JsonStorage jsonStorage) {
        super(jsonStorage, MEDIATION_TRAITS);
        Intrinsics.checkNotNullParameter(jsonStorage, "jsonStorage");
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Boolean getBooleanTrait(java.lang.String r4) {
        /*
            r3 = this;
            java.lang.String r0 = "key"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            com.unity3d.services.core.misc.JsonStorage r0 = r3.getJsonStorage()
            java.lang.String r1 = r3.getKey()
            java.lang.Object r0 = r0.get(r1)
            r1 = 0
            if (r0 == 0) goto L1c
            boolean r2 = r0 instanceof org.json.JSONObject
            if (r2 == 0) goto L19
            goto L1a
        L19:
            r0 = r1
        L1a:
            if (r0 != 0) goto L1d
        L1c:
            r0 = r1
        L1d:
            org.json.JSONObject r0 = (org.json.JSONObject) r0
            if (r0 == 0) goto L34
            boolean r2 = r0.has(r4)
            if (r2 == 0) goto L28
            goto L29
        L28:
            r0 = r1
        L29:
            if (r0 == 0) goto L34
            boolean r4 = r0.optBoolean(r4)
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            return r4
        L34:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.configuration.MediationTraitsMetadataReader.getBooleanTrait(java.lang.String):java.lang.Boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Long getLongTrait(java.lang.String r4) {
        /*
            r3 = this;
            java.lang.String r0 = "key"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            com.unity3d.services.core.misc.JsonStorage r0 = r3.getJsonStorage()
            java.lang.String r1 = r3.getKey()
            java.lang.Object r0 = r0.get(r1)
            r1 = 0
            if (r0 == 0) goto L1c
            boolean r2 = r0 instanceof org.json.JSONObject
            if (r2 == 0) goto L19
            goto L1a
        L19:
            r0 = r1
        L1a:
            if (r0 != 0) goto L1d
        L1c:
            r0 = r1
        L1d:
            org.json.JSONObject r0 = (org.json.JSONObject) r0
            if (r0 == 0) goto L34
            boolean r2 = r0.has(r4)
            if (r2 == 0) goto L28
            goto L29
        L28:
            r0 = r1
        L29:
            if (r0 == 0) goto L34
            long r0 = r0.optLong(r4)
            java.lang.Long r4 = java.lang.Long.valueOf(r0)
            return r4
        L34:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.configuration.MediationTraitsMetadataReader.getLongTrait(java.lang.String):java.lang.Long");
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String getStringTrait(java.lang.String r4) {
        /*
            r3 = this;
            java.lang.String r0 = "key"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            com.unity3d.services.core.misc.JsonStorage r0 = r3.getJsonStorage()
            java.lang.String r1 = r3.getKey()
            java.lang.Object r0 = r0.get(r1)
            r1 = 0
            if (r0 == 0) goto L1c
            boolean r2 = r0 instanceof org.json.JSONObject
            if (r2 == 0) goto L19
            goto L1a
        L19:
            r0 = r1
        L1a:
            if (r0 != 0) goto L1d
        L1c:
            r0 = r1
        L1d:
            org.json.JSONObject r0 = (org.json.JSONObject) r0
            if (r0 == 0) goto L30
            boolean r2 = r0.has(r4)
            if (r2 == 0) goto L28
            goto L29
        L28:
            r0 = r1
        L29:
            if (r0 == 0) goto L30
            java.lang.String r4 = r0.optString(r4)
            return r4
        L30:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.configuration.MediationTraitsMetadataReader.getStringTrait(java.lang.String):java.lang.String");
    }

    /* JADX INFO: compiled from: MediationTraitsMetadataReader.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
