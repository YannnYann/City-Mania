###### Class com.vungle.ads.internal.bidding.a (com.vungle.ads.internal.bidding.a)
.class public final Lcom/vungle/ads/internal/bidding/a;
.super Lcom/vungle/ads/internal/util/b;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/bidding/e;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/bidding/e;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/bidding/a;->a:Lcom/vungle/ads/internal/bidding/e;

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/util/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/bidding/a;->a:Lcom/vungle/ads/internal/bidding/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v1, "BidTokenEncoder"

    const-string v2, "BidTokenEncoder#onBackground()"

    invoke-static {v1, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/vungle/ads/internal/bidding/e;->e:J

    return-void
.end method

.method public final b()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/bidding/a;->a:Lcom/vungle/ads/internal/bidding/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v1, "BidTokenEncoder"

    const-string v2, "BidTokenEncoder#onForeground()"

    invoke-static {v1, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    sget-object v3, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    sget-object v3, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz v3, :cond_24

    .line 6
    iget-object v3, v3, Lcom/vungle/ads/internal/model/w2;->j:Ljava/lang/Integer;

    if-eqz v3, :cond_24

    .line 7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_26

    :cond_24
    const/16 v3, 0x384

    :goto_26
    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 8
    iget-wide v5, v0, Lcom/vungle/ads/internal/bidding/e;->e:J

    add-long/2addr v5, v3

    cmp-long v1, v1, v5

    if-lez v1, :cond_38

    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lcom/vungle/ads/internal/bidding/e;->c:I

    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, v0, Lcom/vungle/ads/internal/bidding/e;->e:J

    :cond_38
    return-void
.end method
