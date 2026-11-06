###### Class ads_mobile_sdk.zb3 (ads_mobile_sdk.zb3)
.class public final Lads_mobile_sdk/zb3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/google/gson/JsonObject;

.field public final synthetic b:Lads_mobile_sdk/ex0;

.field public final synthetic c:Lkotlinx/coroutines/Deferred;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ex0;Lcom/google/gson/JsonObject;Lkotlinx/coroutines/Deferred;)V
    .registers 4

    .line 2
    iput-object p2, p0, Lads_mobile_sdk/zb3;->a:Lcom/google/gson/JsonObject;

    iput-object p1, p0, Lads_mobile_sdk/zb3;->b:Lads_mobile_sdk/ex0;

    iput-object p3, p0, Lads_mobile_sdk/zb3;->c:Lkotlinx/coroutines/Deferred;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 16

    .line 2
    sget-object v0, Lads_mobile_sdk/s11;->J:Lads_mobile_sdk/s11;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lads_mobile_sdk/zb3;->a:Lcom/google/gson/JsonObject;

    iget-object v3, p0, Lads_mobile_sdk/zb3;->b:Lads_mobile_sdk/ex0;

    iget-object v4, p0, Lads_mobile_sdk/zb3;->c:Lkotlinx/coroutines/Deferred;

    const/4 v5, 0x1

    .line 25
    invoke-static {v0, v1, v5}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 26
    :try_start_11
    const-string v1, "responses"

    invoke-virtual {v2, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v6, :cond_2b

    invoke-virtual {v1, v7}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    goto :goto_2c

    :catchall_28
    move-exception v1

    goto/16 :goto_ca

    :cond_2b
    move-object v1, v8

    .line 30
    :goto_2c
    sget-object v6, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    if-eqz v1, :cond_37

    const-string v6, "ad_configs"

    invoke-virtual {v1, v6}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v6

    goto :goto_38

    :cond_37
    move-object v6, v8

    .line 57
    :goto_38
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_3d
    .catchall {:try_start_11 .. :try_end_3d} :catchall_28

    const-string v10, "getAsJsonObject(...)"

    if-eqz v6, :cond_70

    .line 62
    :try_start_41
    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v11, v7

    :goto_46
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_70

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v11, 0x1

    if-gez v11, :cond_57

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_57
    check-cast v12, Lcom/google/gson/JsonElement;

    .line 63
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    sget-object v14, Lads_mobile_sdk/i2;->J0:Ljava/util/List;

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v12

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v11, v4}, Lads_mobile_sdk/c2;->a(Lcom/google/gson/JsonObject;ILkotlinx/coroutines/Deferred;)Lads_mobile_sdk/i2;

    move-result-object v11

    if-eqz v11, :cond_6e

    .line 93
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6e
    move v11, v13

    goto :goto_46

    :cond_70
    if-eqz v1, :cond_79

    .line 94
    const-string v4, "common"

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    goto :goto_7a

    :cond_79
    move-object v1, v8

    :goto_7a
    invoke-static {v1, v3}, Lads_mobile_sdk/wy;->a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/ex0;)Lads_mobile_sdk/zy;

    move-result-object v1

    .line 95
    sget-object v3, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const-string v3, "actions"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_8d

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    goto :goto_8e

    :cond_8d
    move-object v2, v8

    .line 126
    :goto_8e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_c1

    .line 131
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_99
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v7, 0x1

    if-gez v7, :cond_aa

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_aa
    check-cast v4, Lcom/google/gson/JsonElement;

    .line 132
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 133
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lads_mobile_sdk/xb3;->a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/yb3;

    move-result-object v4

    if-eqz v4, :cond_bf

    .line 166
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bf
    move v7, v6

    goto :goto_99

    .line 167
    :cond_c1
    new-instance v2, Lads_mobile_sdk/ac3;

    invoke-direct {v2, v9, v1, v3}, Lads_mobile_sdk/ac3;-><init>(Ljava/util/ArrayList;Lads_mobile_sdk/zy;Ljava/util/ArrayList;)V
    :try_end_c6
    .catchall {:try_start_41 .. :try_end_c6} :catchall_28

    invoke-static {v0, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    .line 216
    :goto_ca
    :try_start_ca
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 220
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_102

    .line 222
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_df

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_df

    .line 228
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_df

    :catchall_dd
    move-exception v1

    goto :goto_103

    .line 234
    :cond_df
    :goto_df
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_fa

    .line 235
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_f2

    .line 236
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_ec

    throw v1

    .line 237
    :cond_ec
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 238
    :cond_f2
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 239
    :cond_fa
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 240
    :cond_102
    throw v1
    :try_end_103
    .catchall {:try_start_ca .. :try_end_103} :catchall_dd

    .line 257
    :goto_103
    :try_start_103
    throw v1
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_104

    :catchall_104
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
