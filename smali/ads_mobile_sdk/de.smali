###### Class ads_mobile_sdk.de (ads_mobile_sdk.de)
.class public final Lads_mobile_sdk/de;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 306
    invoke-static {}, Lads_mobile_sdk/ee;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ee;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 13
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 14
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ee;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ee;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 5
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ee;

    .line 6
    invoke-static {v0}, Lads_mobile_sdk/ee;->-$$Nest$fgetextras_(Lads_mobile_sdk/ee;)Lads_mobile_sdk/ju1;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->d()Z

    move-result v1

    if-nez v1, :cond_22

    .line 8
    invoke-static {v0}, Lads_mobile_sdk/ee;->-$$Nest$fgetextras_(Lads_mobile_sdk/ee;)Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/ee;->-$$Nest$fputextras_(Lads_mobile_sdk/ee;Lads_mobile_sdk/ju1;)V

    .line 10
    :cond_22
    invoke-static {v0}, Lads_mobile_sdk/ee;->-$$Nest$fgetextras_(Lads_mobile_sdk/ee;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final h()Ljava/util/Map;
    .registers 2

    .line 440
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ee;

    .line 441
    invoke-static {v0}, Lads_mobile_sdk/ee;->-$$Nest$fgetextras_(Lads_mobile_sdk/ee;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 442
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 443
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
