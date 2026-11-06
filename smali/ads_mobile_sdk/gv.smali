###### Class ads_mobile_sdk.gv (ads_mobile_sdk.gv)
.class public final Lads_mobile_sdk/gv;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 377
    invoke-static {}, Lads_mobile_sdk/hv;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/hv;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/hv;

    .line 4
    invoke-static {v0, p1}, Lads_mobile_sdk/hv;->-$$Nest$fputnumPreloadedAds_(Lads_mobile_sdk/hv;I)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/t11;)V
    .registers 3

    .line 6
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 7
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/hv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p1}, Lads_mobile_sdk/t11;->getNumber()I

    move-result p1

    invoke-static {v0, p1}, Lads_mobile_sdk/hv;->-$$Nest$fputpreloaderFormat_(Lads_mobile_sdk/hv;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 14
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 15
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/hv;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/hv;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .registers 3

    .line 10
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 11
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/hv;

    .line 12
    invoke-static {v0, p1}, Lads_mobile_sdk/hv;->-$$Nest$fputpreloaderInFlight_(Lads_mobile_sdk/hv;Z)V

    return-void
.end method

.method public final b(I)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/hv;

    .line 4
    invoke-static {v0, p1}, Lads_mobile_sdk/hv;->-$$Nest$fputnumPreloaders_(Lads_mobile_sdk/hv;I)V

    return-void
.end method

.method public final c(I)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/hv;

    .line 4
    invoke-static {v0, p1}, Lads_mobile_sdk/hv;->-$$Nest$fputpreloaderMaxBufferSize_(Lads_mobile_sdk/hv;I)V

    return-void
.end method

.method public final d(I)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/hv;

    .line 4
    invoke-static {v0, p1}, Lads_mobile_sdk/hv;->-$$Nest$fputpreloaderNumAdsAvailable_(Lads_mobile_sdk/hv;I)V

    return-void
.end method

.method public final e(I)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/hv;

    .line 4
    invoke-static {v0, p1}, Lads_mobile_sdk/hv;->-$$Nest$fputtotalInflightAdLimit_(Lads_mobile_sdk/hv;I)V

    return-void
.end method
