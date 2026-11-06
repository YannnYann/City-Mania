###### Class com.facebook.ads.redexgen.X.AnonymousClass93 (com.facebook.ads.redexgen.X.93)
.class public final Lcom/facebook/ads/redexgen/X/93;
.super Lcom/facebook/ads/redexgen/X/VK;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Sk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Se;,
        Lcom/facebook/ads/redexgen/X/Sd;
    }
.end annotation


# static fields
.field public static A0N:[B

.field public static A0O:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:Landroid/view/Surface;

.field public A04:Landroid/view/SurfaceHolder;

.field public A05:Landroid/view/TextureView;

.field public A06:Lcom/facebook/ads/redexgen/X/VL;

.field public A07:Lcom/facebook/ads/redexgen/X/VC;

.field public A08:Lcom/facebook/ads/redexgen/X/VC;

.field public A09:Lcom/facebook/ads/redexgen/X/O7;

.field public A0A:Lcom/facebook/ads/redexgen/X/O7;

.field public A0B:Lcom/facebook/ads/redexgen/X/Uj;

.field public A0C:Z

.field public final A0D:Landroid/os/Handler;

.field public final A0E:Lcom/facebook/ads/redexgen/X/95;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Se;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Sb;

.field public final A0H:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/Qe;",
            ">;"
        }
    .end annotation
.end field

.field public final A0I:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/LJ;",
            ">;"
        }
    .end annotation
.end field

.field public final A0J:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/TS;",
            ">;"
        }
    .end annotation
.end field

.field public final A0K:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/YC;",
            ">;"
        }
    .end annotation
.end field

.field public final A0L:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/Sd;",
            ">;"
        }
    .end annotation
.end field

.field public final A0M:[Lcom/facebook/ads/redexgen/X/Sg;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 380
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uMVMaQPfnslh4nnIXSeSACeU724L8uWm"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mLPKU5hu8JCj3mzugb6OIsu3W3FTLtXk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2sE51WRPe0hhbu3tFkLAYKycp3vSWy9U"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IWmWJaflJ0eX35LZGEyePJ3TgxSjchUM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "n47nQMjeCZ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jR5GUqCdTaTbsWeiDqt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JbFN8FtVIDdO3BsbGSr1Yf3LiBkC6O75"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DVJz4Bqu2qCnCaC6HJWXyHx7FQQcy"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/93;->A0O:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/93;->A0E()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Pi;Lcom/facebook/ads/redexgen/X/Wi;Lcom/facebook/ads/redexgen/X/Ot;Lcom/facebook/ads/redexgen/X/Ws;Lcom/facebook/ads/redexgen/X/Ru;Lcom/facebook/ads/redexgen/X/Wy;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Pi;",
            "Lcom/facebook/ads/redexgen/X/Wi;",
            "Lcom/facebook/ads/redexgen/X/Ot;",
            "Lcom/facebook/ads/redexgen/X/Ws;",
            "Lcom/facebook/ads/redexgen/X/Ru;",
            "Lcom/facebook/ads/redexgen/X/Wy<",
            "Lcom/facebook/ads/redexgen/X/Lu;",
            "Lcom/facebook/ads/redexgen/X/Sb;",
            ">;)V"
        }
    .end annotation

    .line 26555
    .local p7, "analyticsCollectorFunction":Lcom/facebook/ads/redexgen/X/Wy;, "Lcom/google/common/base/Function<Lcom/facebook/ads/androidx/media3/common/util/Clock;Lcom/facebook/ads/androidx/media3/exoplayer/analytics/AnalyticsCollector;>;"
    sget-object v8, Lcom/facebook/ads/redexgen/X/Lu;->A00:Lcom/facebook/ads/redexgen/X/Lu;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/93;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Pi;Lcom/facebook/ads/redexgen/X/Wi;Lcom/facebook/ads/redexgen/X/Ot;Lcom/facebook/ads/redexgen/X/Ws;Lcom/facebook/ads/redexgen/X/Ru;Lcom/facebook/ads/redexgen/X/Wy;Lcom/facebook/ads/redexgen/X/Lu;)V

    .line 26556
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Pi;Lcom/facebook/ads/redexgen/X/Wi;Lcom/facebook/ads/redexgen/X/Ot;Lcom/facebook/ads/redexgen/X/Ws;Lcom/facebook/ads/redexgen/X/Ru;Lcom/facebook/ads/redexgen/X/Wy;Lcom/facebook/ads/redexgen/X/Lu;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Pi;",
            "Lcom/facebook/ads/redexgen/X/Wi;",
            "Lcom/facebook/ads/redexgen/X/Ot;",
            "Lcom/facebook/ads/redexgen/X/Ws;",
            "Lcom/facebook/ads/redexgen/X/Ru;",
            "Lcom/facebook/ads/redexgen/X/Wy<",
            "Lcom/facebook/ads/redexgen/X/Lu;",
            "Lcom/facebook/ads/redexgen/X/Sb;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Lu;",
            ")V"
        }
    .end annotation

    .line 26557
    .local p11, "analyticsCollectorFunction":Lcom/facebook/ads/redexgen/X/Wy;, "Lcom/google/common/base/Function<Lcom/facebook/ads/androidx/media3/common/util/Clock;Lcom/facebook/ads/androidx/media3/exoplayer/analytics/AnalyticsCollector;>;"
    move-object v2, p0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VK;-><init>()V

    .line 26558
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Se;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Se;-><init>(Lcom/facebook/ads/redexgen/X/93;Lcom/facebook/ads/redexgen/X/Pk;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/93;->A0F:Lcom/facebook/ads/redexgen/X/Se;

    .line 26559
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/93;->A0L:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26560
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/93;->A0J:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26561
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/93;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26562
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/93;->A0H:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26563
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_82

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    .line 26564
    .local v7, "eventLooper":Landroid/os/Looper;
    :goto_32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/93;->A0D:Landroid/os/Handler;

    .line 26565
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/93;->A0D:Landroid/os/Handler;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/93;->A0F:Lcom/facebook/ads/redexgen/X/Se;

    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/93;->A0F:Lcom/facebook/ads/redexgen/X/Se;

    iget-object v8, v2, Lcom/facebook/ads/redexgen/X/93;->A0F:Lcom/facebook/ads/redexgen/X/Se;

    iget-object v9, v2, Lcom/facebook/ads/redexgen/X/93;->A0F:Lcom/facebook/ads/redexgen/X/Se;

    .line 26566
    move-object v4, p2

    move-object/from16 v10, p6

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/Pi;->A67(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/YC;Lcom/facebook/ads/redexgen/X/Qe;Lcom/facebook/ads/redexgen/X/WE;Lcom/facebook/ads/redexgen/X/TS;Lcom/facebook/ads/redexgen/X/Ru;)[Lcom/facebook/ads/redexgen/X/Sg;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/93;->A0M:[Lcom/facebook/ads/redexgen/X/Sg;

    .line 26567
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Lcom/facebook/ads/redexgen/X/93;->A00:F

    .line 26568
    const/4 v0, 0x0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/93;->A01:I

    .line 26569
    sget-object v0, Lcom/facebook/ads/redexgen/X/VL;->A07:Lcom/facebook/ads/redexgen/X/VL;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/93;->A06:Lcom/facebook/ads/redexgen/X/VL;

    .line 26570
    const/4 v0, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/93;->A02:I

    .line 26571
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/93;->A0M:[Lcom/facebook/ads/redexgen/X/Sg;

    move-object v4, p0

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p8

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/93;->A06([Lcom/facebook/ads/redexgen/X/Sg;Lcom/facebook/ads/redexgen/X/Wi;Lcom/facebook/ads/redexgen/X/Ot;Lcom/facebook/ads/redexgen/X/Ws;Lcom/facebook/ads/redexgen/X/Lu;)Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    .line 26572
    move-object/from16 v0, p7

    invoke-interface {v0, v9}, Lcom/facebook/ads/redexgen/X/Wy;->A4c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Sb;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/93;->A0G:Lcom/facebook/ads/redexgen/X/Sb;

    .line 26573
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/93;->A0G:Lcom/facebook/ads/redexgen/X/Sb;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Sb;->AKx(Lcom/facebook/ads/redexgen/X/LQ;Landroid/os/Looper;)V

    .line 26574
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/93;->A0I:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26575
    return-void

    .line 26576
    :cond_82
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_32
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Pi;Lcom/facebook/ads/redexgen/X/Wi;Lcom/facebook/ads/redexgen/X/Ot;Lcom/facebook/ads/redexgen/X/Ws;Lcom/facebook/ads/redexgen/X/Ru;)V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26577
    new-instance v7, Lcom/facebook/ads/redexgen/X/Sj;

    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/Sj;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/93;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Pi;Lcom/facebook/ads/redexgen/X/Wi;Lcom/facebook/ads/redexgen/X/Ot;Lcom/facebook/ads/redexgen/X/Ws;Lcom/facebook/ads/redexgen/X/Ru;Lcom/facebook/ads/redexgen/X/Wy;)V

    .line 26578
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/93;I)I
    .registers 2

    .line 26579
    iput p1, p0, Lcom/facebook/ads/redexgen/X/93;->A01:I

    return p1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/93;)Landroid/view/Surface;
    .registers 1

    .line 26580
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/93;->A03:Landroid/view/Surface;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/93;Lcom/facebook/ads/redexgen/X/VC;)Lcom/facebook/ads/redexgen/X/VC;
    .registers 2

    .line 26581
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/93;->A08:Lcom/facebook/ads/redexgen/X/VC;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/93;Lcom/facebook/ads/redexgen/X/VC;)Lcom/facebook/ads/redexgen/X/VC;
    .registers 2

    .line 26582
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/93;->A07:Lcom/facebook/ads/redexgen/X/VC;

    return-object p1
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/93;Lcom/facebook/ads/redexgen/X/O7;)Lcom/facebook/ads/redexgen/X/O7;
    .registers 2

    .line 26583
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/93;->A0A:Lcom/facebook/ads/redexgen/X/O7;

    return-object p1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/93;Lcom/facebook/ads/redexgen/X/O7;)Lcom/facebook/ads/redexgen/X/O7;
    .registers 2

    .line 26584
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/93;->A09:Lcom/facebook/ads/redexgen/X/O7;

    return-object p1
