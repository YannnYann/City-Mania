###### Class ads_mobile_sdk.p70 (ads_mobile_sdk.p70)
.class public final Lads_mobile_sdk/p70;
.super Lads_mobile_sdk/nc1;
.source "SourceFile"


# instance fields
.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lads_mobile_sdk/g83;

.field public final e:Lads_mobile_sdk/ur3;

.field public final f:Lads_mobile_sdk/ex0;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/ur3;Lads_mobile_sdk/ex0;)V
    .registers 7

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 41
    invoke-direct {p0, v0, v1}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;I)V

    .line 42
    iput-object p1, p0, Lads_mobile_sdk/p70;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 43
    iput-object p2, p0, Lads_mobile_sdk/p70;->d:Lads_mobile_sdk/g83;

    .line 44
    iput-object p3, p0, Lads_mobile_sdk/p70;->e:Lads_mobile_sdk/ur3;

    .line 45
    iput-object p4, p0, Lads_mobile_sdk/p70;->f:Lads_mobile_sdk/ex0;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lads_mobile_sdk/v01;
    .registers 8

    .line 141
    const-string v0, "adString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 142
    const-string v2, "&request_id="

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_31

    .line 144
    new-instance v0, Lads_mobile_sdk/q01;

    .line 145
    new-instance v2, Lkotlin/Pair;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "substring(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0xc

    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    invoke-direct {v0, v2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 150
    :cond_31
    new-instance p0, Lads_mobile_sdk/m01;

    const-string v0, "Invalid ad string, no request ID present"

    .line 151
    sget-object v1, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 152
    invoke-direct {p0, v0, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/tf3;)Lads_mobile_sdk/v01;
    .registers 9

    .line 1
    const-string v0, "CryptoUtils.decrypt"

    const-string v1, "CryptoUtil.getHandle: CleartextKeysetHandle.read"

    const-string v2, "encodedEncryptedAdResponseBlob"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "requestId"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "signalGenerationData"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object p3, p3, Lads_mobile_sdk/tf3;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object p3, p3, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adResponseEncryptionKey:Ljava/lang/String;

    if-nez p3, :cond_23

    .line 101
    new-instance p1, Lads_mobile_sdk/m01;

    .line 102
    const-string p2, "An encrypted S2S ad response had no adResponseEncryptionKey"

    .line 103
    sget-object p3, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 104
    invoke-direct {p1, p2, p3}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p1

    :cond_23
    const/16 v2, 0xb

    .line 105
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 107
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 108
    :try_start_2e
    invoke-static {p3}, Lads_mobile_sdk/m70;->a(Ljava/lang/String;)Lads_mobile_sdk/q01;

    move-result-object p3
    :try_end_32
    .catch Ljava/security/GeneralSecurityException; {:try_start_2e .. :try_end_32} :catch_52
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_32} :catch_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_32} :catch_33

    goto :goto_60

    :catch_33
    move-exception p3

    .line 116
    iget-object v1, p0, Lads_mobile_sdk/p70;->e:Lads_mobile_sdk/ur3;

    check-cast v1, Lads_mobile_sdk/as3;

    const-string v4, "CryptoUtil.getHandle: Base64.decode"

    invoke-virtual {v1, v4, p3}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    new-instance v1, Lads_mobile_sdk/j01;

    invoke-direct {v1, p3, v3, v3, v2}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    :goto_42
    move-object p3, v1

    goto :goto_60

    :catch_44
    move-exception p3

    .line 118
    iget-object v4, p0, Lads_mobile_sdk/p70;->e:Lads_mobile_sdk/ur3;

    check-cast v4, Lads_mobile_sdk/as3;

    invoke-virtual {v4, v1, p3}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    new-instance v1, Lads_mobile_sdk/j01;

    invoke-direct {v1, p3, v3, v3, v2}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    goto :goto_42

    :catch_52
    move-exception p3

    .line 120
    iget-object v4, p0, Lads_mobile_sdk/p70;->e:Lads_mobile_sdk/ur3;

    check-cast v4, Lads_mobile_sdk/as3;

    invoke-virtual {v4, v1, p3}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    new-instance v1, Lads_mobile_sdk/j01;

    invoke-direct {v1, p3, v3, v3, v2}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    goto :goto_42

    .line 122
    :goto_60
    instance-of v1, p3, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_67

    check-cast p3, Lads_mobile_sdk/i01;

    goto :goto_ba

    .line 123
    :cond_67
    const-string v1, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lads_mobile_sdk/q01;

    .line 124
    iget-object p3, p3, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 125
    check-cast p3, Lcom/google/crypto/tink/KeysetHandle;

    .line 130
    :try_start_72
    invoke-static {}, Lcom/google/crypto/tink/RegistryConfiguration;->get()Lcom/google/crypto/tink/Configuration;

    move-result-object v1

    const-class v4, Lcom/google/crypto/tink/Aead;

    invoke-virtual {p3, v1, v4}, Lcom/google/crypto/tink/KeysetHandle;->getPrimitive(Lcom/google/crypto/tink/Configuration;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/crypto/tink/Aead;

    .line 131
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v4, "getBytes(...)"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p1, p2}, Lcom/google/crypto/tink/Aead;->decrypt([B[B)[B

    move-result-object p1

    const-string p2, "decrypt(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 132
    new-instance p3, Lads_mobile_sdk/q01;

    invoke-direct {p3, p2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_9c
    .catch Ljava/security/GeneralSecurityException; {:try_start_72 .. :try_end_9c} :catch_9f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_72 .. :try_end_9c} :catch_9d

    goto :goto_ba

    :catch_9d
    move-exception p1

    goto :goto_a1

    :catch_9f
    move-exception p1

    goto :goto_ae

    .line 137
    :goto_a1
    iget-object p2, p0, Lads_mobile_sdk/p70;->e:Lads_mobile_sdk/ur3;

    check-cast p2, Lads_mobile_sdk/as3;

    invoke-virtual {p2, v0, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    new-instance p3, Lads_mobile_sdk/j01;

    invoke-direct {p3, p1, v3, v3, v2}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    goto :goto_ba

    .line 139
    :goto_ae
    iget-object p2, p0, Lads_mobile_sdk/p70;->e:Lads_mobile_sdk/ur3;

    check-cast p2, Lads_mobile_sdk/as3;

    invoke-virtual {p2, v0, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    new-instance p3, Lads_mobile_sdk/j01;

    invoke-direct {p3, p1, v3, v3, v2}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    :goto_ba
    return-object p3
.end method

.method public final g()Lads_mobile_sdk/v01;
    .registers 8

    .line 1
    const-string v0, "CryptoUtils.generateKey"

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 73
    :try_start_4
    iget-object v3, p0, Lads_mobile_sdk/p70;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    const-string v4, "gads:block_init_on_crypto:enabled"

    .line 75
    const-string v5, "key"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v3, v4, v5, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_1e
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_1e} :catch_31
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1e} :catch_24

    if-nez v3, :cond_33

    .line 92
    :try_start_20
    invoke-static {}, Lcom/google/crypto/tink/aead/AeadConfig;->register()V
    :try_end_23
    .catch Ljava/security/GeneralSecurityException; {:try_start_20 .. :try_end_23} :catch_26
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_33

    :catch_24
    move-exception v3

    goto :goto_59

    :catch_26
    move-exception v3

    .line 94
    :try_start_27
    iget-object v4, p0, Lads_mobile_sdk/p70;->e:Lads_mobile_sdk/ur3;

    const-string v5, "CryptoUtil: AeadConfig.register()"

    check-cast v4, Lads_mobile_sdk/as3;

    invoke-virtual {v4, v5, v3}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_33

    :catch_31
    move-exception v3

    goto :goto_66

    .line 95
    :cond_33
    :goto_33
    sget-object v3, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->AES128_GCM:Lcom/google/crypto/tink/aead/AesGcmParameters;

    invoke-static {v3}, Lcom/google/crypto/tink/KeysetHandle;->generateNew(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v3

    .line 96
    new-instance v4, Lads_mobile_sdk/q01;

    .line 99
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/crypto/tink/TinkProtoKeysetFormat;->serializeKeyset(Lcom/google/crypto/tink/KeysetHandle;Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v3

    const/16 v5, 0xb

    .line 100
    invoke-static {v3, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    const-string v5, "encode(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 102
    invoke-direct {v4, v5}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_58
    .catch Ljava/security/GeneralSecurityException; {:try_start_27 .. :try_end_58} :catch_31
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_58} :catch_24

    goto :goto_72

    .line 114
    :goto_59
    iget-object v4, p0, Lads_mobile_sdk/p70;->e:Lads_mobile_sdk/ur3;

    check-cast v4, Lads_mobile_sdk/as3;

    invoke-virtual {v4, v0, v3}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    new-instance v4, Lads_mobile_sdk/j01;

    invoke-direct {v4, v3, v2, v2, v1}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    goto :goto_72

    .line 116
    :goto_66
    iget-object v4, p0, Lads_mobile_sdk/p70;->e:Lads_mobile_sdk/ur3;

    check-cast v4, Lads_mobile_sdk/as3;

    invoke-virtual {v4, v0, v3}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    new-instance v4, Lads_mobile_sdk/j01;

    invoke-direct {v4, v3, v2, v2, v1}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    :goto_72
    return-object v4
.end method

.method public final i()V
    .registers 9

    .line 57
    iget-object v0, p0, Lads_mobile_sdk/p70;->d:Lads_mobile_sdk/g83;

    sget-object v1, Lads_mobile_sdk/s11;->r:Lads_mobile_sdk/s11;

    .line 205
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 206
    new-instance v3, Lads_mobile_sdk/ks3;

    .line 207
    new-instance v4, Lads_mobile_sdk/n03;

    invoke-direct {v4}, Lads_mobile_sdk/n03;-><init>()V

    .line 208
    new-instance v5, Lads_mobile_sdk/tn1;

    invoke-direct {v5}, Lads_mobile_sdk/tn1;-><init>()V

    .line 209
    new-instance v6, Lads_mobile_sdk/m33;

    invoke-direct {v6}, Lads_mobile_sdk/m33;-><init>()V

    .line 210
    new-instance v7, Lads_mobile_sdk/zb;

    invoke-direct {v7}, Lads_mobile_sdk/zb;-><init>()V

    .line 211
    invoke-direct {v3, v4, v5, v6, v7}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 212
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v4

    .line 213
    iget-object v4, v4, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v5, "CryptoUtil: AeadConfig.register()"

    const/4 v6, 0x0

    if-nez v4, :cond_83

    .line 214
    invoke-static {v0, v1, v2, v3}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 215
    :try_start_30
    invoke-static {}, Lcom/google/crypto/tink/aead/AeadConfig;->register()V
    :try_end_33
    .catch Ljava/security/GeneralSecurityException; {:try_start_30 .. :try_end_33} :catch_36
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_3e

    :catchall_34
    move-exception v1

    goto :goto_44

    :catch_36
    move-exception v1

    .line 217
    :try_start_37
    iget-object v2, p0, Lads_mobile_sdk/p70;->e:Lads_mobile_sdk/ur3;

    check-cast v2, Lads_mobile_sdk/as3;

    invoke-virtual {v2, v5, v1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    :goto_3e
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_34

    .line 375
    invoke-static {v0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_9f

    .line 383
    :goto_44
    :try_start_44
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 387
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_7c

    .line 389
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_59

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_59

    .line 395
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_59

    :catchall_57
    move-exception v1

    goto :goto_7d

    .line 401
    :cond_59
    :goto_59
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_74

    .line 402
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_6c

    .line 403
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_66

    throw v1

    .line 404
    :cond_66
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 405
    :cond_6c
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 406
    :cond_74
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 407
    :cond_7c
    throw v1
    :try_end_7d
    .catchall {:try_start_44 .. :try_end_7d} :catchall_57

    .line 408
    :goto_7d
    :try_start_7d
    throw v1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7e

    :catchall_7e
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 442
    :cond_83
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 443
    :try_start_8c
    invoke-static {}, Lcom/google/crypto/tink/aead/AeadConfig;->register()V
    :try_end_8f
    .catch Ljava/security/GeneralSecurityException; {:try_start_8c .. :try_end_8f} :catch_92
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_9a

    :catchall_90
    move-exception v1

    goto :goto_a0

    :catch_92
    move-exception v1

    .line 445
    :try_start_93
    iget-object v2, p0, Lads_mobile_sdk/p70;->e:Lads_mobile_sdk/ur3;

    check-cast v2, Lads_mobile_sdk/as3;

    invoke-virtual {v2, v5, v1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    :goto_9a
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_90

    .line 640
    invoke-static {v0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_9f
    return-void

    .line 648
    :goto_a0
    :try_start_a0
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 652
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_d8

    .line 654
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_b5

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_b5

    .line 660
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_b5

    :catchall_b3
    move-exception v1

    goto :goto_d9

    .line 666
    :cond_b5
    :goto_b5
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_d0

    .line 667
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_c8

    .line 668
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_c2

    throw v1

    .line 669
    :cond_c2
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 670
    :cond_c8
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 671
    :cond_d0
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 672
    :cond_d8
    throw v1
    :try_end_d9
    .catchall {:try_start_a0 .. :try_end_d9} :catchall_b3

    .line 673
    :goto_d9
    :try_start_d9
    throw v1
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_da

    :catchall_da
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/n70;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/n70;

    iget v1, v0, Lads_mobile_sdk/n70;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/n70;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/n70;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/n70;-><init>(Lads_mobile_sdk/p70;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/n70;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 42
    iget v2, v0, Lads_mobile_sdk/n70;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object v0, v0, Lads_mobile_sdk/n70;->a:Lads_mobile_sdk/p70;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5e

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lads_mobile_sdk/p70;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    const-string v2, "key"

    const-string v4, "gads:block_init_on_crypto:enabled"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v4, v2, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8b

    .line 62
    iput-object p0, v0, Lads_mobile_sdk/n70;->a:Lads_mobile_sdk/p70;

    iput v3, v0, Lads_mobile_sdk/n70;->d:I

    invoke-static {v0}, Lkotlinx/coroutines/YieldKt;->yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5d

    return-object v1

    :cond_5d
    move-object v0, p0

    .line 63
    :goto_5e
    iget-object v1, v0, Lads_mobile_sdk/p70;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/o70;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Lads_mobile_sdk/o70;-><init>(Lads_mobile_sdk/p70;Lkotlin/coroutines/Continuation;)V

    move-object v0, v2

    .line 64
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 65
    const-string v3, "<this>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "block"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, p1, v0}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 324
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 327
    :cond_8b
    invoke-virtual {p0}, Lads_mobile_sdk/p70;->i()V

    .line 328
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
