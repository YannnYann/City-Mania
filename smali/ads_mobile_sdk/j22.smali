###### Class ads_mobile_sdk.j22 (ads_mobile_sdk.j22)
.class public final Lads_mobile_sdk/j22;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 259
    invoke-static {}, Lads_mobile_sdk/k22;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/k22;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 4

    .line 13
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 14
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/k22;

    .line 15
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/k22;->-$$Nest$fputappVersionCode_(Lads_mobile_sdk/k22;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .registers 5

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 5
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/k22;

    .line 6
    invoke-static {v0}, Lads_mobile_sdk/k22;->-$$Nest$fgetadUnitToUseMediaView_(Lads_mobile_sdk/k22;)Lads_mobile_sdk/ju1;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->d()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 8
    invoke-static {v0}, Lads_mobile_sdk/k22;->-$$Nest$fgetadUnitToUseMediaView_(Lads_mobile_sdk/k22;)Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/k22;->-$$Nest$fputadUnitToUseMediaView_(Lads_mobile_sdk/k22;Lads_mobile_sdk/ju1;)V

    .line 10
    :cond_1f
    invoke-static {v0}, Lads_mobile_sdk/k22;->-$$Nest$fgetadUnitToUseMediaView_(Lads_mobile_sdk/k22;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 11
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final h()Ljava/util/Map;
    .registers 2

    .line 352
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/k22;

    .line 353
    invoke-static {v0}, Lads_mobile_sdk/k22;->-$$Nest$fgetadUnitToUseMediaView_(Lads_mobile_sdk/k22;)Lads_mobile_sdk/ju1;

    move-result-object v0

    .line 354
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 355
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
