###### Class com.facebook.ads.redexgen.X.YB (com.facebook.ads.redexgen.X.YB)
.class public final Lcom/facebook/ads/redexgen/X/YB;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/YC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field public final A00:Landroid/os/Handler;

.field public final A01:Lcom/facebook/ads/redexgen/X/YC;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/YC;)V
    .registers 4

    .line 77233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77234
    if-eqz p2, :cond_10

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    :goto_b
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/os/Handler;

    .line 77235
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/YC;

    .line 77236
    return-void

    .line 77237
    :cond_10
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public final A00(IJ)V
    .registers 6

    .line 77238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 77239
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Y7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Y7;-><init>(Lcom/facebook/ads/redexgen/X/YB;IJ)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77240
    :cond_e
    return-void
.end method

.method public final A01(IJ)V
    .registers 6

    .line 77241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 77242
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xy;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Xy;-><init>(Lcom/facebook/ads/redexgen/X/YB;IJ)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77243
    :cond_e
    return-void
.end method

.method public final synthetic A02(IJ)V
    .registers 5

    .line 77244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/YC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/YC;

    .line 77245
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/YC;->AEV(IJ)V

    .line 77246
    return-void
.end method

.method public final synthetic A03(IJ)V
    .registers 5

    .line 77247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/YC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/YC;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/YC;->AEn(IJ)V

    return-void
.end method

