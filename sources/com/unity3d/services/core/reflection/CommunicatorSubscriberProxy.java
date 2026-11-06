package com.unity3d.services.core.reflection;

import android.os.Bundle;
import com.unity3d.ads.core.log.Logger;
import java.lang.reflect.Method;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CommunicatorSubscriberProxy.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CommunicatorSubscriberProxy extends GenericListenerProxy {
    public static final Companion Companion = new Companion(null);
    private static final String GET_COMMUNICATOR_ID = "getCommunicatorId";
    private static final String MESSAGE_CLASS = "com.applovin.communicator.AppLovinCommunicatorMessage";
    private static final String ON_MESSAGE_RECEIVED = "onMessageReceived";
    private static final String SUBSCRIBER_CLASS = "com.applovin.communicator.AppLovinCommunicatorSubscriber";
    private final String communicatorId;
    private final Logger logger;
    private final CommunicatorMessageListener messageListener;
    private final String topic;

    /* JADX INFO: compiled from: CommunicatorSubscriberProxy.kt */
    public interface CommunicatorMessageListener {
        void onMessageReceived(Bundle bundle);
    }

    public CommunicatorSubscriberProxy(String communicatorId, String topic, CommunicatorMessageListener messageListener, Logger logger) {
        Intrinsics.checkNotNullParameter(communicatorId, "communicatorId");
        Intrinsics.checkNotNullParameter(topic, "topic");
        Intrinsics.checkNotNullParameter(messageListener, "messageListener");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.communicatorId = communicatorId;
        this.topic = topic;
        this.messageListener = messageListener;
        this.logger = logger;
    }

    @Override // com.unity3d.services.core.reflection.GenericListenerProxy
    public Class<?> getProxyClass() throws ClassNotFoundException {
        Class<?> cls = Class.forName(SUBSCRIBER_CLASS);
        Intrinsics.checkNotNullExpressionValue(cls, "forName(...)");
        return cls;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.unity3d.services.core.reflection.GenericListenerProxy, java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method m, Object[] objArr) throws Throwable {
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        Intrinsics.checkNotNullParameter(m, "m");
        String name = m.getName();
        if (name != null) {
            boolean z = false;
            switch (name.hashCode()) {
                case -1776922004:
                    if (name.equals("toString")) {
                        return "CommunicatorSubscriber(" + this.communicatorId + ')';
                    }
                    break;
                case -1437096151:
                    if (name.equals(ON_MESSAGE_RECEIVED) && objArr != null && objArr.length != 0) {
                        handleMessage(objArr[0]);
                    }
                    return null;
                case -1295482945:
                    if (name.equals("equals")) {
                        if (objArr != null && objArr.length == 1 && proxy == objArr[0]) {
                            z = true;
                        }
                        return Boolean.valueOf(z);
                    }
                    break;
                case 147696667:
                    if (name.equals("hashCode")) {
                        return Integer.valueOf(System.identityHashCode(proxy));
                    }
                    break;
                case 1974057286:
                    if (name.equals(GET_COMMUNICATOR_ID)) {
                        return this.communicatorId;
                    }
                    break;
            }
        }
        return null;
    }

    private final void handleMessage(Object obj) {
        try {
            Class<?> cls = Class.forName(MESSAGE_CLASS);
            Object objInvoke = cls.getMethod("getTopic", new Class[0]).invoke(obj, new Object[0]);
            if (Intrinsics.areEqual(this.topic, objInvoke instanceof String ? (String) objInvoke : null)) {
                Object objInvoke2 = cls.getMethod("getMessageData", new Class[0]).invoke(obj, new Object[0]);
                if (objInvoke2 instanceof Bundle) {
                    this.messageListener.onMessageReceived((Bundle) objInvoke2);
                }
            }
        } catch (Exception e) {
            this.logger.trace("Failed to handle proxy communicator message", e);
        }
    }

    /* JADX INFO: compiled from: CommunicatorSubscriberProxy.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
