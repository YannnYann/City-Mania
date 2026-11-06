###### Class com.vungle.ads.internal.util.x (com.vungle.ads.internal.util.x)
.class public final Lcom/vungle/ads/internal/util/x;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public a:Lcom/vungle/ads/internal/util/w;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/ads/internal/util/w;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/util/x;->a:Lcom/vungle/ads/internal/util/w;

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "RingerModeReceiver"

    if-eqz p2, :cond_b

    .line 1
    :try_start_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :catch_9
    move-exception p2

    goto :goto_53

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 3
    const-string v0, "android.media.EXTRA_RINGER_MODE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 4
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive ringermode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p2, :cond_4b

    if-eq p2, v0, :cond_43

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3a

    goto :goto_5e

    .line 7
    :cond_3a
    iget-object p2, p0, Lcom/vungle/ads/internal/util/x;->a:Lcom/vungle/ads/internal/util/w;

    if-eqz p2, :cond_5e

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/vungle/ads/internal/util/w;->a(Z)V

    return-void

    .line 17
    :cond_43
    iget-object p2, p0, Lcom/vungle/ads/internal/util/x;->a:Lcom/vungle/ads/internal/util/w;

    if-eqz p2, :cond_5e

    invoke-interface {p2, v0}, Lcom/vungle/ads/internal/util/w;->a(Z)V

    return-void

    .line 18
    :cond_4b
    iget-object p2, p0, Lcom/vungle/ads/internal/util/x;->a:Lcom/vungle/ads/internal/util/w;

    if-eqz p2, :cond_5e

    invoke-interface {p2, v0}, Lcom/vungle/ads/internal/util/w;->a(Z)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_52} :catch_9

    return-void

    .line 29
    :goto_53
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5e

    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    invoke-static {p1, p2}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    :goto_5e
    return-void
.end method
