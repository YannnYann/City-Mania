###### Class ads_mobile_sdk.ub2 (ads_mobile_sdk.ub2)
.class public final Lads_mobile_sdk/ub2;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 142
    invoke-static {}, Lads_mobile_sdk/vb2;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/vb2;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/vb2;

    .line 4
    invoke-static {v0, p1}, Lads_mobile_sdk/vb2;->-$$Nest$fputdeviceOnline_(Lads_mobile_sdk/vb2;Z)V

    return-void
.end method
