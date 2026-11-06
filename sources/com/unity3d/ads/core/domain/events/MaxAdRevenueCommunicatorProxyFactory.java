package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.core.log.Logger;
import com.unity3d.services.core.reflection.CommunicatorSubscriberProxy;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MaxAdRevenueCommunicatorProxyFactory.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class MaxAdRevenueCommunicatorProxyFactory {
    private final Logger logger;

    public MaxAdRevenueCommunicatorProxyFactory(Logger logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    public final CommunicatorSubscriberProxy create(String communicatorId, String topic, CommunicatorSubscriberProxy.CommunicatorMessageListener messageListener) {
        Intrinsics.checkNotNullParameter(communicatorId, "communicatorId");
        Intrinsics.checkNotNullParameter(topic, "topic");
        Intrinsics.checkNotNullParameter(messageListener, "messageListener");
        return new CommunicatorSubscriberProxy(communicatorId, topic, messageListener, this.logger);
    }
}
