###### Class ads_mobile_sdk.f32 (ads_mobile_sdk.f32)
.class public abstract Lads_mobile_sdk/f32;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lads_mobile_sdk/g83;Lads_mobile_sdk/ks3;Lads_mobile_sdk/k32;Landroid/widget/FrameLayout;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lads_mobile_sdk/g32;
    .registers 16

    .line 1
    const-string v0, "rootTraceCreator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdUtil"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetViews"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaviewScaleType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lads_mobile_sdk/s11;->k0:Lads_mobile_sdk/s11;

    .line 22
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 23
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v2

    .line 24
    iget-object v2, v2, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v3, 0x0

    if-nez v2, :cond_8c

    .line 25
    invoke-static {p0, v0, v1, p1}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p0

    .line 26
    :try_start_2c
    new-instance v4, Lads_mobile_sdk/g32;

    .line 28
    invoke-virtual {p2, p3, p5, p4}, Lads_mobile_sdk/k32;->a(Landroid/widget/FrameLayout;Landroid/widget/ImageView$ScaleType;Ljava/util/Map;)Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 29
    invoke-virtual {p2, p3}, Lads_mobile_sdk/k32;->c(Landroid/widget/FrameLayout;)Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 30
    invoke-virtual {p2, p3}, Lads_mobile_sdk/k32;->b(Landroid/widget/FrameLayout;)Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 31
    invoke-virtual {p2, p3}, Lads_mobile_sdk/k32;->a(Landroid/widget/FrameLayout;)Lcom/google/gson/JsonObject;

    move-result-object v8

    .line 32
    invoke-virtual {p2}, Lads_mobile_sdk/k32;->a()Lcom/google/gson/JsonObject;

    move-result-object v9

    .line 33
    invoke-direct/range {v4 .. v9}, Lads_mobile_sdk/g32;-><init>(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;)V
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_49

    .line 68
    invoke-static {p0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :catchall_49
    move-exception v0

    move-object p1, v0

    .line 76
    :try_start_4b
    invoke-virtual {p0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 80
    instance-of p2, p1, Lads_mobile_sdk/v24;

    if-nez p2, :cond_84

    .line 82
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_61

    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_61

    .line 88
    invoke-virtual {p0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_61

    :catchall_5e
    move-exception v0

    move-object p1, v0

    goto :goto_85

    .line 94
    :cond_61
    :goto_61
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_7c

    .line 95
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_74

    .line 96
    instance-of p2, p1, Lads_mobile_sdk/w01;

    if-eqz p2, :cond_6e

    throw p1

    .line 97
    :cond_6e
    new-instance p2, Lads_mobile_sdk/b01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 98
    :cond_74
    new-instance p2, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p2

    .line 99
    :cond_7c
    new-instance p2, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p2

    .line 100
    :cond_84
    throw p1
    :try_end_85
    .catchall {:try_start_4b .. :try_end_85} :catchall_5e

    .line 101
    :goto_85
    :try_start_85
    throw p1
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_86

    :catchall_86
    move-exception v0

    move-object p2, v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 135
    :cond_8c
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {v0, p0, p1}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p0

    .line 136
    :try_start_95
    new-instance v4, Lads_mobile_sdk/g32;

    .line 138
    invoke-virtual {p2, p3, p5, p4}, Lads_mobile_sdk/k32;->a(Landroid/widget/FrameLayout;Landroid/widget/ImageView$ScaleType;Ljava/util/Map;)Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 139
    invoke-virtual {p2, p3}, Lads_mobile_sdk/k32;->c(Landroid/widget/FrameLayout;)Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 140
    invoke-virtual {p2, p3}, Lads_mobile_sdk/k32;->b(Landroid/widget/FrameLayout;)Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 141
    invoke-virtual {p2, p3}, Lads_mobile_sdk/k32;->a(Landroid/widget/FrameLayout;)Lcom/google/gson/JsonObject;

    move-result-object v8

    .line 142
    invoke-virtual {p2}, Lads_mobile_sdk/k32;->a()Lcom/google/gson/JsonObject;

    move-result-object v9

    .line 143
    invoke-direct/range {v4 .. v9}, Lads_mobile_sdk/g32;-><init>(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;)V
    :try_end_ae
    .catchall {:try_start_95 .. :try_end_ae} :catchall_b2

    .line 215
    invoke-static {p0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :catchall_b2
    move-exception v0

    move-object p1, v0

    .line 223
    :try_start_b4
    invoke-virtual {p0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 227
    instance-of p2, p1, Lads_mobile_sdk/v24;

    if-nez p2, :cond_ed

    .line 229
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_ca

    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_ca

    .line 235
    invoke-virtual {p0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_ca

    :catchall_c7
    move-exception v0

    move-object p1, v0

    goto :goto_ee

    .line 241
    :cond_ca
    :goto_ca
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_e5

    .line 242
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_dd

    .line 243
    instance-of p2, p1, Lads_mobile_sdk/w01;

    if-eqz p2, :cond_d7

    throw p1

    .line 244
    :cond_d7
    new-instance p2, Lads_mobile_sdk/b01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 245
    :cond_dd
    new-instance p2, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p2

    .line 246
    :cond_e5
    new-instance p2, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p2

    .line 247
    :cond_ed
    throw p1
    :try_end_ee
    .catchall {:try_start_b4 .. :try_end_ee} :catchall_c7

    .line 248
    :goto_ee
    :try_start_ee
    throw p1
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ef

    :catchall_ef
    move-exception v0

    move-object p2, v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method
