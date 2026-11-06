package com.unity3d.services.core.reflection;

import android.content.Context;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppLovinCommunicatorBridge.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AppLovinCommunicatorBridge extends GenericBridge {
    private static final String CLASS_NAME = "com.applovin.communicator.AppLovinCommunicator";
    public static final Companion Companion = new Companion(null);
    private static final String GET_INSTANCE = "getInstance";
    private static final String SUBSCRIBE = "subscribe";
    private static final String UNSUBSCRIBE = "unsubscribe";
    private final Context context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppLovinCommunicatorBridge(Context context) {
        super(Companion.buildFunctionMap(), false);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @Override // com.unity3d.services.core.reflection.GenericBridge
    public String getClassName() {
        return CLASS_NAME;
    }

    public final Object subscribe(CommunicatorSubscriberProxy proxy, String topic) {
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        Intrinsics.checkNotNullParameter(topic, "topic");
        Object communicatorInstance = getCommunicatorInstance();
        if (communicatorInstance == null) {
            return null;
        }
        try {
            Object proxyInstance = proxy.getProxyInstance();
            callVoidMethod(SUBSCRIBE, communicatorInstance, proxyInstance, topic);
            return proxyInstance;
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public final void unsubscribe(Object subscriber, String topic) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        Intrinsics.checkNotNullParameter(topic, "topic");
        Object communicatorInstance = getCommunicatorInstance();
        if (communicatorInstance == null) {
            return;
        }
        callVoidMethod(UNSUBSCRIBE, communicatorInstance, subscriber, topic);
    }

    private final Object getCommunicatorInstance() {
        return callNonVoidMethod("getInstance", null, this.context);
    }

    /* JADX INFO: compiled from: AppLovinCommunicatorBridge.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Map<String, Class<?>[]> buildFunctionMap() {
            Map<String, Class<?>[]> mapMutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.to("getInstance", new Class[]{Context.class}));
            try {
                Class<?> cls = Class.forName("com.applovin.communicator.AppLovinCommunicatorSubscriber");
                Intrinsics.checkNotNullExpressionValue(cls, "forName(...)");
                mapMutableMapOf.put(AppLovinCommunicatorBridge.SUBSCRIBE, new Class[]{cls, String.class});
                mapMutableMapOf.put(AppLovinCommunicatorBridge.UNSUBSCRIBE, new Class[]{cls, String.class});
            } catch (ClassNotFoundException unused) {
            }
            return mapMutableMapOf;
        }
    }
}
