###### Class ads_mobile_sdk.e9 (ads_mobile_sdk.e9)
.class public final Lads_mobile_sdk/e9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/File;

.field public volatile b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "gma_ad_responses"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lads_mobile_sdk/e9;->a:Ljava/io/File;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x1

    .line 1
    const-string v1, "content"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_6
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 3
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v2, "getBytes(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 4
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 5
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, p0

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v1, :cond_4d

    aget-byte v4, p0, v3

    .line 7
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v5, "%02x"

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "format(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v3, v0

    goto :goto_2b

    .line 8
    :cond_4d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_56} :catch_57

    return-object p0

    :catch_57
    move-exception p0

    .line 14
    const-string v0, "Failed to calculate checksum"

    const/4 v1, 0x4

    invoke-static {v0, p0, v1}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/v01;
    .registers 7

    .line 22
    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lads_mobile_sdk/s11;->J1:Lads_mobile_sdk/s11;

    .line 260
    sget-object v1, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 261
    :try_start_12
    iget-boolean v1, p0, Lads_mobile_sdk/e9;->b:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    goto :goto_30

    .line 262
    :cond_18
    iget-object v1, p0, Lads_mobile_sdk/e9;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lads_mobile_sdk/e9;->b:Z

    .line 263
    iget-boolean v1, p0, Lads_mobile_sdk/e9;->b:Z

    if-nez v1, :cond_30

    .line 264
    new-instance p1, Lads_mobile_sdk/m01;

    const-string p2, "Cache directory not found"

    .line 265
    sget-object v1, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 266
    invoke-direct {p1, p2, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    goto :goto_7c

    :catchall_2e
    move-exception p1

    goto :goto_8b

    .line 267
    :cond_30
    :goto_30
    invoke-virtual {p0, p1}, Lads_mobile_sdk/e9;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_40

    new-instance p1, Lads_mobile_sdk/m01;

    const-string p2, "Invalid filename"

    .line 268
    sget-object v1, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 269
    invoke-direct {p1, p2, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    goto :goto_7c

    .line 270
    :cond_40
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_50

    .line 271
    new-instance p1, Lads_mobile_sdk/m01;

    const-string p2, "File not found"

    .line 272
    sget-object v1, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 273
    invoke-direct {p1, p2, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V
    :try_end_4f
    .catchall {:try_start_12 .. :try_end_4f} :catchall_2e

    goto :goto_7c

    .line 274
    :cond_50
    :try_start_50
    invoke-static {p1, v3, v2, v3}, Lkotlin/io/FilesKt__FileReadWriteKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_6c

    .line 276
    invoke-static {p1}, Lads_mobile_sdk/e9;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6c

    .line 280
    new-instance p1, Lads_mobile_sdk/m01;

    const-string p2, "Checksum mismatch for file"

    .line 281
    sget-object v1, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 282
    invoke-direct {p1, p2, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    goto :goto_7c

    :catch_6a
    move-exception p1

    goto :goto_73

    .line 283
    :cond_6c
    new-instance p2, Lads_mobile_sdk/q01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_71} :catch_6a
    .catchall {:try_start_50 .. :try_end_71} :catchall_2e

    :goto_71
    move-object p1, p2

    goto :goto_7c

    .line 285
    :goto_73
    :try_start_73
    new-instance p2, Lads_mobile_sdk/j01;

    const-string v1, "Failed to read file"

    const/4 v2, 0x2

    invoke-direct {p2, p1, v3, v1, v2}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    goto :goto_71

    .line 390
    :goto_7c
    instance-of p2, p1, Lads_mobile_sdk/i01;

    if-eqz p2, :cond_87

    .line 391
    move-object p2, p1

    check-cast p2, Lads_mobile_sdk/i01;

    const/4 v1, 0x0

    .line 392
    invoke-static {p2, v1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_87
    .catchall {:try_start_73 .. :try_end_87} :catchall_2e

    .line 393
    :cond_87
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    .line 401
    :goto_8b
    :try_start_8b
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 405
    instance-of p2, p1, Lads_mobile_sdk/v24;

    if-nez p2, :cond_c3

    .line 407
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_a0

    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_a0

    .line 413
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_a0

    :catchall_9e
    move-exception p1

    goto :goto_c4

    .line 419
    :cond_a0
    :goto_a0
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_bb

    .line 420
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_b3

    .line 421
    instance-of p2, p1, Lads_mobile_sdk/w01;

    if-eqz p2, :cond_ad

    throw p1

    .line 422
    :cond_ad
    new-instance p2, Lads_mobile_sdk/b01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 423
    :cond_b3
    new-instance p2, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p2

    .line 424
    :cond_bb
    new-instance p2, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p2

    .line 425
    :cond_c3
    throw p1
    :try_end_c4
    .catchall {:try_start_8b .. :try_end_c4} :catchall_9e

    .line 426
    :goto_c4
    :try_start_c4
    throw p1
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c5

    :catchall_c5
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final a()Ljava/util/List;
    .registers 2

    .line 16
    iget-boolean v0, p0, Lads_mobile_sdk/e9;->b:Z

    if-eqz v0, :cond_5

    goto :goto_16

    .line 17
    :cond_5
    iget-object v0, p0, Lads_mobile_sdk/e9;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lads_mobile_sdk/e9;->b:Z

    .line 18
    iget-boolean v0, p0, Lads_mobile_sdk/e9;->b:Z

    if-nez v0, :cond_16

    .line 19
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 21
    :cond_16
    :goto_16
    iget-object v0, p0, Lads_mobile_sdk/e9;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_25

    goto :goto_26

    :cond_25
    return-object v0

    :cond_26
    :goto_26
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/v01;
    .registers 9

    .line 1
    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lads_mobile_sdk/s11;->M1:Lads_mobile_sdk/s11;

    .line 199
    sget-object v1, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 200
    :try_start_17
    iget-boolean v1, p0, Lads_mobile_sdk/e9;->b:Z

    if-eqz v1, :cond_26

    new-instance v1, Lads_mobile_sdk/q01;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v1, v2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    goto :goto_50

    :catchall_23
    move-exception p1

    goto/16 :goto_ec

    .line 201
    :cond_26
    iget-boolean v1, p0, Lads_mobile_sdk/e9;->b:Z

    if-eqz v1, :cond_2b

    goto :goto_47

    .line 202
    :cond_2b
    iget-object v1, p0, Lads_mobile_sdk/e9;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lads_mobile_sdk/e9;->b:Z

    .line 203
    iget-boolean v1, p0, Lads_mobile_sdk/e9;->b:Z

    if-nez v1, :cond_47

    .line 204
    iget-object v1, p0, Lads_mobile_sdk/e9;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_47

    .line 205
    new-instance v1, Lads_mobile_sdk/m01;

    const-string v2, "Failed to create cache directory"

    invoke-direct {v1, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    goto :goto_50

    .line 207
    :cond_47
    :goto_47
    iput-boolean v2, p0, Lads_mobile_sdk/e9;->b:Z

    .line 208
    new-instance v1, Lads_mobile_sdk/q01;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v1, v2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    .line 209
    :goto_50
    instance-of v2, v1, Lads_mobile_sdk/i01;

    const/4 v3, 0x0

    if-eqz v2, :cond_59

    check-cast v1, Lads_mobile_sdk/i01;

    goto/16 :goto_de

    .line 210
    :cond_59
    const-string v2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/q01;

    .line 211
    invoke-static {p2}, Lads_mobile_sdk/e9;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6f

    .line 213
    new-instance v1, Lads_mobile_sdk/m01;

    const-string p1, "Failed to calculate checksum"

    invoke-direct {v1, p1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    goto/16 :goto_de

    .line 217
    :cond_6f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".tmp"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lads_mobile_sdk/e9;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_84
    .catchall {:try_start_17 .. :try_end_84} :catchall_23

    const-string v4, "Invalid filename"

    if-nez v2, :cond_8e

    .line 218
    :try_start_88
    new-instance v1, Lads_mobile_sdk/m01;

    invoke-direct {v1, v4}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    goto :goto_de

    .line 220
    :cond_8e
    invoke-virtual {p0, p1}, Lads_mobile_sdk/e9;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_9a

    new-instance v1, Lads_mobile_sdk/m01;

    invoke-direct {v1, v4}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_88 .. :try_end_99} :catchall_23

    goto :goto_de

    .line 223
    :cond_9a
    :try_start_9a
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9f} :catch_c3
    .catchall {:try_start_9a .. :try_end_9f} :catchall_23

    :try_start_9f
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v5, "getBytes(...)"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/io/FileOutputStream;->write([B)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_af
    .catchall {:try_start_9f .. :try_end_af} :catchall_cc

    :try_start_af
    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 228
    invoke-virtual {v2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_c5

    .line 229
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 230
    new-instance v1, Lads_mobile_sdk/m01;

    const-string p1, "Failed to rename temp file"

    invoke-direct {v1, p1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    goto :goto_de

    :catch_c3
    move-exception p1

    goto :goto_d3

    .line 232
    :cond_c5
    new-instance p1, Lads_mobile_sdk/q01;

    invoke-direct {p1, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_ca} :catch_c3
    .catchall {:try_start_af .. :try_end_ca} :catchall_23

    move-object v1, p1

    goto :goto_de

    :catchall_cc
    move-exception p1

    .line 233
    :try_start_cd
    throw p1
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_ce

    :catchall_ce
    move-exception p2

    :try_start_cf
    invoke-static {v4, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d3} :catch_c3
    .catchall {:try_start_cf .. :try_end_d3} :catchall_23

    .line 244
    :goto_d3
    :try_start_d3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 245
    new-instance v1, Lads_mobile_sdk/j01;

    const-string p2, "Failed to write to temp file"

    const/4 v2, 0x2

    invoke-direct {v1, p1, v3, p2, v2}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    .line 348
    :goto_de
    instance-of p1, v1, Lads_mobile_sdk/i01;

    if-eqz p1, :cond_e8

    .line 349
    move-object p1, v1

    check-cast p1, Lads_mobile_sdk/i01;

    invoke-static {p1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_e8
    .catchall {:try_start_d3 .. :try_end_e8} :catchall_23

    .line 350
    :cond_e8
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    .line 361
    :goto_ec
    :try_start_ec
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 365
    instance-of p2, p1, Lads_mobile_sdk/v24;

    if-nez p2, :cond_124

    .line 367
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_101

    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_101

    .line 373
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_101

    :catchall_ff
    move-exception p1

    goto :goto_125

    .line 379
    :cond_101
    :goto_101
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_11c

    .line 380
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_114

    .line 381
    instance-of p2, p1, Lads_mobile_sdk/w01;

    if-eqz p2, :cond_10e

    throw p1

    .line 382
    :cond_10e
    new-instance p2, Lads_mobile_sdk/b01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 383
    :cond_114
    new-instance p2, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p2

    .line 384
    :cond_11c
    new-instance p2, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p2

    .line 385
    :cond_124
    throw p1
    :try_end_125
    .catchall {:try_start_ec .. :try_end_125} :catchall_ff

    .line 386
    :goto_125
    :try_start_125
    throw p1
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_126

    :catchall_126
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final b(Ljava/lang/String;)Ljava/io/File;
    .registers 8

    .line 387
    const-string v0, "getCanonicalPath(...)"

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lads_mobile_sdk/e9;->a:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 389
    :try_start_a
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lads_mobile_sdk/e9;->a:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v5, 0x2

    invoke-static {v3, v4, v0, v5, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    return-object v1

    .line 392
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Path traversal detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v2, v1}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_38} :catch_39

    return-object v2

    :catch_39
    move-exception v0

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve canonical path for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-object v2
.end method
