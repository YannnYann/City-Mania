package ads_mobile_sdk;

import android.util.Base64;
import com.google.crypto.tink.Aead;
import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.KeysetHandle;
import com.google.crypto.tink.RegistryConfiguration;
import com.google.crypto.tink.TinkProtoKeysetFormat;
import com.google.crypto.tink.aead.AeadConfig;
import com.google.crypto.tink.aead.PredefinedAeadParameters;
import com.ironsource.C3522b4;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class p70 extends nc1 {
    public final CoroutineScope c;
    public final g83 d;
    public final ur3 e;
    public final ex0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p70(CoroutineScope backgroundScope, g83 rootTraceCreator, ur3 traceLogger, ex0 flags) {
        super((s11) null, 3);
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.c = backgroundScope;
        this.d = rootTraceCreator;
        this.e = traceLogger;
        this.f = flags;
    }

    public final v01 a(String encodedEncryptedAdResponseBlob, String requestId, tf3 signalGenerationData) {
        j01 j01Var;
        Object objA;
        Intrinsics.checkNotNullParameter(encodedEncryptedAdResponseBlob, "encodedEncryptedAdResponseBlob");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(signalGenerationData, "signalGenerationData");
        String str = signalGenerationData.c.adResponseEncryptionKey;
        if (str == null) {
            return new m01("An encrypted S2S ad response had no adResponseEncryptionKey", kk1.a);
        }
        byte[] bArrDecode = Base64.decode(encodedEncryptedAdResponseBlob, 11);
        Intrinsics.checkNotNull(bArrDecode);
        try {
            objA = m70.a(str);
        } catch (IOException e) {
            ((as3) this.e).a("CryptoUtil.getHandle: CleartextKeysetHandle.read", (Throwable) e);
            j01Var = new j01(e, null, null, 6);
            objA = j01Var;
        } catch (IllegalArgumentException e2) {
            ((as3) this.e).a("CryptoUtil.getHandle: Base64.decode", (Throwable) e2);
            j01Var = new j01(e2, null, null, 6);
            objA = j01Var;
        } catch (GeneralSecurityException e3) {
            ((as3) this.e).a("CryptoUtil.getHandle: CleartextKeysetHandle.read", (Throwable) e3);
            j01Var = new j01(e3, null, null, 6);
            objA = j01Var;
        }
        if (objA instanceof i01) {
            return (i01) objA;
        }
        Intrinsics.checkNotNull(objA, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
        try {
            Aead aead = (Aead) ((KeysetHandle) ((q01) objA).b).getPrimitive(RegistryConfiguration.get(), Aead.class);
            Charset charset = Charsets.UTF_8;
            byte[] bytes = requestId.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            byte[] bArrDecrypt = aead.decrypt(bArrDecode, bytes);
            Intrinsics.checkNotNullExpressionValue(bArrDecrypt, "decrypt(...)");
            return new q01(new String(bArrDecrypt, charset));
        } catch (UnsupportedEncodingException e4) {
            ((as3) this.e).a("CryptoUtils.decrypt", (Throwable) e4);
            return new j01(e4, null, null, 6);
        } catch (GeneralSecurityException e5) {
            ((as3) this.e).a("CryptoUtils.decrypt", (Throwable) e5);
            return new j01(e5, null, null, 6);
        }
    }

    public final v01 g() {
        try {
            try {
                ex0 ex0Var = this.f;
                ex0Var.getClass();
                Intrinsics.checkNotNullParameter("gads:block_init_on_crypto:enabled", C3522b4.i.W);
                if (!((Boolean) ex0Var.a("gads:block_init_on_crypto:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                    try {
                        AeadConfig.register();
                    } catch (GeneralSecurityException e) {
                        ((as3) this.e).a("CryptoUtil: AeadConfig.register()", (Throwable) e);
                    }
                }
                byte[] bArrEncode = Base64.encode(TinkProtoKeysetFormat.serializeKeyset(KeysetHandle.generateNew(PredefinedAeadParameters.AES128_GCM), InsecureSecretKeyAccess.get()), 11);
                Intrinsics.checkNotNullExpressionValue(bArrEncode, "encode(...)");
                return new q01(new String(bArrEncode, Charsets.UTF_8));
            } catch (GeneralSecurityException e2) {
                ((as3) this.e).a("CryptoUtils.generateKey", (Throwable) e2);
                return new j01(e2, null, null, 6);
            }
        } catch (IOException e3) {
            ((as3) this.e).a("CryptoUtils.generateKey", (Throwable) e3);
            return new j01(e3, null, null, 6);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.nc1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object u(kotlin.coroutines.Continuation r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.n70
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.n70 r0 = (ads_mobile_sdk.n70) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.n70 r0 = new ads_mobile_sdk.n70
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            ads_mobile_sdk.p70 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L5e
        L2b:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L33:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.ex0 r8 = r7.f
            r8.getClass()
            java.lang.String r2 = "key"
            java.lang.String r4 = "gads:block_init_on_crypto:enabled"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r2)
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
            ads_mobile_sdk.ir r5 = ads_mobile_sdk.yr.b
            java.lang.Object r8 = r8.a(r4, r2, r5)
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 != 0) goto L8b
            r0.a = r7
            r0.d = r3
            java.lang.Object r8 = kotlinx.coroutines.YieldKt.yield(r0)
            if (r8 != r1) goto L5d
            return r1
        L5d:
            r0 = r7
        L5e:
            kotlinx.coroutines.CoroutineScope r1 = r0.c
            ads_mobile_sdk.o70 r8 = new ads_mobile_sdk.o70
            r2 = 0
            r8.<init>(r0, r2)
            r0 = r2
            kotlin.coroutines.EmptyCoroutineContext r2 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            java.lang.String r3 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r3)
            java.lang.String r3 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r3)
            java.lang.String r3 = "block"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r3)
            ads_mobile_sdk.ws3 r4 = new ads_mobile_sdk.ws3
            r4.<init>(r8, r0)
            r5 = 2
            r6 = 0
            r3 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r1, r2, r3, r4, r5, r6)
            ads_mobile_sdk.q01 r8 = new ads_mobile_sdk.q01
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            r8.<init>(r0)
            return r8
        L8b:
            r7.i()
            ads_mobile_sdk.q01 r8 = new ads_mobile_sdk.q01
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            r8.<init>(r0)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.p70.u(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void i() {
        g83 g83Var = this.d;
        s11 s11Var = s11.CUI_NAME_SDKINIT_INIT_CRYPTO;
        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                try {
                    AeadConfig.register();
                } catch (GeneralSecurityException e) {
                    ((as3) this.e).a("CryptoUtil: AeadConfig.register()", (Throwable) e);
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(tu2VarA, null);
                return;
            } catch (Throwable th) {
                try {
                    tu2VarA.b(th);
                    if (!(th instanceof v24)) {
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            tu2VarA.a(th);
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            if (!(th instanceof CancellationException)) {
                                if (!(th instanceof w01)) {
                                    throw new b01(th);
                                }
                                throw th;
                            }
                            throw new wz0(th);
                        }
                        throw new i21(th);
                    }
                    throw th;
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.closeFinally(tu2VarA, th2);
                        throw th3;
                    }
                }
            }
        }
        rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
        try {
            try {
                AeadConfig.register();
            } catch (Throwable th4) {
                try {
                    rr3VarA.b(th4);
                    if (!(th4 instanceof v24)) {
                        if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                            rr3VarA.a(th4);
                        }
                        if (!(th4 instanceof TimeoutCancellationException)) {
                            if (!(th4 instanceof CancellationException)) {
                                if (!(th4 instanceof w01)) {
                                    throw new b01(th4);
                                }
                                throw th4;
                            }
                            throw new wz0(th4);
                        }
                        throw new i21(th4);
                    }
                    throw th4;
                } catch (Throwable th5) {
                    try {
                        throw th5;
                    } catch (Throwable th6) {
                        CloseableKt.closeFinally(rr3VarA, th5);
                        throw th6;
                    }
                }
            }
        } catch (GeneralSecurityException e2) {
            ((as3) this.e).a("CryptoUtil: AeadConfig.register()", (Throwable) e2);
        }
        Unit unit2 = Unit.INSTANCE;
        CloseableKt.closeFinally(rr3VarA, null);
    }

    public static v01 a(String adString) {
        Intrinsics.checkNotNullParameter(adString, "adString");
        int iLastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) adString, "&request_id=", 0, false, 6, (Object) null);
        if (iLastIndexOf$default != -1) {
            String strSubstring = adString.substring(0, iLastIndexOf$default);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            String strSubstring2 = adString.substring(iLastIndexOf$default + 12);
            Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
            return new q01(new Pair(strSubstring, strSubstring2));
        }
        return new m01("Invalid ad string, no request ID present", kk1.a);
    }
}
