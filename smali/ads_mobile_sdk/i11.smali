###### Class ads_mobile_sdk.i11 (ads_mobile_sdk.i11)
.class public final Lads_mobile_sdk/i11;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 554
    invoke-static {}, Lads_mobile_sdk/l11;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/l11;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/k11;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/l11;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/l11;->a(Lads_mobile_sdk/k11;)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/nx;)V
    .registers 3

    .line 5
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 6
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/l11;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/l11;->a(Lads_mobile_sdk/nx;)V

    return-void
.end method

.method public final h()V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/l11;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v1

    invoke-static {v0, v1}, Lads_mobile_sdk/l11;->-$$Nest$fputpayloads_(Lads_mobile_sdk/l11;Lads_mobile_sdk/yh1$f;)V

    return-void
.end method
