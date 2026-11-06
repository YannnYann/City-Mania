###### Class com.facebook.ads.redexgen.X.FM (com.facebook.ads.redexgen.X.FM)
.class public final Lcom/facebook/ads/redexgen/X/FM;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/rA;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/FO;,
        Lcom/facebook/ads/redexgen/X/FN;
    }
.end annotation


# static fields
.field public static A0e:[B

.field public static A0f:[Ljava/lang/String;

.field public static final A0g:I


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/jY;

.field public A02:Lcom/facebook/ads/redexgen/X/pi;

.field public A03:Lcom/facebook/ads/redexgen/X/rf;

.field public A04:Lcom/facebook/ads/redexgen/X/sd;

.field public A05:Lcom/facebook/ads/redexgen/X/ss;

.field public A06:Lcom/facebook/ads/redexgen/X/sw;

.field public A07:Lcom/facebook/ads/redexgen/X/u4;

.field public A08:Lcom/facebook/ads/redexgen/X/El;

.field public A09:Lcom/facebook/ads/redexgen/X/ub;

.field public A0A:Lcom/facebook/ads/redexgen/X/vU;

.field public A0B:Lcom/facebook/ads/redexgen/X/hR;

.field public A0C:Lcom/facebook/ads/redexgen/X/hI;

.field public A0D:Lcom/facebook/ads/redexgen/X/gV;

.field public A0E:Z

.field public A0F:Z

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public A0L:Z

.field public final A0M:Landroid/os/Handler;

.field public final A0N:Lcom/facebook/ads/redexgen/X/LA;

.field public final A0O:Lcom/facebook/ads/redexgen/X/fb;

.field public final A0P:Lcom/facebook/ads/redexgen/X/je;

.field public final A0Q:Lcom/facebook/ads/redexgen/X/Hi;

.field public final A0R:Lcom/facebook/ads/redexgen/X/nG;

.field public final A0S:Lcom/facebook/ads/redexgen/X/nO;

.field public final A0T:Lcom/facebook/ads/redexgen/X/pi;

.field public final A0U:Lcom/facebook/ads/redexgen/X/qO;

.field public final A0V:Lcom/facebook/ads/redexgen/X/r9;

.field public final A0W:Lcom/facebook/ads/redexgen/X/s3;

.field public final A0X:Lcom/facebook/ads/redexgen/X/hv;

.field public final A0Y:Lcom/facebook/ads/redexgen/X/hX;

.field public final A0Z:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0c:Z

.field public final A0d:Lcom/facebook/ads/redexgen/X/r2;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 634
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mggtPCKDhLUUgxDg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bGVbKm0miDNrWqjTA3ocbiIrYxiRzTaQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "UqvGRnxCnX2cLa5dXcsE43A6wOicYgAn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "c0F4AxWLElkNoZ7rFhxQ2No0cUoeTvzQ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "S8dr1rIoW8CwdbaLqoXYzoEIJJn3JU2C"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2QzaerwwT41nXWpvjbj0xozhGSfPHx4y"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XW1alPMPzRPiAzik8glsHAI7hWTQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Tp"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/FM;->A0b()V

    sget v0, Lcom/facebook/ads/redexgen/X/pv;->A03:I

    sput v0, Lcom/facebook/ads/redexgen/X/FM;->A0g:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Lcom/facebook/ads/redexgen/X/r9;Lcom/facebook/ads/redexgen/X/LA;Lcom/facebook/ads/redexgen/X/fb;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/s3;)V
    .registers 18

    .line 40371
    move-object v2, p0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40372
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/FM;->A0G:Z

    .line 40373
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/FM;->A0E:Z

    .line 40374
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A0M:Landroid/os/Handler;

    .line 40375
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A0Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40376
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A0b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40377
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/FM;->A0J:Z

    .line 40378
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/FM;->A0L:Z

    .line 40379
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A0a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40380
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/FM;->A0H:Z

    .line 40381
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/FM;->A0I:Z

    .line 40382
    sget-object v0, Lcom/facebook/ads/redexgen/X/rf;->A03:Lcom/facebook/ads/redexgen/X/rf;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A03:Lcom/facebook/ads/redexgen/X/rf;

    .line 40383
    new-instance v0, Lcom/facebook/ads/redexgen/X/FQ;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/FQ;-><init>(Lcom/facebook/ads/redexgen/X/FM;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A0P:Lcom/facebook/ads/redexgen/X/je;

    .line 40384
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/FM;->A0F:Z

    .line 40385
    iput-object p1, v2, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    .line 40386
    iput-object p2, v2, Lcom/facebook/ads/redexgen/X/FM;->A0R:Lcom/facebook/ads/redexgen/X/nG;

    .line 40387
    iput-object p3, v2, Lcom/facebook/ads/redexgen/X/FM;->A0V:Lcom/facebook/ads/redexgen/X/r9;

    .line 40388
    iput-object p4, v2, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    .line 40389
    iput-object p5, v2, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    .line 40390
    move-object/from16 v0, p7

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A0W:Lcom/facebook/ads/redexgen/X/s3;

    .line 40391
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A37()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/FM;->A0R:Lcom/facebook/ads/redexgen/X/nG;

    new-instance v0, Lcom/facebook/ads/redexgen/X/nO;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/nO;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/nG;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A0S:Lcom/facebook/ads/redexgen/X/nO;

    .line 40392
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0D()Lcom/facebook/ads/redexgen/X/hv;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A0X:Lcom/facebook/ads/redexgen/X/hv;

    .line 40393
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/FM;->A0W:Lcom/facebook/ads/redexgen/X/s3;

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/FM;->A0V:Lcom/facebook/ads/redexgen/X/r9;

    new-instance v0, Lcom/facebook/ads/redexgen/X/gV;

    move-object/from16 v4, p6

    invoke-direct {v0, p1, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/gV;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/s3;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/r9;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A0D:Lcom/facebook/ads/redexgen/X/gV;

    .line 40394
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    .line 40395
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0C()I

    move-result v4

    const/4 v3, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/FO;

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/redexgen/X/FO;-><init>(Lcom/facebook/ads/redexgen/X/FM;Lcom/facebook/ads/redexgen/X/FQ;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/pi;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/pi;-><init>(ILcom/facebook/ads/redexgen/X/ph;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A0T:Lcom/facebook/ads/redexgen/X/pi;

    .line 40396
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fD;->A2n()Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A0c:Z

    .line 40397
    const/high16 v0, -0x1000000

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/FM;->setBackgroundColor(I)V

    .line 40398
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/FM;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A00:I

    .line 40399
    new-instance v0, Lcom/facebook/ads/redexgen/X/qO;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/qO;-><init>(Landroid/view/View;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A0U:Lcom/facebook/ads/redexgen/X/qO;

    .line 40400
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/FM;->A0U:Lcom/facebook/ads/redexgen/X/qO;

    sget-object v0, Lcom/facebook/ads/redexgen/X/qN;->A04:Lcom/facebook/ads/redexgen/X/qN;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/qO;->A05(Lcom/facebook/ads/redexgen/X/qN;)V

    .line 40401
    new-instance v8, Lcom/facebook/ads/redexgen/X/FN;

    invoke-direct {v8, v2, v3}, Lcom/facebook/ads/redexgen/X/FN;-><init>(Lcom/facebook/ads/redexgen/X/FM;Lcom/facebook/ads/redexgen/X/FQ;)V

    .line 40402
    .local p7, "playableAdsViewListener":Lcom/facebook/ads/redexgen/X/FN;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 40403
    .local v7, "playableMetricData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A0W:Lcom/facebook/ads/redexgen/X/s3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/s3;->A9O()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x58

    const/16 v1, 0x9

    const/16 v0, 0x7e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/FM;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40404
    new-instance v3, Lcom/facebook/ads/redexgen/X/hX;

    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/FM;->A0R:Lcom/facebook/ads/redexgen/X/nG;

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/hX;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/LA;Lcom/facebook/ads/redexgen/X/fb;Lcom/facebook/ads/redexgen/X/nG;Lcom/facebook/ads/redexgen/X/hj;Ljava/util/Map;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    .line 40405
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A09()Lcom/facebook/ads/redexgen/X/Fl;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    .line 40406
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0C()Lcom/facebook/ads/redexgen/X/El;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A08:Lcom/facebook/ads/redexgen/X/El;

    .line 40407
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40408
    .local v8, "anListenerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A0V:Lcom/facebook/ads/redexgen/X/r9;

    invoke-interface {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/r9;->A4V(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 40409
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0X()V

    .line 40410
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0g()Z

    move-result v0

    if-nez v0, :cond_f9

    .line 40411
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0s()V

    .line 40412
    :cond_f9
    return-void
.end method

.method private A00()I
    .registers 3

    .line 40413
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0k()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 40414
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0X()Z

    move-result v0

    return v0

    .line 40415
    :cond_d
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0j()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_21

    .line 40416
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0L:Z

    if-eqz v0, :cond_20

    .line 40417
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0X()Z

    move-result v0

    return v0

    .line 40418
    :cond_20
    return v1

    .line 40419
    :cond_21
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0b()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 40420
    return v1

    .line 40421
    :cond_2a
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0J:Z

    if-eqz v0, :cond_34

    .line 40422
    return v1

    .line 40423
    :cond_34
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0X()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 40424
    const/4 v0, 0x1

    return v0

    .line 40425
    :cond_3e
    return v1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/FM;)I
    .registers 1

    .line 40426
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A00()I

    move-result p0

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/FM;)Landroid/os/Handler;
    .registers 1

    .line 40427
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0M:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/LA;
    .registers 1

    .line 40428
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/fb;
    .registers 1

    .line 40429
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/Hi;
    .registers 1

    .line 40430
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/nG;
    .registers 1

    .line 40431
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0R:Lcom/facebook/ads/redexgen/X/nG;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/nO;
    .registers 1

    .line 40432
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0S:Lcom/facebook/ads/redexgen/X/nO;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/r9;
    .registers 1

    .line 40433
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0V:Lcom/facebook/ads/redexgen/X/r9;

    return-object p0
.end method

.method private A09()Lcom/facebook/ads/redexgen/X/Fl;
    .registers 7

    .line 40434
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    const/4 v0, 0x4

    new-instance v5, Lcom/facebook/ads/redexgen/X/Fl;

    invoke-direct {v5, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fl;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/LA;I)V

    .line 40435
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/r2;
    new-instance v0, Lcom/facebook/ads/redexgen/X/FR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/FR;-><init>(Lcom/facebook/ads/redexgen/X/FM;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Fl;->setToolbarListener(Lcom/facebook/ads/redexgen/X/r1;)V

    .line 40436
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40437
    .local v1, "toolbarParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    sget v2, Lcom/facebook/ads/redexgen/X/pv;->A0P:I

    sget v1, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 40438
    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/r2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40439
    return-object v5
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/rf;
    .registers 1

    .line 40440
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FM;->A03:Lcom/facebook/ads/redexgen/X/rf;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/s3;
    .registers 1

    .line 40441
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0W:Lcom/facebook/ads/redexgen/X/s3;

    return-object p0
.end method

.method private A0C()Lcom/facebook/ads/redexgen/X/El;
    .registers 15

    .line 40442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    const/4 v3, 0x0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    .line 40443
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hX;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/c2;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_25

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_25
    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const-string v1, "DX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v4, :cond_36

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    .line 40444
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hX;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/qT;

    move-result-object v0

    if-nez v0, :cond_37

    .line 40445
    .end local v0
    .end local v2
    :cond_36
    return-object v3

    .line 40446
    :cond_37
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A31()Lcom/facebook/ads/redexgen/X/fA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fA;->A01()Lcom/facebook/ads/redexgen/X/fN;

    move-result-object v8

    .line 40447
    .local v0, "colorInfo":Lcom/facebook/ads/redexgen/X/fN;
    new-instance v5, Lcom/facebook/ads/redexgen/X/El;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0W:Lcom/facebook/ads/redexgen/X/s3;

    .line 40448
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/s3;->A7x()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/FM;->A0R:Lcom/facebook/ads/redexgen/X/nG;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/FM;->A0V:Lcom/facebook/ads/redexgen/X/r9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    .line 40449
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hX;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/c2;

    move-result-object v11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    .line 40450
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hX;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/qT;

    move-result-object v12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    .line 40451
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A33()Lcom/facebook/ads/redexgen/X/fT;

    move-result-object v13

    invoke-direct/range {v5 .. v13}, Lcom/facebook/ads/redexgen/X/El;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/fN;Lcom/facebook/ads/redexgen/X/nG;Lcom/facebook/ads/redexgen/X/r9;Lcom/facebook/ads/redexgen/X/c2;Lcom/facebook/ads/redexgen/X/qT;Lcom/facebook/ads/redexgen/X/fT;)V

    .line 40452
    .local v2, "button":Lcom/facebook/ads/redexgen/X/El;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    .line 40453
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A32()Lcom/facebook/ads/redexgen/X/fE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fE;->A0K()Lcom/facebook/ads/redexgen/X/fP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A37()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40454
    invoke-virtual {v5, v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/El;->setCta(Lcom/facebook/ads/redexgen/X/fP;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/u7;)V

    .line 40455
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/uG;->setText(Ljava/lang/String;)V

    .line 40456
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/El;->A0D()V

    .line 40457
    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/El;->setTextSize(F)V

    .line 40458
    sget v4, Lcom/facebook/ads/redexgen/X/pv;->A0E:I

    sget v2, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/pv;->A0E:I

    sget v0, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    invoke-virtual {v5, v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/El;->setPadding(IIII)V

    .line 40459
    const v1, -0xf2a82e

    sget v0, Lcom/facebook/ads/redexgen/X/FM;->A0g:I

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/qc;->A0Q(Landroid/view/View;II)V

    .line 40460
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/El;->setElevation(F)V

    .line 40461
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/El;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 40462
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/El;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 40463
    new-instance v0, Lcom/facebook/ads/redexgen/X/rd;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/rd;-><init>(Lcom/facebook/ads/redexgen/X/FM;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/El;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40464
    return-object v5
.end method

.method private A0D()Lcom/facebook/ads/redexgen/X/hv;
    .registers 9

    .line 40465
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0M()Ljava/lang/String;

    move-result-object v1

    .line 40466
    .local v0, "markupUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0Q()Ljava/lang/String;

    move-result-object v4

    .line 40467
    .local v1, "sessionId":Ljava/lang/String;
    if-nez v4, :cond_16

    .line 40468
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 40469
    :cond_16
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/pP;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 40470
    .local p1, "remoteUri":Landroid/net/Uri;
    new-instance v1, Lcom/facebook/ads/redexgen/X/hv;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    .line 40471
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A37()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FM;->A0R:Lcom/facebook/ads/redexgen/X/nG;

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/hv;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/nG;Ljava/lang/String;Landroid/net/Uri;J)V

    .line 40472
    return-object v1
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/hv;
    .registers 1

    .line 40473
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0X:Lcom/facebook/ads/redexgen/X/hv;

    return-object p0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/hX;
    .registers 1

    .line 40474
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    return-object p0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/FM;)Lcom/facebook/ads/redexgen/X/hI;
    .registers 1

    .line 40475
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0C:Lcom/facebook/ads/redexgen/X/hI;

    return-object p0
.end method

.method public static A0H(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/FM;->A0e:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/FM;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 40476
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/FM;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 40477
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A0K()V
    .registers 7

    .line 40478
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0j()Z

    move-result v0

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5e

    .line 40479
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/FM;->A0J:Z

    .line 40480
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0S:Lcom/facebook/ads/redexgen/X/nO;

    sget-object v0, Lcom/facebook/ads/redexgen/X/nN;->A0Y:Lcom/facebook/ads/redexgen/X/nN;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/nO;->A04(Lcom/facebook/ads/redexgen/X/nN;Ljava/util/Map;)V

    .line 40481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A0F()Lcom/facebook/ads/redexgen/X/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/df;->AGJ()V

    .line 40482
    const/16 v5, 0x42

    const/16 v4, 0xa

    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_58

    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const-string v1, "DEs8a5IXSX8wXy093HXzyo0mAfeZ7BPd"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "uKuKWLaSAj3Zwzw6GCKS1ofzH2z82Nv7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v0, 0x5c

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/FM;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/FM;->A0i(ZLjava/lang/String;)V

    .line 40483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0X()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 40484
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0Y()V

    .line 40485
    :goto_51
    return-void

    .line 40486
    :cond_52
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/r2;->setToolbarActionMode(I)V

    goto :goto_51

    :cond_58
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 40487
    :cond_5e
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/r2;->setToolbarActionMode(I)V

    .line 40488
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/FM;->A0J:Z

    .line 40489
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0S:Lcom/facebook/ads/redexgen/X/nO;

    sget-object v0, Lcom/facebook/ads/redexgen/X/nN;->A0Y:Lcom/facebook/ads/redexgen/X/nN;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/nO;->A04(Lcom/facebook/ads/redexgen/X/nN;Ljava/util/Map;)V

    .line 40490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A0F()Lcom/facebook/ads/redexgen/X/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/df;->AGJ()V

    .line 40491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mv;->A1G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 40492
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0c:Z

    if-eqz v0, :cond_a6

    .line 40493
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0Y()V

    .line 40494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A32()Lcom/facebook/ads/redexgen/X/fE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fE;->A0T()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 40495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0D:Lcom/facebook/ads/redexgen/X/gV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gV;->A06()V

    .line 40496
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FM;->A0V:Lcom/facebook/ads/redexgen/X/r9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0W:Lcom/facebook/ads/redexgen/X/s3;

    .line 40497
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/s3;->A7L()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/5Y;

    invoke-direct {v0, v3, v3}, Lcom/facebook/ads/redexgen/X/5Y;-><init>(II)V

    .line 40498
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/r9;->A5D(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/mO;)V

    .line 40499
    :cond_a6
    const/16 v2, 0x61

    const/4 v1, 0x4

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FM;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/FM;->A0i(ZLjava/lang/String;)V

    .line 40500
    return-void
.end method

.method private A0L()V
    .registers 5

    .line 40501
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0H:Z

    if-eqz v0, :cond_5

    .line 40502
    return-void

    .line 40503
    :cond_5
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_18

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_18
    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const-string v1, "RN"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/FM;->A0H:Z

    .line 40504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0X:Lcom/facebook/ads/redexgen/X/hv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hv;->A05()V

    .line 40505
    return-void
.end method

.method private A0M()V
    .registers 5

    .line 40506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0K:Z

    .line 40507
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A32()Lcom/facebook/ads/redexgen/X/fE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fE;->A0T()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 40508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0D:Lcom/facebook/ads/redexgen/X/gV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gV;->A06()V

    .line 40509
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FM;->A0V:Lcom/facebook/ads/redexgen/X/r9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0W:Lcom/facebook/ads/redexgen/X/s3;

    .line 40510
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/s3;->A7L()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/5Y;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/5Y;-><init>(II)V

    .line 40511
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/r9;->A5D(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/mO;)V

    .line 40512
    :cond_25
    return-void
.end method

.method private A0N()V
    .registers 2

    .line 40513
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0I:Z

    if-eqz v0, :cond_7

    .line 40514
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0L()V

    .line 40515
    :cond_7
    return-void
.end method

.method private A0O()V
    .registers 6

    .line 40516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A04:Lcom/facebook/ads/redexgen/X/sd;

    if-nez v0, :cond_5

    .line 40517
    return-void

    .line 40518
    :cond_5
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40519
    .local v0, "adChoiceViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x15

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 40520
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 40521
    sget v3, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    sget v2, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/pv;->A0G:I

    sget v0, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 40522
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A04:Lcom/facebook/ads/redexgen/X/sd;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/sd;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40523
    return-void
.end method

.method private A0P()V
    .registers 6

    .line 40524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A05:Lcom/facebook/ads/redexgen/X/ss;

    if-nez v0, :cond_5

    .line 40525
    return-void

    .line 40526
    :cond_5
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40527
    .local v0, "creditLineViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x15

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 40528
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 40529
    sget v3, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    sget v2, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/pv;->A0A:I

    sget v0, Lcom/facebook/ads/redexgen/X/pv;->A0A:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 40530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A05:Lcom/facebook/ads/redexgen/X/ss;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/ss;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40531
    return-void
.end method

.method private A0Q()V
    .registers 6

    .line 40532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A06:Lcom/facebook/ads/redexgen/X/sw;

    if-eqz v0, :cond_24

    .line 40533
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40534
    .local v0, "creditLineStaticViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x14

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 40535
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 40536
    sget v3, Lcom/facebook/ads/redexgen/X/pv;->A0A:I

    sget v2, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/pv;->A0A:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 40537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A06:Lcom/facebook/ads/redexgen/X/sw;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/sw;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40538
    .end local v0    # "creditLineStaticViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_24
    return-void
.end method

.method private A0R()V
    .registers 7

    .line 40539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A32()Lcom/facebook/ads/redexgen/X/fE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fE;->A0L()Lcom/facebook/ads/redexgen/X/fQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fQ;->A00()J

    move-result-wide v2

    .line 40540
    .local v0, "forceViewTime":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1f

    .line 40541
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0M:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/rc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/rc;-><init>(Lcom/facebook/ads/redexgen/X/FM;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40542
    :goto_1e
    return-void

    .line 40543
    :cond_1f
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/r2;->setToolbarActionMode(I)V

    goto :goto_1e
.end method

.method private A0S()V
    .registers 6

    .line 40544
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0V:Lcom/facebook/ads/redexgen/X/r9;

    new-instance v0, Lcom/facebook/ads/redexgen/X/sd;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/sd;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/LA;Lcom/facebook/ads/redexgen/X/nO;Lcom/facebook/ads/redexgen/X/r9;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A04:Lcom/facebook/ads/redexgen/X/sd;

    .line 40545
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0O()V

    .line 40546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A04:Lcom/facebook/ads/redexgen/X/sd;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/FM;->addView(Landroid/view/View;)V

    .line 40547
    return-void
.end method

.method private A0T()V
    .registers 2

    .line 40548
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A3U()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 40549
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0W()V

    .line 40550
    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A3F()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 40551
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0V()V

    .line 40552
    :goto_16
    return-void

    .line 40553
    :cond_17
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0S()V

    goto :goto_16
.end method

.method private A0U()V
    .registers 8

    .line 40554
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A08:Lcom/facebook/ads/redexgen/X/El;

    if-nez v0, :cond_5

    .line 40555
    return-void

    .line 40556
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/FM;->setClipChildren(Z)V

    .line 40557
    new-instance v1, Lcom/facebook/ads/redexgen/X/u4;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/FM;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    .line 40558
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0B()I

    move-result v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    .line 40559
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0e()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/u4;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/LA;Lcom/facebook/ads/redexgen/X/El;IZ)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A07:Lcom/facebook/ads/redexgen/X/u4;

    .line 40560
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FM;->A0d(I)V

    .line 40561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A07:Lcom/facebook/ads/redexgen/X/u4;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/FM;->addView(Landroid/view/View;)V

    .line 40562
    return-void
.end method

.method private A0V()V
    .registers 9

    .line 40563
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/FM;->A0S:Lcom/facebook/ads/redexgen/X/nO;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/FM;->A0V:Lcom/facebook/ads/redexgen/X/r9;

    sget-object v6, Lcom/facebook/ads/redexgen/X/sv;->A03:Lcom/facebook/ads/redexgen/X/sv;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    .line 40564
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/su;->A00(Lcom/facebook/ads/redexgen/X/LA;)Lcom/facebook/ads/redexgen/X/sy;

    move-result-object v7

    .line 40565
    const/4 v2, 0x0

    invoke-static/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/sx;->A01(Lcom/facebook/ads/redexgen/X/Hi;ZLcom/facebook/ads/redexgen/X/LA;Lcom/facebook/ads/redexgen/X/nO;Lcom/facebook/ads/redexgen/X/r9;Lcom/facebook/ads/redexgen/X/sv;Lcom/facebook/ads/redexgen/X/sy;)Lcom/facebook/ads/redexgen/X/ss;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A05:Lcom/facebook/ads/redexgen/X/ss;

    .line 40566
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0P()V

    .line 40567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A05:Lcom/facebook/ads/redexgen/X/ss;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/FM;->addView(Landroid/view/View;)V

    .line 40568
    return-void
.end method

.method private A0W()V
    .registers 4

    .line 40569
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    sget-object v1, Lcom/facebook/ads/redexgen/X/sv;->A03:Lcom/facebook/ads/redexgen/X/sv;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    .line 40570
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/sx;->A02(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/sv;Lcom/facebook/ads/redexgen/X/LA;)Lcom/facebook/ads/redexgen/X/sw;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A06:Lcom/facebook/ads/redexgen/X/sw;

    .line 40571
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A06:Lcom/facebook/ads/redexgen/X/sw;

    const v0, -0x7fe3d4cd

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/sw;->setBackgroundColor(I)V

    .line 40572
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0Q()V

    .line 40573
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A06:Lcom/facebook/ads/redexgen/X/sw;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/FM;->addView(Landroid/view/View;)V

    .line 40574
    return-void
.end method

.method private A0X()V
    .registers 4

    .line 40575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/r2;->setVisibility(I)V

    .line 40576
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qc;->A0L(Landroid/view/View;)V

    .line 40577
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40578
    .local v0, "playableAdsViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/hX;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40579
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FM;->A0e(I)V

    .line 40580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/FM;->addView(Landroid/view/View;)V

    .line 40581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/FM;->addView(Landroid/view/View;)V

    .line 40582
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0j()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 40583
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0k()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Fl;

    if-eqz v0, :cond_44

    .line 40584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0C()I

    move-result v1

    .line 40585
    .local v2, "totalSecs":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fl;

    invoke-virtual {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/Fl;->A0H(II)V

    .line 40586
    .end local v2    # "totalSecs":I
    :cond_44
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0f()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 40587
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0U()V

    .line 40588
    :cond_4f
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0T()V

    .line 40589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0d()Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    .line 40590
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0g()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 40591
    :cond_62
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/FM;->setVisibility(I)V

    .line 40592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0X:Lcom/facebook/ads/redexgen/X/hv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hv;->A07()V

    .line 40593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hX;->A0C()V

    .line 40594
    :goto_6f
    return-void

    .line 40595
    :cond_70
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/hX;->setVisibility(I)V

    goto :goto_6f
.end method

.method private A0Y()V
    .registers 15

    .line 40596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A3F()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A05:Lcom/facebook/ads/redexgen/X/ss;

    if-eqz v0, :cond_20

    .line 40597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A05:Lcom/facebook/ads/redexgen/X/ss;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ss;->A0P()V

    .line 40598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A3S()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 40599
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    sget-object v0, Lcom/facebook/ads/redexgen/X/sv;->A02:Lcom/facebook/ads/redexgen/X/sv;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/su;->A05(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/sv;)V

    .line 40600
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A3U()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_48

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 40601
    :cond_40
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    sget-object v0, Lcom/facebook/ads/redexgen/X/sv;->A02:Lcom/facebook/ads/redexgen/X/sv;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/su;->A06(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/sv;)V

    goto :goto_20

    :cond_48
    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const-string v1, "YxHW9INLGJQUrioo"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "tNxsF2wfVd8DLrTkWvMIKfDxJbRr"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_61

    .line 40602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A06:Lcom/facebook/ads/redexgen/X/sw;

    if-eqz v0, :cond_61

    .line 40603
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    sget-object v0, Lcom/facebook/ads/redexgen/X/sv;->A02:Lcom/facebook/ads/redexgen/X/sv;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/su;->A07(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/sv;)V

    .line 40604
    :cond_61
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FM;->A0S:Lcom/facebook/ads/redexgen/X/nO;

    sget-object v1, Lcom/facebook/ads/redexgen/X/nN;->A1D:Lcom/facebook/ads/redexgen/X/nN;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nO;->A04(Lcom/facebook/ads/redexgen/X/nN;Ljava/util/Map;)V

    .line 40605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A08:Lcom/facebook/ads/redexgen/X/El;

    if-eqz v0, :cond_80

    .line 40606
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A32()Lcom/facebook/ads/redexgen/X/fE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fE;->A0K()Lcom/facebook/ads/redexgen/X/fP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fP;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/uG;->setText(Ljava/lang/String;)V

    .line 40607
    :cond_80
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fD;->A1a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/o7;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/o7;

    move-result-object v3

    .line 40608
    .local v0, "endCardType":Lcom/facebook/ads/redexgen/X/o7;
    sget-object v2, Lcom/facebook/ads/redexgen/X/o7;->A08:Lcom/facebook/ads/redexgen/X/o7;

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-ne v3, v2, :cond_cb

    .line 40609
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FM;->A0A:Lcom/facebook/ads/redexgen/X/vU;

    if-eqz v2, :cond_96

    .line 40610
    return-void

    .line 40611
    :cond_96
    new-instance v7, Lcom/facebook/ads/redexgen/X/vU;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/FM;->A0S:Lcom/facebook/ads/redexgen/X/nO;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/FM;->A0M:Landroid/os/Handler;

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/FM;->A0V:Lcom/facebook/ads/redexgen/X/r9;

    iget-object v13, p0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/vU;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/LA;Lcom/facebook/ads/redexgen/X/nO;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/r9;Landroid/view/View;)V

    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/FM;->A0A:Lcom/facebook/ads/redexgen/X/vU;

    .line 40612
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40613
    .local v1, "storeEndCardParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FM;->A0A:Lcom/facebook/ads/redexgen/X/vU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A08:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/vU;->A0K(Lcom/facebook/ads/redexgen/X/El;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/FM;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40614
    new-array v2, v1, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    aput-object v0, v2, v6

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/qc;->A0e([Landroid/view/View;)V

    .line 40615
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0R()V

    .line 40616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 40617
    return-void

    .line 40618
    .end local v1    # "storeEndCardParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_cb
    sget-object v2, Lcom/facebook/ads/redexgen/X/o7;->A05:Lcom/facebook/ads/redexgen/X/o7;

    if-ne v3, v2, :cond_10c

    .line 40619
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FM;->A09:Lcom/facebook/ads/redexgen/X/ub;

    if-eqz v2, :cond_d4

    .line 40620
    return-void

    .line 40621
    :cond_d4
    new-instance v7, Lcom/facebook/ads/redexgen/X/ub;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/FM;->A0S:Lcom/facebook/ads/redexgen/X/nO;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/FM;->A0M:Landroid/os/Handler;

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/FM;->A0V:Lcom/facebook/ads/redexgen/X/r9;

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/ub;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/LA;Lcom/facebook/ads/redexgen/X/nO;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/r9;)V

    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/FM;->A09:Lcom/facebook/ads/redexgen/X/ub;

    .line 40622
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40623
    .local v1, "basicEndCardParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FM;->A09:Lcom/facebook/ads/redexgen/X/ub;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A08:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/ub;->A0D(Lcom/facebook/ads/redexgen/X/El;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/FM;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40624
    new-array v2, v1, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    aput-object v0, v2, v6

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/qc;->A0e([Landroid/view/View;)V

    .line 40625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/r2;->bringToFront()V

    .line 40626
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0R()V

    .line 40627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 40628
    return-void

    .line 40629
    .end local v1    # "basicEndCardParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_10c
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/LA;->A32()Lcom/facebook/ads/redexgen/X/fE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/fE;->A0L()Lcom/facebook/ads/redexgen/X/fQ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/fQ;->A03()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_159

    .line 40630
    new-instance v7, Lcom/facebook/ads/redexgen/X/hI;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/FM;->A0V:Lcom/facebook/ads/redexgen/X/r9;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/FM;->A08:Lcom/facebook/ads/redexgen/X/El;

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/FM;->A0M:Landroid/os/Handler;

    iget-object v13, p0, Lcom/facebook/ads/redexgen/X/FM;->A0S:Lcom/facebook/ads/redexgen/X/nO;

    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/hI;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/LA;Lcom/facebook/ads/redexgen/X/r9;Lcom/facebook/ads/redexgen/X/El;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/nO;)V

    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/FM;->A0C:Lcom/facebook/ads/redexgen/X/hI;

    .line 40631
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40632
    .local v1, "endCardParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0C:Lcom/facebook/ads/redexgen/X/hI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hI;->A0W()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/FM;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40633
    new-array v2, v1, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    aput-object v0, v2, v6

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/qc;->A0e([Landroid/view/View;)V

    .line 40634
    .end local v1    # "endCardParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1
    .end local v4
    .end local v5
    :goto_14a
    new-array v2, v1, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    aput-object v0, v2, v6

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/qc;->A0e([Landroid/view/View;)V

    .line 40635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 40636
    return-void

    .line 40637
    :cond_159
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/FM;->A0R:Lcom/facebook/ads/redexgen/X/nG;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    new-instance v2, Lcom/facebook/ads/redexgen/X/hR;

    invoke-direct {v2, v5, v4, v3}, Lcom/facebook/ads/redexgen/X/hR;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Lcom/facebook/ads/redexgen/X/LA;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/FM;->A0B:Lcom/facebook/ads/redexgen/X/hR;

    .line 40638
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FM;->A0B:Lcom/facebook/ads/redexgen/X/hR;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FM;->A08:Lcom/facebook/ads/redexgen/X/El;

    .line 40639
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/hR;->A03(Lcom/facebook/ads/redexgen/X/El;)Landroid/util/Pair;

    move-result-object v4

    .line 40640
    .local v1, "endCard":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/internal/view/rewardedvideo/EndCardController$EndCardViewType;Landroid/view/View;>;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/LA;->A32()Lcom/facebook/ads/redexgen/X/fE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/fE;->A0I()Lcom/facebook/ads/redexgen/X/fH;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/fH;->A08()Ljava/lang/String;

    move-result-object v3

    .line 40641
    .local v5, "imageUrl":Ljava/lang/String;
    if-eqz v3, :cond_183

    .line 40642
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v2, p0, v3}, Lcom/facebook/ads/redexgen/X/uW;->A00(Lcom/facebook/ads/redexgen/X/Hi;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 40643
    :cond_183
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40644
    .local v4, "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/FM;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40645
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0R()V

    goto :goto_14a
.end method

.method private A0Z()V
    .registers 6

    .line 40646
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    new-instance v4, Lcom/facebook/ads/redexgen/X/qU;

    invoke-direct {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/qU;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/LA;)V

    .line 40647
    .local v0, "splashScreenView":Lcom/facebook/ads/redexgen/X/qU;
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40648
    .local v1, "splashScreenParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/FM;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40649
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FM;->A0M:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/rb;

    invoke-direct {v2, p0, v4}, Lcom/facebook/ads/redexgen/X/rb;-><init>(Lcom/facebook/ads/redexgen/X/FM;Lcom/facebook/ads/redexgen/X/qU;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    .line 40650
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0D()I

    move-result v0

    int-to-long v0, v0

    .line 40651
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40652
    return-void
.end method

.method private A0a()V
    .registers 2

    .line 40653
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0F:Z

    if-nez v0, :cond_5

    .line 40654
    return-void

    .line 40655
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0F:Z

    .line 40656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0T:Lcom/facebook/ads/redexgen/X/pi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/pi;->A07()Z

    .line 40657
    return-void
.end method

.method public static A0b()V
    .registers 1

    const/16 v0, 0x72

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/FM;->A0e:[B

    return-void

    :array_a
    .array-data 1
        0x5t
        0xat
        0xft
        0x5t
        0xdt
        0x39t
        0x9t
        0x14t
        0xft
        0x1t
        0xft
        0x8t
        0x29t
        0x26t
        0x23t
        0x29t
        0x21t
        0x15t
        0x39t
        0x25t
        0x3ft
        0x38t
        0x29t
        0x2ft
        0x2bt
        0x24t
        0x27t
        0x3bt
        0x2dt
        0x17t
        0x26t
        0x29t
        0x3et
        0x17t
        0x2at
        0x29t
        0x3at
        0xbt
        0x1ct
        0x9t
        0x37t
        0x6t
        0x9t
        0x1ct
        0x1t
        0x1et
        0xdt
        0x37t
        0x6t
        0x9t
        0x1et
        0x37t
        0xat
        0x9t
        0x1at
        0x15t
        0x2t
        0x17t
        0x29t
        0x1t
        0x13t
        0x14t
        0x0t
        0x1ft
        0x13t
        0x1t
        0x46t
        0x4ft
        0x52t
        0x43t
        0x45t
        0x44t
        0x7ft
        0x4et
        0x54t
        0x44t
        0x5at
        0x55t
        0x40t
        0x5dt
        0x42t
        0x51t
        0x6bt
        0x57t
        0x58t
        0x5dt
        0x57t
        0x5ft
        0x72t
        0x6et
        0x63t
        0x61t
        0x67t
        0x6ft
        0x67t
        0x6ct
        0x76t
        0x39t
        0x21t
        0x23t
        0x3at
        0x37t
        0x25t
        0x22t
        0x36t
        0x29t
        0x25t
        0x37t
        0x1ft
        0x23t
        0x2ct
        0x29t
        0x23t
        0x2bt
    .end array-data
.end method

.method private A0c(FFII)V
    .registers 6

    .line 40658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0X:Lcom/facebook/ads/redexgen/X/hv;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/hv;->A0A(FFII)V

    .line 40659
    return-void
.end method

.method private A0d(I)V
    .registers 7

    .line 40660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A07:Lcom/facebook/ads/redexgen/X/u4;

    if-nez v0, :cond_5

    .line 40661
    return-void

    .line 40662
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A07:Lcom/facebook/ads/redexgen/X/u4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/u4;->A0I(I)V

    .line 40663
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40664
    .local v0, "bannerOverlayAnimationViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2e

    .line 40665
    sget v3, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    sget v2, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/pv;->A06:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 40666
    :goto_1e
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 40667
    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 40668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A07:Lcom/facebook/ads/redexgen/X/u4;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/u4;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40669
    return-void

    .line 40670
    :cond_2e
    sget v3, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    sget v2, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/pv;->A0P:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1e
.end method

.method private A0e(I)V
    .registers 7

    .line 40671
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 40672
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    sget v3, Lcom/facebook/ads/redexgen/X/pv;->A01:I

    sget v2, Lcom/facebook/ads/redexgen/X/pv;->A01:I

    sget v1, Lcom/facebook/ads/redexgen/X/pv;->A01:I

    sget v0, Lcom/facebook/ads/redexgen/X/pv;->A01:I

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hX;->setPadding(IIII)V

    .line 40673
    :goto_10
    return-void

    .line 40674
    :cond_11
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    sget v3, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2f
    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const-string v1, "B7VxERYDPC2VN9mIyvtjmXK8bcy7GYt7"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget v2, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/pv;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hX;->setPadding(IIII)V

    goto :goto_10
.end method

.method public static synthetic A0f(Lcom/facebook/ads/redexgen/X/FM;)V
    .registers 1

    .line 40675
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0Y()V

    return-void
.end method

.method public static synthetic A0g(Lcom/facebook/ads/redexgen/X/FM;)V
    .registers 1

    .line 40676
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0M()V

    return-void
.end method

.method public static synthetic A0h(Lcom/facebook/ads/redexgen/X/FM;ZLjava/lang/String;)V
    .registers 3

    .line 40677
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/FM;->A0i(ZLjava/lang/String;)V

    return-void
.end method

.method private A0i(ZLjava/lang/String;)V
    .registers 15

    .line 40678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0G:Z

    .line 40679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 40680
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FM;->A0X:Lcom/facebook/ads/redexgen/X/hv;

    .line 40681
    if-eqz p1, :cond_43

    const/16 v2, 0x37

    const/16 v1, 0xb

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FM;->A0H(III)Ljava/lang/String;

    move-result-object v0

    .line 40682
    :goto_19
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/hv;->A0D(Ljava/lang/String;)V

    .line 40683
    :cond_1c
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 40684
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_4e

    const/16 v6, 0x65

    const/16 v5, 0xd

    const/16 v4, 0x3c

    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_59

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 40685
    :cond_43
    const/16 v2, 0x25

    const/16 v1, 0x12

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FM;->A0H(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 40686
    :cond_4e
    const/16 v2, 0x4c

    const/16 v1, 0xc

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FM;->A0H(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_64

    .line 40687
    :cond_59
    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const-string v1, "Xs"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/FM;->A0H(III)Ljava/lang/String;

    move-result-object v0

    .line 40688
    :goto_64
    const/4 v4, 0x0

    const/16 v2, 0xc

    const/16 v1, 0x1a

    invoke-static {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/FM;->A0H(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40689
    const/16 v2, 0xc

    const/16 v1, 0xc

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FM;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40690
    new-instance v4, Lcom/facebook/ads/redexgen/X/u8;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0W:Lcom/facebook/ads/redexgen/X/s3;

    .line 40691
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/s3;->A7x()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    .line 40692
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hX;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/c2;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    .line 40693
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hX;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/qT;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/FM;->A0R:Lcom/facebook/ads/redexgen/X/nG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    .line 40694
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A33()Lcom/facebook/ads/redexgen/X/fT;

    move-result-object v10

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/FM;->A0V:Lcom/facebook/ads/redexgen/X/r9;

    invoke-direct/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/u8;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/c2;Lcom/facebook/ads/redexgen/X/qT;Lcom/facebook/ads/redexgen/X/nG;Lcom/facebook/ads/redexgen/X/fT;Lcom/facebook/ads/redexgen/X/r9;)V

    .line 40695
    .local v1, "helper":Lcom/facebook/ads/redexgen/X/u8;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/u8;->A0A(Lcom/facebook/ads/redexgen/X/LA;)V

    .line 40696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    .line 40697
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A37()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A32()Lcom/facebook/ads/redexgen/X/fE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fE;->A0K()Lcom/facebook/ads/redexgen/X/fP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fP;->A06()Ljava/lang/String;

    move-result-object v0

    .line 40698
    invoke-virtual {v4, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/u8;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/ec;

    .line 40699
    return-void
.end method

.method private A0j()Z
    .registers 2

    .line 40700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0Y()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private A0k()Z
    .registers 3

    .line 40701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    .line 40702
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0H()Lcom/facebook/ads/redexgen/X/fj;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fj;->A05:Lcom/facebook/ads/redexgen/X/fj;

    if-ne v1, v0, :cond_10

    const/4 v0, 0x1

    .line 40703
    :goto_f
    return v0

    .line 40704
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private A0l()Z
    .registers 2

    .line 40705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0h()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private A0m()Z
    .registers 2

    .line 40706
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0j()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0l()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static synthetic A0n(Lcom/facebook/ads/redexgen/X/FM;)Z
    .registers 1

    .line 40707
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0K:Z

    return p0
.end method

.method public static synthetic A0o(Lcom/facebook/ads/redexgen/X/FM;)Z
    .registers 1

    .line 40708
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0E:Z

    return p0
.end method

.method public static synthetic A0p(Lcom/facebook/ads/redexgen/X/FM;)Z
    .registers 1

    .line 40709
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0m()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0q(Lcom/facebook/ads/redexgen/X/FM;)Z
    .registers 1

    .line 40710
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0G:Z

    return p0
.end method


# virtual methods
.method public final A0r()V
    .registers 2

    .line 40711
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0F:Z

    .line 40712
    return-void
.end method

.method public final A0s()V
    .registers 7

    .line 40713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0d()Z

    move-result v0

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    .line 40714
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0g()Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 40715
    :cond_12
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/FM;->setVisibility(I)V

    .line 40716
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/hX;->A0E(I)V

    .line 40717
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/FM;->AGp(Z)V

    .line 40718
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/FM;->A0I:Z

    .line 40719
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 40720
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0Y()V

    .line 40721
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0Z()Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4a

    :cond_44
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4a
    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const-string v1, "f6"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v5, :cond_56

    .line 40722
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0Z()V

    .line 40723
    :cond_56
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A07:Lcom/facebook/ads/redexgen/X/u4;

    if-eqz v0, :cond_5f

    .line 40724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A07:Lcom/facebook/ads/redexgen/X/u4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/u4;->A0E()V

    .line 40725
    :cond_5f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/r2;->setVisibility(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_44

    .line 40726
    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const-string v1, "zfGZEOUmCKQGDqCLdisb9JQ2MUPeHs8Q"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "hVWZ2tO71I40sUkNDW2VGOKcit0mQRtQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 40727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0X:Lcom/facebook/ads/redexgen/X/hv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hv;->A09()V

    .line 40728
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_e0

    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const-string v1, "unscPwtSNkwMZlAC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "2AhQ8z9FgUlaAGwHSkXpJbM89y9g"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hi;->A0F()Lcom/facebook/ads/redexgen/X/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/df;->A3s()V

    .line 40729
    :cond_b8
    :goto_b8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A08:Lcom/facebook/ads/redexgen/X/El;

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A2x()I

    move-result v0

    if-lez v0, :cond_df

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A02:Lcom/facebook/ads/redexgen/X/pi;

    if-nez v0, :cond_df

    .line 40730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    .line 40731
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A2x()I

    move-result v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/FP;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/FP;-><init>(Lcom/facebook/ads/redexgen/X/FM;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/pi;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/pi;-><init>(ILcom/facebook/ads/redexgen/X/ph;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A02:Lcom/facebook/ads/redexgen/X/pi;

    .line 40732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A02:Lcom/facebook/ads/redexgen/X/pi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/pi;->A07()Z

    .line 40733
    :cond_df
    return-void

    :cond_e0
    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const-string v1, "RdY0UoZvcc5pm3uc8qQLLoS8EhqLOOLQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "EoKTDlZnYU8maS3dJ3vLeoOIP4BSDySd"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hi;->A0F()Lcom/facebook/ads/redexgen/X/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/df;->A3s()V

    goto :goto_b8

    .line 40734
    :cond_f4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0X:Lcom/facebook/ads/redexgen/X/hv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hv;->A06()V

    .line 40735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hX;->A0C()V

    .line 40736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/hX;->setVisibility(I)V

    .line 40737
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0F:Z

    if-nez v0, :cond_12a

    .line 40738
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/FM;->A0T:Lcom/facebook/ads/redexgen/X/pi;

    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_44

    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const-string v1, "3cPqyuNhBdsPWLqlZ6EUSoRTetAUM5TY"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "CbIoEOkPTfCRayjqFXO7No3T6WA9OX52"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/pi;->A07()Z

    .line 40739
    :cond_12a
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/FM;->A0I:Z

    goto/16 :goto_2a
.end method

.method public final synthetic A0t()V
    .registers 3

    .line 40740
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/r2;->setToolbarActionMode(I)V

    return-void
.end method

.method public final synthetic A0u(Lcom/facebook/ads/redexgen/X/r2;)V
    .registers 6

    .line 40741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0a()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 40742
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/r2;->getToolbarActionMode()I

    move-result v1

    const/16 v0, 0x8

    if-ne v1, v0, :cond_14

    .line 40743
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0K()V

    .line 40744
    :goto_13
    return-void

    .line 40745
    :cond_14
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/r2;->getToolbarActionMode()I

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    .line 40746
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0X()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40747
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_32

    .line 40748
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/r2;->setToolbarActionMode(I)V

    .line 40749
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0Y()V

    goto :goto_13

    .line 40750
    :cond_32
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FM;->A0X:Lcom/facebook/ads/redexgen/X/hv;

    const/16 v2, 0x18

    const/16 v1, 0xd

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FM;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/hv;->A0D(Ljava/lang/String;)V

    .line 40751
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FM;->A0S:Lcom/facebook/ads/redexgen/X/nO;

    sget-object v1, Lcom/facebook/ads/redexgen/X/nN;->A07:Lcom/facebook/ads/redexgen/X/nN;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nO;->A04(Lcom/facebook/ads/redexgen/X/nN;Ljava/util/Map;)V

    .line 40752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Q:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A0F()Lcom/facebook/ads/redexgen/X/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/df;->ABl()V

    .line 40753
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0V:Lcom/facebook/ads/redexgen/X/r9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0W:Lcom/facebook/ads/redexgen/X/s3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/s3;->A8X()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/r9;->A5C(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public final synthetic A0v(Lcom/facebook/ads/redexgen/X/qU;)V
    .registers 2

    .line 40754
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/FM;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final ABc(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/jY;)V
    .registers 5

    .line 40755
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/FM;->A01:Lcom/facebook/ads/redexgen/X/jY;

    .line 40756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0P:Lcom/facebook/ads/redexgen/X/je;

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/jY;->A0A(Lcom/facebook/ads/redexgen/X/je;)V

    .line 40757
    return-void
.end method

.method public final AGF(Z)V
    .registers 6

    .line 40758
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0T:Lcom/facebook/ads/redexgen/X/pi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/pi;->A06()Z

    .line 40759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0E:Z

    .line 40760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Fl;

    if-eqz v0, :cond_15

    .line 40761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fl;->A0F()V

    .line 40762
    :cond_15
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FM;->A07:Lcom/facebook/ads/redexgen/X/u4;

    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5d

    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const-string v1, "uIHacaHY8U2szc8aIXsDY83nrdUHqT7G"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_37

    .line 40763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A07:Lcom/facebook/ads/redexgen/X/u4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/u4;->A0G()V

    .line 40764
    :cond_37
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0A:Lcom/facebook/ads/redexgen/X/vU;

    if-eqz v0, :cond_40

    .line 40765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0A:Lcom/facebook/ads/redexgen/X/vU;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/vU;->A0N(Z)V

    .line 40766
    :cond_40
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A09:Lcom/facebook/ads/redexgen/X/ub;

    if-eqz v0, :cond_49

    .line 40767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A09:Lcom/facebook/ads/redexgen/X/ub;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ub;->A0G(Z)V

    .line 40768
    :cond_49
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A05:Lcom/facebook/ads/redexgen/X/ss;

    if-eqz v0, :cond_53

    .line 40769
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A05:Lcom/facebook/ads/redexgen/X/ss;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ss;->A0P()V

    .line 40770
    :cond_52
    :goto_52
    return-void

    .line 40771
    :cond_53
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A04:Lcom/facebook/ads/redexgen/X/sd;

    if-eqz v0, :cond_52

    .line 40772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A04:Lcom/facebook/ads/redexgen/X/sd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/sd;->A05()V

    goto :goto_52

    :cond_5d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AGp(Z)V
    .registers 5

    .line 40773
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0F:Z

    if-nez v0, :cond_9

    .line 40774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0T:Lcom/facebook/ads/redexgen/X/pi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/pi;->A07()Z

    .line 40775
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Fl;

    if-eqz v0, :cond_16

    .line 40776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fl;->A0G()V

    .line 40777
    :cond_16
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A07:Lcom/facebook/ads/redexgen/X/u4;

    if-eqz v0, :cond_1f

    .line 40778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A07:Lcom/facebook/ads/redexgen/X/u4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/u4;->A0H()V

    .line 40779
    :cond_1f
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0J:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 40780
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0j()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0X()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 40781
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FM;->A0S:Lcom/facebook/ads/redexgen/X/nO;

    sget-object v1, Lcom/facebook/ads/redexgen/X/nN;->A07:Lcom/facebook/ads/redexgen/X/nN;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nO;->A04(Lcom/facebook/ads/redexgen/X/nN;Ljava/util/Map;)V

    .line 40782
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0V:Lcom/facebook/ads/redexgen/X/r9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0W:Lcom/facebook/ads/redexgen/X/s3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/s3;->A8X()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/r9;->A5C(Ljava/lang/String;)V

    .line 40783
    :cond_4c
    :goto_4c
    return-void

    .line 40784
    :cond_4d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0b()Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0j()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 40785
    :cond_5b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0Y()V

    goto :goto_4c
.end method

.method public final AKD(Landroid/os/Bundle;)V
    .registers 2

    .line 40786
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 40787
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0N()V

    .line 40788
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1c

    .line 40789
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/FM;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/FM;->getHeight()I

    move-result v0

    invoke-direct {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FM;->A0c(FFII)V

    .line 40790
    :cond_1c
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .registers 4

    .line 40791
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FM;->A0H(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .registers 9

    .line 40792
    const v3, 0x3858748a

    if-ne p1, v3, :cond_8

    .line 40793
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0a()V

    .line 40794
    :cond_8
    const/4 v2, 0x0

    if-ne p1, v3, :cond_52

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0J:Z

    if-eqz v0, :cond_52

    .line 40795
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0j()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3f

    .line 40796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0X()Z

    move-result v0

    if-nez v0, :cond_33

    .line 40797
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0S:Lcom/facebook/ads/redexgen/X/nO;

    sget-object v0, Lcom/facebook/ads/redexgen/X/nN;->A07:Lcom/facebook/ads/redexgen/X/nN;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/nO;->A04(Lcom/facebook/ads/redexgen/X/nN;Ljava/util/Map;)V

    .line 40798
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0V:Lcom/facebook/ads/redexgen/X/r9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0W:Lcom/facebook/ads/redexgen/X/s3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/s3;->A8X()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/r9;->A5C(Ljava/lang/String;)V

    .line 40799
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/FM;->A0J:Z

    .line 40800
    return v2

    .line 40801
    :cond_33
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_52

    .line 40802
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0Y()V

    goto :goto_52

    .line 40803
    :cond_3f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_52

    .line 40804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0b()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 40805
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0Y()V

    .line 40806
    :cond_52
    :goto_52
    if-ne p1, v3, :cond_7e

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0J:Z

    if-nez v0, :cond_7e

    .line 40807
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0j()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 40808
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FM;->A0k()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 40809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0L:Z

    .line 40810
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0K:Z

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 40811
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0O:Lcom/facebook/ads/redexgen/X/fb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fb;->A0X()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/r2;->setToolbarActionMode(I)V

    .line 40812
    :cond_7e
    return v2

    .line 40813
    :cond_7f
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0S:Lcom/facebook/ads/redexgen/X/nO;

    sget-object v0, Lcom/facebook/ads/redexgen/X/nN;->A07:Lcom/facebook/ads/redexgen/X/nN;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/nO;->A04(Lcom/facebook/ads/redexgen/X/nN;Ljava/util/Map;)V

    .line 40814
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0V:Lcom/facebook/ads/redexgen/X/r9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0W:Lcom/facebook/ads/redexgen/X/s3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/s3;->A8X()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/r9;->A5C(Ljava/lang/String;)V

    goto :goto_52
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 40815
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 40816
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FM;->A0e(I)V

    .line 40817
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FM;->A0d(I)V

    .line 40818
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0A:Lcom/facebook/ads/redexgen/X/vU;

    if-eqz v0, :cond_18

    .line 40819
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0A:Lcom/facebook/ads/redexgen/X/vU;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/vU;->A0M(I)V

    .line 40820
    :cond_18
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A09:Lcom/facebook/ads/redexgen/X/ub;

    if-eqz v0, :cond_23

    .line 40821
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A09:Lcom/facebook/ads/redexgen/X/ub;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ub;->A0F(I)V

    .line 40822
    :cond_23
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0C:Lcom/facebook/ads/redexgen/X/hI;

    if-eqz v0, :cond_2e

    .line 40823
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A0C:Lcom/facebook/ads/redexgen/X/hI;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hI;->A0a(I)V

    .line 40824
    :cond_2e
    return-void
.end method

.method public final onDestroy()V
    .registers 5

    .line 40825
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0H:Z

    if-eqz v0, :cond_9

    .line 40826
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0X:Lcom/facebook/ads/redexgen/X/hv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hv;->A04()V

    .line 40827
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0X:Lcom/facebook/ads/redexgen/X/hv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hv;->A08()V

    .line 40828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0U:Lcom/facebook/ads/redexgen/X/qO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qO;->A03()V

    .line 40829
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A01:Lcom/facebook/ads/redexgen/X/jY;

    if-eqz v0, :cond_1e

    .line 40830
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A01:Lcom/facebook/ads/redexgen/X/jY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0P:Lcom/facebook/ads/redexgen/X/je;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jY;->A0B(Lcom/facebook/ads/redexgen/X/je;)V

    .line 40831
    :cond_1e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A07:Lcom/facebook/ads/redexgen/X/u4;

    if-eqz v0, :cond_27

    .line 40832
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A07:Lcom/facebook/ads/redexgen/X/u4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/u4;->A0F()V

    .line 40833
    :cond_27
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    if-eqz v0, :cond_64

    .line 40834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A37()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 40835
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FM;->A0R:Lcom/facebook/ads/redexgen/X/nG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0N:Lcom/facebook/ads/redexgen/X/LA;

    .line 40836
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A37()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/ti;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/ti;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    .line 40837
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hX;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/c2;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ti;->A05(Lcom/facebook/ads/redexgen/X/c2;)Lcom/facebook/ads/redexgen/X/ti;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    .line 40838
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hX;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/qT;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ti;->A04(Lcom/facebook/ads/redexgen/X/qT;)Lcom/facebook/ads/redexgen/X/ti;

    move-result-object v0

    .line 40839
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ti;->A07()Ljava/util/Map;

    move-result-object v0

    .line 40840
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/nG;->ABt(Ljava/lang/String;Ljava/util/Map;)V

    .line 40841
    :cond_5f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0Y:Lcom/facebook/ads/redexgen/X/hX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hX;->A0D()V

    .line 40842
    :cond_64
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A05:Lcom/facebook/ads/redexgen/X/ss;

    if-eqz v0, :cond_ae

    .line 40843
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A05:Lcom/facebook/ads/redexgen/X/ss;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ss;->A0O()V

    .line 40844
    :cond_6d
    :goto_6d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0A:Lcom/facebook/ads/redexgen/X/vU;

    if-eqz v0, :cond_76

    .line 40845
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0A:Lcom/facebook/ads/redexgen/X/vU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/vU;->A0L()V

    .line 40846
    :cond_76
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A09:Lcom/facebook/ads/redexgen/X/ub;

    if-eqz v0, :cond_9d

    .line 40847
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FM;->A09:Lcom/facebook/ads/redexgen/X/ub;

    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_b8

    sget-object v2, Lcom/facebook/ads/redexgen/X/FM;->A0f:[Ljava/lang/String;

    const-string v1, "Q0GhnU5mWmrUW6fVMfkJ3ov5b6qroRGm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "FTX7KV946AUnl5vNatxGJoY1guD2OvKI"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ub;->A0E()V

    .line 40848
    :cond_9d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0T:Lcom/facebook/ads/redexgen/X/pi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/pi;->A06()Z

    .line 40849
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0d:Lcom/facebook/ads/redexgen/X/r2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/r2;->setToolbarListener(Lcom/facebook/ads/redexgen/X/r1;)V

    .line 40850
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A0M:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 40851
    return-void

    .line 40852
    :cond_ae
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A04:Lcom/facebook/ads/redexgen/X/sd;

    if-eqz v0, :cond_6d

    .line 40853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A04:Lcom/facebook/ads/redexgen/X/sd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/sd;->A04()V

    goto :goto_6d

    :cond_b8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final synthetic onStart()V
    .registers 1

    return-void
.end method

.method public final synthetic onStop()V
    .registers 1

    return-void
.end method

.method public setImpressionLogging(Lcom/facebook/ads/redexgen/X/rf;)V
    .registers 2

    .line 40854
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FM;->A03:Lcom/facebook/ads/redexgen/X/rf;

    .line 40855
    return-void
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/r9;)V
    .registers 2

    .line 40856
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.FR (com.facebook.ads.redexgen.X.FR)
.class public final synthetic Lcom/facebook/ads/redexgen/X/FR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/r1;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FM;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/FM;)V
    .registers 2

    .line 40948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FR;->A00:Lcom/facebook/ads/redexgen/X/FM;

    return-void
.end method


# virtual methods
.method public final ADh(Lcom/facebook/ads/redexgen/X/r2;)V
    .registers 3

    .line 40949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FR;->A00:Lcom/facebook/ads/redexgen/X/FM;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/FM;->A0u(Lcom/facebook/ads/redexgen/X/r2;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.RunnableC3172rb (com.facebook.ads.redexgen.X.rb)
.class public final synthetic Lcom/facebook/ads/redexgen/X/rb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FM;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/qU;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/FM;Lcom/facebook/ads/redexgen/X/qU;)V
    .registers 3

    .line 110366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/rb;->A00:Lcom/facebook/ads/redexgen/X/FM;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/rb;->A01:Lcom/facebook/ads/redexgen/X/qU;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 110367
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/rb;->A00:Lcom/facebook/ads/redexgen/X/FM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rb;->A01:Lcom/facebook/ads/redexgen/X/qU;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FM;->A0v(Lcom/facebook/ads/redexgen/X/qU;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.RunnableC3173rc (com.facebook.ads.redexgen.X.rc)
.class public final synthetic Lcom/facebook/ads/redexgen/X/rc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FM;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/FM;)V
    .registers 2

    .line 110368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/rc;->A00:Lcom/facebook/ads/redexgen/X/FM;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 110369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rc;->A00:Lcom/facebook/ads/redexgen/X/FM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FM;->A0t()V

    return-void
.end method
