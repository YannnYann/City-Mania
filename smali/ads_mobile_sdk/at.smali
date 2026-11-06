###### Class ads_mobile_sdk.at (ads_mobile_sdk.at)
.class public final Lads_mobile_sdk/at;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ex0;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/ex0;)V
    .registers 3

    .line 1
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lads_mobile_sdk/at;->a:Lads_mobile_sdk/ex0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lads_mobile_sdk/v01;
    .registers 11

    .line 1
    const-string v0, "unencryptedString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lads_mobile_sdk/s11;->w1:Lads_mobile_sdk/s11;

    .line 172
    sget-object v1, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    const/4 v1, 0x0

    .line 173
    :try_start_13
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    const/16 v4, 0x80

    .line 174
    invoke-virtual {v3, v4}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 175
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 176
    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    if-eqz v5, :cond_15e

    .line 179
    array-length v6, v5

    const/16 v7, 0x10

    if-eq v6, v7, :cond_2f

    goto/16 :goto_15e

    .line 186
    :cond_2f
    const-string v6, "AES/CBC/PKCS7PADDING"

    .line 187
    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 188
    invoke-virtual {v6, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 190
    invoke-virtual {v6}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    .line 191
    array-length v8, v3

    if-eq v8, v7, :cond_5e

    .line 192
    new-instance p1, Lads_mobile_sdk/m01;

    array-length v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iv had unexpected length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    goto/16 :goto_185

    :catchall_58
    move-exception p1

    goto/16 :goto_193

    :catch_5b
    move-exception p1

    goto/16 :goto_17e

    .line 196
    :cond_5e
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v6, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 199
    const-string v3, "HmacSHA1"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    .line 200
    invoke-virtual {v3, v4}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 201
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 202
    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    if-eqz v4, :cond_13e

    .line 204
    array-length v8, v4

    if-ne v8, v7, :cond_13e

    .line 208
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5, v4}, Lads_mobile_sdk/zs;->a([B[B)[B

    move-result-object v7

    if-nez v7, :cond_8e

    .line 210
    new-instance p1, Lads_mobile_sdk/m01;

    const-string v2, "Unable to compute sha1 of symmetric key."

    invoke-direct {p1, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    goto/16 :goto_185

    .line 212
    :cond_8e
    invoke-virtual {v6}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v6

    const-string v8, "getIV(...)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v6}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->plus([B[B)[B

    move-result-object v6

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->plus([B[B)[B

    move-result-object p1

    .line 216
    new-instance v6, Ljava/security/spec/X509EncodedKeySpec;

    iget-object v7, p0, Lads_mobile_sdk/at;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v7}, Lads_mobile_sdk/ex0;->r()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    invoke-static {v7, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 217
    const-string v7, "RSA"

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    .line 220
    const-string v7, "RSA/None/OAEPwithSHA-1andMGF1Padding"

    .line 222
    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    invoke-virtual {v7, v2, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 224
    invoke-static {}, Lads_mobile_sdk/is1;->v()Lads_mobile_sdk/hs1;

    move-result-object v2

    .line 225
    invoke-static {v5}, Lads_mobile_sdk/du;->a([B)Lads_mobile_sdk/du;

    move-result-object v5

    invoke-virtual {v2, v5}, Lads_mobile_sdk/hs1;->b(Lads_mobile_sdk/du;)Lads_mobile_sdk/hs1;

    move-result-object v2

    .line 226
    invoke-static {v4}, Lads_mobile_sdk/du;->a([B)Lads_mobile_sdk/du;

    move-result-object v4

    invoke-virtual {v2, v4}, Lads_mobile_sdk/hs1;->a(Lads_mobile_sdk/du;)Lads_mobile_sdk/hs1;

    move-result-object v2

    .line 227
    invoke-virtual {v2}, Lads_mobile_sdk/hs1;->h()Lads_mobile_sdk/hs1;

    move-result-object v2

    .line 228
    invoke-virtual {v2}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/is1;

    .line 229
    invoke-virtual {v2}, Lads_mobile_sdk/f;->c()[B

    move-result-object v2

    .line 231
    invoke-virtual {v7, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 235
    iget-object v4, p0, Lads_mobile_sdk/at;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v4}, Lads_mobile_sdk/ex0;->s()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb

    .line 236
    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 237
    array-length v6, v4

    const/4 v7, 0x5

    if-eq v6, v7, :cond_11a

    .line 238
    new-instance p1, Lads_mobile_sdk/m01;

    .line 239
    array-length v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sha1 has of public key has unexpected size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-direct {p1, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    goto/16 :goto_185

    .line 246
    :cond_11a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 247
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 248
    invoke-static {v4, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->plus([B[B)[B

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->plus([B[B)[B

    move-result-object v2

    .line 251
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, p1}, Lads_mobile_sdk/zs;->a(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p1

    .line 252
    invoke-static {v2, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->plus([B[B)[B

    move-result-object p1

    .line 257
    new-instance v2, Lads_mobile_sdk/q01;

    invoke-static {p1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    :goto_13c
    move-object p1, v2

    goto :goto_185

    .line 258
    :cond_13e
    new-instance p1, Lads_mobile_sdk/m01;

    if-eqz v4, :cond_148

    array-length v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_149

    :cond_148
    move-object v2, v1

    .line 259
    :goto_149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hmac is unexpected size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    goto :goto_185

    .line 260
    :cond_15e
    :goto_15e
    new-instance p1, Lads_mobile_sdk/m01;

    if-eqz v5, :cond_168

    .line 261
    array-length v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_169

    :cond_168
    move-object v2, v1

    .line 262
    :goto_169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encoded symmetric key had unexected length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-direct {p1, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17d} :catch_5b
    .catchall {:try_start_13 .. :try_end_17d} :catchall_58

    goto :goto_185

    .line 334
    :goto_17e
    :try_start_17e
    new-instance v2, Lads_mobile_sdk/j01;

    const/4 v3, 0x6

    invoke-direct {v2, p1, v1, v1, v3}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    goto :goto_13c

    .line 400
    :goto_185
    instance-of v2, p1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_18f

    .line 401
    move-object v2, p1

    check-cast v2, Lads_mobile_sdk/i01;

    invoke-static {v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_18f
    .catchall {:try_start_17e .. :try_end_18f} :catchall_58

    .line 402
    :cond_18f
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    .line 411
    :goto_193
    :try_start_193
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 415
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_1cb

    .line 417
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1a8

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1a8

    .line 423
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1a8

    :catchall_1a6
    move-exception p1

    goto :goto_1cc

    .line 429
    :cond_1a8
    :goto_1a8
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1c3

    .line 430
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1bb

    .line 431
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_1b5

    throw p1

    .line 432
    :cond_1b5
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 433
    :cond_1bb
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 434
    :cond_1c3
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 435
    :cond_1cb
    throw p1
    :try_end_1cc
    .catchall {:try_start_193 .. :try_end_1cc} :catchall_1a6

    .line 436
    :goto_1cc
    :try_start_1cc
    throw p1
    :try_end_1cd
    .catchall {:try_start_1cc .. :try_end_1cd} :catchall_1cd

    :catchall_1cd
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
