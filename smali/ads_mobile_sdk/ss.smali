###### Class ads_mobile_sdk.ss (ads_mobile_sdk.ss)
.class public final Lads_mobile_sdk/ss;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 427
    invoke-static {}, Lads_mobile_sdk/ts;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ts;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 22
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 23
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ts;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ts;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 14
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ts;

    .line 15
    invoke-static {v0}, Lads_mobile_sdk/ts;->-$$Nest$fgetserverParameters_(Lads_mobile_sdk/ts;)Lads_mobile_sdk/ju1;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->d()Z

    move-result v1

    if-nez v1, :cond_22

    .line 17
    invoke-static {v0}, Lads_mobile_sdk/ts;->-$$Nest$fgetserverParameters_(Lads_mobile_sdk/ts;)Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/ts;->-$$Nest$fputserverParameters_(Lads_mobile_sdk/ts;Lads_mobile_sdk/ju1;)V

    .line 19
    :cond_22
    invoke-static {v0}, Lads_mobile_sdk/ts;->-$$Nest$fgetserverParameters_(Lads_mobile_sdk/ts;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 20
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ts;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/ts;->-$$Nest$fgetserverParameters_(Lads_mobile_sdk/ts;)Lads_mobile_sdk/ju1;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->d()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 6
    invoke-static {v0}, Lads_mobile_sdk/ts;->-$$Nest$fgetserverParameters_(Lads_mobile_sdk/ts;)Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/ts;->-$$Nest$fputserverParameters_(Lads_mobile_sdk/ts;Lads_mobile_sdk/ju1;)V

    .line 8
    :cond_1c
    invoke-static {v0}, Lads_mobile_sdk/ts;->-$$Nest$fgetserverParameters_(Lads_mobile_sdk/ts;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final a(Z)V
    .registers 4

    .line 25
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 26
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ts;

    .line 27
    invoke-static {v0}, Lads_mobile_sdk/ts;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ts;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    .line 28
    invoke-static {v0, v1}, Lads_mobile_sdk/ts;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ts;I)V

    .line 29
    invoke-static {v0, p1}, Lads_mobile_sdk/ts;->-$$Nest$fputshouldCollectSignalsOnFullApp_(Lads_mobile_sdk/ts;Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ts;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ts;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Z)V
    .registers 4

    .line 5
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 6
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ts;

    .line 7
    invoke-static {v0}, Lads_mobile_sdk/ts;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/ts;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    .line 8
    invoke-static {v0, v1}, Lads_mobile_sdk/ts;->-$$Nest$fputbitField0_(Lads_mobile_sdk/ts;I)V

    .line 9
    invoke-static {v0, p1}, Lads_mobile_sdk/ts;->-$$Nest$fputshouldGatherSignals_(Lads_mobile_sdk/ts;Z)V

    return-void
.end method

.method public final h()Ljava/util/Map;
    .registers 2

    .line 678
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ts;

    .line 679
    invoke-static {v0}, Lads_mobile_sdk/ts;->-$$Nest$fgetserverParameters_(Lads_mobile_sdk/ts;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 680
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 681
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
