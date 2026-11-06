###### Class ads_mobile_sdk.s92 (ads_mobile_sdk.s92)
.class public final Lads_mobile_sdk/s92;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Landroid/net/Network;

.field public final synthetic c:Landroid/net/NetworkCapabilities;


# direct methods
.method public constructor <init>(JLandroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 5

    .line 1
    iput-wide p1, p0, Lads_mobile_sdk/s92;->a:J

    iput-object p3, p0, Lads_mobile_sdk/s92;->b:Landroid/net/Network;

    iput-object p4, p0, Lads_mobile_sdk/s92;->c:Landroid/net/NetworkCapabilities;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 6

    .line 229
    iget-wide v0, p0, Lads_mobile_sdk/s92;->a:J

    invoke-static {v0, v1}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lads_mobile_sdk/s92;->b:Landroid/net/Network;

    iget-object v2, p0, Lads_mobile_sdk/s92;->c:Landroid/net/NetworkCapabilities;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network capabilities changed at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 228
    invoke-virtual {p0}, Lads_mobile_sdk/s92;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
