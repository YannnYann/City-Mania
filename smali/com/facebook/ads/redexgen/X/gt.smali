###### Class com.facebook.ads.redexgen.X.HandlerC2522gt (com.facebook.ads.redexgen.X.gt)
.class public final Lcom/facebook/ads/redexgen/X/gt;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/gw;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/gw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gw;Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 92024
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gt;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 92025
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 92026
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 92027
    :goto_8
    return-void

    .line 92028
    :pswitch_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gt;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A04(Lcom/facebook/ads/redexgen/X/gw;)V

    .line 92029
    goto :goto_8

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
