###### Class com.vungle.ads.internal.signals.f (com.vungle.ads.internal.signals.f)
.class public final Lcom/vungle/ads/internal/signals/f;
.super Lcom/vungle/ads/internal/util/b;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/signals/j;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/signals/j;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/f;->a:Lcom/vungle/ads/internal/signals/j;

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/util/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    .line 1
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "SignalManager"

    const-string v1, "SignalManager#onBackground()"

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/f;->a:Lcom/vungle/ads/internal/signals/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    iput-wide v1, v0, Lcom/vungle/ads/internal/signals/j;->c:J

    .line 4
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/f;->a:Lcom/vungle/ads/internal/signals/j;

    .line 5
    iget-wide v1, v0, Lcom/vungle/ads/internal/signals/j;->e:J

    .line 6
    iget-wide v3, v0, Lcom/vungle/ads/internal/signals/j;->c:J

    .line 7
    iget-wide v5, v0, Lcom/vungle/ads/internal/signals/j;->d:J

    sub-long/2addr v3, v5

    add-long/2addr v3, v1

    .line 8
    iput-wide v3, v0, Lcom/vungle/ads/internal/signals/j;->e:J

    return-void
.end method

.method public final b()V
    .registers 9

    .line 1
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "SignalManager"

    const-string v1, "SignalManager#onForeground()"

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/vungle/ads/internal/signals/f;->a:Lcom/vungle/ads/internal/signals/j;

    .line 4
    iget-wide v2, v2, Lcom/vungle/ads/internal/signals/j;->c:J

    sub-long v2, v0, v2

    .line 5
    sget-object v4, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v4, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz v4, :cond_25

    .line 7
    iget-object v4, v4, Lcom/vungle/ads/internal/model/w2;->l:Ljava/lang/Integer;

    if-eqz v4, :cond_25

    .line 8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_27

    :cond_25
    const/16 v4, 0x708

    :goto_27
    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_3d

    .line 9
    iget-object v2, p0, Lcom/vungle/ads/internal/signals/f;->a:Lcom/vungle/ads/internal/signals/j;

    .line 10
    invoke-virtual {v2}, Lcom/vungle/ads/internal/signals/j;->f()V

    .line 11
    new-instance v3, Lcom/vungle/ads/internal/signals/c;

    iget v4, v2, Lcom/vungle/ads/internal/signals/j;->f:I

    invoke-direct {v3, v4}, Lcom/vungle/ads/internal/signals/c;-><init>(I)V

    .line 12
    iput-object v3, v2, Lcom/vungle/ads/internal/signals/j;->h:Lcom/vungle/ads/internal/signals/c;

    .line 13
    :cond_3d
    iget-object v2, p0, Lcom/vungle/ads/internal/signals/f;->a:Lcom/vungle/ads/internal/signals/j;

    .line 14
    iput-wide v0, v2, Lcom/vungle/ads/internal/signals/j;->d:J

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, v2, Lcom/vungle/ads/internal/signals/j;->c:J

    return-void
.end method
