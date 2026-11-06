###### Class ads_mobile_sdk.dp2 (ads_mobile_sdk.dp2)
.class public final Lads_mobile_sdk/dp2;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 237
    invoke-static {}, Lads_mobile_sdk/ep2;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ep2;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 4

    .line 5
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 6
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ep2;

    .line 7
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ep2;->-$$Nest$fputclickTimestampMs_(Lads_mobile_sdk/ep2;J)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/li;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/ep2;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ep2;->a(Lads_mobile_sdk/li;)V

    return-void
.end method
