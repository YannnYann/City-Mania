package io.bidmachine.analytics.internal.f;

import java.security.KeyPair;
import java.security.KeyPairGenerator;

/* JADX INFO: renamed from: io.bidmachine.analytics.internal.f.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public interface InterfaceC4113b {
    default KeyPair a() {
        return b().generateKeyPair();
    }

    KeyPairGenerator b();
}
