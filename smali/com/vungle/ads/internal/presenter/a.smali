###### Class com.vungle.ads.internal.presenter.a (com.vungle.ads.internal.presenter.a)
.class public final Lcom/vungle/ads/internal/presenter/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/vungle/ads/internal/presenter/b;

.field public b:Lcom/vungle/ads/internal/model/j3;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/presenter/b;Lcom/vungle/ads/internal/model/j3;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/a;->a:Lcom/vungle/ads/internal/presenter/b;

    .line 3
    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/a;->b:Lcom/vungle/ads/internal/model/j3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/ads/VungleError;Ljava/lang/String;)V
    .registers 5

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/a;->a:Lcom/vungle/ads/internal/presenter/b;

    if-eqz v0, :cond_24

    .line 61
    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onFailure(Lcom/vungle/ads/VungleError;)V

    .line 62
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdEventListener#PlayAdCallback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AdEventListener"

    invoke-static {v0, p2, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_24
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdEventListener"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_b6

    goto/16 :goto_b4

    :sswitch_36
    const-string p2, "start"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto/16 :goto_b4

    .line 4
    :cond_40
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/a;->a:Lcom/vungle/ads/internal/presenter/b;

    if-eqz p1, :cond_b4

    invoke-interface {p1, p3}, Lcom/vungle/ads/internal/presenter/b;->onAdStart(Ljava/lang/String;)V

    return-void

    .line 5
    :sswitch_48
    const-string v0, "open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    goto :goto_b4

    .line 23
    :cond_51
    const-string p1, "adClick"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 24
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/a;->a:Lcom/vungle/ads/internal/presenter/b;

    if-eqz p1, :cond_b4

    invoke-interface {p1, p3}, Lcom/vungle/ads/internal/presenter/b;->onAdClick(Ljava/lang/String;)V

    return-void

    .line 26
    :cond_61
    const-string p1, "adLeftApplication"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b4

    .line 27
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/a;->a:Lcom/vungle/ads/internal/presenter/b;

    if-eqz p1, :cond_b4

    invoke-interface {p1, p3}, Lcom/vungle/ads/internal/presenter/b;->onAdLeftApplication(Ljava/lang/String;)V

    return-void

    .line 28
    :sswitch_71
    const-string p2, "end"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7a

    goto :goto_b4

    .line 42
    :cond_7a
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/a;->a:Lcom/vungle/ads/internal/presenter/b;

    if-eqz p1, :cond_b4

    invoke-interface {p1, p3}, Lcom/vungle/ads/internal/presenter/b;->onAdEnd(Ljava/lang/String;)V

    return-void

    .line 43
    :sswitch_82
    const-string p2, "adViewed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8b

    goto :goto_b4

    .line 48
    :cond_8b
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/a;->a:Lcom/vungle/ads/internal/presenter/b;

    if-eqz p1, :cond_b4

    invoke-interface {p1, p3}, Lcom/vungle/ads/internal/presenter/b;->onAdImpression(Ljava/lang/String;)V

    return-void

    .line 49
    :sswitch_93
    const-string p2, "successfulView"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9c

    goto :goto_b4

    .line 57
    :cond_9c
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/a;->b:Lcom/vungle/ads/internal/model/j3;

    if-eqz p1, :cond_b4

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/j3;->j()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_b4

    iget-boolean p1, p0, Lcom/vungle/ads/internal/presenter/a;->c:Z

    if-nez p1, :cond_b4

    .line 58
    iput-boolean p2, p0, Lcom/vungle/ads/internal/presenter/a;->c:Z

    .line 59
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/a;->a:Lcom/vungle/ads/internal/presenter/b;

    if-eqz p1, :cond_b4

    invoke-interface {p1, p3}, Lcom/vungle/ads/internal/presenter/b;->onAdRewarded(Ljava/lang/String;)V

    :cond_b4
    :goto_b4
    return-void

    nop

    :sswitch_data_b6
    .sparse-switch
        -0x71fc83a1 -> :sswitch_93
        -0x6106bbf9 -> :sswitch_82
        0x188db -> :sswitch_71
        0x34264a -> :sswitch_48
        0x68ac462 -> :sswitch_36
    .end sparse-switch
.end method
