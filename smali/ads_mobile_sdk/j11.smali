###### Class ads_mobile_sdk.j11 (ads_mobile_sdk.j11)
.class public final Lads_mobile_sdk/j11;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 202
    invoke-static {}, Lads_mobile_sdk/k11;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/k11;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/e11;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/k11;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/k11;->a(Lads_mobile_sdk/e11;)V

    return-void
.end method
