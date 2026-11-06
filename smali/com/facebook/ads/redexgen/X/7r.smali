###### Class com.facebook.ads.redexgen.X.C14107r (com.facebook.ads.redexgen.X.7r)
.class public final Lcom/facebook/ads/redexgen/X/7r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MA;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NativeViewability",
        "Logger:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/MA;"
    }
.end annotation


# static fields
.field public static A0I:[B

.field public static A0J:[Ljava/lang/String;

.field public static final A0K:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/ev;

.field public A01:Lcom/facebook/ads/redexgen/X/ew;

.field public A02:Lcom/facebook/ads/redexgen/X/LN;

.field public A03:Lcom/facebook/ads/redexgen/X/7j;

.field public A04:Lcom/facebook/ads/redexgen/X/7D;

.field public A05:Lcom/facebook/ads/redexgen/X/nG;

.field public A06:Lcom/facebook/ads/redexgen/X/nw;

.field public A07:Lcom/facebook/ads/redexgen/X/ta;

.field public A08:Lcom/facebook/ads/redexgen/X/Ev;

.field public A09:Lcom/facebook/ads/redexgen/X/6T;

.field public A0A:Lcom/facebook/ads/redexgen/X/c3;

.field public A0B:Lcom/facebook/ads/redexgen/X/c2;

.field public A0C:Ljava/lang/String;

.field public A0D:Z

.field public A0E:Z

.field public A0F:Z

.field public final A0G:Lcom/facebook/ads/redexgen/X/qT;

.field public final A0H:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 300
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1VlIdrj3fRAASVh0IRQbA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AKXoeI10d8PJONEXEmQHjWIEkAB2E"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HfXt1ktTFXNYFvURT1ePpe"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VNbNAjzqH3UXN3t9RrTP5z6I5Qa6gPQJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DeawL9PzUIlDumNdtXISYTaSpfy6P3Cj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KNbO6MhxkLbBAZAqlm1H7U8Ouut8mEhI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "i536pd2CEb7n0lc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TelURl5RBqiFivFSJRRvco6RCKborqoX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7r;->A0J:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7r;->A0B()V

    const-class v0, Lcom/facebook/ads/redexgen/X/7r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7r;->A0K:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 22419
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7r;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22420
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A0H:Ljava/lang/String;

    .line 22421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A0D:Z

    .line 22422
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A0E:Z

    .line 22423
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A0F:Z

    .line 22424
    new-instance v0, Lcom/facebook/ads/redexgen/X/qT;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/qT;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A0G:Lcom/facebook/ads/redexgen/X/qT;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/ev;
    .registers 1

    .line 22425
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/ev;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/LN;
    .registers 1

    .line 22426
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7r;->A02:Lcom/facebook/ads/redexgen/X/LN;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/7j;
    .registers 1

    .line 22427
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7r;->A03:Lcom/facebook/ads/redexgen/X/7j;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/7D;
    .registers 1

    .line 22428
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7r;->A04:Lcom/facebook/ads/redexgen/X/7D;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/nG;
    .registers 1

    .line 22429
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7r;->A05:Lcom/facebook/ads/redexgen/X/nG;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/qT;
    .registers 1

    .line 22430
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7r;->A0G:Lcom/facebook/ads/redexgen/X/qT;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/c2;
    .registers 1

    .line 22431
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7r;->A0B:Lcom/facebook/ads/redexgen/X/c2;

    return-object p0
.end method

.method public static synthetic A07()Ljava/lang/String;
    .registers 1

    .line 22432
    sget-object v0, Lcom/facebook/ads/redexgen/X/7r;->A0K:Ljava/lang/String;

    return-object v0
.end method

.method public static A08(III)Ljava/lang/String;
    .registers 6

    sget-object v1, Lcom/facebook/ads/redexgen/X/7r;->A0I:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_9
    array-length v0, p0

    if-ge p1, v0, :cond_36

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x13

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/7r;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_30

    sget-object v2, Lcom/facebook/ads/redexgen/X/7r;->A0J:[Ljava/lang/String;

    const-string v1, "viF0h1063r6cbXDqGfnWrC6qPBVBGzAv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "3ywSXssJKLxMazlfVUMLvW6ymO505mlb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_30
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_36
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/7r;)Ljava/lang/String;
    .registers 1

    .line 22433
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7r;->A0H:Ljava/lang/String;

    return-object p0
.end method

.method private A0A()V
    .registers 5

    .line 22434
    .local v2, "this":Lcom/facebook/ads/redexgen/X/7r;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/ev;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A09:Lcom/facebook/ads/redexgen/X/6T;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A03:Lcom/facebook/ads/redexgen/X/7j;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A03:Lcom/facebook/ads/redexgen/X/7j;

    .line 22435
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fD;->A2Q()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 22436
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/ev;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A09:Lcom/facebook/ads/redexgen/X/6T;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/ev;->AE9(Lcom/facebook/ads/redexgen/X/MA;Landroid/view/View;)V

    .line 22437
    :cond_1b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/ev;

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A0D:Z

    if-eqz v0, :cond_46

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/7r;->A0E:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/7r;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_57

    sget-object v2, Lcom/facebook/ads/redexgen/X/7r;->A0J:[Ljava/lang/String;

    const-string v1, "DQYu3GBVfiN4Ml"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_3f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A0F:Z

    if-nez v0, :cond_46

    .line 22438
    :cond_3f
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/ev;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A08:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/ev;->AE9(Lcom/facebook/ads/redexgen/X/MA;Landroid/view/View;)V

    .line 22439
    :cond_46
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A04:Lcom/facebook/ads/redexgen/X/7D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7D;->A0R()Lcom/facebook/ads/redexgen/X/N5;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/ev;

    if-eqz v0, :cond_55

    const/4 v0, 0x1

    :goto_51
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/N5;->A4p(Z)V

    .line 22440
    return-void

    .line 22441
    :cond_55
    const/4 v0, 0x0

    goto :goto_51

    :cond_57
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0B()V
    .registers 1

    const/16 v0, 0x2d

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/7r;->A0I:[B

    return-void

    :array_a
    .array-data 1
        -0x1ct
        -0x10t
        -0x12t
        -0x51t
        -0x19t
        -0x1et
        -0x1ct
        -0x1at
        -0x1dt
        -0x10t
        -0x10t
        -0x14t
        -0x51t
        -0x1et
        -0x1bt
        -0xct
        -0x51t
        -0x1dt
        -0x1et
        -0x11t
        -0x11t
        -0x1at
        -0xdt
        -0x51t
        -0x1ct
        -0x13t
        -0x16t
        -0x1ct
        -0x14t
        -0x1at
        -0x1bt
        -0x18t
        -0x27t
        -0x14t
        -0x18t
        -0x5dt
        -0x24t
        -0x18t
        -0x1ft
        -0x20t
        -0x44t
        -0x45t
        -0x53t
        0x74t
        0x7ft
    .end array-data
.end method

.method private A0C(ILcom/facebook/ads/redexgen/X/lz;)V
    .registers 14

    .line 22442
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7r;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    new-instance v6, Lcom/facebook/ads/redexgen/X/M0;

    invoke-direct {v6, p0}, Lcom/facebook/ads/redexgen/X/M0;-><init>(Lcom/facebook/ads/redexgen/X/7r;)V

    .line 22443
    .local v3, "nativeDSLListener":Lcom/facebook/ads/redexgen/X/w1;
    new-instance v3, Lcom/facebook/ads/redexgen/X/6T;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7r;->A04:Lcom/facebook/ads/redexgen/X/7D;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/7r;->A05:Lcom/facebook/ads/redexgen/X/nG;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/7r;->A03:Lcom/facebook/ads/redexgen/X/7j;

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/7r;->A0G:Lcom/facebook/ads/redexgen/X/qT;

    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A08(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/6T;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Lcom/facebook/ads/redexgen/X/w1;Lcom/facebook/ads/redexgen/X/LA;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/qT;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/7r;->A09:Lcom/facebook/ads/redexgen/X/6T;

    .line 22444
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lz;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Lz;-><init>(Lcom/facebook/ads/redexgen/X/7r;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A0A:Lcom/facebook/ads/redexgen/X/c3;

    .line 22445
    new-instance v1, Lcom/facebook/ads/redexgen/X/c2;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7r;->A09:Lcom/facebook/ads/redexgen/X/6T;

    .line 22446
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/lz;->A04()I

    move-result v3

    .line 22447
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/lz;->A09()I

    move-result v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A0A:Lcom/facebook/ads/redexgen/X/c3;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/7r;->A04:Lcom/facebook/ads/redexgen/X/7D;

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/c2;-><init>(Landroid/view/View;IIZLjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Hi;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/7r;->A0B:Lcom/facebook/ads/redexgen/X/c2;

    .line 22448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A03:Lcom/facebook/ads/redexgen/X/7j;

    if-eqz v0, :cond_5a

    .line 22449
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7r;->A0B:Lcom/facebook/ads/redexgen/X/c2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A03:Lcom/facebook/ads/redexgen/X/7j;

    .line 22450
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fD;->A1J()I

    move-result v0

    .line 22451
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c2;->A0W(I)V

    .line 22452
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7r;->A0B:Lcom/facebook/ads/redexgen/X/c2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A03:Lcom/facebook/ads/redexgen/X/7j;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fD;->A1K()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c2;->A0X(I)V

    .line 22453
    :cond_5a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7r;->A09:Lcom/facebook/ads/redexgen/X/6T;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6T;->setVisibility(I)V

    .line 22454
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A04:Lcom/facebook/ads/redexgen/X/7D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7D;->getResources()Landroid/content/res/Resources;

    .line 22455
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7r;->A09:Lcom/facebook/ads/redexgen/X/6T;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/6T;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A09:Lcom/facebook/ads/redexgen/X/6T;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6T;->ALW()V

    .line 22457
    return-void
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/7r;)V
    .registers 1

    .line 22458
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7r;->A0A()V

    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/7r;ILcom/facebook/ads/redexgen/X/lz;)V
    .registers 3

    .line 22459
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/7r;->A0C(ILcom/facebook/ads/redexgen/X/lz;)V

    return-void
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/lz;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/nw;)V
    .registers 15

    .line 22460
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7r;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A0E:Z

    .line 22461
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A04:Lcom/facebook/ads/redexgen/X/7D;

    invoke-static {v0, p2}, Lcom/facebook/ads/redexgen/X/LP;->A00(Lcom/facebook/ads/redexgen/X/7D;Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/LP;

    move-result-object v3

    .line 22462
    .local v0, "dataModel":Lcom/facebook/ads/redexgen/X/LP;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/LP;->A7z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A0C:Ljava/lang/String;

    .line 22463
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7r;->A04:Lcom/facebook/ads/redexgen/X/7D;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A05:Lcom/facebook/ads/redexgen/X/nG;

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/ej;->A06(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/ei;Lcom/facebook/ads/redexgen/X/nG;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 22464
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A04:Lcom/facebook/ads/redexgen/X/7D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7D;->A0R()Lcom/facebook/ads/redexgen/X/N5;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/df;->A5b()V

    .line 22465
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/ev;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/nt;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/nt;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/ev;->AFQ(Lcom/facebook/ads/redexgen/X/MA;Lcom/facebook/ads/redexgen/X/nt;)V

    .line 22466
    return-void

    .line 22467
    :cond_2e
    new-instance v0, Lcom/facebook/ads/redexgen/X/7s;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/7s;-><init>(Lcom/facebook/ads/redexgen/X/7r;Lcom/facebook/ads/redexgen/X/LP;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A07:Lcom/facebook/ads/redexgen/X/ta;

    .line 22468
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/7r;->A04:Lcom/facebook/ads/redexgen/X/7D;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A07:Lcom/facebook/ads/redexgen/X/ta;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22469
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/lz;->A04()I

    move-result v2

    .line 22470
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7r;->A7z()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ev;

    invoke-direct {v0, v5, v4, v2, v1}, Lcom/facebook/ads/redexgen/X/Ev;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Ljava/lang/ref/WeakReference;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A08:Lcom/facebook/ads/redexgen/X/Ev;

    .line 22471
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7r;->A08:Lcom/facebook/ads/redexgen/X/Ev;

    .line 22472
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/lz;->A07()I

    move-result v1

    .line 22473
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/lz;->A08()I

    move-result v0

    .line 22474
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ev;->A0L(II)V

    .line 22475
    new-instance v9, Lcom/facebook/ads/redexgen/X/Lr;

    invoke-direct {v9, p0}, Lcom/facebook/ads/redexgen/X/Lr;-><init>(Lcom/facebook/ads/redexgen/X/7r;)V

    .line 22476
    .local v9, "impressionHelper":Lcom/facebook/ads/redexgen/X/eq;
    new-instance v4, Lcom/facebook/ads/redexgen/X/LN;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/7r;->A04:Lcom/facebook/ads/redexgen/X/7D;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/7r;->A05:Lcom/facebook/ads/redexgen/X/nG;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/7r;->A08:Lcom/facebook/ads/redexgen/X/Ev;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A08:Lcom/facebook/ads/redexgen/X/Ev;

    .line 22477
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ev;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/c2;

    move-result-object v8

    move-object v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/LN;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Lcom/facebook/ads/redexgen/X/tX;Lcom/facebook/ads/redexgen/X/c2;Lcom/facebook/ads/redexgen/X/eq;Lcom/facebook/ads/redexgen/X/nw;)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/7r;->A02:Lcom/facebook/ads/redexgen/X/LN;

    .line 22478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A02:Lcom/facebook/ads/redexgen/X/LN;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/LN;->A0C(Lcom/facebook/ads/redexgen/X/LP;)V

    .line 22479
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7r;->A08:Lcom/facebook/ads/redexgen/X/Ev;

    .line 22480
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/td;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 22481
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/LP;->A04()Ljava/lang/String;

    move-result-object v6

    .line 22482
    const/16 v2, 0x1f

    const/16 v1, 0x9

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A08(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x28

    const/4 v1, 0x5

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A08(III)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Ev;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A0D:Z

    .line 22484
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7r;->A0A()V

    .line 22485
    return-void
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/nw;Lcom/facebook/ads/redexgen/X/lz;)V
    .registers 13

    .line 22486
    .local p1, "this":Lcom/facebook/ads/redexgen/X/7r;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A03:Lcom/facebook/ads/redexgen/X/7j;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A05:Lcom/facebook/ads/redexgen/X/nG;

    if-nez v0, :cond_9

    .line 22487
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v9
    :cond_8
    return-void

    .line 22488
    :cond_9
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/nw;->A03()I

    move-result v0

    int-to-float v1, v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    float-to-int v2, v1

    .line 22489
    .local v0, "bannerHeight":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A04:Lcom/facebook/ads/redexgen/X/7D;

    .line 22490
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mv;->A2H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A03:Lcom/facebook/ads/redexgen/X/7j;

    .line 22491
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fD;->A1x()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kP;->A0A(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    .line 22492
    .local v1, "isUnifiedAssetsLoaderEnabled":Z
    :goto_2f
    if-nez v0, :cond_37

    .line 22493
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/7r;->A0C(ILcom/facebook/ads/redexgen/X/lz;)V

    .line 22494
    return-void

    .line 22495
    :cond_35
    const/4 v0, 0x0

    goto :goto_2f

    .line 22496
    :cond_37
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A04:Lcom/facebook/ads/redexgen/X/7D;

    new-instance v4, Lcom/facebook/ads/redexgen/X/kz;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/kz;-><init>(Lcom/facebook/ads/redexgen/X/lA;)V

    .line 22497
    .local v3, "cacheManager":Lcom/facebook/ads/redexgen/X/kz;
    move-object v1, p0

    .line 22498
    .local v9, "selfReference":Lcom/facebook/ads/redexgen/X/7r;
    new-instance v3, Lcom/facebook/ads/redexgen/X/kP;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A03:Lcom/facebook/ads/redexgen/X/7j;

    .line 22499
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fD;->A1x()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A03:Lcom/facebook/ads/redexgen/X/7j;

    .line 22500
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fD;->A1c()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A03:Lcom/facebook/ads/redexgen/X/7j;

    .line 22501
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fD;->A1r()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/facebook/ads/redexgen/X/M9;

    invoke-direct {v9, p0, v2, p2, v1}, Lcom/facebook/ads/redexgen/X/M9;-><init>(Lcom/facebook/ads/redexgen/X/7r;ILcom/facebook/ads/redexgen/X/lz;Lcom/facebook/ads/redexgen/X/7r;)V

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/kP;-><init>(Lcom/facebook/ads/redexgen/X/kz;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/kO;)V

    .line 22502
    .local v2, "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/kP;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/kP;->A0B()V

    .line 22503
    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/7r;)Z
    .registers 1

    .line 22504
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/7r;->A0F:Z

    return p0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/7r;Z)Z
    .registers 2

    .line 22505
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/7r;->A0E:Z

    return p1
.end method


# virtual methods
.method public final A7z()Ljava/lang/String;
    .registers 2

    .line 22506
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7r;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A0C:Ljava/lang/String;

    return-object v0
.end method

.method public final A9N()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .registers 3

    .line 22507
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7r;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A04:Lcom/facebook/ads/redexgen/X/7D;

    .line 22508
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mv;->A19(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A06:Lcom/facebook/ads/redexgen/X/nw;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7r;->A06:Lcom/facebook/ads/redexgen/X/nw;

    sget-object v0, Lcom/facebook/ads/redexgen/X/nw;->A08:Lcom/facebook/ads/redexgen/X/nw;

    if-ne v1, v0, :cond_15

    .line 22509
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->MEDIUM_RECTANGLE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 22510
    :goto_14
    return-object v0

    .line 22511
    :cond_15
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    goto :goto_14
.end method

.method public final ABb(Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/nG;Lcom/facebook/ads/redexgen/X/nw;Lcom/facebook/ads/redexgen/X/ev;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/lz;)V
    .registers 10

    .line 22512
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7r;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7D;->A0R()Lcom/facebook/ads/redexgen/X/N5;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/N5;->A4o()V

    .line 22513
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7r;->A04:Lcom/facebook/ads/redexgen/X/7D;

    .line 22514
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/7r;->A05:Lcom/facebook/ads/redexgen/X/nG;

    .line 22515
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/7r;->A00:Lcom/facebook/ads/redexgen/X/ev;

    .line 22516
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/7r;->A06:Lcom/facebook/ads/redexgen/X/nw;

    .line 22517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A04:Lcom/facebook/ads/redexgen/X/7D;

    .line 22518
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7D;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 22519
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mv;->A1o(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A0F:Z

    .line 22520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A04:Lcom/facebook/ads/redexgen/X/7D;

    invoke-static {p5, v0}, Lcom/facebook/ads/redexgen/X/7j;->A00(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Hi;)Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A03:Lcom/facebook/ads/redexgen/X/7j;

    .line 22521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A03:Lcom/facebook/ads/redexgen/X/7j;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fD;->A2Q()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 22522
    invoke-direct {p0, p3, p6}, Lcom/facebook/ads/redexgen/X/7r;->A0G(Lcom/facebook/ads/redexgen/X/nw;Lcom/facebook/ads/redexgen/X/lz;)V

    .line 22523
    :goto_2e
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7r;->A04:Lcom/facebook/ads/redexgen/X/7D;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7r;->A0H:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ew;

    invoke-direct {v0, v2, v1, p0, p4}, Lcom/facebook/ads/redexgen/X/ew;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MA;Lcom/facebook/ads/redexgen/X/ev;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A01:Lcom/facebook/ads/redexgen/X/ew;

    .line 22524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A01:Lcom/facebook/ads/redexgen/X/ew;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ew;->A02()V

    .line 22525
    return-void

    .line 22526
    :cond_3f
    invoke-direct {p0, p6, p5, p3}, Lcom/facebook/ads/redexgen/X/7r;->A0F(Lcom/facebook/ads/redexgen/X/lz;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/nw;)V

    goto :goto_2e
.end method

.method public final ALe()Z
    .registers 2

    .line 22527
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7r;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroy()V
    .registers 3

    .line 22528
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7r;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A04:Lcom/facebook/ads/redexgen/X/7D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7D;->A0R()Lcom/facebook/ads/redexgen/X/N5;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A08:Lcom/facebook/ads/redexgen/X/Ev;

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    :goto_b
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/N5;->A4m(Z)V

    .line 22529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A08:Lcom/facebook/ads/redexgen/X/Ev;

    if-eqz v0, :cond_1c

    .line 22530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A08:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ev;->destroy()V

    .line 22531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A08:Lcom/facebook/ads/redexgen/X/Ev;

    .line 22532
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A07:Lcom/facebook/ads/redexgen/X/ta;

    .line 22533
    :cond_1c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A01:Lcom/facebook/ads/redexgen/X/ew;

    if-eqz v0, :cond_25

    .line 22534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7r;->A01:Lcom/facebook/ads/redexgen/X/ew;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ew;->A03()V

    .line 22535
    :cond_25
    return-void

    .line 22536
    :cond_26
    const/4 v0, 0x0

    goto :goto_b
.end method

###### Class com.facebook.ads.redexgen.X.C14117s (com.facebook.ads.redexgen.X.7s)
.class public final Lcom/facebook/ads/redexgen/X/7s;
.super Lcom/facebook/ads/redexgen/X/Ey;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7r;->A0F(Lcom/facebook/ads/redexgen/X/lz;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/nw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7r;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/LP;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 301
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RkD1OJxt7Cm"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "85G"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "rOg3VWXB3SEY3xQpEJ0sm9sa"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "k8A4i4hEDbRwTbJ7ZqirbVmRMdyhqYao"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "w8o7PtZgo3USKQqv4zP9Jz4sqmraE2my"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KkDuTncCOt8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "W5AvxWS2W"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "p0drNpcb1k1QxXuNf36gE6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7s;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7s;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7r;Lcom/facebook/ads/redexgen/X/LP;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 22537
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7s;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/7s;->A01:Lcom/facebook/ads/redexgen/X/LP;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ey;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/7s;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/7s;->A02:[B

    return-void

    :array_a
    .array-data 1
        -0x71t
        -0x44t
        -0x44t
        -0x47t
        -0x44t
        0x6at
        -0x51t
        -0x3et
        -0x51t
        -0x53t
        -0x41t
        -0x42t
        -0x4dt
        -0x48t
        -0x4ft
        0x6at
        -0x55t
        -0x53t
        -0x42t
        -0x4dt
        -0x47t
        -0x48t
        -0x2t
        0xet
        0xbt
        0x13t
        0xft
        0x1t
        0xet
        -0x5t
        0x10t
        0x15t
        0xct
        0x1t
        -0x1ct
        -0x1et
        -0x13t
        -0x13t
        -0x1at
        -0xdt
        -0x2bt
        -0x6t
        -0xft
        -0x1at
        0xet
        0xet
        0x1ft
        0xat
        0x1ft
        0x24t
        0x1bt
        0x10t
        0xct
        0x8t
        0x7t
        0xat
        -0x3ct
        -0x43t
        -0x48t
        -0x40t
        -0x3ct
        -0x4ct
        -0x68t
        -0x4dt
    .end array-data
.end method


# virtual methods
.method public final ADv()V
    .registers 3

    .line 22538
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7s;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A0I(Lcom/facebook/ads/redexgen/X/7r;Z)Z

    .line 22539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A0H(Lcom/facebook/ads/redexgen/X/7r;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 22540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A0D(Lcom/facebook/ads/redexgen/X/7r;)V

    .line 22541
    :cond_13
    return-void
.end method

.method public final AEN(Ljava/lang/String;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 22542
    .local v10, "this":Lcom/facebook/ads/redexgen/X/7s;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    .local p1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A03(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/7D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7D;->A0R()Lcom/facebook/ads/redexgen/X/N5;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/N5;->A4q()V

    .line 22543
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/pP;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 22544
    .local v0, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x22

    const/16 v1, 0xa

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7s;->A00(III)Ljava/lang/String;

    move-result-object v0

    move-object v9, p2

    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    .line 22546
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A09(Lcom/facebook/ads/redexgen/X/7r;)Ljava/lang/String;

    move-result-object v3

    .line 22547
    const/16 v2, 0x38

    const/16 v1, 0x8

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7s;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22548
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A02(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v0

    const/4 v4, 0x0

    if-nez v0, :cond_a2

    move-object v3, v4

    .line 22549
    .local v8, "browserType":Ljava/lang/String;
    :goto_41
    if-eqz v3, :cond_50

    .line 22550
    const/16 v2, 0x16

    const/16 v1, 0xc

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7s;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22551
    :cond_50
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A02(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v0

    if-nez v0, :cond_97

    move-object v3, v4

    .line 22552
    .local v9, "cctType":Ljava/lang/String;
    :goto_59
    if-eqz v3, :cond_68

    .line 22553
    const/16 v2, 0x2c

    const/16 v1, 0x8

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7s;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22554
    :cond_68
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    .line 22555
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A03(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/7D;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    .line 22556
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A04(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/nG;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A01:Lcom/facebook/ads/redexgen/X/LP;

    .line 22557
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LP;->A7z()Ljava/lang/String;

    move-result-object v7

    .line 22558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A02(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v0

    if-nez v0, :cond_8c

    move-object v10, v4

    .line 22559
    :goto_83
    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/eg;->A00(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/nG;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/fT;)Lcom/facebook/ads/redexgen/X/ef;

    move-result-object v1

    .line 22560
    .local v1, "adAction":Lcom/facebook/ads/redexgen/X/ef;
    sget-object v3, Lcom/facebook/ads/redexgen/X/ec;->A08:Lcom/facebook/ads/redexgen/X/ec;

    .line 22561
    .local v2, "actionOutcome":Lcom/facebook/ads/redexgen/X/ec;
    if-eqz v1, :cond_f4

    goto :goto_d2

    .line 22562
    :cond_8c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A02(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LA;->A33()Lcom/facebook/ads/redexgen/X/fT;

    move-result-object v10

    goto :goto_83

    .line 22563
    :cond_97
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A02(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fD;->A1W()Ljava/lang/String;

    move-result-object v3

    goto :goto_59

    .line 22564
    :cond_a2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    sget-object v2, Lcom/facebook/ads/redexgen/X/7s;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_bc

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_bc
    sget-object v2, Lcom/facebook/ads/redexgen/X/7s;->A03:[Ljava/lang/String;

    const-string v1, "yKt"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "O3cmN93hsB9jwoMarcV7SE5e"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/7r;->A02(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fD;->A1V()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_41

    .line 22565
    :goto_d2
    :try_start_d2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A03(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/7D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7D;->A0R()Lcom/facebook/ads/redexgen/X/N5;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/N5;->A4n()V

    .line 22566
    invoke-virtual {v1, v4}, Lcom/facebook/ads/redexgen/X/ef;->A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ec;

    move-result-object v3

    .line 22567
    goto :goto_f4
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_e4} :catch_e4

    .line 22568
    :catch_e4
    move-exception v5

    .line 22569
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/7r;->A07()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7s;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22570
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_f4
    :goto_f4
    const/16 v2, 0x34

    const/4 v1, 0x4

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7s;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    .line 22571
    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eg;->A04(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_128

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    .line 22572
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A00(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/ev;

    move-result-object v0

    if-eqz v0, :cond_128

    sget-object v0, Lcom/facebook/ads/redexgen/X/ec;->A05:Lcom/facebook/ads/redexgen/X/ec;

    if-eq v3, v0, :cond_128

    .line 22573
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A00(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/ev;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/ev;->AE8(Lcom/facebook/ads/redexgen/X/MA;)V

    .line 22574
    :cond_128
    return-void
.end method

.method public final AFD()V
    .registers 3

    .line 22575
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7s;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A03(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/7D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7D;->A0R()Lcom/facebook/ads/redexgen/X/N5;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/LN;

    move-result-object v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_13
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/N5;->A4r(Z)V

    .line 22576
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/LN;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 22577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/LN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ep;->A09()V

    .line 22578
    :cond_27
    return-void

    .line 22579
    :cond_28
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final AGD()V
    .registers 2

    .line 22580
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7s;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A03(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/7D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7D;->A0R()Lcom/facebook/ads/redexgen/X/N5;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/N5;->A4t()V

    .line 22581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/7r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(Lcom/facebook/ads/redexgen/X/7r;)Lcom/facebook/ads/redexgen/X/LN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LN;->A0B()V

    .line 22582
    return-void
.end method

.method public final AHt()V
    .registers 1

    .line 22583
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7s;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    return-void
.end method
