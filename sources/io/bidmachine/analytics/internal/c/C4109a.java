package io.bidmachine.analytics.internal.c;

import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.analytics.internal.b.c;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.GCMParameterSpec;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: renamed from: io.bidmachine.analytics.internal.c.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C4109a implements b {
    public static final C1121a b = new C1121a(null);
    private final String a = "AES";

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.c.a$a, reason: collision with other inner class name */
    public static final class C1121a {
        public /* synthetic */ C1121a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C1121a() {
        }
    }

    @Override // io.bidmachine.analytics.internal.c.b
    public byte[] a(Key key, byte[] bArr) throws BadPaddingException, IllegalBlockSizeException {
        byte[] bArrA = c.a.a(12);
        byte[] bArrDoFinal = a(1, key, bArrA).doFinal(bArr);
        byte[] bArr2 = new byte[bArrDoFinal.length + 12];
        ArraysKt___ArraysJvmKt.copyInto(bArrA, bArr2, 0, 0, 12);
        ArraysKt___ArraysJvmKt.copyInto(bArrDoFinal, bArr2, 12, 0, bArrDoFinal.length);
        return bArr2;
    }

    @Override // io.bidmachine.analytics.internal.c.b
    public String getName() {
        return this.a;
    }

    private final Cipher a(int i, Key key, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        GCMParameterSpec gCMParameterSpec = new GCMParameterSpec(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, bArr);
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(i, key, gCMParameterSpec);
        return cipher;
    }
}
