###### Class ads_mobile_sdk.lm2 (ads_mobile_sdk.lm2)
.class public final Lads_mobile_sdk/lm2;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 496
    invoke-static {}, Lads_mobile_sdk/nm2;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/nm2;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    .line 13
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 14
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/nm2;

    .line 15
    invoke-static {v0}, Lads_mobile_sdk/nm2;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/nm2;)I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    .line 16
    invoke-static {v0, v1}, Lads_mobile_sdk/nm2;->-$$Nest$fputbitField0_(Lads_mobile_sdk/nm2;I)V

    .line 17
    invoke-static {v0, p1}, Lads_mobile_sdk/nm2;->-$$Nest$fputnumAdsInCachedResponse_(Lads_mobile_sdk/nm2;I)V

    return-void
.end method

.method public final a(J)V
    .registers 5

    .line 19
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 20
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/nm2;

    .line 21
    invoke-static {v0}, Lads_mobile_sdk/nm2;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/nm2;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    .line 22
    invoke-static {v0, v1}, Lads_mobile_sdk/nm2;->-$$Nest$fputbitField0_(Lads_mobile_sdk/nm2;I)V

    .line 23
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/nm2;->-$$Nest$fputtimeInCacheMs_(Lads_mobile_sdk/nm2;J)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/mm2;)V
    .registers 3

    .line 8
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 9
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/nm2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {p1}, Lads_mobile_sdk/mm2;->getNumber()I

    move-result p1

    invoke-static {v0, p1}, Lads_mobile_sdk/nm2;->-$$Nest$fputcacheMissReason_(Lads_mobile_sdk/nm2;I)V

    .line 11
    invoke-static {v0}, Lads_mobile_sdk/nm2;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/nm2;)I

    move-result p1

    or-int/lit8 p1, p1, 0x4

    invoke-static {v0, p1}, Lads_mobile_sdk/nm2;->-$$Nest$fputbitField0_(Lads_mobile_sdk/nm2;I)V

    return-void
.end method

.method public final a(Z)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/nm2;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/nm2;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/nm2;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/nm2;->-$$Nest$fputbitField0_(Lads_mobile_sdk/nm2;I)V

    .line 6
    invoke-static {v0, p1}, Lads_mobile_sdk/nm2;->-$$Nest$fputcacheHit_(Lads_mobile_sdk/nm2;Z)V

    return-void
.end method

.method public final b(I)V
    .registers 4

    .line 8
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 9
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/nm2;

    .line 10
    invoke-static {v0}, Lads_mobile_sdk/nm2;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/nm2;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    .line 11
    invoke-static {v0, v1}, Lads_mobile_sdk/nm2;->-$$Nest$fputbitField0_(Lads_mobile_sdk/nm2;I)V

    .line 12
    invoke-static {v0, p1}, Lads_mobile_sdk/nm2;->-$$Nest$fputnumRequestedAds_(Lads_mobile_sdk/nm2;I)V

    return-void
.end method

.method public final b(Z)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/nm2;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/nm2;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/nm2;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/nm2;->-$$Nest$fputbitField0_(Lads_mobile_sdk/nm2;I)V

    .line 6
    invoke-static {v0, p1}, Lads_mobile_sdk/nm2;->-$$Nest$fputisFromPreviousSession_(Lads_mobile_sdk/nm2;Z)V

    return-void
.end method
