package io.bidmachine.analytics.internal.d;

import io.bidmachine.analytics.internal.e.C4111a;
import io.bidmachine.analytics.internal.e.b;
import io.bidmachine.analytics.internal.f.C4112a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.List;
import javax.crypto.KeyAgreement;
import javax.crypto.spec.SecretKeySpec;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: renamed from: io.bidmachine.analytics.internal.d.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C4110a {
    private final byte[] a;
    private final String b;
    private final byte[] c;
    private final boolean d;
    private final byte[] e;
    private final Key f;
    private final b g;

    public C4110a(byte[] bArr, String str, byte[] bArr2, boolean z) {
        this.a = bArr;
        this.b = str;
        this.c = bArr2;
        this.d = z;
        KeyPair keyPairA = new C4112a().a();
        this.e = keyPairA.getPublic().getEncoded();
        this.f = keyPairA.getPrivate();
        this.g = new C4111a();
    }

    public final Key a() {
        return a(this.f, this.e, this.a);
    }

    public final byte[] b() {
        return this.e;
    }

    public final Key a(Key key, byte[] bArr, byte[] bArr2) {
        return new SecretKeySpec(this.g.a(a(key, bArr2), this.d ? a(bArr, bArr2) : null, this.c), this.b);
    }

    private final byte[] a(Key key, byte[] bArr) throws InvalidKeySpecException, NoSuchAlgorithmException, InvalidKeyException {
        PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("EC").generatePublic(new X509EncodedKeySpec(bArr));
        KeyAgreement keyAgreement = KeyAgreement.getInstance("ECDH");
        keyAgreement.init(key);
        keyAgreement.doPhase(publicKeyGeneratePublic, true);
        return keyAgreement.generateSecret();
    }

    public /* synthetic */ C4110a(byte[] bArr, String str, byte[] bArr2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(bArr, str, (i & 4) != 0 ? null : bArr2, (i & 8) != 0 ? false : z);
    }

    private final byte[] a(byte[] bArr, byte[] bArr2) throws IOException {
        List listMutableListOf = CollectionsKt__CollectionsKt.mutableListOf(ByteBuffer.wrap(bArr), ByteBuffer.wrap(bArr2));
        CollectionsKt__MutableCollectionsJVMKt.sort(listMutableListOf);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(((ByteBuffer) listMutableListOf.get(0)).array());
        byteArrayOutputStream.write(((ByteBuffer) listMutableListOf.get(1)).array());
        return byteArrayOutputStream.toByteArray();
    }
}
