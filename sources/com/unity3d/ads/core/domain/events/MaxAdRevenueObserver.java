package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.core.data.datasource.MaxAdRevenueListener;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.log.Logger;
import com.unity3d.services.core.reflection.AppLovinCommunicatorBridge;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MaxAdRevenueObserver.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class MaxAdRevenueObserver {
    private static final String COMMUNICATOR_ID = "ilrd_observer";
    public static final Companion Companion = new Companion(null);
    private static final String MAX_REVENUE_EVENTS_TOPIC = "max_revenue_events";
    private final AppLovinCommunicatorBridge communicatorBridge;
    private final MaxAdRevenueCommunicatorProxyFactory communicatorProxyFactory;
    private Object communicatorSubscriber;
    private boolean isStarted;
    private final Logger logger;
    private final MaxAdRevenueListener revenueListener;
    private final SessionRepository sessionRepository;

    public MaxAdRevenueObserver(SessionRepository sessionRepository, Logger logger, AppLovinCommunicatorBridge communicatorBridge, MaxAdRevenueListener revenueListener, MaxAdRevenueCommunicatorProxyFactory communicatorProxyFactory) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(communicatorBridge, "communicatorBridge");
        Intrinsics.checkNotNullParameter(revenueListener, "revenueListener");
        Intrinsics.checkNotNullParameter(communicatorProxyFactory, "communicatorProxyFactory");
        this.sessionRepository = sessionRepository;
        this.logger = logger;
        this.communicatorBridge = communicatorBridge;
        this.revenueListener = revenueListener;
        this.communicatorProxyFactory = communicatorProxyFactory;
    }

    /* JADX INFO: compiled from: MaxAdRevenueObserver.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final void invoke() {
        synchronized (this) {
            try {
                boolean collectIlrData = this.sessionRepository.getNativeConfiguration().getFeatureFlags().getCollectIlrData();
                if (this.isStarted) {
                    if (!collectIlrData) {
                        Logger.DefaultImpls.trace$default(this.logger, "ILRD collection feature flag changed to disabled, stopping", null, 2, null);
                        stop();
                    } else {
                        Logger.DefaultImpls.trace$default(this.logger, "ILRD observer already started", null, 2, null);
                    }
                    return;
                }
                if (!collectIlrData) {
                    Logger.DefaultImpls.trace$default(this.logger, "ILRD collection feature flag is disabled", null, 2, null);
                    return;
                }
                try {
                    try {
                        Object objSubscribe = this.communicatorBridge.subscribe(this.communicatorProxyFactory.create(COMMUNICATOR_ID, MAX_REVENUE_EVENTS_TOPIC, new MaxAdRevenueObserver$invoke$1$proxy$1(this.revenueListener)), MAX_REVENUE_EVENTS_TOPIC);
                        if (objSubscribe != null) {
                            this.communicatorSubscriber = objSubscribe;
                            this.isStarted = true;
                            Logger.DefaultImpls.trace$default(this.logger, "Successfully started ad revenue automatic collection", null, 2, null);
                        } else {
                            Logger.DefaultImpls.trace$default(this.logger, "Mediation SDK not available, automatic collection not started", null, 2, null);
                        }
                    } catch (ClassNotFoundException unused) {
                        Logger.DefaultImpls.trace$default(this.logger, "Mediation SDK not found, skipping automatic collection", null, 2, null);
                    }
                } catch (NoSuchMethodException e) {
                    this.logger.trace("Communicator method not found, SDK version may be incompatible", e);
                } catch (Exception e2) {
                    this.logger.trace("Failed to start ad revenue collection", e2);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void stop() {
        synchronized (this) {
            if (this.isStarted) {
                Object obj = this.communicatorSubscriber;
                if (obj != null) {
                    try {
                        this.communicatorBridge.unsubscribe(obj, MAX_REVENUE_EVENTS_TOPIC);
                        Logger.DefaultImpls.trace$default(this.logger, "Unsubscribed from revenue events", null, 2, null);
                    } catch (Exception e) {
                        this.logger.trace("Failed to unsubscribe from revenue events", e);
                    }
                    this.communicatorSubscriber = null;
                    this.isStarted = false;
                    Unit unit = Unit.INSTANCE;
                    return;
                }
                this.isStarted = false;
                Unit unit2 = Unit.INSTANCE;
                return;
            }
        }
    }
}
