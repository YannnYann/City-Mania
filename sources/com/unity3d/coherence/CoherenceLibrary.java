package com.unity3d.coherence;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public final class CoherenceLibrary {
    public static volatile CoherenceLibrary instance;
    public final long apiPtr;
    public final AttributesProvider attributesProvider;
    public final CoherenceProvider coherenceProvider;
    public final IdentityProvider identityProvider;

    public CoherenceLibrary(Context context, int i) {
        long jInit = CoherenceBridge.init(new Coherence(context, context.getSharedPreferences("com.unity3d.coherence.prefs", 0)), "0.1.0", i);
        if (jInit == 0) {
            throw new IllegalStateException("unity_coherence_library_init returned null (source=" + i + ")");
        }
        this.apiPtr = jInit;
        this.identityProvider = new NativeIdentityProvider(this);
        this.attributesProvider = new NativeAttributesProvider(this);
        this.coherenceProvider = new NativeCoherenceProvider(this);
    }

    public static void init(CoherenceInitConfig coherenceInitConfig) {
        if (coherenceInitConfig == null) {
            throw new IllegalArgumentException("config must not be null");
        }
        if (instance == null) {
            synchronized (CoherenceLibrary.class) {
                try {
                    if (instance == null) {
                        instance = new CoherenceLibrary(coherenceInitConfig.getContext(), coherenceInitConfig.getSource());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static CoherenceLibrary getInstance() {
        CoherenceLibrary coherenceLibrary = instance;
        if (coherenceLibrary != null) {
            return coherenceLibrary;
        }
        throw new IllegalStateException("CoherenceLibrary not initialized — call CoherenceLibrary.init(CoherenceInitConfig) first");
    }

    public long apiPtr() {
        return this.apiPtr;
    }

    public AttributesProvider getAttributesProvider() {
        return this.attributesProvider;
    }
}
