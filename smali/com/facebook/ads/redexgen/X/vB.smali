###### Class com.facebook.ads.redexgen.X.ViewOnClickListenerC3394vB (com.facebook.ads.redexgen.X.vB)
.class public final Lcom/facebook/ads/redexgen/X/vB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ET;->A0R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ET;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ET;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 115252
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/vB;->A00:Lcom/facebook/ads/redexgen/X/ET;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 10

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/oi;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v4, p0

    .line 115253
    .local v0, "this":Lcom/facebook/ads/redexgen/X/vB;
    .local p0, "view":Landroid/view/View;
    :try_start_8
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/vB;->A00:Lcom/facebook/ads/redexgen/X/ET;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ET;->A0n(Lcom/facebook/ads/redexgen/X/ET;)Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_5c

    .line 115254
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/vB;->A00:Lcom/facebook/ads/redexgen/X/ET;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/ET;->A0t(Lcom/facebook/ads/redexgen/X/ET;Z)Z

    .line 115255
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/vB;->A00:Lcom/facebook/ads/redexgen/X/ET;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ET;->A09(Lcom/facebook/ads/redexgen/X/ET;)Lcom/facebook/ads/redexgen/X/ef;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 115256
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/vB;->A00:Lcom/facebook/ads/redexgen/X/ET;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/vB;->A00:Lcom/facebook/ads/redexgen/X/ET;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ET;->A09(Lcom/facebook/ads/redexgen/X/ET;)Lcom/facebook/ads/redexgen/X/ef;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7v;->A0O()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ET;->A0d(Lcom/facebook/ads/redexgen/X/ET;Ljava/lang/String;)V

    .line 115257
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/vB;
    :cond_33
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/vB;->A00:Lcom/facebook/ads/redexgen/X/ET;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ET;->A0A(Lcom/facebook/ads/redexgen/X/ET;)Lcom/facebook/ads/redexgen/X/LA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fD;->A1N()J

    move-result-wide v6

    const-wide/16 v1, 0x0

    cmp-long v0, v6, v1

    if-ltz v0, :cond_5c

    .line 115258
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/vB;->A00:Lcom/facebook/ads/redexgen/X/ET;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ET;->A06(Lcom/facebook/ads/redexgen/X/ET;)Landroid/os/Handler;

    move-result-object v3

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/vB;->A00:Lcom/facebook/ads/redexgen/X/ET;

    .line 115259
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ET;->A0H(Lcom/facebook/ads/redexgen/X/ET;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/vB;->A00:Lcom/facebook/ads/redexgen/X/ET;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ET;->A0A(Lcom/facebook/ads/redexgen/X/ET;)Lcom/facebook/ads/redexgen/X/LA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fD;->A1N()J

    move-result-wide v0

    .line 115260
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115261
    :cond_5c
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/vB;->A00:Lcom/facebook/ads/redexgen/X/ET;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/vB;->A00:Lcom/facebook/ads/redexgen/X/ET;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ET;->A0n(Lcom/facebook/ads/redexgen/X/ET;)Z

    move-result v0

    if-nez v0, :cond_6a

    :goto_66
    invoke-static {v1, v5}, Lcom/facebook/ads/redexgen/X/ET;->A0e(Lcom/facebook/ads/redexgen/X/ET;Z)V

    goto :goto_6c

    :cond_6a
    const/4 v5, 0x0

    goto :goto_66

    .line 115262
    :goto_6c
    return-void
    :try_end_6d
    .catchall {:try_start_8 .. :try_end_6d} :catchall_6d

    .end local p0    # "view":Landroid/view/View;
    :catchall_6d
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
