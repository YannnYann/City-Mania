###### Class ads_mobile_sdk.nd3 (ads_mobile_sdk.nd3)
.class public final Lads_mobile_sdk/nd3;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 285
    invoke-static {}, Lads_mobile_sdk/od3;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/od3;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    .line 11
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 12
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/od3;

    .line 13
    invoke-static {v0}, Lads_mobile_sdk/od3;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/od3;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    .line 14
    invoke-static {v0, v1}, Lads_mobile_sdk/od3;->-$$Nest$fputbitField0_(Lads_mobile_sdk/od3;I)V

    .line 15
    invoke-static {v0, p1}, Lads_mobile_sdk/od3;->-$$Nest$fputtotalInflightAdLimit_(Lads_mobile_sdk/od3;I)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/xp0;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/od3;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/od3;->a(Lads_mobile_sdk/xp0;)V

    return-void
.end method

.method public final a(Z)V
    .registers 4

    .line 5
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 6
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/od3;

    .line 7
    invoke-static {v0}, Lads_mobile_sdk/od3;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/od3;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    .line 8
    invoke-static {v0, v1}, Lads_mobile_sdk/od3;->-$$Nest$fputbitField0_(Lads_mobile_sdk/od3;I)V

    .line 9
    invoke-static {v0, p1}, Lads_mobile_sdk/od3;->-$$Nest$fputisServingGdprApplicable_(Lads_mobile_sdk/od3;Z)V

    return-void
.end method

.method public final h()V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/od3;

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lads_mobile_sdk/od3;->-$$Nest$fputeoidData_(Lads_mobile_sdk/od3;Lads_mobile_sdk/xp0;)V

    .line 5
    invoke-static {v0}, Lads_mobile_sdk/od3;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/od3;)I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    invoke-static {v0, v1}, Lads_mobile_sdk/od3;->-$$Nest$fputbitField0_(Lads_mobile_sdk/od3;I)V

    return-void
.end method

.method public final i()V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/od3;

    .line 4
    invoke-static {v0}, Lads_mobile_sdk/od3;->-$$Nest$fgetbitField0_(Lads_mobile_sdk/od3;)I

    move-result v1

    const/4 v2, 0x1

    or-int/2addr v1, v2

    .line 5
    invoke-static {v0, v1}, Lads_mobile_sdk/od3;->-$$Nest$fputbitField0_(Lads_mobile_sdk/od3;I)V

    .line 6
    invoke-static {v0, v2}, Lads_mobile_sdk/od3;->-$$Nest$fputisInstallReferrerReported_(Lads_mobile_sdk/od3;Z)V

    return-void
.end method
