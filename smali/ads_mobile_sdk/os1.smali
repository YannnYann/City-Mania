###### Class ads_mobile_sdk.os1 (ads_mobile_sdk.os1)
.class public final Lads_mobile_sdk/os1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ns1;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Ljava/lang/Object;J)Lads_mobile_sdk/yh1$f;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Lads_mobile_sdk/yh1$f<",
            "TE;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/hw3;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/yh1$f;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;J)V
    .registers 4

    .line 38
    invoke-static {p1, p2, p3}, Lads_mobile_sdk/os1;->c(Ljava/lang/Object;J)Lads_mobile_sdk/yh1$f;

    move-result-object p1

    .line 39
    invoke-interface {p1}, Lads_mobile_sdk/yh1$f;->a()V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 83
    invoke-static {p1, p3, p4}, Lads_mobile_sdk/os1;->c(Ljava/lang/Object;J)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    .line 84
    invoke-static {p2, p3, p4}, Lads_mobile_sdk/os1;->c(Ljava/lang/Object;J)Lads_mobile_sdk/yh1$f;

    move-result-object p2

    .line 86
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 87
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_22

    if-lez v2, :cond_22

    .line 89
    invoke-interface {v0}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v3

    if-nez v3, :cond_1f

    add-int/2addr v2, v1

    .line 90
    invoke-interface {v0, v2}, Lads_mobile_sdk/yh1$f;->a(I)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    .line 92
    :cond_1f
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_22
    if-lez v1, :cond_25

    move-object p2, v0

    .line 96
    :cond_25
    invoke-static {p1, p3, p4, p2}, Lads_mobile_sdk/hw3;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-static {p1, p2, p3}, Lads_mobile_sdk/os1;->c(Ljava/lang/Object;J)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    .line 26
    invoke-interface {v0}, Lads_mobile_sdk/yh1$f;->b()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_13

    const/16 v1, 0xa

    goto :goto_15

    :cond_13
    mul-int/lit8 v1, v1, 0x2

    .line 29
    :goto_15
    invoke-interface {v0, v1}, Lads_mobile_sdk/yh1$f;->a(I)Lads_mobile_sdk/yh1$f;

    move-result-object v0

    .line 31
    invoke-static {p1, p2, p3, v0}, Lads_mobile_sdk/hw3;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1c
    return-object v0
.end method
