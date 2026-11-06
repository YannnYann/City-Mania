package com.unity3d.ads.injection;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: Registry.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class Registry {
    private final MutableStateFlow<Map<EntryKey, Lazy<?>>> _services = StateFlowKt.MutableStateFlow(MapsKt__MapsKt.emptyMap());

    public final Map<EntryKey, Lazy<?>> getServices() {
        return this._services.getValue();
    }

    public static /* synthetic */ EntryKey single$default(Registry registry, String named, Function0 instance, int i, Object obj) {
        if ((i & 1) != 0) {
            named = "";
        }
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.reifiedOperationMarker(4, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        EntryKey entryKey = new EntryKey(named, Reflection.getOrCreateKotlinClass(Object.class));
        registry.add(entryKey, LazyKt__LazyJVMKt.lazy(instance));
        return entryKey;
    }

    public final /* synthetic */ <T> EntryKey single(String named, Function0<? extends T> instance) {
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.reifiedOperationMarker(4, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        EntryKey entryKey = new EntryKey(named, Reflection.getOrCreateKotlinClass(Object.class));
        add(entryKey, LazyKt__LazyJVMKt.lazy(instance));
        return entryKey;
    }

    public static /* synthetic */ EntryKey factory$default(Registry registry, String named, Function0 instance, int i, Object obj) {
        if ((i & 1) != 0) {
            named = "";
        }
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.reifiedOperationMarker(4, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        EntryKey entryKey = new EntryKey(named, Reflection.getOrCreateKotlinClass(Object.class));
        registry.add(entryKey, new Factory(instance));
        return entryKey;
    }

    public final /* synthetic */ <T> EntryKey factory(String named, Function0<? extends T> instance) {
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.reifiedOperationMarker(4, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        EntryKey entryKey = new EntryKey(named, Reflection.getOrCreateKotlinClass(Object.class));
        add(entryKey, new Factory(instance));
        return entryKey;
    }

    public final <T> void add(EntryKey key, Lazy<? extends T> instance) {
        Map<EntryKey, Lazy<?>> value;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(instance, "instance");
        if (getServices().containsKey(key)) {
            throw new IllegalStateException("Cannot have identical entries.");
        }
        MutableStateFlow<Map<EntryKey, Lazy<?>>> mutableStateFlow = this._services;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, MapsKt__MapsKt.plus(value, MapsKt__MapsJVMKt.mapOf(TuplesKt.to(key, instance)))));
    }

    public static /* synthetic */ Object get$default(Registry registry, String named, int i, Object obj) {
        if ((i & 1) != 0) {
            named = "";
        }
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.reifiedOperationMarker(4, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        EntryKey entryKey = new EntryKey(named, Reflection.getOrCreateKotlinClass(Object.class));
        Lazy<?> lazy = registry.getServices().get(entryKey);
        if (lazy == null) {
            throw new IllegalStateException("No entry found for " + entryKey);
        }
        Object value = lazy.getValue();
        Intrinsics.reifiedOperationMarker(1, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        return value;
    }

    public final /* synthetic */ <T> T get(String named) {
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.reifiedOperationMarker(4, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        EntryKey entryKey = new EntryKey(named, Reflection.getOrCreateKotlinClass(Object.class));
        Lazy<?> lazy = getServices().get(entryKey);
        if (lazy == null) {
            throw new IllegalStateException("No entry found for " + entryKey);
        }
        T t = (T) lazy.getValue();
        Intrinsics.reifiedOperationMarker(1, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        return t;
    }

    public static /* synthetic */ Object getOrNull$default(Registry registry, String named, int i, Object obj) {
        if ((i & 1) != 0) {
            named = "";
        }
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.reifiedOperationMarker(4, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        Lazy<?> lazy = registry.getServices().get(new EntryKey(named, Reflection.getOrCreateKotlinClass(Object.class)));
        if (lazy == null) {
            return null;
        }
        Object value = lazy.getValue();
        Intrinsics.reifiedOperationMarker(1, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        return value;
    }

    public final /* synthetic */ <T> T getOrNull(String named) {
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.reifiedOperationMarker(4, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        Lazy<?> lazy = getServices().get(new EntryKey(named, Reflection.getOrCreateKotlinClass(Object.class)));
        if (lazy == null) {
            return null;
        }
        T t = (T) lazy.getValue();
        Intrinsics.reifiedOperationMarker(1, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        return t;
    }
}
