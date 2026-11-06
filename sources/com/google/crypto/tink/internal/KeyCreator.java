package com.google.crypto.tink.internal;

import com.google.crypto.tink.Key;
import com.google.crypto.tink.Parameters;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public interface KeyCreator<ParametersT extends Parameters> {
    Key createKey(ParametersT parameters, Integer idRequirement) throws GeneralSecurityException;
}