.end method

.method private final A06([Lcom/facebook/ads/redexgen/X/Sg;Lcom/facebook/ads/redexgen/X/Wi;Lcom/facebook/ads/redexgen/X/Ot;Lcom/facebook/ads/redexgen/X/Ws;Lcom/facebook/ads/redexgen/X/Lu;)Lcom/facebook/ads/redexgen/X/95;
    .registers 12

    .line 26585
    new-instance v0, Lcom/facebook/ads/redexgen/X/95;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/95;-><init>([Lcom/facebook/ads/redexgen/X/Sg;Lcom/facebook/ads/redexgen/X/Wi;Lcom/facebook/ads/redexgen/X/Ot;Lcom/facebook/ads/redexgen/X/Ws;Lcom/facebook/ads/redexgen/X/Lu;)V

    return-object v0
.end method

.method public static A07(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/93;->A0N:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    .line 26586
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/93;->A0J:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    .line 26587
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/93;->A0I:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    .line 26588
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/93;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    .line 26589
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/93;->A0L:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    .line 26590
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/93;->A0H:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private A0D()V
    .registers 6

    .line 26591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A05:Landroid/view/TextureView;

    const/4 v4, 0x0

    if-eqz v0, :cond_27

    .line 26592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A05:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0F:Lcom/facebook/ads/redexgen/X/Se;

    if-eq v1, v0, :cond_35

    .line 26593
    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/93;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xf

    const/16 v1, 0x31

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/93;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26594
    :goto_25
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/93;->A05:Landroid/view/TextureView;

    .line 26595
    :cond_27
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A04:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_34

    .line 26596
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/93;->A04:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0F:Lcom/facebook/ads/redexgen/X/Se;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 26597
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/93;->A04:Landroid/view/SurfaceHolder;

    .line 26598
    :cond_34
    return-void

    .line 26599
    :cond_35
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A05:Landroid/view/TextureView;

    invoke-virtual {v0, v4}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_25
.end method

.method public static A0E()V
    .registers 4

    const/16 v0, 0x40

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/93;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_19

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_19
    sget-object v2, Lcom/facebook/ads/redexgen/X/93;->A0O:[Ljava/lang/String;

    const-string v1, "s"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    fill-array-data v3, :array_26

    sput-object v3, Lcom/facebook/ads/redexgen/X/93;->A0N:[B

    return-void

    :array_26
    .array-data 1
        0x3t
        0x19t
        0x1dt
        0x20t
        0x1ct
        0x15t
        -0xbt
        0x28t
        0x1ft
        0x0t
        0x1ct
        0x11t
        0x29t
        0x15t
        0x22t
        -0x7t
        0x1bt
        0x18t
        0xct
        0x7t
        0x9t
        0xbt
        -0x6t
        0xbt
        0x1et
        0x1at
        0x1bt
        0x18t
        0xbt
        -0xet
        0xft
        0x19t
        0x1at
        0xbt
        0x14t
        0xbt
        0x18t
        -0x3at
        0x7t
        0x12t
        0x18t
        0xbt
        0x7t
        0xat
        0x1ft
        -0x3at
        0x1bt
        0x14t
        0x19t
        0xbt
        0x1at
        -0x3at
        0x15t
        0x18t
        -0x3at
        0x18t
        0xbt
        0x16t
        0x12t
        0x7t
        0x9t
        0xbt
        0xat
        -0x2ct
    .end array-data
.end method

.method private A0F(Landroid/view/Surface;Z)V
    .registers 10

    .line 26600
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 26601
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/PlayerMessage;>;"
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/93;->A0M:[Lcom/facebook/ads/redexgen/X/Sg;

    array-length v5, v6

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v5, :cond_2d

    aget-object v2, v6, v3

    .line 26602
    .local v4, "renderer":Lcom/facebook/ads/redexgen/X/Sg;
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Sg;->AA0()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2a

    .line 26603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    .line 26604
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/95;->A0L(Lcom/facebook/ads/redexgen/X/PR;)Lcom/facebook/ads/redexgen/X/PS;

    move-result-object v1

    .line 26605
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PS;->A07(I)Lcom/facebook/ads/redexgen/X/PS;

    move-result-object v0

    .line 26606
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PS;->A08(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/PS;

    move-result-object v0

    .line 26607
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PS;->A06()Lcom/facebook/ads/redexgen/X/PS;

    move-result-object v0

    .line 26608
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26609
    .end local v4    # "renderer":Lcom/facebook/ads/redexgen/X/Sg;
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 26610
    :cond_2d
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/93;->A03:Landroid/view/Surface;

    sget-object v1, Lcom/facebook/ads/redexgen/X/93;->A0O:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_74

    sget-object v2, Lcom/facebook/ads/redexgen/X/93;->A0O:[Ljava/lang/String;

    const-string v1, "Ks"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_6f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A03:Landroid/view/Surface;

    if-eq v0, p1, :cond_6f

    .line 26611
    :try_start_4b
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/PS;

    .line 26612
    .local v2, "message":Lcom/facebook/ads/redexgen/X/PS;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PS;->A0C()Z

    goto :goto_4f
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_5f} :catch_5f

    .line 26613
    .local v1, "e":Ljava/lang/InterruptedException;
    :catch_5f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 26614
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_66
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0C:Z

    if-eqz v0, :cond_6f

    .line 26615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A03:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 26616
    :cond_6f
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/93;->A03:Landroid/view/Surface;

    .line 26617
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/93;->A0C:Z

    .line 26618
    return-void

    :cond_74
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/93;Landroid/view/Surface;Z)V
    .registers 3

    .line 26619
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/93;->A0F(Landroid/view/Surface;Z)V

    return-void
.end method


# virtual methods
.method public final A0H(IJ)V
    .registers 5

    .line 26620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0G:Lcom/facebook/ads/redexgen/X/Sb;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Sb;->ADV()V

    .line 26621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/95;->A0H(IJ)V

    .line 26622
    return-void
.end method

.method public final A0I()I
    .registers 2

    .line 26623
    iget v0, p0, Lcom/facebook/ads/redexgen/X/93;->A01:I

    return v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/VC;
    .registers 2

    .line 26624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A07:Lcom/facebook/ads/redexgen/X/VC;

    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/VC;
    .registers 2

    .line 26625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A08:Lcom/facebook/ads/redexgen/X/VC;

    return-object v0
.end method

.method public final A0L()V
    .registers 6

    .line 26626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A0M()V

    .line 26627
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/93;->A0D()V

    .line 26628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A03:Landroid/view/Surface;

    const/4 v4, 0x0

    if-eqz v0, :cond_34

    .line 26629
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0C:Z

    if-eqz v0, :cond_32

    .line 26630
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/93;->A03:Landroid/view/Surface;

    sget-object v1, Lcom/facebook/ads/redexgen/X/93;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_28

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_28
    sget-object v2, Lcom/facebook/ads/redexgen/X/93;->A0O:[Ljava/lang/String;

    const-string v1, "UvN3cM6pmFJL36WdLmfoMTxOeTkBuHQ9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 26631
    :cond_32
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/93;->A03:Landroid/view/Surface;

    .line 26632
    :cond_34
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0B:Lcom/facebook/ads/redexgen/X/Uj;

    if-eqz v0, :cond_41

    .line 26633
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/93;->A0B:Lcom/facebook/ads/redexgen/X/Uj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0G:Lcom/facebook/ads/redexgen/X/Sb;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Uj;->AJj(Lcom/facebook/ads/redexgen/X/Uv;)V

    .line 26634
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/93;->A0B:Lcom/facebook/ads/redexgen/X/Uj;

    .line 26635
    :cond_41
    return-void
.end method

.method public final A0M(F)V
    .registers 11

    .line 26636
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/N1;->A00(FFF)F

    move-result v6

    .line 26637
    iget v0, p0, Lcom/facebook/ads/redexgen/X/93;->A00:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_e

    .line 26638
    return-void

    .line 26639
    :cond_e
    iput v6, p0, Lcom/facebook/ads/redexgen/X/93;->A00:F

    .line 26640
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/93;->A0M:[Lcom/facebook/ads/redexgen/X/Sg;

    array-length v4, v5

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v4, :cond_54

    aget-object v8, v5, v3

    .line 26641
    .local v3, "renderer":Lcom/facebook/ads/redexgen/X/Sg;
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/Sg;->AA0()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_4b

    .line 26642
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    sget-object v1, Lcom/facebook/ads/redexgen/X/93;->A0O:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_4e

    .line 26643
    sget-object v2, Lcom/facebook/ads/redexgen/X/93;->A0O:[Ljava/lang/String;

    const-string v1, "jr3unv9cijOSBrxZjY5KKoYSuFZh1wIm"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v7, v8}, Lcom/facebook/ads/redexgen/X/95;->A0L(Lcom/facebook/ads/redexgen/X/PR;)Lcom/facebook/ads/redexgen/X/PS;

    move-result-object v1

    .line 26644
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PS;->A07(I)Lcom/facebook/ads/redexgen/X/PS;

    move-result-object v1

    .line 26645
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PS;->A08(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/PS;

    move-result-object v0

    .line 26646
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PS;->A06()Lcom/facebook/ads/redexgen/X/PS;

    .line 26647
    .end local v3    # "renderer":Lcom/facebook/ads/redexgen/X/Sg;
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_4e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 26648
    :cond_54
    return-void
.end method

.method public final A0N(Landroid/view/Surface;)V
    .registers 3

    .line 26649
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/93;->A0D()V

    .line 26650
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/93;->A0F(Landroid/view/Surface;Z)V

    .line 26651
    return-void
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/LJ;)V
    .registers 3

    .line 26652
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/95;->A0O(Lcom/facebook/ads/redexgen/X/LJ;)V

    .line 26653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0I:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 26654
    return-void
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/Sd;)V
    .registers 3

    .line 26655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0L:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 26656
    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/Uj;)V
    .registers 3

    .line 26657
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/93;->A0R(Lcom/facebook/ads/redexgen/X/Uj;ZZ)V

    .line 26658
    return-void
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/Uj;ZZ)V
    .registers 6

    .line 26659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0B:Lcom/facebook/ads/redexgen/X/Uj;

    if-eqz v0, :cond_b

    .line 26660
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/93;->A0B:Lcom/facebook/ads/redexgen/X/Uj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0G:Lcom/facebook/ads/redexgen/X/Sb;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Uj;->AJj(Lcom/facebook/ads/redexgen/X/Uv;)V

    .line 26661
    :cond_b
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/93;->A0B:Lcom/facebook/ads/redexgen/X/Uj;

    .line 26662
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/93;->A0D:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0G:Lcom/facebook/ads/redexgen/X/Sb;

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Uj;->A4P(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Uv;)V

    .line 26663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/95;->A0P(Lcom/facebook/ads/redexgen/X/Uj;ZZ)V

    .line 26664
    return-void
.end method

.method public final A0S(Z)V
    .registers 3

    .line 26665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/95;->A0Q(Z)V

    .line 26666
    return-void
.end method

.method public final A0T()Z
    .registers 2

    .line 26667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A0R()Z

    move-result v0

    return v0
.end method

.method public final A7h()J
    .registers 3

    .line 26668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A7h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A84()J
    .registers 3

    .line 26669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A84()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A89()I
    .registers 2

    .line 26670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A89()I

    move-result v0

    return v0
.end method

.method public final A8A()I
    .registers 2

    .line 26671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A8A()I

    move-result v0

    return v0
.end method

.method public final A8C()I
    .registers 2

    .line 26672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A8C()I

    move-result v0

    return v0
.end method

.method public final A8D()I
    .registers 2

    .line 26673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A8D()I

    move-result v0

    return v0
.end method

.method public final A8F()J
    .registers 3

    .line 26674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A8F()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A8H()Lcom/facebook/ads/androidx/media3/common/Timeline;
    .registers 2

    .line 26675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A8H()Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public final A8I()I
    .registers 2

    .line 26676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A8I()I

    move-result v0

    return v0
.end method

.method public final A8T()J
    .registers 3

    .line 26677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A8T()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A9w()J
    .registers 3

    .line 26678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A9w()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ABL()Z
    .registers 2

    .line 26679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->ABL()Z

    move-result v0

    return v0
.end method

.method public final ALZ(Z)V
    .registers 4

    .line 26680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0E:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/95;->ALZ(Z)V

    .line 26681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0B:Lcom/facebook/ads/redexgen/X/Uj;

    if-eqz v0, :cond_17

    .line 26682
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/93;->A0B:Lcom/facebook/ads/redexgen/X/Uj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0G:Lcom/facebook/ads/redexgen/X/Sb;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Uj;->AJj(Lcom/facebook/ads/redexgen/X/Uv;)V

    .line 26683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0B:Lcom/facebook/ads/redexgen/X/Uj;

    .line 26684
    if-eqz p1, :cond_17

    .line 26685
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/93;->A0B:Lcom/facebook/ads/redexgen/X/Uj;

    .line 26686
    :cond_17
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C1912Sj (com.facebook.ads.redexgen.X.Sj)
.class public final synthetic Lcom/facebook/ads/redexgen/X/Sj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wy;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 69994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 69995
    check-cast p1, Lcom/facebook/ads/redexgen/X/Lu;

    new-instance v0, Lcom/facebook/ads/redexgen/X/91;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/91;-><init>(Lcom/facebook/ads/redexgen/X/Lu;)V

    check-cast v0, Lcom/facebook/ads/redexgen/X/Sb;

    return-object v0
.end method

###### Class com.facebook.ads.redexgen.X.AnonymousClass91 (com.facebook.ads.redexgen.X.91)
.class public final Lcom/facebook/ads/redexgen/X/91;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Sb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Pz;
    }
.end annotation


# static fields
.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/LQ;

.field public A01:Lcom/facebook/ads/redexgen/X/MM;

.field public A02:Lcom/facebook/ads/redexgen/X/MS;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/MS<",
            "Lcom/facebook/ads/redexgen/X/Px;",
            ">;"
        }
    .end annotation
.end field

.field public A03:Z

.field public final A04:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Pv;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Lcom/facebook/ads/redexgen/X/UM;

.field public final A06:Lcom/facebook/ads/redexgen/X/UK;

.field public final A07:Lcom/facebook/ads/redexgen/X/Lu;

.field public final A08:Lcom/facebook/ads/redexgen/X/Pz;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 379
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XIJMZpGz2dJN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "uXNrOY6Tg1Hz"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9HKEdM0Iuvoc8Jjs1PoUbO8kREjKabW6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9pjlej0iwxjS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4By8B1i4ZnuRAvJ8EtYDFGuvAdFcE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IlNNYI8ReicxFDQ5KYTYnRCMl6w6doxP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rLtqdfItlP0s2x2BIVj9HEpFslbTSVD0"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "hVM3LW0e6CvXFK2YKs0EYNfFMTjbKdod"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/91;->A09:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Lu;)V
    .registers 5

    .line 26433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26434
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Lu;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A07:Lcom/facebook/ads/redexgen/X/Lu;

    .line 26435
    invoke-static {}, Lcom/facebook/ads/redexgen/X/N1;->A0d()Landroid/os/Looper;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/SY;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/SY;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/MS;

    invoke-direct {v0, v2, p1, v1}, Lcom/facebook/ads/redexgen/X/MS;-><init>(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/Lu;Lcom/facebook/ads/redexgen/X/MQ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A02:Lcom/facebook/ads/redexgen/X/MS;

    .line 26436
    new-instance v0, Lcom/facebook/ads/redexgen/X/UM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/UM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A05:Lcom/facebook/ads/redexgen/X/UM;

    .line 26437
    new-instance v0, Lcom/facebook/ads/redexgen/X/UK;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/UK;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A06:Lcom/facebook/ads/redexgen/X/UK;

    .line 26438
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/91;->A05:Lcom/facebook/ads/redexgen/X/UM;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pz;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Pz;-><init>(Lcom/facebook/ads/redexgen/X/UM;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A08:Lcom/facebook/ads/redexgen/X/Pz;

    .line 26439
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A04:Landroid/util/SparseArray;

    .line 26440
    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/Pv;
    .registers 2

    .line 26441
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A08:Lcom/facebook/ads/redexgen/X/Pz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pz;->A06()Lcom/facebook/ads/redexgen/X/Rk;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/91;->A04(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v0

    return-object v0
.end method

.method private A01(ILcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/Pv;
    .registers 9

    .line 26442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/LQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26443
    const/4 v5, 0x1

    if-eqz p2, :cond_44

    .line 26444
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A08:Lcom/facebook/ads/redexgen/X/Pz;

    .line 26445
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Pz;->A05(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/91;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3e

    sget-object v2, Lcom/facebook/ads/redexgen/X/91;->A09:[Ljava/lang/String;

    const-string v1, "iy4IerdMnFVa"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "K3yk7TLFjcQp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_3c

    .line 26446
    .local v0, "isInKnownTimeline":Z
    :goto_2e
    if-eqz v5, :cond_35

    .line 26447
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/91;->A04(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v0

    .line 26448
    :goto_34
    return-object v0

    .line 26449
    :cond_35
    sget-object v0, Lcom/facebook/ads/androidx/media3/common/Timeline;->A02:Lcom/facebook/ads/androidx/media3/common/Timeline;

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/91;->A03(Lcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v0

    goto :goto_34

    .line 26450
    :cond_3c
    const/4 v5, 0x0

    goto :goto_2e

    :cond_3e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 26451
    .end local v0    # "isInKnownTimeline":Z
    :cond_44
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/LQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LQ;->A8H()Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v4

    .line 26452
    .local v2, "timeline":Lcom/facebook/ads/androidx/media3/common/Timeline;
    invoke-virtual {v4}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    if-ge p1, v0, :cond_74

    .line 26453
    .local v0, "windowIsInTimeline":Z
    :goto_50
    if-eqz v5, :cond_71

    .line 26454
    :goto_52
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/91;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_76

    sget-object v2, Lcom/facebook/ads/redexgen/X/91;->A09:[Ljava/lang/String;

    const-string v1, "IesJoG5lz"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-direct {p0, v4, p1, v3}, Lcom/facebook/ads/redexgen/X/91;->A03(Lcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v0

    return-object v0

    .line 26455
    :cond_71
    sget-object v4, Lcom/facebook/ads/androidx/media3/common/Timeline;->A02:Lcom/facebook/ads/androidx/media3/common/Timeline;

    goto :goto_52

    .line 26456
    :cond_74
    const/4 v5, 0x0

    goto :goto_50

    :cond_76
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/UY;)Lcom/facebook/ads/redexgen/X/Pv;
    .registers 4

    .line 26457
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/96;

    if-eqz v0, :cond_16

    .line 26458
    check-cast p1, Lcom/facebook/ads/redexgen/X/96;

    .line 26459
    .local v0, "exoError":Lcom/facebook/ads/redexgen/X/96;
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/96;->A05:Lcom/facebook/ads/redexgen/X/L1;

    if-eqz v0, :cond_16

    .line 26460
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/96;->A05:Lcom/facebook/ads/redexgen/X/L1;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rk;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Rk;-><init>(Lcom/facebook/ads/redexgen/X/L1;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/91;->A04(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v0

    return-object v0

    .line 26461
    .end local v0    # "exoError":Lcom/facebook/ads/redexgen/X/96;
    :cond_16
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/91;->A00()Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v0

    return-object v0
.end method

.method private final A03(Lcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/Pv;
    .registers 22
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
    .end annotation

    .line 26462
    move-object/from16 v8, p3

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-virtual {v6}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0N()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 26463
    const/4 v8, 0x0

    .line 26464
    .end local p13
    .local v1, "mediaPeriodId":Lcom/facebook/ads/redexgen/X/Rk;
    .end local p13
    .local v12, "mediaPeriodId":Lcom/facebook/ads/redexgen/X/Rk;
    :cond_d
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/91;->A07:Lcom/facebook/ads/redexgen/X/Lu;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lu;->A6s()J

    move-result-wide v4

    .line 26465
    .local v16, "realtimeMs":J
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/LQ;

    .line 26466
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LQ;->A8H()Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    move/from16 v7, p2

    if-eqz v0, :cond_6d

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/LQ;

    .line 26467
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LQ;->A8C()I

    move-result v0

    if-ne v7, v0, :cond_6d

    const/4 v1, 0x1

    .line 26468
    .local p0, "isInCurrentWindow":Z
    :goto_2b
    const-wide/16 v9, 0x0

    if-eqz v8, :cond_6f

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/L1;->A00()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 26469
    if-eqz v1, :cond_6b

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/LQ;

    .line 26470
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LQ;->A89()I

    move-result v1

    iget v0, v8, Lcom/facebook/ads/redexgen/X/L1;->A00:I

    if-ne v1, v0, :cond_6b

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/LQ;

    .line 26471
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LQ;->A8A()I

    move-result v1

    iget v0, v8, Lcom/facebook/ads/redexgen/X/L1;->A01:I

    if-ne v1, v0, :cond_6b

    .line 26472
    .local v1, "isCurrentAd":Z
    :goto_4b
    if-eqz v3, :cond_53

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/LQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LQ;->A8F()J

    move-result-wide v9

    :cond_53
    sget-object v3, Lcom/facebook/ads/redexgen/X/91;->A09:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v3, v0

    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 26473
    :cond_6b
    const/4 v3, 0x0

    goto :goto_4b

    .line 26474
    :cond_6d
    const/4 v1, 0x0

    goto :goto_2b

    .line 26475
    .end local v1    # "isCurrentAd":Z
    :cond_6f
    if-eqz v1, :cond_78

    .line 26476
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/LQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LQ;->A84()J

    move-result-wide v9

    .restart local v1    # "isCurrentAd":Z
    goto :goto_96

    .line 26477
    .end local v1    # "isCurrentAd":Z
    :cond_78
    invoke-virtual {v6}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0N()Z

    move-result v0

    if-eqz v0, :cond_7f

    goto :goto_96

    :cond_7f
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/91;->A06:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v6, v7, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A04()J

    move-result-wide v9

    goto :goto_96

    .line 26478
    .local v1, "eventPositionMs":J
    :cond_8a
    sget-object v3, Lcom/facebook/ads/redexgen/X/91;->A09:[Ljava/lang/String;

    const-string v1, "BvmtFOFZk37aydmEaqYHeOWtooKGdgT5"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const-string v1, "Ru4BLhJbDirpzxaLh0kYnsSKUiL12"

    const/4 v0, 0x4

    aput-object v1, v3, v0

    .line 26479
    .local p1, "eventPositionMs":J
    :goto_96
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/91;->A08:Lcom/facebook/ads/redexgen/X/Pz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pz;->A06()Lcom/facebook/ads/redexgen/X/Rk;

    move-result-object v13

    .line 26480
    .local p3, "currentMediaPeriodId":Lcom/facebook/ads/redexgen/X/Rk;
    new-instance v3, Lcom/facebook/ads/redexgen/X/Pv;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/LQ;

    .line 26481
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LQ;->A8H()Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v11

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/LQ;

    .line 26482
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LQ;->A8C()I

    move-result v12

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/LQ;

    .line 26483
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LQ;->A8F()J

    move-result-wide v14

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/LQ;

    .line 26484
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LQ;->A9w()J

    move-result-wide v16

    .end local v12    # "mediaPeriodId":Lcom/facebook/ads/redexgen/X/Rk;
    .local p9, "mediaPeriodId":Lcom/facebook/ads/redexgen/X/Rk;
    invoke-direct/range {v3 .. v17}, Lcom/facebook/ads/redexgen/X/Pv;-><init>(JLcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/Rk;JLcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/Rk;JJ)V

    .line 26485
    return-object v3
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/Pv;
    .registers 6

    .line 26486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/LQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26487
    const/4 v3, 0x0

    if-nez p1, :cond_2c

    .line 26488
    move-object v2, v3

    .line 26489
    .local v1, "knownTimeline":Lcom/facebook/ads/androidx/media3/common/Timeline;
    :goto_9
    if-eqz p1, :cond_d

    if-nez v2, :cond_33

    .line 26490
    .end local v0
    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/LQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LQ;->A8C()I

    move-result v2

    .line 26491
    .local v2, "windowIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/LQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LQ;->A8H()Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v1

    .line 26492
    .local v3, "timeline":Lcom/facebook/ads/androidx/media3/common/Timeline;
    invoke-virtual {v1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result v0

    if-ge v2, v0, :cond_2a

    const/4 v0, 0x1

    .line 26493
    .local p0, "windowIsInTimeline":Z
    :goto_20
    if-eqz v0, :cond_27

    .line 26494
    :goto_22
    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/91;->A03(Lcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v0

    return-object v0

    .line 26495
    :cond_27
    sget-object v1, Lcom/facebook/ads/androidx/media3/common/Timeline;->A02:Lcom/facebook/ads/androidx/media3/common/Timeline;

    goto :goto_22

    .line 26496
    :cond_2a
    const/4 v0, 0x0

    goto :goto_20

    .line 26497
    :cond_2c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A08:Lcom/facebook/ads/redexgen/X/Pz;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Pz;->A05(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v2

    goto :goto_9

    .line 26498
    :cond_33
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/L1;->A04:Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A05:Lcom/facebook/ads/redexgen/X/UM;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0J(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/UM;)Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/UM;->A00:I

    .line 26499
    .local v0, "windowIndex":I
    invoke-direct {p0, v2, v0, p1}, Lcom/facebook/ads/redexgen/X/91;->A03(Lcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v0

    return-object v0
.end method

.method private final A05(Lcom/facebook/ads/redexgen/X/Pv;ILcom/facebook/ads/redexgen/X/MP;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Pv;",
            "I",
            "Lcom/facebook/ads/redexgen/X/MP<",
            "Lcom/facebook/ads/redexgen/X/Px;",
            ">;)V"
        }
    .end annotation

    .line 26500
    .local p3, "eventInvocation":Lcom/facebook/ads/redexgen/X/MP;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$Event<Lcom/facebook/ads/androidx/media3/exoplayer/analytics/AnalyticsListener;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A04:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A02:Lcom/facebook/ads/redexgen/X/MS;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/MS;->A0A(ILcom/facebook/ads/redexgen/X/MP;)V

    .line 26502
    return-void
.end method


# virtual methods
.method public final ADV()V
    .registers 4

    .line 26503
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/91;->A03:Z

    if-nez v0, :cond_14

    .line 26504
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/91;->A00()Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v2

    .line 26505
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/Pv;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/91;->A03:Z

    .line 26506
    new-instance v1, Lcom/facebook/ads/redexgen/X/SW;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/SW;-><init>(Lcom/facebook/ads/redexgen/X/Pv;)V

    const/4 v0, -0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/91;->A05(Lcom/facebook/ads/redexgen/X/Pv;ILcom/facebook/ads/redexgen/X/MP;)V

    .line 26507
    .end local v0    # "eventTime":Lcom/facebook/ads/redexgen/X/Pv;
    :cond_14
    return-void
.end method

.method public final AEa(Lcom/facebook/ads/redexgen/X/Tf;)V
    .registers 5

    .line 26508
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/91;->A00()Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v2

    .line 26509
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/Pv;
    new-instance v1, Lcom/facebook/ads/redexgen/X/SU;

    invoke-direct {v1, v2, p1}, Lcom/facebook/ads/redexgen/X/SU;-><init>(Lcom/facebook/ads/redexgen/X/Pv;Lcom/facebook/ads/redexgen/X/Tf;)V

    const/16 v0, 0x1b

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/91;->A05(Lcom/facebook/ads/redexgen/X/Pv;ILcom/facebook/ads/redexgen/X/MP;)V

    .line 26510
    return-void
.end method

.method public final AEb(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Th;",
            ">;)V"
        }
    .end annotation

    .line 26511
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/91;->A00()Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v2

    .line 26512
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/Pv;
    new-instance v1, Lcom/facebook/ads/redexgen/X/SL;

    invoke-direct {v1, v2, p1}, Lcom/facebook/ads/redexgen/X/SL;-><init>(Lcom/facebook/ads/redexgen/X/Pv;Ljava/util/List;)V

    const/16 v0, 0x1b

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/91;->A05(Lcom/facebook/ads/redexgen/X/Pv;ILcom/facebook/ads/redexgen/X/MP;)V

    .line 26513
    return-void
.end method

.method public final AEm(ILcom/facebook/ads/redexgen/X/Rk;Lcom/facebook/ads/redexgen/X/Ue;)V
    .registers 7

    .line 26514
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/91;->A01(ILcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v2

    .line 26515
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/Pv;
    new-instance v1, Lcom/facebook/ads/redexgen/X/SZ;

    invoke-direct {v1, v2, p3}, Lcom/facebook/ads/redexgen/X/SZ;-><init>(Lcom/facebook/ads/redexgen/X/Pv;Lcom/facebook/ads/redexgen/X/Ue;)V

    const/16 v0, 0x3ec

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/91;->A05(Lcom/facebook/ads/redexgen/X/Pv;ILcom/facebook/ads/redexgen/X/MP;)V

    .line 26516
    return-void
.end method

.method public final AFe(ILcom/facebook/ads/redexgen/X/Rk;Lcom/facebook/ads/redexgen/X/Uc;Lcom/facebook/ads/redexgen/X/Ue;)V
    .registers 8

    .line 26517
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/91;->A01(ILcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v2

    .line 26518
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/Pv;
    new-instance v1, Lcom/facebook/ads/redexgen/X/SV;

    invoke-direct {v1, v2, p3, p4}, Lcom/facebook/ads/redexgen/X/SV;-><init>(Lcom/facebook/ads/redexgen/X/Pv;Lcom/facebook/ads/redexgen/X/Uc;Lcom/facebook/ads/redexgen/X/Ue;)V

    const/16 v0, 0x3ea

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/91;->A05(Lcom/facebook/ads/redexgen/X/Pv;ILcom/facebook/ads/redexgen/X/MP;)V

    .line 26519
    return-void
.end method

.method public final AFg(ILcom/facebook/ads/redexgen/X/Rk;Lcom/facebook/ads/redexgen/X/Uc;Lcom/facebook/ads/redexgen/X/Ue;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .param p1    # I
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
            type = {
                "NEW_METHOD_ARGS"
            }
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/Rk;
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
            type = {
                "NEW_METHOD_ARGS"
            }
        .end annotation
    .end param

    .line 26520
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/91;->A01(ILcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v2

    .line 26521
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/Pv;
    new-instance v1, Lcom/facebook/ads/redexgen/X/SN;

    invoke-direct {v1, v2, p3, p4}, Lcom/facebook/ads/redexgen/X/SN;-><init>(Lcom/facebook/ads/redexgen/X/Pv;Lcom/facebook/ads/redexgen/X/Uc;Lcom/facebook/ads/redexgen/X/Ue;)V

    const/16 v0, 0x3e9

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/91;->A05(Lcom/facebook/ads/redexgen/X/Pv;ILcom/facebook/ads/redexgen/X/MP;)V

    .line 26522
    return-void
.end method

.method public final AFj(ILcom/facebook/ads/redexgen/X/Rk;Lcom/facebook/ads/redexgen/X/Uc;Lcom/facebook/ads/redexgen/X/Ue;Ljava/io/IOException;Z)V
    .registers 14

    .line 26523
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/91;->A01(ILcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v2

    .line 26524
    .local v6, "eventTime":Lcom/facebook/ads/redexgen/X/Pv;
    new-instance v1, Lcom/facebook/ads/redexgen/X/Sa;

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Sa;-><init>(Lcom/facebook/ads/redexgen/X/Pv;Lcom/facebook/ads/redexgen/X/Uc;Lcom/facebook/ads/redexgen/X/Ue;Ljava/io/IOException;Z)V

    const/16 v0, 0x3eb

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/91;->A05(Lcom/facebook/ads/redexgen/X/Pv;ILcom/facebook/ads/redexgen/X/MP;)V

    .line 26525
    return-void
.end method

.method public final AGN(Lcom/facebook/ads/redexgen/X/UW;)V
    .registers 5

    .line 26526
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/91;->A00()Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v2

    .line 26527
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/Pv;
    new-instance v1, Lcom/facebook/ads/redexgen/X/ST;

    invoke-direct {v1, v2, p1}, Lcom/facebook/ads/redexgen/X/ST;-><init>(Lcom/facebook/ads/redexgen/X/Pv;Lcom/facebook/ads/redexgen/X/UW;)V

    const/16 v0, 0xc

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/91;->A05(Lcom/facebook/ads/redexgen/X/Pv;ILcom/facebook/ads/redexgen/X/MP;)V

    .line 26528
    return-void
.end method

.method public final AGP(Lcom/facebook/ads/redexgen/X/UY;)V
    .registers 5

    .line 26529
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/91;->A02(Lcom/facebook/ads/redexgen/X/UY;)Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v2

    .line 26530
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/Pv;
    new-instance v1, Lcom/facebook/ads/redexgen/X/SX;

    invoke-direct {v1, v2, p1}, Lcom/facebook/ads/redexgen/X/SX;-><init>(Lcom/facebook/ads/redexgen/X/Pv;Lcom/facebook/ads/redexgen/X/UY;)V

    const/16 v0, 0xa

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/91;->A05(Lcom/facebook/ads/redexgen/X/Pv;ILcom/facebook/ads/redexgen/X/MP;)V

    .line 26531
    return-void
.end method

.method public final AGR(ZI)V
    .registers 6

    .line 26532
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/91;->A00()Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v2

    .line 26533
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/Pv;
    new-instance v1, Lcom/facebook/ads/redexgen/X/SS;

    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/SS;-><init>(Lcom/facebook/ads/redexgen/X/Pv;ZI)V

    const/4 v0, -0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/91;->A05(Lcom/facebook/ads/redexgen/X/Pv;ILcom/facebook/ads/redexgen/X/MP;)V

    .line 26534
    return-void
.end method

.method public final AH0()V
    .registers 4

    .line 26535
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/91;->A00()Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v2

    .line 26536
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/Pv;
    new-instance v1, Lcom/facebook/ads/redexgen/X/SM;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/SM;-><init>(Lcom/facebook/ads/redexgen/X/Pv;)V

    const/4 v0, -0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/91;->A05(Lcom/facebook/ads/redexgen/X/Pv;ILcom/facebook/ads/redexgen/X/MP;)V

    .line 26537
    return-void
.end method

.method public final AHI(Lcom/facebook/ads/androidx/media3/common/Timeline;I)V
    .registers 6

    .line 26538
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/91;->A08:Lcom/facebook/ads/redexgen/X/Pz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/LQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/LQ;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pz;->A07(Lcom/facebook/ads/redexgen/X/LQ;)V

    .line 26539
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/91;->A00()Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v2

    .line 26540
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/Pv;
    new-instance v1, Lcom/facebook/ads/redexgen/X/SQ;

    invoke-direct {v1, v2, p2}, Lcom/facebook/ads/redexgen/X/SQ;-><init>(Lcom/facebook/ads/redexgen/X/Pv;I)V

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/91;->A05(Lcom/facebook/ads/redexgen/X/Pv;ILcom/facebook/ads/redexgen/X/MP;)V

    .line 26541
    return-void
.end method

.method public final AHN(Lcom/facebook/ads/redexgen/X/Tx;)V
    .registers 5

    .line 26542
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/91;->A00()Lcom/facebook/ads/redexgen/X/Pv;

    move-result-object v2

    .line 26543
    .local v0, "eventTime":Lcom/facebook/ads/redexgen/X/Pv;
    new-instance v1, Lcom/facebook/ads/redexgen/X/SO;

    invoke-direct {v1, v2, p1}, Lcom/facebook/ads/redexgen/X/SO;-><init>(Lcom/facebook/ads/redexgen/X/Pv;Lcom/facebook/ads/redexgen/X/Tx;)V

    const/4 v0, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/91;->A05(Lcom/facebook/ads/redexgen/X/Pv;ILcom/facebook/ads/redexgen/X/MP;)V

    .line 26544
    return-void
.end method

.method public final AKx(Lcom/facebook/ads/redexgen/X/LQ;Landroid/os/Looper;)V
    .registers 5

    .line 26545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/LQ;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A08:Lcom/facebook/ads/redexgen/X/Pz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Pz;->A01(Lcom/facebook/ads/redexgen/X/Pz;)Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_10
    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A08(Z)V

    .line 26546
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/LQ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A00:Lcom/facebook/ads/redexgen/X/LQ;

    .line 26547
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/91;->A07:Lcom/facebook/ads/redexgen/X/Lu;

    const/4 v0, 0x0

    invoke-interface {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/Lu;->A5y(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/facebook/ads/redexgen/X/TU;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A01:Lcom/facebook/ads/redexgen/X/MM;

    .line 26548
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/91;->A02:Lcom/facebook/ads/redexgen/X/MS;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SR;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/SR;-><init>(Lcom/facebook/ads/redexgen/X/91;Lcom/facebook/ads/redexgen/X/LQ;)V

    .line 26549
    invoke-virtual {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/MS;->A07(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/MQ;)Lcom/facebook/ads/redexgen/X/MS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/91;->A02:Lcom/facebook/ads/redexgen/X/MS;

    .line 26550
    return-void

    .line 26551
    :cond_33
    const/4 v0, 0x0

    goto :goto_11
.end method

###### Class com.facebook.ads.redexgen.X.SL (com.facebook.ads.redexgen.X.SL)
.class public final synthetic Lcom/facebook/ads/redexgen/X/SL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MP;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Pv;

.field public final synthetic A01:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Pv;Ljava/util/List;)V
    .registers 3

    .line 69836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SL;->A00:Lcom/facebook/ads/redexgen/X/Pv;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SL;->A01:Ljava/util/List;

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.SM (com.facebook.ads.redexgen.X.SM)
.class public final synthetic Lcom/facebook/ads/redexgen/X/SM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MP;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Pv;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Pv;)V
    .registers 2

    .line 69837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/Pv;

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.SN (com.facebook.ads.redexgen.X.SN)
.class public final synthetic Lcom/facebook/ads/redexgen/X/SN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MP;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Pv;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Uc;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Ue;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Pv;Lcom/facebook/ads/redexgen/X/Uc;Lcom/facebook/ads/redexgen/X/Ue;)V
    .registers 4

    .line 69838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SN;->A00:Lcom/facebook/ads/redexgen/X/Pv;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SN;->A01:Lcom/facebook/ads/redexgen/X/Uc;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/SN;->A02:Lcom/facebook/ads/redexgen/X/Ue;

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.SO (com.facebook.ads.redexgen.X.SO)
.class public final synthetic Lcom/facebook/ads/redexgen/X/SO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MP;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Tx;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Pv;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Pv;Lcom/facebook/ads/redexgen/X/Tx;)V
    .registers 3

    .line 69839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SO;->A01:Lcom/facebook/ads/redexgen/X/Pv;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SO;->A00:Lcom/facebook/ads/redexgen/X/Tx;

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.SQ (com.facebook.ads.redexgen.X.SQ)
.class public final synthetic Lcom/facebook/ads/redexgen/X/SQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MP;


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Pv;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Pv;I)V
    .registers 3

    .line 69843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SQ;->A01:Lcom/facebook/ads/redexgen/X/Pv;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/SQ;->A00:I

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.SR (com.facebook.ads.redexgen.X.SR)
.class public final synthetic Lcom/facebook/ads/redexgen/X/SR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MQ;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/LQ;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/91;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/91;Lcom/facebook/ads/redexgen/X/LQ;)V
    .registers 3

    .line 69844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SR;->A01:Lcom/facebook/ads/redexgen/X/91;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/LQ;

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.SS (com.facebook.ads.redexgen.X.SS)
.class public final synthetic Lcom/facebook/ads/redexgen/X/SS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MP;


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Pv;

.field public final synthetic A02:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Pv;ZI)V
    .registers 4

    .line 69845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SS;->A01:Lcom/facebook/ads/redexgen/X/Pv;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/SS;->A02:Z

    iput p3, p0, Lcom/facebook/ads/redexgen/X/SS;->A00:I

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.ST (com.facebook.ads.redexgen.X.ST)
.class public final synthetic Lcom/facebook/ads/redexgen/X/ST;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MP;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/UW;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Pv;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Pv;Lcom/facebook/ads/redexgen/X/UW;)V
    .registers 3

    .line 69846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ST;->A01:Lcom/facebook/ads/redexgen/X/Pv;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ST;->A00:Lcom/facebook/ads/redexgen/X/UW;

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.SU (com.facebook.ads.redexgen.X.SU)
.class public final synthetic Lcom/facebook/ads/redexgen/X/SU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MP;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Tf;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Pv;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Pv;Lcom/facebook/ads/redexgen/X/Tf;)V
    .registers 3

    .line 69847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SU;->A01:Lcom/facebook/ads/redexgen/X/Pv;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SU;->A00:Lcom/facebook/ads/redexgen/X/Tf;

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.SV (com.facebook.ads.redexgen.X.SV)
.class public final synthetic Lcom/facebook/ads/redexgen/X/SV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MP;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Pv;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Uc;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Ue;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Pv;Lcom/facebook/ads/redexgen/X/Uc;Lcom/facebook/ads/redexgen/X/Ue;)V
    .registers 4

    .line 69848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:Lcom/facebook/ads/redexgen/X/Pv;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SV;->A01:Lcom/facebook/ads/redexgen/X/Uc;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/SV;->A02:Lcom/facebook/ads/redexgen/X/Ue;

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.SW (com.facebook.ads.redexgen.X.SW)
.class public final synthetic Lcom/facebook/ads/redexgen/X/SW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MP;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Pv;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Pv;)V
    .registers 2

    .line 69849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SW;->A00:Lcom/facebook/ads/redexgen/X/Pv;

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.SX (com.facebook.ads.redexgen.X.SX)
.class public final synthetic Lcom/facebook/ads/redexgen/X/SX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MP;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/UY;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Pv;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Pv;Lcom/facebook/ads/redexgen/X/UY;)V
    .registers 3

    .line 69850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SX;->A01:Lcom/facebook/ads/redexgen/X/Pv;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SX;->A00:Lcom/facebook/ads/redexgen/X/UY;

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.SY (com.facebook.ads.redexgen.X.SY)
.class public final synthetic Lcom/facebook/ads/redexgen/X/SY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MQ;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 69851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.SZ (com.facebook.ads.redexgen.X.SZ)
.class public final synthetic Lcom/facebook/ads/redexgen/X/SZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MP;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Pv;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Ue;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Pv;Lcom/facebook/ads/redexgen/X/Ue;)V
    .registers 3

    .line 69852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SZ;->A00:Lcom/facebook/ads/redexgen/X/Pv;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SZ;->A01:Lcom/facebook/ads/redexgen/X/Ue;

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C1903Sa (com.facebook.ads.redexgen.X.Sa)
.class public final synthetic Lcom/facebook/ads/redexgen/X/Sa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MP;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Pv;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Uc;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Ue;

.field public final synthetic A03:Ljava/io/IOException;

.field public final synthetic A04:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Pv;Lcom/facebook/ads/redexgen/X/Uc;Lcom/facebook/ads/redexgen/X/Ue;Ljava/io/IOException;Z)V
    .registers 6

    .line 69853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sa;->A00:Lcom/facebook/ads/redexgen/X/Pv;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Sa;->A01:Lcom/facebook/ads/redexgen/X/Uc;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Sa;->A02:Lcom/facebook/ads/redexgen/X/Ue;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Sa;->A03:Ljava/io/IOException;

    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/Sa;->A04:Z

    return-void
.end method
