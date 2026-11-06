###### Class ads_mobile_sdk.pb0 (ads_mobile_sdk.pb0)
.class public final Lads_mobile_sdk/pb0;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 387
    invoke-static {}, Lads_mobile_sdk/qb0;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/qb0;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/hj2;)V
    .registers 3

    .line 11
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 12
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/qb0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/qb0;->a(Lads_mobile_sdk/hj2;)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/yp2;)V
    .registers 3

    .line 14
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 15
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/qb0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/qb0;->a(Lads_mobile_sdk/yp2;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/qb0;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/qb0;->-$$Nest$fgetconcatenatedSignalsMap_(Lads_mobile_sdk/qb0;)Lads_mobile_sdk/ju1;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->d()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 6
    invoke-static {v0}, Lads_mobile_sdk/qb0;->-$$Nest$fgetconcatenatedSignalsMap_(Lads_mobile_sdk/qb0;)Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/qb0;->-$$Nest$fputconcatenatedSignalsMap_(Lads_mobile_sdk/qb0;Lads_mobile_sdk/ju1;)V

    .line 8
    :cond_1c
    invoke-static {v0}, Lads_mobile_sdk/qb0;->-$$Nest$fgetconcatenatedSignalsMap_(Lads_mobile_sdk/qb0;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final h()Ljava/util/Map;
    .registers 2

    .line 612
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/qb0;

    .line 613
    invoke-static {v0}, Lads_mobile_sdk/qb0;->-$$Nest$fgetconcatenatedSignalsMap_(Lads_mobile_sdk/qb0;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 614
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 615
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
