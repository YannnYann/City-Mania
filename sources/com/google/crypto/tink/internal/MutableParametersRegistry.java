package com.google.crypto.tink.internal;

import com.google.crypto.tink.Parameters;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class MutableParametersRegistry {
    public static final MutableParametersRegistry globalInstance = new MutableParametersRegistry();
    public final Map<String, Parameters> parametersMap = new HashMap();

    public static MutableParametersRegistry globalInstance() {
        return globalInstance;
    }

    public synchronized void put(String name, Parameters value) throws GeneralSecurityException {
        try {
            if (this.parametersMap.containsKey(name)) {
                if (this.parametersMap.get(name).equals(value)) {
                    return;
                }
                throw new GeneralSecurityException("Parameters object with name " + name + " already exists (" + this.parametersMap.get(name) + "), cannot insert " + value);
            }
            this.parametersMap.put(name, value);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void putAll(Map<String, Parameters> values) throws GeneralSecurityException {
        for (Map.Entry<String, Parameters> entry : values.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }
}
