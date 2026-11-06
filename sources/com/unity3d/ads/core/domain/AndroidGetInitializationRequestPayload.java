package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.configuration.MediationInitBlobMetadataReader;
import com.unity3d.ads.core.data.datasource.GoogleAppIdDataSource;
import com.unity3d.ads.core.data.datasource.InstallReferrerDataSource;
import com.unity3d.ads.core.data.datasource.ModuleInitParamsDataSource;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.LegacyUserConsentRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidGetInitializationRequestPayload.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidGetInitializationRequestPayload implements GetInitializationRequestPayload {
    private static final String BLOB_EXTRA_KEY = "uads_init_blob";
    public static final Companion Companion = new Companion(null);
    private final DeviceInfoRepository deviceInfoRepository;
    private final GetClientInfo getClientInfo;
    private final GoogleAppIdDataSource googleAppIdDataSource;
    private final InstallReferrerDataSource installReferrerDataSource;
    private final LegacyUserConsentRepository legacyUserConsentRepository;
    private final MediationInitBlobMetadataReader mediationInitBlobMetadataReader;
    private final ModuleInitParamsDataSource moduleInitParamsDataSource;
    private final SessionRepository sessionRepository;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidGetInitializationRequestPayload.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload", f = "AndroidGetInitializationRequestPayload.kt", l = {30, 35, 36, 57, 62, 67, 72, 87, 103, 113}, m = "invoke")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidGetInitializationRequestPayload.this.invoke(this);
        }
    }

    public AndroidGetInitializationRequestPayload(GetClientInfo getClientInfo, SessionRepository sessionRepository, DeviceInfoRepository deviceInfoRepository, LegacyUserConsentRepository legacyUserConsentRepository, MediationInitBlobMetadataReader mediationInitBlobMetadataReader, InstallReferrerDataSource installReferrerDataSource, GoogleAppIdDataSource googleAppIdDataSource, ModuleInitParamsDataSource moduleInitParamsDataSource) {
        Intrinsics.checkNotNullParameter(getClientInfo, "getClientInfo");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(legacyUserConsentRepository, "legacyUserConsentRepository");
        Intrinsics.checkNotNullParameter(mediationInitBlobMetadataReader, "mediationInitBlobMetadataReader");
        Intrinsics.checkNotNullParameter(installReferrerDataSource, "installReferrerDataSource");
        Intrinsics.checkNotNullParameter(googleAppIdDataSource, "googleAppIdDataSource");
        Intrinsics.checkNotNullParameter(moduleInitParamsDataSource, "moduleInitParamsDataSource");
        this.getClientInfo = getClientInfo;
        this.sessionRepository = sessionRepository;
        this.deviceInfoRepository = deviceInfoRepository;
        this.legacyUserConsentRepository = legacyUserConsentRepository;
        this.mediationInitBlobMetadataReader = mediationInitBlobMetadataReader;
        this.installReferrerDataSource = installReferrerDataSource;
        this.googleAppIdDataSource = googleAppIdDataSource;
        this.moduleInitParamsDataSource = moduleInitParamsDataSource;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0391  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x03c2  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x028e A[PHI: r1 r4 r5 r9
      0x028e: PHI (r1v40 java.lang.Object) = (r1v39 java.lang.Object), (r1v1 java.lang.Object) binds: [B:57:0x028a, B:17:0x0098] A[DONT_GENERATE, DONT_INLINE]
      0x028e: PHI (r4v57 gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo) = 
      (r4v54 gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo)
      (r4v59 gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo)
     binds: [B:57:0x028a, B:17:0x0098] A[DONT_GENERATE, DONT_INLINE]
      0x028e: PHI (r5v8 gatewayprotocol.v1.InitializationRequestKt$Dsl) = (r5v5 gatewayprotocol.v1.InitializationRequestKt$Dsl), (r5v10 gatewayprotocol.v1.InitializationRequestKt$Dsl) binds: [B:57:0x028a, B:17:0x0098] A[DONT_GENERATE, DONT_INLINE]
      0x028e: PHI (r9v14 gatewayprotocol.v1.InitializationRequestKt$Dsl) = (r9v11 gatewayprotocol.v1.InitializationRequestKt$Dsl), (r9v16 gatewayprotocol.v1.InitializationRequestKt$Dsl) binds: [B:57:0x028a, B:17:0x0098] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02b4 A[PHI: r1 r4 r5 r9
      0x02b4: PHI (r1v44 java.lang.Object) = (r1v43 java.lang.Object), (r1v1 java.lang.Object) binds: [B:69:0x02b0, B:16:0x0087] A[DONT_GENERATE, DONT_INLINE]
      0x02b4: PHI (r4v60 gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo) = 
      (r4v57 gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo)
      (r4v62 gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo)
     binds: [B:69:0x02b0, B:16:0x0087] A[DONT_GENERATE, DONT_INLINE]
      0x02b4: PHI (r5v11 gatewayprotocol.v1.InitializationRequestKt$Dsl) = (r5v8 gatewayprotocol.v1.InitializationRequestKt$Dsl), (r5v13 gatewayprotocol.v1.InitializationRequestKt$Dsl) binds: [B:69:0x02b0, B:16:0x0087] A[DONT_GENERATE, DONT_INLINE]
      0x02b4: PHI (r9v17 gatewayprotocol.v1.InitializationRequestKt$Dsl) = (r9v14 gatewayprotocol.v1.InitializationRequestKt$Dsl), (r9v19 gatewayprotocol.v1.InitializationRequestKt$Dsl) binds: [B:69:0x02b0, B:16:0x0087] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02d2 A[PHI: r1 r4 r5 r9
      0x02d2: PHI (r1v48 java.lang.Object) = (r1v47 java.lang.Object), (r1v1 java.lang.Object) binds: [B:75:0x02ce, B:15:0x0076] A[DONT_GENERATE, DONT_INLINE]
      0x02d2: PHI (r4v63 gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo) = 
      (r4v60 gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo)
      (r4v65 gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo)
     binds: [B:75:0x02ce, B:15:0x0076] A[DONT_GENERATE, DONT_INLINE]
      0x02d2: PHI (r5v14 gatewayprotocol.v1.InitializationRequestKt$Dsl) = (r5v11 gatewayprotocol.v1.InitializationRequestKt$Dsl), (r5v16 gatewayprotocol.v1.InitializationRequestKt$Dsl) binds: [B:75:0x02ce, B:15:0x0076] A[DONT_GENERATE, DONT_INLINE]
      0x02d2: PHI (r9v20 gatewayprotocol.v1.InitializationRequestKt$Dsl) = (r9v17 gatewayprotocol.v1.InitializationRequestKt$Dsl), (r9v22 gatewayprotocol.v1.InitializationRequestKt$Dsl) binds: [B:75:0x02ce, B:15:0x0076] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x031a A[PHI: r1 r4 r5 r9
      0x031a: PHI (r1v60 java.lang.Object) = (r1v57 java.lang.Object), (r1v1 java.lang.Object) binds: [B:90:0x0316, B:14:0x0065] A[DONT_GENERATE, DONT_INLINE]
      0x031a: PHI (r4v66 gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo) = 
      (r4v63 gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo)
      (r4v68 gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo)
     binds: [B:90:0x0316, B:14:0x0065] A[DONT_GENERATE, DONT_INLINE]
      0x031a: PHI (r5v17 gatewayprotocol.v1.InitializationRequestKt$Dsl) = (r5v14 gatewayprotocol.v1.InitializationRequestKt$Dsl), (r5v20 gatewayprotocol.v1.InitializationRequestKt$Dsl) binds: [B:90:0x0316, B:14:0x0065] A[DONT_GENERATE, DONT_INLINE]
      0x031a: PHI (r9v23 gatewayprotocol.v1.InitializationRequestKt$Dsl) = (r9v20 gatewayprotocol.v1.InitializationRequestKt$Dsl), (r9v25 gatewayprotocol.v1.InitializationRequestKt$Dsl) binds: [B:90:0x0316, B:14:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0328  */
    @Override // com.unity3d.ads.core.domain.GetInitializationRequestPayload
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object invoke(kotlin.coroutines.Continuation<? super gatewayprotocol.v1.InitializationRequestOuterClass.InitializationRequest> r23) {
        /*
            Method dump skipped, instruction units count: 1092
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidGetInitializationRequestPayload.invoke(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: compiled from: AndroidGetInitializationRequestPayload.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
