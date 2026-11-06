###### Class com.facebook.ads.redexgen.X.KC (com.facebook.ads.redexgen.X.KC)
.class public final Lcom/facebook/ads/redexgen/X/KC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/oJ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/7b;,
        Lcom/facebook/ads/redexgen/X/g2;,
        Lcom/facebook/ads/redexgen/X/KD;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/g2;

.field public A01:Lcom/facebook/ads/redexgen/X/ly;

.field public A02:Ljava/lang/String;

.field public A03:Z

.field public final A04:I

.field public final A05:Landroid/os/Handler;

.field public final A06:Lcom/facebook/ads/AdSize;

.field public final A07:Lcom/facebook/ads/redexgen/X/es;

.field public final A08:Lcom/facebook/ads/redexgen/X/Hi;

.field public final A09:Lcom/facebook/ads/redexgen/X/nG;

.field public final A0A:Lcom/facebook/ads/redexgen/X/nx;

.field public final A0B:Lcom/facebook/ads/redexgen/X/oK;

.field public final A0C:Ljava/lang/Runnable;

.field public final A0D:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 776
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Um"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5O6Pi5UhekEiJBNtL2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ByBiFstlzS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VNZICTTmM6bBZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "I3ykA2cHAONkN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xnUs6VMzToWHuFoC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Qkjm3fg24P6DD7pmZ7L4neN1zLjqdukp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LFB8Dcv49A6aPeUL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KC;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KC;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/qe;->A02()V

    .line 777
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/nx;Lcom/facebook/ads/AdSize;I)V
    .registers 8

    .line 50408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50409
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KC;->A08:Lcom/facebook/ads/redexgen/X/Hi;

    .line 50410
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/KC;->A0D:Ljava/lang/String;

    .line 50411
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/KC;->A0A:Lcom/facebook/ads/redexgen/X/nx;

    .line 50412
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/KC;->A06:Lcom/facebook/ads/AdSize;

    .line 50413
    iput p5, p0, Lcom/facebook/ads/redexgen/X/KC;->A04:I

    .line 50414
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KC;->A08:Lcom/facebook/ads/redexgen/X/Hi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/oK;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/oK;-><init>(Lcom/facebook/ads/redexgen/X/Hi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A0B:Lcom/facebook/ads/redexgen/X/oK;

    .line 50415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A0B:Lcom/facebook/ads/redexgen/X/oK;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/oK;->A0R(Lcom/facebook/ads/redexgen/X/oJ;)V

    .line 50416
    new-instance v0, Lcom/facebook/ads/redexgen/X/es;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/es;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A07:Lcom/facebook/ads/redexgen/X/es;

    .line 50417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A03:Z

    .line 50418
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A05:Landroid/os/Handler;

    .line 50419
    new-instance v0, Lcom/facebook/ads/redexgen/X/7b;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7b;-><init>(Lcom/facebook/ads/redexgen/X/KC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A0C:Ljava/lang/Runnable;

    .line 50420
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/lA;->A0A()Lcom/facebook/ads/redexgen/X/nG;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A09:Lcom/facebook/ads/redexgen/X/nG;

    .line 50421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A08:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A08:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->onAdLoadInvoked(Landroid/content/Context;)V

    .line 50422
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/KC;)Landroid/os/Handler;
    .registers 1

    .line 50423
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KC;->A05:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/KC;)Lcom/facebook/ads/redexgen/X/Hi;
    .registers 1

    .line 50424
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KC;->A08:Lcom/facebook/ads/redexgen/X/Hi;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/KC;)Ljava/lang/Runnable;
    .registers 1

    .line 50425
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KC;->A0C:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/KC;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_9
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/KC;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1d
    sget-object v2, Lcom/facebook/ads/redexgen/X/KC;->A0F:[Ljava/lang/String;

    const-string v1, "uoxYJqIRleds8fPMMv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_31

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x57

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_31
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Lh;",
            ">;"
        }
    .end annotation

    .line 50426
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KC;->A01:Lcom/facebook/ads/redexgen/X/ly;

    .line 50427
    .local v0, "currentPlacement":Lcom/facebook/ads/redexgen/X/ly;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ly;->A04()Lcom/facebook/ads/redexgen/X/lw;

    move-result-object v5

    .line 50428
    .local v1, "placementAd":Lcom/facebook/ads/redexgen/X/lw;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ly;->A02()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 50429
    .local v2, "validAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    :goto_f
    if-eqz v5, :cond_53

    .line 50430
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KC;->A07:Lcom/facebook/ads/redexgen/X/es;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KC;->A08:Lcom/facebook/ads/redexgen/X/Hi;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/es;->A00(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/en;

    move-result-object v4

    .line 50431
    .local v3, "adapter":Lcom/facebook/ads/redexgen/X/en;
    if-eqz v4, :cond_4e

    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/en;->A9N()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v3

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v3, v0, :cond_4e

    .line 50432
    new-instance v8, Lcom/facebook/ads/redexgen/X/fz;

    .line 50433
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/lw;->A04()Lorg/json/JSONObject;

    move-result-object v9

    .line 50434
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ly;->A05()Lcom/facebook/ads/redexgen/X/lz;

    move-result-object v10

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/KC;->A0D:Ljava/lang/String;

    .line 50435
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ly;->A05()Lcom/facebook/ads/redexgen/X/lz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lz;->A0C()J

    move-result-wide v12

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/fz;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/lz;Ljava/lang/String;J)V

    .line 50436
    .local v10, "loadConfig":Lcom/facebook/ads/redexgen/X/fz;
    check-cast v4, Lcom/facebook/ads/redexgen/X/Lh;

    .line 50437
    .local v4, "nativeAdapter":Lcom/facebook/ads/redexgen/X/Lh;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/KC;->A08:Lcom/facebook/ads/redexgen/X/Hi;

    new-instance v6, Lcom/facebook/ads/redexgen/X/7c;

    invoke-direct {v6, p0, v1, v4}, Lcom/facebook/ads/redexgen/X/7c;-><init>(Lcom/facebook/ads/redexgen/X/KC;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Lh;)V

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/KC;->A09:Lcom/facebook/ads/redexgen/X/nG;

    .line 50438
    invoke-static {}, Lcom/facebook/ads/redexgen/X/GT;->A0K()Lcom/facebook/ads/redexgen/X/GW;

    move-result-object v9

    .line 50439
    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Lh;->A0L(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/f2;Lcom/facebook/ads/redexgen/X/nG;Lcom/facebook/ads/redexgen/X/fz;Lcom/facebook/ads/redexgen/X/nh;)V

    .line 50440
    .end local v4    # "nativeAdapter":Lcom/facebook/ads/redexgen/X/Lh;
    .end local v10    # "loadConfig":Lcom/facebook/ads/redexgen/X/fz;
    :cond_4e
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ly;->A04()Lcom/facebook/ads/redexgen/X/lw;

    move-result-object v5

    .line 50441
    .end local v3    # "adapter":Lcom/facebook/ads/redexgen/X/en;
    goto :goto_f

    .line 50442
    :cond_53
    return-object v1
