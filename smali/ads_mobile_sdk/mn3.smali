###### Class ads_mobile_sdk.mn3 (ads_mobile_sdk.mn3)
.class public final Lads_mobile_sdk/mn3;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 353
    invoke-static {}, Lads_mobile_sdk/on3;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/on3;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lads_mobile_sdk/mn3;
    .registers 3

    .line 399
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 400
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/on3;

    .line 401
    invoke-static {v0, p1}, Lads_mobile_sdk/on3;->-$$Nest$fputrequiredScreenHoldSec_(Lads_mobile_sdk/on3;I)V

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/nn3;)Lads_mobile_sdk/mn3;
    .registers 3

    .line 1323
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1324
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/on3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1325
    invoke-virtual {p1}, Lads_mobile_sdk/nn3;->getNumber()I

    move-result p1

    invoke-static {v0, p1}, Lads_mobile_sdk/on3;->-$$Nest$fputvideoAutoplayStartTime_(Lads_mobile_sdk/on3;I)V

    return-object p0
.end method

.method public final a(Z)Lads_mobile_sdk/mn3;
    .registers 3

    .line 875
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 876
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/on3;

    .line 877
    invoke-static {v0, p1}, Lads_mobile_sdk/on3;->-$$Nest$fputsettleEndDueToAppBackground_(Lads_mobile_sdk/on3;Z)V

    return-object p0
.end method

.method public final b(I)Lads_mobile_sdk/mn3;
    .registers 3

    .line 371
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 372
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/on3;

    .line 373
    invoke-static {v0, p1}, Lads_mobile_sdk/on3;->-$$Nest$fputsettleCount_(Lads_mobile_sdk/on3;I)V

    return-object p0
.end method