.method public final A04(ILcom/facebook/ads/redexgen/X/VC;)V
    .registers 5
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 77248
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/YC;

    if-eqz v0, :cond_e

    .line 77249
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/YA;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/YA;-><init>(Lcom/facebook/ads/redexgen/X/YB;ILcom/facebook/ads/redexgen/X/VC;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77250
    :cond_e
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/VC;Lcom/facebook/ads/redexgen/X/OA;)V
    .registers 5

    .line 77251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 77252
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Y4;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Y4;-><init>(Lcom/facebook/ads/redexgen/X/YB;Lcom/facebook/ads/redexgen/X/VC;Lcom/facebook/ads/redexgen/X/OA;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77253
    :cond_e
    return-void
.end method

.method public final synthetic A06(Lcom/facebook/ads/redexgen/X/VC;Lcom/facebook/ads/redexgen/X/OA;)V
    .registers 4

    .line 77254
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/YC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/YC;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/YC;->AHe(Lcom/facebook/ads/redexgen/X/VC;)V

    .line 77255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/YC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/YC;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/YC;->AHf(Lcom/facebook/ads/redexgen/X/VC;Lcom/facebook/ads/redexgen/X/OA;)V

    .line 77256
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/Tp;)V
    .registers 4

    .line 77257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 77258
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Y6;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Y6;-><init>(Lcom/facebook/ads/redexgen/X/YB;Lcom/facebook/ads/redexgen/X/Tp;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77259
    :cond_e
    return-void
.end method

.method public final synthetic A08(Lcom/facebook/ads/redexgen/X/Tp;)V
    .registers 3

    .line 77260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/YC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/YC;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/YC;->AHl(Lcom/facebook/ads/redexgen/X/Tp;)V

    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/O7;)V
    .registers 4

    .line 77261
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O7;->A02()V

    .line 77262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_11

    .line 77263
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Y8;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Y8;-><init>(Lcom/facebook/ads/redexgen/X/YB;Lcom/facebook/ads/redexgen/X/O7;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77264
    :cond_11
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/O7;)V
    .registers 4

    .line 77265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 77266
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Y2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Y2;-><init>(Lcom/facebook/ads/redexgen/X/YB;Lcom/facebook/ads/redexgen/X/O7;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77267
    :cond_e
    return-void
.end method

.method public final synthetic A0B(Lcom/facebook/ads/redexgen/X/O7;)V
    .registers 3

    .line 77268
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O7;->A02()V

    .line 77269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/YC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/YC;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/YC;->AHY(Lcom/facebook/ads/redexgen/X/O7;)V

    .line 77270
    return-void
.end method

.method public final synthetic A0C(Lcom/facebook/ads/redexgen/X/O7;)V
    .registers 3

    .line 77271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/YC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/YC;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/YC;->AHZ(Lcom/facebook/ads/redexgen/X/O7;)V

    return-void
.end method

.method public final A0D(Ljava/lang/Object;)V
    .registers 6

    .line 77272
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 77273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 77274
    .local v0, "renderTimeMs":J
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Y3;

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/facebook/ads/redexgen/X/Y3;-><init>(Lcom/facebook/ads/redexgen/X/YB;Ljava/lang/Object;J)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77275
    .end local v0    # "renderTimeMs":J
    :cond_12
    return-void
.end method

.method public final synthetic A0E(Ljava/lang/Object;J)V
    .registers 5

    .line 77276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/YC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/YC;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/YC;->AGm(Ljava/lang/Object;J)V

    return-void
.end method

.method public final A0F(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 77277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 77278
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Y5;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Y5;-><init>(Lcom/facebook/ads/redexgen/X/YB;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77279
    :cond_e
    return-void
.end method

.method public final A0G(Ljava/lang/String;JJ)V
    .registers 14

    .line 77280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 77281
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Y1;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Y1;-><init>(Lcom/facebook/ads/redexgen/X/YB;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77282
    :cond_12
    return-void
.end method

.method public final synthetic A0H(Ljava/lang/String;JJ)V
    .registers 12

    .line 77283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/YC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/YC;

    .line 77284
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/YC;->AHX(Ljava/lang/String;JJ)V

    .line 77285
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.RunnableC2046Xy (com.facebook.ads.redexgen.X.Xy)
.class public final synthetic Lcom/facebook/ads/redexgen/X/Xy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:J

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/YB;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/YB;IJ)V
    .registers 5

    .line 77192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xy;->A02:Lcom/facebook/ads/redexgen/X/YB;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Xy;->A00:I

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Xy;->A01:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 77193
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Xy;->A02:Lcom/facebook/ads/redexgen/X/YB;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Xy;->A00:I

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Xy;->A01:J

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A03(IJ)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.Y1 (com.facebook.ads.redexgen.X.Y1)
.class public final synthetic Lcom/facebook/ads/redexgen/X/Y1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:J

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/YB;

.field public final synthetic A03:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/YB;Ljava/lang/String;JJ)V
    .registers 7

    .line 77213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y1;->A02:Lcom/facebook/ads/redexgen/X/YB;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Y1;->A03:Ljava/lang/String;

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Y1;->A00:J

    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/Y1;->A01:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 77214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y1;->A02:Lcom/facebook/ads/redexgen/X/YB;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y1;->A03:Ljava/lang/String;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Y1;->A00:J

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/Y1;->A01:J

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/YB;->A0H(Ljava/lang/String;JJ)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.Y2 (com.facebook.ads.redexgen.X.Y2)
.class public final synthetic Lcom/facebook/ads/redexgen/X/Y2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/O7;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/YB;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/YB;Lcom/facebook/ads/redexgen/X/O7;)V
    .registers 3

    .line 77215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y2;->A01:Lcom/facebook/ads/redexgen/X/YB;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Y2;->A00:Lcom/facebook/ads/redexgen/X/O7;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 77216
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y2;->A01:Lcom/facebook/ads/redexgen/X/YB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y2;->A00:Lcom/facebook/ads/redexgen/X/O7;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0C(Lcom/facebook/ads/redexgen/X/O7;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.Y3 (com.facebook.ads.redexgen.X.Y3)
.class public final synthetic Lcom/facebook/ads/redexgen/X/Y3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/YB;

.field public final synthetic A02:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/YB;Ljava/lang/Object;J)V
    .registers 5

    .line 77217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/YB;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Y3;->A02:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 77218
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/YB;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Y3;->A02:Ljava/lang/Object;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:J

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0E(Ljava/lang/Object;J)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.Y4 (com.facebook.ads.redexgen.X.Y4)
.class public final synthetic Lcom/facebook/ads/redexgen/X/Y4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/VC;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/OA;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/YB;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/YB;Lcom/facebook/ads/redexgen/X/VC;Lcom/facebook/ads/redexgen/X/OA;)V
    .registers 4

    .line 77219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y4;->A02:Lcom/facebook/ads/redexgen/X/YB;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Y4;->A00:Lcom/facebook/ads/redexgen/X/VC;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Y4;->A01:Lcom/facebook/ads/redexgen/X/OA;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 77220
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Y4;->A02:Lcom/facebook/ads/redexgen/X/YB;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y4;->A00:Lcom/facebook/ads/redexgen/X/VC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A01:Lcom/facebook/ads/redexgen/X/OA;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A06(Lcom/facebook/ads/redexgen/X/VC;Lcom/facebook/ads/redexgen/X/OA;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.Y5 (com.facebook.ads.redexgen.X.Y5)
.class public final synthetic Lcom/facebook/ads/redexgen/X/Y5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YB;

.field public final synthetic A01:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/YB;Ljava/lang/String;)V
    .registers 3

    .line 77221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y5;->A00:Lcom/facebook/ads/redexgen/X/YB;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Y5;->A01:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 77222
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.Y6 (com.facebook.ads.redexgen.X.Y6)
.class public final synthetic Lcom/facebook/ads/redexgen/X/Y6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Tp;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/YB;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/YB;Lcom/facebook/ads/redexgen/X/Tp;)V
    .registers 3

    .line 77223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A01:Lcom/facebook/ads/redexgen/X/YB;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Y6;->A00:Lcom/facebook/ads/redexgen/X/Tp;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 77224
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y6;->A01:Lcom/facebook/ads/redexgen/X/YB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y6;->A00:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A08(Lcom/facebook/ads/redexgen/X/Tp;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.Y7 (com.facebook.ads.redexgen.X.Y7)
.class public final synthetic Lcom/facebook/ads/redexgen/X/Y7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:J

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/YB;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/YB;IJ)V
    .registers 5

    .line 77225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y7;->A02:Lcom/facebook/ads/redexgen/X/YB;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Y7;->A00:I

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Y7;->A01:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 77226
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Y7;->A02:Lcom/facebook/ads/redexgen/X/YB;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Y7;->A00:I

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Y7;->A01:J

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A02(IJ)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.Y8 (com.facebook.ads.redexgen.X.Y8)
.class public final synthetic Lcom/facebook/ads/redexgen/X/Y8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/O7;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/YB;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/YB;Lcom/facebook/ads/redexgen/X/O7;)V
    .registers 3

    .line 77227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y8;->A01:Lcom/facebook/ads/redexgen/X/YB;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Y8;->A00:Lcom/facebook/ads/redexgen/X/O7;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 77228
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y8;->A01:Lcom/facebook/ads/redexgen/X/YB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y8;->A00:Lcom/facebook/ads/redexgen/X/O7;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0B(Lcom/facebook/ads/redexgen/X/O7;)V

    return-void
.end method
