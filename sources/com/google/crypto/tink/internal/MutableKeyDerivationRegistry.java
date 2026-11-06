package com.google.crypto.tink.internal;

import com.google.crypto.tink.Parameters;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class MutableKeyDerivationRegistry {
    public static final MutableKeyDerivationRegistry globalInstance = new MutableKeyDerivationRegistry();
    public final Map<Class<? extends Parameters>, InsecureKeyCreator<? extends Parameters>> creators = new HashMap();

    public interface InsecureKeyCreator<ParametersT extends Parameters> {
    }

    public static MutableKeyDerivationRegistry globalInstance() {
        return globalInstance;
    }

    public synchronized <ParametersT extends Parameters> void add(InsecureKeyCreator<ParametersT> creator, Class<ParametersT> parametersClass) throws GeneralSecurityException {
        try {
            InsecureKeyCreator<? extends Parameters> insecureKeyCreator = this.creators.get(parametersClass);
            if (insecureKeyCreator != null && !insecureKeyCreator.equals(creator)) {
                throw new GeneralSecurityException("Different key creator for parameters class already inserted");
            }
            this.creators.put(parametersClass, creator);
        } catch (Throwable th) {
            throw th;
        }
    }
}
