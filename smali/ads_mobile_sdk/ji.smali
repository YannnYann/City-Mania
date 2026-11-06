###### Class ads_mobile_sdk.ji (ads_mobile_sdk.ji)
.class public final Lads_mobile_sdk/ji;
.super Lads_mobile_sdk/vz0$a;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 351
    invoke-static {}, Lads_mobile_sdk/li;->-$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/li;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/vz0$a;-><init>(Lads_mobile_sdk/vz0;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 4

    .line 6
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 7
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/li;

    .line 8
    invoke-static {v0, p1, p2}, Lads_mobile_sdk/li;->-$$Nest$fputtimestampMs_(Lads_mobile_sdk/li;J)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/ki;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    check-cast v0, Lads_mobile_sdk/li;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Lads_mobile_sdk/ki;->getNumber()I

    move-result p1

    invoke-static {v0, p1}, Lads_mobile_sdk/li;->-$$Nest$fputeventType_(Lads_mobile_sdk/li;I)V

    return-void
.end method
