###### Class ads_mobile_sdk.nb2 (ads_mobile_sdk.nb2)
.class public abstract Lads_mobile_sdk/nb2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/qb2;
    .registers 7

    .line 1
    const-string v0, "json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    .line 3
    :try_start_7
    new-instance v0, Lads_mobile_sdk/qb2;

    .line 4
    sget-object v1, Lads_mobile_sdk/pb2;->a:Lads_mobile_sdk/ob2;

    const-string v2, "impression_prerequisite"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_26

    if-eq v2, v4, :cond_23

    if-eq v2, v1, :cond_20

    .line 5
    sget-object v2, Lads_mobile_sdk/pb2;->b:Lads_mobile_sdk/pb2;

    goto :goto_28

    .line 6
    :cond_20
    sget-object v2, Lads_mobile_sdk/pb2;->d:Lads_mobile_sdk/pb2;

    goto :goto_28

    .line 7
    :cond_23
    sget-object v2, Lads_mobile_sdk/pb2;->c:Lads_mobile_sdk/pb2;

    goto :goto_28

    .line 8
    :cond_26
    sget-object v2, Lads_mobile_sdk/pb2;->b:Lads_mobile_sdk/pb2;

    .line 9
    :goto_28
    const-string v5, "click_prerequisite"

    invoke-static {p0, v5, v3}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3d

    if-eq v5, v4, :cond_3a

    if-eq v5, v1, :cond_37

    .line 10
    sget-object v1, Lads_mobile_sdk/pb2;->b:Lads_mobile_sdk/pb2;

    goto :goto_3f

    .line 11
    :cond_37
    sget-object v1, Lads_mobile_sdk/pb2;->d:Lads_mobile_sdk/pb2;

    goto :goto_3f

    .line 12
    :cond_3a
    sget-object v1, Lads_mobile_sdk/pb2;->c:Lads_mobile_sdk/pb2;

    goto :goto_3f

    .line 13
    :cond_3d
    sget-object v1, Lads_mobile_sdk/pb2;->b:Lads_mobile_sdk/pb2;

    .line 14
    :goto_3f
    const-string v4, "notification_flow_enabled"

    invoke-static {p0, v4, v3}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    move-result p0

    .line 15
    invoke-direct {v0, v2, v1, p0}, Lads_mobile_sdk/qb2;-><init>(Lads_mobile_sdk/pb2;Lads_mobile_sdk/pb2;Z)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_48} :catch_49

    return-object v0

    :catch_49
    move-exception p0

    .line 16
    const-string v0, "t"

    invoke-static {p0, v0, p0}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v0

    .line 17
    iget-object v0, v0, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_60

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_60
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return-object p0
.end method
