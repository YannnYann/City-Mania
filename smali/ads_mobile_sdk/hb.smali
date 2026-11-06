###### Class ads_mobile_sdk.hb (ads_mobile_sdk.hb)
.class public final Lads_mobile_sdk/hb;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 645
    invoke-static {}, Lads_mobile_sdk/ib;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ib;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/gb;)Lads_mobile_sdk/hb;
    .registers 3

    .line 693
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 694
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ib;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ib;->a(Lads_mobile_sdk/gb;)V

    return-object p0
.end method

.method public final a(Lads_mobile_sdk/ra;)Lads_mobile_sdk/hb;
    .registers 3

    .line 1463
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1464
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ib;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ib;->a(Lads_mobile_sdk/ra;)V

    return-object p0
.end method
