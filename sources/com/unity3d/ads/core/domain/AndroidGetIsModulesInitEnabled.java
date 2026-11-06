package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.InitializationConfigurationInternal;
import com.unity3d.ads.core.data.repository.SessionRepository;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidGetIsModulesInitEnabled.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidGetIsModulesInitEnabled implements GetIsModulesInitEnabled {
    public static final Companion Companion = new Companion(null);
    public static final String ENABLE_MODULES_INIT_KEY = "enable_modules_init";
    public static final String ENABLE_MODULES_INIT_VALUE = "true";
    private final SessionRepository sessionRepository;

    public AndroidGetIsModulesInitEnabled(SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.sessionRepository = sessionRepository;
    }

    @Override // com.unity3d.ads.core.domain.GetIsModulesInitEnabled
    public boolean invoke() {
        Map<String, String> extras;
        InitializationConfigurationInternal initializationConfiguration = this.sessionRepository.getInitializationConfiguration();
        return Intrinsics.areEqual((initializationConfiguration == null || (extras = initializationConfiguration.getExtras()) == null) ? null : extras.get(ENABLE_MODULES_INIT_KEY), "true");
    }

    /* JADX INFO: compiled from: AndroidGetIsModulesInitEnabled.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
