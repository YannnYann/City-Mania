###### Class ads_mobile_sdk.qi (ads_mobile_sdk.qi)
.class public final Lads_mobile_sdk/qi;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 219
    invoke-static {}, Lads_mobile_sdk/ri;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ri;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 15
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ri;

    .line 16
    invoke-static {v0}, Lads_mobile_sdk/ri;->-$$Nest$fgetlogs_(Lads_mobile_sdk/ri;)Lads_mobile_sdk/ju1;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->d()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 18
    invoke-static {v0}, Lads_mobile_sdk/ri;->-$$Nest$fgetlogs_(Lads_mobile_sdk/ri;)Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/ri;->-$$Nest$fputlogs_(Lads_mobile_sdk/ri;Lads_mobile_sdk/ju1;)V

    .line 20
    :cond_1f
    invoke-static {v0}, Lads_mobile_sdk/ri;->-$$Nest$fgetlogs_(Lads_mobile_sdk/ri;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Lads_mobile_sdk/e11;)V
    .registers 5

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 5
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ri;

    .line 6
    invoke-static {v0}, Lads_mobile_sdk/ri;->-$$Nest$fgetlogs_(Lads_mobile_sdk/ri;)Lads_mobile_sdk/ju1;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->d()Z

    move-result v1

    if-nez v1, :cond_22

    .line 8
    invoke-static {v0}, Lads_mobile_sdk/ri;->-$$Nest$fgetlogs_(Lads_mobile_sdk/ri;)Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/ri;->-$$Nest$fputlogs_(Lads_mobile_sdk/ri;Lads_mobile_sdk/ju1;)V

    .line 10
    :cond_22
    invoke-static {v0}, Lads_mobile_sdk/ri;->-$$Nest$fgetlogs_(Lads_mobile_sdk/ri;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final h()Ljava/util/Map;
    .registers 2

    .line 272
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ri;

    .line 273
    invoke-static {v0}, Lads_mobile_sdk/ri;->-$$Nest$fgetlogs_(Lads_mobile_sdk/ri;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 274
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 275
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