.end method

.method public static A05()V
    .registers 4

    const/16 v0, 0x18

    new-array v3, v0, [B

    fill-array-data v3, :array_24

    sget-object v1, Lcom/facebook/ads/redexgen/X/KC;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_19

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_19
    sget-object v2, Lcom/facebook/ads/redexgen/X/KC;->A0F:[Ljava/lang/String;

    const-string v1, "dKV76OJFyRmVPWeRzZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/KC;->A0E:[B

    return-void

    nop

    :array_24
    .array-data 1
        0x40t
        0x41t
        -0xet
        0x42t
        0x3et
        0x33t
        0x35t
        0x37t
        0x3ft
        0x37t
        0x40t
        0x46t
        -0xet
        0x3bt
        0x40t
        -0xet
        0x44t
        0x37t
        0x45t
        0x42t
        0x41t
        0x40t
        0x45t
        0x37t
    .end array-data
.end method


# virtual methods
.method public final A06()V
    .registers 3

    .line 50443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A03:Z

    .line 50444
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KC;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A0C:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 50445
    return-void
.end method

.method public final A07()V
    .registers 14

    .line 50446
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A08:Lcom/facebook/ads/redexgen/X/Hi;

    const/4 v5, 0x0

    new-instance v8, Lcom/facebook/ads/redexgen/X/o1;

    invoke-direct {v8, v0, v5, v5, v5}, Lcom/facebook/ads/redexgen/X/o1;-><init>(Lcom/facebook/ads/redexgen/X/lA;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/nx;)V
    :try_end_8
    .catch Lcom/facebook/ads/redexgen/X/nu; {:try_start_0 .. :try_end_8} :catch_42

    .line 50447
    .local v6, "bidPayload":Lcom/facebook/ads/redexgen/X/o1;
    new-instance v2, Lcom/facebook/ads/redexgen/X/oH;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KC;->A08:Lcom/facebook/ads/redexgen/X/Hi;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KC;->A0D:Ljava/lang/String;

    .line 50448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A06:Lcom/facebook/ads/AdSize;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A06:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A06:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/qE;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/qE;-><init>(II)V

    :cond_23
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/KC;->A0A:Lcom/facebook/ads/redexgen/X/nx;

    iget v7, p0, Lcom/facebook/ads/redexgen/X/KC;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A08:Lcom/facebook/ads/redexgen/X/Hi;

    .line 50449
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mv;->A0L(Landroid/content/Context;)I

    move-result v0

    .line 50450
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qK;->A01(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/KC;->A02:Ljava/lang/String;

    new-instance v12, Lcom/facebook/ads/redexgen/X/K5;

    invoke-direct {v12}, Lcom/facebook/ads/redexgen/X/K5;-><init>()V

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/facebook/ads/redexgen/X/oH;-><init>(Lcom/facebook/ads/redexgen/X/lA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/qE;Lcom/facebook/ads/redexgen/X/nx;ILcom/facebook/ads/redexgen/X/o1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/m5;)V

    .line 50451
    .local v0, "adEnvironmentData":Lcom/facebook/ads/redexgen/X/oH;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A0B:Lcom/facebook/ads/redexgen/X/oK;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/oK;->A0Q(Lcom/facebook/ads/redexgen/X/oH;)V

    .line 50452
    return-void

    .line 50453
    .end local v0    # "adEnvironmentData":Lcom/facebook/ads/redexgen/X/oH;
    .end local v6    # "bidPayload":Lcom/facebook/ads/redexgen/X/o1;
    :catch_42
    move-exception v0

    .line 50454
    .local v0, "e":Lcom/facebook/ads/redexgen/X/nu;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/nt;->A02(Lcom/facebook/ads/redexgen/X/nu;)Lcom/facebook/ads/redexgen/X/nt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KC;->AEr(Lcom/facebook/ads/redexgen/X/nt;)V

    .line 50455
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/g2;)V
    .registers 2

    .line 50456
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KC;->A00:Lcom/facebook/ads/redexgen/X/g2;

    .line 50457
    return-void
.end method

.method public final A09(Ljava/lang/String;)V
    .registers 2

    .line 50458
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KC;->A02:Ljava/lang/String;

    .line 50459
    return-void
.end method

.method public final A0A()Z
    .registers 2

    .line 50460
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A01:Lcom/facebook/ads/redexgen/X/ly;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A01:Lcom/facebook/ads/redexgen/X/ly;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ly;->A0H()Z

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

.method public final AEr(Lcom/facebook/ads/redexgen/X/nt;)V
    .registers 6

    .line 50461
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A03:Z

    if-eqz v0, :cond_e

    .line 50462
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KC;->A05:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KC;->A0C:Ljava/lang/Runnable;

    const-wide/32 v0, 0x1b7740

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50463
    :cond_e
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KC;->A00:Lcom/facebook/ads/redexgen/X/g2;

    sget-object v1, Lcom/facebook/ads/redexgen/X/KC;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_23

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_23
    sget-object v2, Lcom/facebook/ads/redexgen/X/KC;->A0F:[Ljava/lang/String;

    const-string v1, "yGn7NPCZVX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_31

    .line 50464
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A00:Lcom/facebook/ads/redexgen/X/g2;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/g2;->AEr(Lcom/facebook/ads/redexgen/X/nt;)V

    .line 50465
    :cond_31
    return-void
.end method

.method public final AHE(Lcom/facebook/ads/redexgen/X/GG;)V
    .registers 9

    .line 50466
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/GG;->A00()Lcom/facebook/ads/redexgen/X/ly;

    move-result-object v6

    .line 50467
    .local v0, "placement":Lcom/facebook/ads/redexgen/X/ly;
    if-eqz v6, :cond_4c

    .line 50468
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A03:Z

    if-eqz v0, :cond_22

    .line 50469
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/ly;->A05()Lcom/facebook/ads/redexgen/X/lz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lz;->A0A()J

    move-result-wide v2

    .line 50470
    .local v1, "refreshInterval":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1b

    .line 50471
    const-wide/32 v2, 0x1b7740

    .line 50472
    :cond_1b
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KC;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A0C:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50473
    .end local v1    # "refreshInterval":J
    :cond_22
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/KC;->A01:Lcom/facebook/ads/redexgen/X/ly;

    .line 50474
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KC;->A04()Ljava/util/List;

    move-result-object v1

    .line 50475
    .local v1, "adapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A00:Lcom/facebook/ads/redexgen/X/g2;

    if-eqz v0, :cond_4b

    .line 50476
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 50477
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KC;->A00:Lcom/facebook/ads/redexgen/X/g2;

    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/nt;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/nt;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/g2;->AEr(Lcom/facebook/ads/redexgen/X/nt;)V

    .line 50478
    return-void

    .line 50479
    :cond_46
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KC;->A00:Lcom/facebook/ads/redexgen/X/g2;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/g2;->AG2(Ljava/util/List;)V

    .line 50480
    :cond_4b
    return-void

    .line 50481
    .end local v1    # "adapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    :cond_4c
    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.facebook.ads.redexgen.X.C13947b (com.facebook.ads.redexgen.X.7b)
.class public final Lcom/facebook/ads/redexgen/X/7b;
.super Lcom/facebook/ads/redexgen/X/G2;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/KC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefreshRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/G2<",
        "Lcom/facebook/ads/redexgen/X/KC;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 292
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ByMq6MLqhjUJsdWB3RBIp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zuOr3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "msyHKBX3wHVeYE5obxbctQprcgEzI02t"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "I3sOgeRwcNYGF4oixOV5Q17"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dcB"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ibtCqc8qysdz0E5AMIDmPhuL1XZA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mNtKCg4kzaH6sXUtb2oDuqx2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ObFvkEusatMYzjWaq72f4FkWXHrQjerH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7b;->A00:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KC;)V
    .registers 2

    .line 21843
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/G2;-><init>(Ljava/lang/Object;)V

    .line 21844
    return-void
.end method


# virtual methods
.method public final A07()V
    .registers 6

    .line 21845
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/G2;->A08()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/KC;

    .line 21846
    .local v0, "controller":Lcom/facebook/ads/redexgen/X/KC;
    if-nez v4, :cond_9

    .line 21847
    return-void

    .line 21848
    :cond_9
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/KC;->A01(Lcom/facebook/ads/redexgen/X/KC;)Lcom/facebook/ads/redexgen/X/Hi;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/7b;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3e

    sget-object v2, Lcom/facebook/ads/redexgen/X/7b;->A00:[Ljava/lang/String;

    const-string v1, "SiVLKh"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/qw;->A02(Lcom/facebook/ads/redexgen/X/Hi;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 21849
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/KC;->A07()V

    .line 21850
    :goto_2f
    return-void

    .line 21851
    :cond_30
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/KC;->A00(Lcom/facebook/ads/redexgen/X/KC;)Landroid/os/Handler;

    move-result-object v3

    .line 21852
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/KC;->A02(Lcom/facebook/ads/redexgen/X/KC;)Ljava/lang/Runnable;

    move-result-object v2

    .line 21853
    const-wide/16 v0, 0x1388

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2f

    :cond_3e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

###### Class com.facebook.ads.redexgen.X.C13957c (com.facebook.ads.redexgen.X.7c)
.class public final Lcom/facebook/ads/redexgen/X/7c;
.super Lcom/facebook/ads/redexgen/X/KD;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/KC;->A04()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Lh;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/KC;

.field public final synthetic A02:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KC;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Lh;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 21854
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7c;->A01:Lcom/facebook/ads/redexgen/X/KC;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/7c;->A02:Ljava/util/List;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/7c;->A00:Lcom/facebook/ads/redexgen/X/Lh;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KD;-><init>()V

    return-void
.end method


# virtual methods
.method public final AG0(Lcom/facebook/ads/redexgen/X/Lh;)V
    .registers 4

    .line 21855
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7c;->A02:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7c;->A00:Lcom/facebook/ads/redexgen/X/Lh;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21856
    return-void
.end method
