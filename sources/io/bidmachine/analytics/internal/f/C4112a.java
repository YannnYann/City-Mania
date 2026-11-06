package io.bidmachine.analytics.internal.f;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.spec.ECGenParameterSpec;

/* JADX INFO: renamed from: io.bidmachine.analytics.internal.f.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C4112a implements InterfaceC4113b {
    private final KeyPairGenerator a;

    public C4112a() throws NoSuchAlgorithmException, InvalidAlgorithmParameterException {
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("EC");
        keyPairGenerator.initialize(new ECGenParameterSpec("secp256r1"));
        this.a = keyPairGenerator;
    }

    @Override // io.bidmachine.analytics.internal.f.InterfaceC4113b
    public KeyPairGenerator b() {
        return this.a;
    }
}
