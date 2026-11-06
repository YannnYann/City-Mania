package com.unity3d.coherence;

/* JADX INFO: loaded from: classes4.dex */
public final class NativeAttributesProvider implements AttributesProvider {
    public final CoherenceLibrary library;

    public NativeAttributesProvider(CoherenceLibrary coherenceLibrary) {
        this.library = coherenceLibrary;
    }

    @Override // com.unity3d.coherence.AttributesProvider
    public byte[] getCommonAttributes(CommonAttributesConfig commonAttributesConfig) {
        if (commonAttributesConfig == null) {
            throw new IllegalArgumentException("config must not be null");
        }
        return CoherenceBridge.getCommonAttributes(this.library.apiPtr(), commonAttributesConfig.getProductId(), commonAttributesConfig.getEventId());
    }
}
