###### Class com.facebook.ads.redexgen.X.TD (com.facebook.ads.redexgen.X.TD)
.class public final Lcom/facebook/ads/redexgen/X/TD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NN;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:Lcom/facebook/ads/redexgen/X/NN;

.field public final A02:Lcom/facebook/ads/redexgen/X/Ni;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Ni;Lcom/facebook/ads/redexgen/X/NN;)V
    .registers 5

    .line 71126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A00:Landroid/content/Context;

    .line 71128
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TD;->A02:Lcom/facebook/ads/redexgen/X/Ni;

    .line 71129
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/NN;

    .line 71130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ni;)V
    .registers 5

    .line 71131
    new-instance v0, Lcom/facebook/ads/redexgen/X/9H;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9H;-><init>()V

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/9H;->A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/9H;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/facebook/ads/redexgen/X/TD;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Ni;Lcom/facebook/ads/redexgen/X/NN;)V

    .line 71132
    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/9I;
    .registers 4

    .line 71133
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TD;->A00:Landroid/content/Context;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/NN;

    .line 71134
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NN;->A5r()Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/9I;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9I;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TE;)V

    .line 71135
    .local v0, "dataSource":Lcom/facebook/ads/redexgen/X/9I;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A02:Lcom/facebook/ads/redexgen/X/Ni;

    if-eqz v0, :cond_16

    .line 71136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A02:Lcom/facebook/ads/redexgen/X/Ni;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9I;->A4T(Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 71137
    :cond_16
    return-object v1
.end method


# virtual methods
.method public final bridge synthetic A5r()Lcom/facebook/ads/redexgen/X/TE;
    .registers 2

    .line 71138
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TD;->A00()Lcom/facebook/ads/redexgen/X/9I;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.ads.redexgen.X.C9I (com.facebook.ads.redexgen.X.9I)
.class public final Lcom/facebook/ads/redexgen/X/9I;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/TE;


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/datasource/DefaultDataSource$Factory;
    }
.end annotation


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/TE;

.field public A01:Lcom/facebook/ads/redexgen/X/TE;

.field public A02:Lcom/facebook/ads/redexgen/X/TE;

.field public A03:Lcom/facebook/ads/redexgen/X/TE;

.field public A04:Lcom/facebook/ads/redexgen/X/TE;

.field public A05:Lcom/facebook/ads/redexgen/X/TE;

.field public A06:Lcom/facebook/ads/redexgen/X/TE;

.field public A07:Lcom/facebook/ads/redexgen/X/TE;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation
.end field

.field public final A08:Lcom/facebook/ads/redexgen/X/TE;

.field public final A09:Landroid/content/Context;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation
.end field

.field public final A0A:Ljava/util/List;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ni;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 399
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "C7DElpO6NNsoAmWreX5VcfHc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "utxULvuUsrxySbN58bWERtIE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GH"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1gC3bgtSsH3xWcpvek4Gy76najfn5m5C"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "feLBh6ukBh9hJyef6KhqZWpWiwqAVmzW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oWuhO3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "UdjzSOgc8AXsSDGjyMK94ihP6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "R68E1oVy27eUcAlinqsbQfq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9I;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9I;->A08()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TE;)V
    .registers 4

    .line 28481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28482
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A09:Landroid/content/Context;

    .line 28483
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/TE;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A08:Lcom/facebook/ads/redexgen/X/TE;

    .line 28484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A0A:Ljava/util/List;

    .line 28485
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/TE;
    .registers 3

    .line 28486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:Lcom/facebook/ads/redexgen/X/TE;

    if-nez v0, :cond_12

    .line 28487
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9I;->A09:Landroid/content/Context;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4O;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4O;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:Lcom/facebook/ads/redexgen/X/TE;

    .line 28488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:Lcom/facebook/ads/redexgen/X/TE;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9I;->A09(Lcom/facebook/ads/redexgen/X/TE;)V

    .line 28489
    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:Lcom/facebook/ads/redexgen/X/TE;

    return-object v0
.end method

.method private A01()Lcom/facebook/ads/redexgen/X/TE;
    .registers 3

    .line 28490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A01:Lcom/facebook/ads/redexgen/X/TE;

    if-nez v0, :cond_12

    .line 28491
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9I;->A09:Landroid/content/Context;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4N;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4N;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A01:Lcom/facebook/ads/redexgen/X/TE;

    .line 28492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A01:Lcom/facebook/ads/redexgen/X/TE;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9I;->A09(Lcom/facebook/ads/redexgen/X/TE;)V

    .line 28493
    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A01:Lcom/facebook/ads/redexgen/X/TE;

    return-object v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/TE;
    .registers 2

    .line 28494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A02:Lcom/facebook/ads/redexgen/X/TE;

    if-nez v0, :cond_10

    .line 28495
    new-instance v0, Lcom/facebook/ads/redexgen/X/4M;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4M;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A02:Lcom/facebook/ads/redexgen/X/TE;

    .line 28496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A02:Lcom/facebook/ads/redexgen/X/TE;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9I;->A09(Lcom/facebook/ads/redexgen/X/TE;)V

    .line 28497
    :cond_10
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A02:Lcom/facebook/ads/redexgen/X/TE;

    return-object v0
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/TE;
    .registers 2

    .line 28498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A03:Lcom/facebook/ads/redexgen/X/TE;

    if-nez v0, :cond_10

    .line 28499
    new-instance v0, Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4K;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A03:Lcom/facebook/ads/redexgen/X/TE;

    .line 28500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A03:Lcom/facebook/ads/redexgen/X/TE;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9I;->A09(Lcom/facebook/ads/redexgen/X/TE;)V

    .line 28501
    :cond_10
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A03:Lcom/facebook/ads/redexgen/X/TE;

    return-object v0
.end method

.method private A04()Lcom/facebook/ads/redexgen/X/TE;
    .registers 3

    .line 28502
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A04:Lcom/facebook/ads/redexgen/X/TE;

    if-nez v0, :cond_12

    .line 28503
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9I;->A09:Landroid/content/Context;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A04:Lcom/facebook/ads/redexgen/X/TE;

    .line 28504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A04:Lcom/facebook/ads/redexgen/X/TE;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9I;->A09(Lcom/facebook/ads/redexgen/X/TE;)V

    .line 28505
    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A04:Lcom/facebook/ads/redexgen/X/TE;

    return-object v0
.end method

.method private A05()Lcom/facebook/ads/redexgen/X/TE;
    .registers 5

    .line 28506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A05:Lcom/facebook/ads/redexgen/X/TE;

    if-nez v0, :cond_59

    .line 28507
    :try_start_4
    const/16 v2, 0x9d

    const/16 v1, 0x42

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9I;->A07(III)Ljava/lang/String;

    move-result-object v0

    .line 28508
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 28509
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/TE;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A05:Lcom/facebook/ads/redexgen/X/TE;

    .line 28510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A05:Lcom/facebook/ads/redexgen/X/TE;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9I;->A09(Lcom/facebook/ads/redexgen/X/TE;)V

    goto :goto_51
    :try_end_29
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_29} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_29} :catch_29

    .line 28511
    :catch_29
    move-exception v3

    .line 28512
    .local v0, "e":Ljava/lang/Exception;
    const/16 v2, 0x66

    const/16 v1, 0x22

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9I;->A07(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 28513
    .end local v0    # "e":Ljava/lang/Exception;
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :catch_3a
    const/16 v2, 0x55

    const/16 v1, 0x11

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9I;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xf

    const/16 v1, 0x46

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9I;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 28514
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_51
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A05:Lcom/facebook/ads/redexgen/X/TE;

    if-nez v0, :cond_59

    .line 28515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A08:Lcom/facebook/ads/redexgen/X/TE;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A05:Lcom/facebook/ads/redexgen/X/TE;

    .line 28516
    :cond_59
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9I;->A05:Lcom/facebook/ads/redexgen/X/TE;

    sget-object v1, Lcom/facebook/ads/redexgen/X/9I;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_6d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6d
    sget-object v2, Lcom/facebook/ads/redexgen/X/9I;->A0C:[Ljava/lang/String;

    const-string v1, "O2PCZ67RFUoAeaayXg7oBI7fNvGALE0b"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3
.end method

.method private A06()Lcom/facebook/ads/redexgen/X/TE;
    .registers 2

    .line 28517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A06:Lcom/facebook/ads/redexgen/X/TE;

    if-nez v0, :cond_10

    .line 28518
    new-instance v0, Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4I;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A06:Lcom/facebook/ads/redexgen/X/TE;

    .line 28519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A06:Lcom/facebook/ads/redexgen/X/TE;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9I;->A09(Lcom/facebook/ads/redexgen/X/TE;)V

    .line 28520
    :cond_10
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A06:Lcom/facebook/ads/redexgen/X/TE;

    return-object v0
.end method

.method public static A07(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/9I;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .registers 1

    const/16 v0, 0xfc

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/9I;->A0B:[B

    return-void

    :array_a
    .array-data 1
        0x43t
        0xdt
        0x2t
        0x8t
        0x1et
        0x3t
        0x5t
        0x8t
        0x33t
        0xdt
        0x1ft
        0x1ft
        0x9t
        0x18t
        0x43t
        0x19t
        0x2ct
        0x2ct
        0x3dt
        0x35t
        0x28t
        0x2ct
        0x31t
        0x36t
        0x3ft
        0x78t
        0x2ct
        0x37t
        0x78t
        0x28t
        0x34t
        0x39t
        0x21t
        0x78t
        0xat
        0xct
        0x15t
        0x8t
        0x78t
        0x2bt
        0x2ct
        0x2at
        0x3dt
        0x39t
        0x35t
        0x78t
        0x2ft
        0x31t
        0x2ct
        0x30t
        0x37t
        0x2dt
        0x2ct
        0x78t
        0x3ct
        0x3dt
        0x28t
        0x3dt
        0x36t
        0x3ct
        0x31t
        0x36t
        0x3ft
        0x78t
        0x37t
        0x36t
        0x78t
        0x2ct
        0x30t
        0x3dt
        0x78t
        0xat
        0xct
        0x15t
        0x8t
        0x78t
        0x3dt
        0x20t
        0x2ct
        0x3dt
        0x36t
        0x2bt
        0x31t
        0x37t
        0x36t
        0x77t
        0x56t
        0x55t
        0x52t
        0x46t
        0x5ft
        0x47t
        0x77t
        0x52t
        0x47t
        0x52t
        0x60t
        0x5ct
        0x46t
        0x41t
        0x50t
        0x56t
        0x6at
        0x5dt
        0x5dt
        0x40t
        0x5dt
        0xft
        0x46t
        0x41t
        0x5ct
        0x5bt
        0x4et
        0x41t
        0x5bt
        0x46t
        0x4et
        0x5bt
        0x46t
        0x41t
        0x48t
        0xft
        0x7dt
        0x7bt
        0x62t
        0x7ft
        0xft
        0x4at
        0x57t
        0x5bt
        0x4at
        0x41t
        0x5ct
        0x46t
        0x40t
        0x41t
        0x3t
        0xct
        0x6t
        0x10t
        0xdt
        0xbt
        0x6t
        0x4ct
        0x10t
        0x7t
        0x11t
        0xdt
        0x17t
        0x10t
        0x1t
        0x7t
        0x5t
        0x17t
        0x17t
        0x1t
        0x10t
        0x4et
        0x42t
        0x40t
        0x3t
        0x4bt
        0x4ct
        0x4et
        0x48t
        0x4ft
        0x42t
        0x42t
        0x46t
        0x3t
        0x4ct
        0x49t
        0x5et
        0x3t
        0x4at
        0x42t
        0x42t
        0x4at
        0x41t
        0x48t
        0x3t
        0x4ct
        0x43t
        0x49t
        0x5ft
        0x42t
        0x44t
        0x49t
        0x3t
        0x48t
        0x55t
        0x42t
        0x5dt
        0x41t
        0x4ct
        0x54t
        0x48t
        0x5ft
        0x1ft
        0x3t
        0x48t
        0x55t
        0x59t
        0x3t
        0x5ft
        0x59t
        0x40t
        0x5dt
        0x3t
        0x7ft
        0x59t
        0x40t
        0x5dt
        0x69t
        0x4ct
        0x59t
        0x4ct
        0x7et
        0x42t
        0x58t
        0x5ft
        0x4et
        0x48t
        0x3at
        0x36t
        0x37t
        0x2dt
        0x3ct
        0x37t
        0x2dt
        0x47t
        0x42t
        0x57t
        0x42t
        0x29t
        0x3at
        0x2ct
        0x29t
        0x3et
        0x28t
        0x34t
        0x2et
        0x29t
        0x38t
        0x3et
        0x7dt
        0x7bt
        0x62t
        0x7ft
        0x7et
        0x6ft
        0x7bt
    .end array-data
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/TE;)V
    .registers 4

    .line 28521
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A0A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 28522
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A0A:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ni;

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/TE;->A4T(Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 28523
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 28524
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/Ni;)V
    .registers 3

    .line 28525
    if-eqz p1, :cond_5

    .line 28526
    invoke-interface {p1, p2}, Lcom/facebook/ads/redexgen/X/TE;->A4T(Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 28527
    :cond_5
    return-void
.end method


# virtual methods
.method public final A4T(Lcom/facebook/ads/redexgen/X/Ni;)V
    .registers 3

    .line 28528
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A08:Lcom/facebook/ads/redexgen/X/TE;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/TE;->A4T(Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 28530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A0A:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28531
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A03:Lcom/facebook/ads/redexgen/X/TE;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/9I;->A0A(Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 28532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:Lcom/facebook/ads/redexgen/X/TE;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/9I;->A0A(Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 28533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A01:Lcom/facebook/ads/redexgen/X/TE;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/9I;->A0A(Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 28534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A05:Lcom/facebook/ads/redexgen/X/TE;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/9I;->A0A(Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 28535
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A06:Lcom/facebook/ads/redexgen/X/TE;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/9I;->A0A(Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 28536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A02:Lcom/facebook/ads/redexgen/X/TE;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/9I;->A0A(Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 28537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A04:Lcom/facebook/ads/redexgen/X/TE;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/9I;->A0A(Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 28538
    return-void
.end method

.method public final A9W()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 28539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TE;->A9W()Ljava/util/Map;

    move-result-object v0

    goto :goto_8
.end method

.method public final AA2()Landroid/net/Uri;
    .registers 2

    .line 28540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TE;->AA2()Landroid/net/Uri;

    move-result-object v0

    goto :goto_5
.end method

.method public final AHv(Lcom/facebook/ads/redexgen/X/NX;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    if-nez v0, :cond_137

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A08(Z)V

    .line 28542
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/NX;->A06:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 28543
    .local v0, "scheme":Ljava/lang/String;
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/NX;->A06:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A1A(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 28544
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/NX;->A06:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 28545
    .local v1, "uriPath":Ljava/lang/String;
    if-eqz v3, :cond_3a

    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9I;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 28546
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9I;->A00()Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    .line 28547
    :goto_33
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/TE;->AHv(Lcom/facebook/ads/redexgen/X/NX;)J

    move-result-wide v0

    return-wide v0

    .line 28548
    :cond_3a
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9I;->A03()Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/9I;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_13a

    sget-object v2, Lcom/facebook/ads/redexgen/X/9I;->A0C:[Ljava/lang/String;

    const-string v1, "otnWYl13HUOQLt7bSrhkAVrc"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "xWfSLVE718mAasLO3I3AjPIs"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    goto :goto_33

    .line 28549
    :cond_5c
    const/16 v2, 0x98

    const/4 v1, 0x5

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9I;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 28550
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9I;->A00()Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    goto :goto_33

    .line 28551
    :cond_72
    const/16 v2, 0xdf

    const/4 v1, 0x7

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9I;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 28552
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9I;->A01()Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    goto :goto_33

    .line 28553
    :cond_88
    const/16 v2, 0xf5

    const/4 v1, 0x4

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9I;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 28554
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9I;->A05()Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    goto :goto_33

    .line 28555
    :cond_9e
    const/16 v2, 0xf9

    const/4 v1, 0x3

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9I;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 28556
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9I;->A06()Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/9I;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_c3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_c3
    sget-object v2, Lcom/facebook/ads/redexgen/X/9I;->A0C:[Ljava/lang/String;

    const-string v1, "DFyk3wP3M4Io6PrDIp9QpmsbD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    goto/16 :goto_33

    .line 28557
    :cond_ce
    const/16 v2, 0xe6

    const/4 v1, 0x4

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9I;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 28558
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9I;->A02()Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    goto/16 :goto_33

    .line 28559
    :cond_e5
    const/16 v2, 0xea

    const/16 v1, 0xb

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9I;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_105

    const/16 v2, 0x88

    const/16 v1, 0x10

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9I;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 28560
    :cond_105
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9I;->A04()Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    goto/16 :goto_33

    .line 28561
    :cond_10d
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9I;->A08:Lcom/facebook/ads/redexgen/X/TE;

    sget-object v2, Lcom/facebook/ads/redexgen/X/9I;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_12c

    sget-object v2, Lcom/facebook/ads/redexgen/X/9I;->A0C:[Ljava/lang/String;

    const-string v1, "zFUlNW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    goto/16 :goto_33

    :cond_12c
    sget-object v2, Lcom/facebook/ads/redexgen/X/9I;->A0C:[Ljava/lang/String;

    const-string v1, "4B5nLzgVQjmjHPClZgF09TYaq2uT9Ypp"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    goto/16 :goto_33

    .line 28562
    :cond_137
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_13a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28563
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    if-eqz v0, :cond_11

    .line 28564
    const/4 v1, 0x0

    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TE;->close()V

    goto :goto_f
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_b

    .line 28565
    :catchall_b
    move-exception v0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    .line 28566
    throw v0

    .line 28567
    :goto_f
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    .line 28568
    :cond_11
    return-void
.end method

.method public final read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A07:Lcom/facebook/ads/redexgen/X/TE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/TE;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KR;->read([BII)I

    move-result v0

    return v0
.end method

###### Class com.facebook.ads.redexgen.X.C4J (com.facebook.ads.redexgen.X.4J)
.class public final Lcom/facebook/ads/redexgen/X/4J;
.super Lcom/facebook/ads/redexgen/X/9J;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/T4;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Landroid/content/res/AssetFileDescriptor;

.field public A02:Landroid/net/Uri;

.field public A03:Ljava/io/InputStream;

.field public A04:Z

.field public final A05:Landroid/content/res/Resources;

.field public final A06:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 161
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "IbVbF5JWi"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "e9nb57raekVa"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "T8AZMWLEGeKtRm9GnDMvywiXhVD12kTh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JOUHcuU3CHZG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LQ5sosQG1uSve7qblcQToCm0XxaBxHma"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mh25"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "x9K7bxImLfRCHr"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VpNhG2Rjt"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4J;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4J;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 10284
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9J;-><init>(Z)V

    .line 10285
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A05:Landroid/content/res/Resources;

    .line 10286
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A06:Ljava/lang/String;

    .line 10287
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/4J;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x26

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

    const/16 v0, 0xe5

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/4J;->A07:[B

    return-void

    :array_a
    .array-data 1
        -0x43t
        0x60t
        0x77t
        -0x60t
        -0x6at
        0x52t
        -0x5ft
        -0x68t
        0x52t
        -0x5bt
        -0x5at
        -0x5ct
        -0x69t
        -0x6dt
        -0x61t
        0x52t
        -0x5ct
        -0x69t
        -0x6dt
        -0x6bt
        -0x66t
        -0x69t
        -0x6at
        0x52t
        -0x66t
        -0x6dt
        -0x58t
        -0x65t
        -0x60t
        -0x67t
        0x52t
        -0x60t
        -0x5ft
        -0x5at
        0x52t
        -0x5ct
        -0x69t
        -0x6dt
        -0x6at
        0x52t
        -0x5bt
        -0x59t
        -0x68t
        -0x68t
        -0x65t
        -0x6bt
        -0x65t
        -0x69t
        -0x60t
        -0x5at
        0x52t
        -0x6at
        -0x6dt
        -0x5at
        -0x6dt
        0x60t
        -0x50t
        -0x3dt
        -0x2ft
        -0x33t
        -0x2dt
        -0x30t
        -0x3ft
        -0x3dt
        0x7et
        -0x39t
        -0x3et
        -0x3dt
        -0x34t
        -0x2et
        -0x39t
        -0x3ct
        -0x39t
        -0x3dt
        -0x30t
        0x7et
        -0x35t
        -0x2dt
        -0x2ft
        -0x2et
        0x7et
        -0x40t
        -0x3dt
        0x7et
        -0x41t
        -0x34t
        0x7et
        -0x39t
        -0x34t
        -0x2et
        -0x3dt
        -0x3bt
        -0x3dt
        -0x30t
        -0x74t
        -0x75t
        -0x62t
        -0x54t
        -0x58t
        -0x52t
        -0x55t
        -0x64t
        -0x62t
        0x59t
        -0x5et
        -0x54t
        0x59t
        -0x64t
        -0x58t
        -0x5at
        -0x57t
        -0x55t
        -0x62t
        -0x54t
        -0x54t
        -0x62t
        -0x63t
        0x73t
        0x59t
        -0x7dt
        -0x6at
        -0x5ct
        -0x60t
        -0x5at
        -0x5dt
        -0x6ct
        -0x6at
        0x51t
        -0x61t
        -0x60t
        -0x5bt
        0x51t
        -0x69t
        -0x60t
        -0x5at
        -0x61t
        -0x6bt
        0x5ft
        -0x4bt
        -0x4et
        -0x57t
        -0x80t
        -0x33t
        -0x2bt
        -0x2dt
        -0x2ct
        -0x80t
        -0x3bt
        -0x37t
        -0x2ct
        -0x38t
        -0x3bt
        -0x2et
        -0x80t
        -0x2bt
        -0x2dt
        -0x3bt
        -0x80t
        -0x2dt
        -0x3dt
        -0x38t
        -0x3bt
        -0x33t
        -0x3bt
        -0x80t
        -0x2et
        -0x3ft
        -0x29t
        -0x2et
        -0x3bt
        -0x2dt
        -0x31t
        -0x2bt
        -0x2et
        -0x3dt
        -0x3bt
        -0x80t
        -0x31t
        -0x2et
        -0x80t
        -0x3ft
        -0x32t
        -0x3ct
        -0x2et
        -0x31t
        -0x37t
        -0x3ct
        -0x72t
        -0x2et
        -0x3bt
        -0x2dt
        -0x31t
        -0x2bt
        -0x2et
        -0x3dt
        -0x3bt
        -0x43t
        -0x3bt
        -0x74t
        -0x5ct
        -0x4ft
        -0x59t
        -0x4bt
        -0x4et
        -0x54t
        -0x59t
        0x71t
        -0x4bt
        -0x58t
        -0x4at
        -0x4et
        -0x48t
        -0x4bt
        -0x5at
        -0x58t
        -0x14t
        -0x25t
        -0xft
        -0x3et
        -0x4ft
        -0x39t
        -0x3et
        -0x4bt
        -0x3dt
        -0x41t
        -0x3bt
        -0x3et
        -0x4dt
        -0x4bt
    .end array-data
.end method


# virtual methods
.method public final AA2()Landroid/net/Uri;
    .registers 2

    .line 10288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Landroid/net/Uri;

    return-object v0
.end method

.method public final AHv(Lcom/facebook/ads/redexgen/X/NX;)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/T4;
        }
    .end annotation

    .line 10289
    move-object v7, p0

    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/NX;->A06:Landroid/net/Uri;

    .line 10290
    .local v3, "uri":Landroid/net/Uri;
    iput-object v5, v7, Lcom/facebook/ads/redexgen/X/4J;->A02:Landroid/net/Uri;

    .line 10291
    const/16 v2, 0xda

    const/16 v1, 0xb

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v4, 0x7d5

    const/16 v6, 0x3ec

    const/4 v8, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_56

    .line 10292
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    const/16 v2, 0xc7

    const/16 v1, 0x10

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A00(III)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 10293
    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v8, :cond_65

    .line 10294
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/16 v2, 0xc4

    const/4 v1, 0x3

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 10295
    :cond_56
    :try_start_56
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 10296
    .restart local v9
    goto :goto_d5
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_56 .. :try_end_65} :catch_22b

    .line 10297
    :cond_65
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21b

    .line 10298
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4J;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_215

    .line 10299
    .local v0, "path":Ljava/lang/String;
    sget-object v2, Lcom/facebook/ads/redexgen/X/4J;->A08:[Ljava/lang/String;

    const-string v1, "dwQCPGDMwEnPPPl3vUFZ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 10300
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 10301
    :cond_9f
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 10302
    .local v5, "host":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d9

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A00(III)Ljava/lang/String;

    move-result-object v0

    :goto_b6
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 10303
    .local v8, "resourceName":Ljava/lang/String;
    iget-object v8, v7, Lcom/facebook/ads/redexgen/X/4J;->A05:Landroid/content/res/Resources;

    iget-object v6, v7, Lcom/facebook/ads/redexgen/X/4J;->A06:Ljava/lang/String;

    .line 10304
    const/16 v2, 0xd7

    const/4 v1, 0x3

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 10305
    .local v9, "resourceId":I
    if-eqz v1, :cond_205

    .line 10306
    :goto_d5
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A0G(Lcom/facebook/ads/redexgen/X/NX;)V

    goto :goto_f2

    .line 10307
    :cond_d9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b6

    .line 10308
    :goto_f2
    :try_start_f2
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4J;->A05:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v10
    :try_end_f8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f2 .. :try_end_f8} :catch_1fc

    .line 10309
    .local v4, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    iput-object v10, v7, Lcom/facebook/ads/redexgen/X/4J;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 10310
    if-eqz v10, :cond_1d9

    .line 10311
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 10312
    .local v10, "assetFileDescriptorLength":J
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 10313
    .local v8, "inputStream":Ljava/io/FileInputStream;
    iput-object v2, v7, Lcom/facebook/ads/redexgen/X/4J;->A03:Ljava/io/InputStream;

    .line 10314
    const/16 v9, 0x7d8

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_120

    :try_start_113
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/NX;->A04:J

    cmp-long v8, v0, v4

    if-gtz v8, :cond_11a

    goto :goto_120

    .line 10315
    :cond_11a
    new-instance v0, Lcom/facebook/ads/redexgen/X/T4;

    invoke-direct {v0, v3, v3, v9}, Lcom/facebook/ads/redexgen/X/T4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "resourceId":I
    .end local v10    # "assetFileDescriptorLength":J
    .end local p10
    throw v0
    :try_end_120
    .catch Lcom/facebook/ads/redexgen/X/T4; {:try_start_113 .. :try_end_120} :catch_14b
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_120} :catch_148

    .line 10316
    :cond_120
    :goto_120
    :try_start_120
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v8

    .line 10317
    .local p0, "assetFileDescriptorOffset":J
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/NX;->A04:J

    add-long/2addr v0, v8

    .line 10318
    invoke-virtual {v2, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v12

    sub-long/2addr v12, v8
    :try_end_12c
    .catch Lcom/facebook/ads/redexgen/X/T4; {:try_start_120 .. :try_end_12c} :catch_1d5
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_12c} :catch_1ca

    .line 10319
    .local v5, "skipped":J
    :try_start_12c
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/NX;->A04:J

    cmp-long v8, v12, v0

    if-nez v8, :cond_1be

    .line 10320
    const-wide/16 v10, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_169

    .line 10321
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    .line 10322
    .local p3, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    cmp-long v0, v1, v10

    if-nez v0, :cond_14e

    .line 10323
    move-object v8, p0
    :try_end_145
    .catch Lcom/facebook/ads/redexgen/X/T4; {:try_start_12c .. :try_end_145} :catch_1c8
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_145} :catch_1c6

    :try_start_145
    iput-wide v6, v8, Lcom/facebook/ads/redexgen/X/4J;->A00:J

    goto :goto_173
    :try_end_148
    .catch Lcom/facebook/ads/redexgen/X/T4; {:try_start_145 .. :try_end_148} :catch_14b
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_148} :catch_148

    .line 10324
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v9    # "resourceId":I
    .restart local v10    # "assetFileDescriptorLength":J
    .restart local p10
    :catch_148
    move-exception v2

    goto/16 :goto_1cd

    .line 10325
    :catch_14b
    move-exception v0

    goto/16 :goto_1d8

    .line 10326
    :cond_14e
    move-object v8, p0

    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .local p4, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :try_start_14f
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    sub-long/2addr v4, v0

    iput-wide v4, v8, Lcom/facebook/ads/redexgen/X/4J;->A00:J

    .line 10327
    iget-wide v1, v8, Lcom/facebook/ads/redexgen/X/4J;->A00:J

    cmp-long v0, v1, v10

    if-ltz v0, :cond_161

    goto :goto_173

    .line 10328
    :cond_161
    const/16 v1, 0x7d8

    new-instance v0, Lcom/facebook/ads/redexgen/X/T4;

    invoke-direct {v0, v3, v3, v1}, Lcom/facebook/ads/redexgen/X/T4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local v3    # "uri":Landroid/net/Uri;
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "resourceId":I
    .end local v10    # "assetFileDescriptorLength":J
    .end local p4
    .end local p10
    throw v0

    .line 10329
    .end local p3
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v9    # "resourceId":I
    .restart local v10    # "assetFileDescriptorLength":J
    .restart local p10
    :cond_169
    move-object v8, p0

    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local p4
    sub-long/2addr v4, v12

    iput-wide v4, v8, Lcom/facebook/ads/redexgen/X/4J;->A00:J

    .line 10330
    iget-wide v1, v8, Lcom/facebook/ads/redexgen/X/4J;->A00:J

    cmp-long v0, v1, v10

    if-ltz v0, :cond_1b6
    :try_end_173
    .catch Lcom/facebook/ads/redexgen/X/T4; {:try_start_14f .. :try_end_173} :catch_1d7
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_173} :catch_1cc

    .line 10331
    .end local v5    # "skipped":J
    .end local p0    # "assetFileDescriptorOffset":J
    :goto_173
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_185

    .line 10332
    iget-wide v1, v8, Lcom/facebook/ads/redexgen/X/4J;->A00:J

    cmp-long v0, v1, v3

    if-nez v0, :cond_1ad

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    :goto_183
    iput-wide v0, v8, Lcom/facebook/ads/redexgen/X/4J;->A00:J

    .line 10333
    :cond_185
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/facebook/ads/redexgen/X/4J;->A04:Z

    .line 10334
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A0H(Lcom/facebook/ads/redexgen/X/NX;)V

    .line 10335
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/4J;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_215

    sget-object v2, Lcom/facebook/ads/redexgen/X/4J;->A08:[Ljava/lang/String;

    const-string v1, "LhoEJlWFvHKtz9DNjh2WivGdFPEPIGq3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1aa

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    :goto_1a9
    return-wide v0

    :cond_1aa
    iget-wide v0, v8, Lcom/facebook/ads/redexgen/X/4J;->A00:J

    goto :goto_1a9

    .line 10336
    :cond_1ad
    iget-wide v2, v8, Lcom/facebook/ads/redexgen/X/4J;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_183

    .line 10337
    :cond_1b6
    :try_start_1b6
    const/16 v1, 0x7d8

    new-instance v0, Lcom/facebook/ads/redexgen/X/NQ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/NQ;-><init>(I)V

    .end local v3    # "uri":Landroid/net/Uri;
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "resourceId":I
    .end local v10    # "assetFileDescriptorLength":J
    .end local p4
    .end local p10
    throw v0

    .line 10338
    :cond_1be
    const/16 v1, 0x7d8

    new-instance v0, Lcom/facebook/ads/redexgen/X/T4;

    invoke-direct {v0, v3, v3, v1}, Lcom/facebook/ads/redexgen/X/T4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local v3
    .end local v8
    .end local v9
    .end local v10
    .end local p4
    .end local p10
    throw v0
    :try_end_1c6
    .catch Lcom/facebook/ads/redexgen/X/T4; {:try_start_1b6 .. :try_end_1c6} :catch_1d7
    .catch Ljava/io/IOException; {:try_start_1b6 .. :try_end_1c6} :catch_1cc

    .line 10339
    .end local p4
    .restart local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :catch_1c6
    move-exception v2

    goto :goto_1cd

    .line 10340
    :catch_1c8
    move-exception v0

    goto :goto_1d8

    .line 10341
    :catch_1ca
    move-exception v2

    goto :goto_1cd

    .end local v5
    .end local p0
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v9    # "resourceId":I
    .restart local v10    # "assetFileDescriptorLength":J
    .restart local p4
    .restart local p10
    :catch_1cc
    move-exception v2

    .line 10342
    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .local v0, "e":Ljava/io/IOException;
    .restart local p4
    :goto_1cd
    const/16 v1, 0x7d0

    new-instance v0, Lcom/facebook/ads/redexgen/X/T4;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/T4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 10343
    .end local v0    # "e":Ljava/io/IOException;
    .end local p4
    .restart local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :catch_1d5
    move-exception v0

    goto :goto_1d8

    :catch_1d7
    move-exception v0

    .line 10344
    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .local v0, "e":Lcom/facebook/ads/redexgen/X/T4;
    .restart local p4
    :goto_1d8
    throw v0

    .line 10345
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/T4;
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v10    # "assetFileDescriptorLength":J
    .end local p4
    .restart local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local p4
    :cond_1d9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5f

    const/16 v1, 0x18

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0x7d0

    new-instance v0, Lcom/facebook/ads/redexgen/X/T4;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/T4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 10346
    .end local p4
    :catch_1fc
    move-exception v2

    const/16 v1, 0x7d5

    .line 10347
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/T4;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/T4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 10348
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v5    # "skipped":J
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    :cond_205
    const/16 v2, 0x77

    const/16 v1, 0x13

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/T4;

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/T4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :cond_215
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10349
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v5    # "skipped":J
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "resourceId":I
    :cond_21b
    const/16 v2, 0x8a

    const/16 v1, 0x3a

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/T4;

    invoke-direct {v0, v1, v3, v6}, Lcom/facebook/ads/redexgen/X/T4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 10350
    .end local v0
    .end local v9
    .local v0, "e":Ljava/lang/NumberFormatException;
    :catch_22b
    const/16 v2, 0x38

    const/16 v1, 0x27

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/T4;

    invoke-direct {v0, v1, v3, v6}, Lcom/facebook/ads/redexgen/X/T4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public final close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/T4;
        }
    .end annotation

    .line 10351
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:Landroid/net/Uri;

    .line 10352
    const/16 v3, 0x7d0

    const/4 v2, 0x0

    :try_start_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A03:Ljava/io/InputStream;

    if-eqz v0, :cond_f

    .line 10353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A03:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_3a
    .catchall {:try_start_6 .. :try_end_f} :catchall_41

    .line 10354
    :cond_f
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A03:Ljava/io/InputStream;

    .line 10355
    :try_start_11
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1a

    .line 10356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_26
    .catchall {:try_start_11 .. :try_end_1a} :catchall_2d

    .line 10357
    :cond_1a
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 10358
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A04:Z

    if-eqz v0, :cond_25

    .line 10359
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A04:Z

    .line 10360
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9J;->A0E()V

    .line 10361
    :cond_25
    return-void

    .line 10362
    :catch_26
    move-exception v1

    .line 10363
    .local v3, "e":Ljava/io/IOException;
    :try_start_27
    new-instance v0, Lcom/facebook/ads/redexgen/X/T4;

    invoke-direct {v0, v4, v1, v3}, Lcom/facebook/ads/redexgen/X/T4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2d

    .line 10364
    :catchall_2d
    move-exception v1

    .end local v3    # "e":Ljava/io/IOException;
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 10365
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A04:Z

    if-eqz v0, :cond_39

    .line 10366
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A04:Z

    .line 10367
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9J;->A0E()V

    .line 10368
    :cond_39
    throw v1

    .line 10369
    :catch_3a
    move-exception v1

    .line 10370
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_3b
    new-instance v0, Lcom/facebook/ads/redexgen/X/T4;

    invoke-direct {v0, v4, v1, v3}, Lcom/facebook/ads/redexgen/X/T4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_41

    .line 10371
    :catchall_41
    move-exception v1

    .end local v3    # "e":Ljava/io/IOException;
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A03:Ljava/io/InputStream;

    .line 10372
    :try_start_44
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_4d

    .line 10373
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4d} :catch_59
    .catchall {:try_start_44 .. :try_end_4d} :catchall_60

    .line 10374
    :cond_4d
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 10375
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A04:Z

    if-eqz v0, :cond_58

    .line 10376
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A04:Z

    .line 10377
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9J;->A0E()V

    .line 10378
    :cond_58
    throw v1

    .line 10379
    :catch_59
    move-exception v1

    .line 10380
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_5a
    new-instance v0, Lcom/facebook/ads/redexgen/X/T4;

    invoke-direct {v0, v4, v1, v3}, Lcom/facebook/ads/redexgen/X/T4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_60

    .line 10381
    :catchall_60
    move-exception v3

    .end local v3    # "e":Ljava/io/IOException;
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 10382
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A04:Z

    if-eqz v0, :cond_8b

    .line 10383
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A04:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/4J;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_81

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10384
    :cond_81
    sget-object v2, Lcom/facebook/ads/redexgen/X/4J;->A08:[Ljava/lang/String;

    const-string v1, "m1s9kylqWyKF"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9J;->A0E()V

    .line 10385
    :cond_8b
    throw v3
.end method

.method public final read([BII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/T4;
        }
    .end annotation

    .line 10386
    if-nez p3, :cond_4

    .line 10387
    const/4 v0, 0x0

    return v0

    .line 10388
    :cond_4
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:J

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    cmp-long v2, v0, v3

    if-nez v2, :cond_e

    .line 10389
    return v5

    .line 10390
    :cond_e
    const/16 v4, 0x7d0

    :try_start_10
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:J

    const-wide/16 v7, -0x1

    cmp-long v2, v0, v7

    if-nez v2, :cond_27

    .line 10391
    .local v1, "bytesToRead":I
    :goto_18
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A03:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 10392
    .local v1, "bytesRead":I
    if-ne v6, v5, :cond_4b

    goto :goto_30

    .line 10393
    :cond_27
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:J

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    goto :goto_18
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_30} :catch_5b

    .line 10394
    :goto_30
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:J

    cmp-long v0, v1, v7

    if-nez v0, :cond_37

    .line 10395
    return v5

    .line 10396
    :cond_37
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    const/4 v2, 0x2

    const/16 v1, 0x36

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/T4;

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/T4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 10397
    :cond_4b
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:J

    cmp-long v0, v1, v7

    if-eqz v0, :cond_57

    .line 10398
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:J

    int-to-long v0, v6

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:J

    .line 10399
    :cond_57
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/9J;->A0F(I)V

    .line 10400
    return v6

    .line 10401
    .end local v1    # "bytesRead":I
    :catch_5b
    move-exception v2

    .line 10402
    .local v1, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/T4;

    invoke-direct {v0, v1, v2, v4}, Lcom/facebook/ads/redexgen/X/T4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

###### Class com.facebook.ads.redexgen.X.C4M (com.facebook.ads.redexgen.X.4M)
.class public final Lcom/facebook/ads/redexgen/X/4M;
.super Lcom/facebook/ads/redexgen/X/9J;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/NX;

.field public A03:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 165
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BQHtwcCLeeRVBd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Lc9loNnCO4alo9FI50GCGwDfdK8w3UU6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Sv6ngZFOBWfOQU8ebNiquQnyGNKos5r"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "I7Hii1liDkijw0PBC7ibWmM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FmtKngjUkYFlQXeXhW5W8dDSyESAYkys"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "d0pik2i20nQSmuN2sSQUBKayMAsjM6v"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fFWnuRdYuuszvLk6h8AhLBeRBdctGHjD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4M;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4M;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 10727
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9J;-><init>(Z)V

    .line 10728
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/4M;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x53

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

    const/16 v0, 0x62

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/4M;->A04:[B

    return-void

    :array_a
    .array-data 1
        -0x41t
        -0x1ft
        0x8t
        0x7t
        0x19t
        0xbt
        -0x24t
        -0x26t
        0x4t
        0x31t
        0x31t
        0x2et
        0x31t
        -0x21t
        0x36t
        0x27t
        0x28t
        0x2bt
        0x24t
        -0x21t
        0x2ft
        0x20t
        0x31t
        0x32t
        0x28t
        0x2dt
        0x26t
        -0x21t
        0x1t
        0x20t
        0x32t
        0x24t
        -0xbt
        -0xdt
        -0x21t
        0x24t
        0x2dt
        0x22t
        0x2et
        0x23t
        0x24t
        0x23t
        -0x21t
        0x32t
        0x33t
        0x31t
        0x28t
        0x2dt
        0x26t
        -0x7t
        -0x21t
        -0x2ct
        -0x13t
        -0x1ct
        -0x9t
        -0x11t
        -0x1ct
        -0x1et
        -0xdt
        -0x1ct
        -0x1dt
        -0x61t
        -0x2ct
        -0x2ft
        -0x38t
        -0x61t
        -0x1bt
        -0x12t
        -0xft
        -0x14t
        -0x20t
        -0xdt
        -0x47t
        -0x61t
        0x8t
        0x21t
        0x26t
        0x28t
        0x23t
        0x23t
        0x22t
        0x25t
        0x27t
        0x18t
        0x17t
        -0x2dt
        0x26t
        0x16t
        0x1bt
        0x18t
        0x20t
        0x18t
        -0x13t
        -0x2dt
        -0x4t
        -0x7t
        0xct
        -0x7t
    .end array-data
.end method


# virtual methods
.method public final AA2()Landroid/net/Uri;
    .registers 5

    .line 10729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A02:Lcom/facebook/ads/redexgen/X/NX;

    if-eqz v0, :cond_24

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4M;->A02:Lcom/facebook/ads/redexgen/X/NX;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4M;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_26

    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A05:[Ljava/lang/String;

    const-string v1, "hJcenO465dZZkNArn5bHVKyGY0WTaxW"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "LVT73VK6WdcQVpPVmkt27t8F2Z7XIwO"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/NX;->A06:Landroid/net/Uri;

    :goto_23
    return-object v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23

    :cond_26
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AHv(Lcom/facebook/ads/redexgen/X/NX;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10730
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A0G(Lcom/facebook/ads/redexgen/X/NX;)V

    .line 10731
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4M;->A02:Lcom/facebook/ads/redexgen/X/NX;

    .line 10732
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/NX;->A06:Landroid/net/Uri;

    .line 10733
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 10734
    .local v1, "scheme":Ljava/lang/String;
    const/16 v2, 0x5e

    const/4 v1, 0x4

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4a

    const/16 v1, 0x14

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Ln;->A09(ZLjava/lang/Object;)V

    .line 10735
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/N1;->A1O(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 10736
    .local v2, "uriParts":[Ljava/lang/String;
    array-length v1, v2

    const/4 v0, 0x2

    const/4 v5, 0x0

    if-ne v1, v0, :cond_fb

    .line 10737
    const/4 v0, 0x1

    aget-object v6, v2, v0

    .line 10738
    .local v3, "dataString":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v3, v2, v4

    const/4 v2, 0x1

    const/4 v1, 0x7

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 10739
    :try_start_5f
    invoke-static {v6, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:[B

    goto :goto_97
    :try_end_66
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5f .. :try_end_66} :catch_66

    .line 10740
    :catch_66
    move-exception v4

    .line 10741
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8

    const/16 v1, 0x2b

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/L9;->A02(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/L9;

    move-result-object v0

    throw v0

    .line 10742
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_87
    sget-object v0, Lcom/facebook/ads/redexgen/X/XA;->A01:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A1G(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:[B

    .line 10743
    :goto_97
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/NX;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:[B

    array-length v0, v0

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_f1

    .line 10744
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/NX;->A04:J

    long-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A01:I

    .line 10745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:[B

    array-length v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A01:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/4M;->A00:I

    .line 10746
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    const-wide/16 v4, -0x1

    cmp-long v0, v1, v4

    if-eqz v0, :cond_c2

    .line 10747
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A00:I

    int-to-long v2, v0

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A00:I

    .line 10748
    :cond_c2
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A0H(Lcom/facebook/ads/redexgen/X/NX;)V

    .line 10749
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    cmp-long v0, v1, v4

    if-eqz v0, :cond_ce

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    :goto_cd
    return-wide v0

    :cond_ce
    iget v3, p0, Lcom/facebook/ads/redexgen/X/4M;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/4M;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_eb

    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A05:[Ljava/lang/String;

    const-string v1, "86jhUIAHnYQlsXvk3EiClY9l9h7Uaoq8"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "TKuub57AxrglW5rrcu2d5fJIFZ5Gh9Kw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    int-to-long v0, v3

    goto :goto_cd

    :cond_eb
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10750
    :cond_f1
    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:[B

    .line 10751
    const/16 v1, 0x7d8

    new-instance v0, Lcom/facebook/ads/redexgen/X/NQ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/NQ;-><init>(I)V

    throw v0

    .line 10752
    .end local v3    # "dataString":Ljava/lang/String;
    :cond_fb
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x33

    const/16 v1, 0x17

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/L9;->A02(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/L9;

    move-result-object v0

    throw v0
.end method

.method public final close()V
    .registers 5

    .line 10753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:[B

    const/4 v3, 0x0

    if-eqz v0, :cond_23

    .line 10754
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/4M;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_45

    .line 10755
    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A05:[Ljava/lang/String;

    const-string v1, "3XBU26XwaCKC02YSKhUmIl9UtWHPirj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "hDxDV8K3FDbLTF4fYtKKQCpp3hi7oXw"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9J;->A0E()V

    .line 10756
    :cond_23
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4M;->A02:Lcom/facebook/ads/redexgen/X/NX;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4M;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_3f

    .line 10757
    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A05:[Ljava/lang/String;

    const-string v1, "eSOB9m8mFypWeq5nKDrSkAbj2mlVPN2"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "gL3vpNNuLDSggEd0nYEJjHTxA4n6887"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    :cond_3f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_45
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final read([BII)I
    .registers 9

    .line 10758
    if-nez p3, :cond_4

    .line 10759
    const/4 v0, 0x0

    return v0

    .line 10760
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A00:I

    if-nez v0, :cond_a

    .line 10761
    const/4 v0, -0x1

    return v0

    .line 10762
    :cond_a
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A00:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 10763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A03:[B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A01:I

    invoke-static {v1, v0, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10764
    iget v3, p0, Lcom/facebook/ads/redexgen/X/4M;->A01:I

    add-int/2addr v3, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/4M;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_42

    sget-object v2, Lcom/facebook/ads/redexgen/X/4M;->A05:[Ljava/lang/String;

    const-string v1, "nT19EfdmkwiryaBp6SneoA1CnVSvuwY"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "KXEqjMpTAxAt95MsjfnOtQNTuXghxu5"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/4M;->A01:I

    .line 10765
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A00:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A00:I

    .line 10766
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/9J;->A0F(I)V

    .line 10767
    return v4

    :cond_42
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

###### Class com.facebook.ads.redexgen.X.C4N (com.facebook.ads.redexgen.X.4N)
.class public final Lcom/facebook/ads/redexgen/X/4N;
.super Lcom/facebook/ads/redexgen/X/9J;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/TF;
    }
.end annotation


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Landroid/content/res/AssetFileDescriptor;

.field public A02:Landroid/net/Uri;

.field public A03:Ljava/io/FileInputStream;

.field public A04:Z

.field public final A05:Landroid/content/ContentResolver;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 166
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bowdcjQmccgBFbzkOf4gio"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "r9jJZmLRaZFVSu1jX3zsztxBNqXGVRCZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BGTPkCzcQBDC0dkQPeF0eVtQZJXhz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VSz6WkkSf7ZEBwYwp4fp1mWK88LTxoGk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "P6usDYEanJfSH1EVqh03t70nwE31pGuI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BoGfU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tnhIi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ULEqDxKlhERdhYsCJ0YzlA0S5jPe3tiU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4N;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4N;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 10768
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9J;-><init>(Z)V

    .line 10769
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A05:Landroid/content/ContentResolver;

    .line 10770
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/4N;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3d

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

    const/16 v0, 0x62

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/4N;->A06:[B

    return-void

    :array_a
    .array-data 1
        0x6et
        0x6bt
        0x6et
        0x70t
        0x5ct
        0x46t
        0x5ft
        0x57t
        0x13t
        0x5dt
        0x5ct
        0x47t
        0x13t
        0x5ct
        0x43t
        0x56t
        0x5dt
        0x13t
        0x55t
        0x5at
        0x5ft
        0x56t
        0x13t
        0x57t
        0x56t
        0x40t
        0x50t
        0x41t
        0x5at
        0x43t
        0x47t
        0x5ct
        0x41t
        0x13t
        0x55t
        0x5ct
        0x41t
        0x9t
        0x13t
        0x74t
        0x7bt
        0x71t
        0x67t
        0x7at
        0x7ct
        0x71t
        0x3bt
        0x65t
        0x67t
        0x7at
        0x63t
        0x7ct
        0x71t
        0x70t
        0x67t
        0x3bt
        0x70t
        0x6dt
        0x61t
        0x67t
        0x74t
        0x3bt
        0x54t
        0x56t
        0x56t
        0x50t
        0x45t
        0x41t
        0x4at
        0x5at
        0x47t
        0x5ct
        0x52t
        0x5ct
        0x5bt
        0x54t
        0x59t
        0x4at
        0x58t
        0x50t
        0x51t
        0x5ct
        0x54t
        0x4at
        0x53t
        0x5at
        0x47t
        0x58t
        0x54t
        0x41t
        0x21t
        0x2dt
        0x2ct
        0x36t
        0x27t
        0x2ct
        0x36t
        0x73t
    .end array-data
.end method


# virtual methods
.method public final AA2()Landroid/net/Uri;
    .registers 2

    .line 10771
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A02:Landroid/net/Uri;

    return-object v0
.end method

.method public final AHv(Lcom/facebook/ads/redexgen/X/NX;)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/TF;
        }
    .end annotation

    .line 10772
    move-object v6, p0

    :try_start_1
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/NX;->A06:Landroid/net/Uri;

    .line 10773
    .local v0, "uri":Landroid/net/Uri;
    iput-object v4, v6, Lcom/facebook/ads/redexgen/X/4N;->A02:Landroid/net/Uri;

    .line 10774
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A0G(Lcom/facebook/ads/redexgen/X/NX;)V

    .line 10775
    const/16 v2, 0x5a

    const/4 v1, 0x7

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4N;->A00(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/NX;->A06:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_41

    .line 10776
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 10777
    .local v4, "providerOptions":Landroid/os/Bundle;
    const/16 v2, 0x27

    const/16 v1, 0x33

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4N;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10778
    iget-object v3, v6, Lcom/facebook/ads/redexgen/X/4N;->A05:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4N;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 10779
    invoke-virtual {v3, v4, v0, v5}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v12

    .line 10780
    .local v4, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :goto_3e
    iput-object v12, v6, Lcom/facebook/ads/redexgen/X/4N;->A01:Landroid/content/res/AssetFileDescriptor;

    goto :goto_51

    .line 10781
    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :cond_41
    iget-object v3, v6, Lcom/facebook/ads/redexgen/X/4N;->A05:Landroid/content/ContentResolver;

    const/16 v2, 0x61

    const/4 v1, 0x1

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4N;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v12

    goto :goto_3e

    .line 10782
    :goto_51
    if-eqz v12, :cond_153

    .line 10783
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 10784
    .local v6, "assetFileDescriptorLength":J
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 10785
    .local v8, "inputStream":Ljava/io/FileInputStream;
    iput-object v8, v6, Lcom/facebook/ads/redexgen/X/4N;->A03:Ljava/io/FileInputStream;

    .line 10786
    const/16 v11, 0x7d8

    const/4 v10, 0x0

    const-wide/16 v2, -0x1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_71

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/NX;->A04:J

    cmp-long v9, v0, v4

    if-gtz v9, :cond_14d

    .line 10787
    .restart local p10
    :cond_71
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v9

    .line 10788
    .local p0, "assetFileDescriptorOffset":J
    .end local v4
    .local p3, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/NX;->A04:J

    add-long/2addr v0, v9

    .line 10789
    invoke-virtual {v8, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 10790
    .local v3, "skipped":J
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/NX;->A04:J

    cmp-long v9, v11, v0

    if-nez v9, :cond_144

    .line 10791
    const-wide/16 v9, 0x0

    cmp-long v0, v4, v2

    if-nez v0, :cond_af

    .line 10792
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 10793
    .local p4, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    .line 10794
    .local p5, "channelSize":J
    cmp-long v4, v0, v9

    if-nez v4, :cond_98

    .line 10795
    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/4N;->A00:J

    goto :goto_b8

    .line 10796
    :cond_98
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/4N;->A00:J

    .line 10797
    iget-wide v1, v6, Lcom/facebook/ads/redexgen/X/4N;->A00:J

    cmp-long v0, v1, v9

    if-ltz v0, :cond_a6

    goto :goto_b8

    .line 10798
    :cond_a6
    const/16 v2, 0x7d8

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/TF;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/TF;-><init>(Ljava/io/IOException;I)V

    .end local p10
    throw v0

    .line 10799
    .end local p4
    .end local p5
    .restart local p10
    :cond_af
    sub-long/2addr v4, v11

    iput-wide v4, v6, Lcom/facebook/ads/redexgen/X/4N;->A00:J

    .line 10800
    iget-wide v1, v6, Lcom/facebook/ads/redexgen/X/4N;->A00:J

    cmp-long v0, v1, v9

    if-ltz v0, :cond_13b
    :try_end_b8
    .catch Lcom/facebook/ads/redexgen/X/TF; {:try_start_1 .. :try_end_b8} :catch_18c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b8} :catch_17c

    .line 10801
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v3    # "skipped":J
    .end local v6    # "assetFileDescriptorLength":J
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local p0    # "assetFileDescriptorOffset":J
    .end local p3
    :goto_b8
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_ca

    .line 10802
    iget-wide v1, v6, Lcom/facebook/ads/redexgen/X/4N;->A00:J

    cmp-long v0, v1, v3

    if-nez v0, :cond_fc

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    :goto_c8
    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/4N;->A00:J

    .line 10803
    :cond_ca
    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/4N;->A04:Z

    .line 10804
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A0H(Lcom/facebook/ads/redexgen/X/NX;)V

    .line 10805
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/4N;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_135

    sget-object v2, Lcom/facebook/ads/redexgen/X/4N;->A07:[Ljava/lang/String;

    const-string v1, "JgLqlhwF3yN75iqLJZABgy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "iQNQKxIhkHIRP8VKTPKBXdDVcf3xk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_f9

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    :goto_f8
    return-wide v0

    :cond_f9
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/4N;->A00:J

    goto :goto_f8

    .line 10806
    :cond_fc
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/4N;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    sget-object v8, Lcom/facebook/ads/redexgen/X/4N;->A07:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v5, v8, v4

    const/4 v4, 0x4

    aget-object v8, v8, v4

    const/4 v4, 0x4

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v5, v4, :cond_124

    sget-object v8, Lcom/facebook/ads/redexgen/X/4N;->A07:[Ljava/lang/String;

    const-string v5, "LcBqqL7TbXRUKyH6CBeTvb"

    const/4 v4, 0x0

    aput-object v5, v8, v4

    const-string v5, "4TGmk9eA76kXOGZ4H9zjlm0C8Vrbm"

    const/4 v4, 0x2

    aput-object v5, v8, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_c8

    :cond_124
    sget-object v8, Lcom/facebook/ads/redexgen/X/4N;->A07:[Ljava/lang/String;

    const-string v5, "cYtBDfAgMwyvftDeAVPseWrsig9rwS74"

    const/4 v4, 0x7

    aput-object v5, v8, v4

    const-string v5, "Ori0DUAINXD6zku1nkUVeZV8bHBYitYP"

    const/4 v4, 0x4

    aput-object v5, v8, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_c8

    :cond_135
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10807
    :cond_13b
    :try_start_13b
    const/16 v2, 0x7d8

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/TF;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/TF;-><init>(Ljava/io/IOException;I)V

    .end local p10
    throw v0

    .line 10808
    :cond_144
    const/16 v2, 0x7d8

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/TF;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/TF;-><init>(Ljava/io/IOException;I)V

    .end local p10
    throw v0

    .line 10809
    :cond_14d
    new-instance v0, Lcom/facebook/ads/redexgen/X/TF;

    invoke-direct {v0, v10, v11}, Lcom/facebook/ads/redexgen/X/TF;-><init>(Ljava/io/IOException;I)V

    .end local p10
    throw v0

    .line 10810
    :cond_153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    const/16 v1, 0x24

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4N;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7d0
    :try_end_174
    .catch Lcom/facebook/ads/redexgen/X/TF; {:try_start_13b .. :try_end_174} :catch_18c
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_174} :catch_17c

    :try_start_174
    new-instance v0, Lcom/facebook/ads/redexgen/X/TF;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/TF;-><init>(Ljava/io/IOException;I)V

    .end local p10
    throw v0
    :try_end_17a
    .catch Lcom/facebook/ads/redexgen/X/TF; {:try_start_174 .. :try_end_17a} :catch_18c
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_17a} :catch_17a

    .line 10811
    .end local v0
    .end local p3
    .restart local p10
    :catch_17a
    move-exception v2

    goto :goto_17d

    :catch_17c
    move-exception v2

    .line 10812
    .local v0, "e":Ljava/io/IOException;
    :goto_17d
    instance-of v0, v2, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_189

    .line 10813
    const/16 v1, 0x7d5

    .line 10814
    :goto_183
    new-instance v0, Lcom/facebook/ads/redexgen/X/TF;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/TF;-><init>(Ljava/io/IOException;I)V

    throw v0

    :cond_189
    const/16 v1, 0x7d0

    goto :goto_183

    .line 10815
    .end local v0    # "e":Ljava/io/IOException;
    :catch_18c
    move-exception v0

    .line 10816
    .local v0, "e":Lcom/facebook/ads/redexgen/X/TF;
    throw v0
.end method

.method public final close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/TF;
        }
    .end annotation

    .line 10817
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/4N;->A02:Landroid/net/Uri;

    .line 10818
    const/16 v2, 0x7d0

    const/4 v3, 0x0

    :try_start_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A03:Ljava/io/FileInputStream;

    if-eqz v0, :cond_f

    .line 10819
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A03:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_3a
    .catchall {:try_start_6 .. :try_end_f} :catchall_41

    .line 10820
    :cond_f
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/4N;->A03:Ljava/io/FileInputStream;

    .line 10821
    :try_start_11
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A01:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1a

    .line 10822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_26
    .catchall {:try_start_11 .. :try_end_1a} :catchall_2d

    .line 10823
    :cond_1a
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/4N;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 10824
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A04:Z

    if-eqz v0, :cond_25

    .line 10825
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/4N;->A04:Z

    .line 10826
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9J;->A0E()V

    .line 10827
    :cond_25
    return-void

    .line 10828
    :catch_26
    move-exception v1

    .line 10829
    .local v3, "e":Ljava/io/IOException;
    :try_start_27
    new-instance v0, Lcom/facebook/ads/redexgen/X/TF;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/TF;-><init>(Ljava/io/IOException;I)V

    throw v0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2d

    .line 10830
    :catchall_2d
    move-exception v1

    .end local v3    # "e":Ljava/io/IOException;
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/4N;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 10831
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A04:Z

    if-eqz v0, :cond_39

    .line 10832
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/4N;->A04:Z

    .line 10833
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9J;->A0E()V

    .line 10834
    :cond_39
    throw v1

    .line 10835
    :catch_3a
    move-exception v1

    .line 10836
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_3b
    new-instance v0, Lcom/facebook/ads/redexgen/X/TF;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/TF;-><init>(Ljava/io/IOException;I)V

    throw v0
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_41

    .line 10837
    :catchall_41
    move-exception v1

    .end local v3    # "e":Ljava/io/IOException;
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/4N;->A03:Ljava/io/FileInputStream;

    .line 10838
    :try_start_44
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A01:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_4d

    .line 10839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4d} :catch_59
    .catchall {:try_start_44 .. :try_end_4d} :catchall_60

    .line 10840
    :cond_4d
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/4N;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 10841
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A04:Z

    if-eqz v0, :cond_58

    .line 10842
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/4N;->A04:Z

    .line 10843
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9J;->A0E()V

    .line 10844
    :cond_58
    throw v1

    .line 10845
    :catch_59
    move-exception v1

    .line 10846
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_5a
    new-instance v0, Lcom/facebook/ads/redexgen/X/TF;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/TF;-><init>(Ljava/io/IOException;I)V

    throw v0
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_60

    .line 10847
    :catchall_60
    move-exception v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/4N;->A07:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .end local v3    # "e":Ljava/io/IOException;
    :cond_7a
    sget-object v2, Lcom/facebook/ads/redexgen/X/4N;->A07:[Ljava/lang/String;

    const-string v1, "qMMLrLuMLkmGyBEBYphxX3"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "k8PToccynt0739Zxp37f8GTnFGSjf"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/4N;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 10848
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A04:Z

    if-eqz v0, :cond_91

    .line 10849
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/4N;->A04:Z

    .line 10850
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9J;->A0E()V

    .line 10851
    :cond_91
    throw v5
.end method

.method public final read([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/TF;
        }
    .end annotation

    .line 10852
    if-nez p3, :cond_4

    .line 10853
    const/4 v0, 0x0

    return v0

    .line 10854
    :cond_4
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A00:J

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    cmp-long v2, v0, v3

    if-nez v2, :cond_e

    .line 10855
    return v5

    .line 10856
    :cond_e
    :try_start_e
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A00:J

    const-wide/16 v6, -0x1

    cmp-long v2, v0, v6

    if-nez v2, :cond_25

    .line 10857
    .local v0, "bytesToRead":I
    :goto_16
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A03:Ljava/io/FileInputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 10858
    .local v0, "bytesRead":I
    if-ne v4, v5, :cond_2f

    goto :goto_2e

    .line 10859
    :cond_25
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A00:J

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    goto :goto_16

    .line 10860
    :goto_2e
    return v5
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2f} :catch_3f

    .line 10861
    :cond_2f
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/4N;->A00:J

    cmp-long v0, v1, v6

    if-eqz v0, :cond_3b

    .line 10862
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/4N;->A00:J

    int-to-long v0, v4

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/4N;->A00:J

    .line 10863
    :cond_3b
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/9J;->A0F(I)V

    .line 10864
    return v4

    .line 10865
    .end local v0    # "bytesRead":I
    :catch_3f
    move-exception v2

    .line 10866
    .local v0, "e":Ljava/io/IOException;
    const/16 v1, 0x7d0

    new-instance v0, Lcom/facebook/ads/redexgen/X/TF;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/TF;-><init>(Ljava/io/IOException;I)V

    throw v0
.end method

###### Class com.facebook.ads.redexgen.X.C4O (com.facebook.ads.redexgen.X.4O)
.class public final Lcom/facebook/ads/redexgen/X/4O;
.super Lcom/facebook/ads/redexgen/X/9J;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/TP;
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Landroid/net/Uri;

.field public A02:Ljava/io/InputStream;

.field public A03:Z

.field public final A04:Landroid/content/res/AssetManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 167
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "MNCe724XVXYIorkFgz7o2RNgKHKWGOUE"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "KoqBVr7Jv5wqKKaI5uNyKCjPF5fTSx04"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "39znLvM47tXzTjX8uj1zEjh82EgWoj93"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zIfWJ4lI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bvd6kHZFx5xTKisP5GA6TgtoV1qWEFVT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BQ8YEZ315WOoQrB3BHr0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HIyAg6cci8PPHE72WVhQr"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JYF7Q5XuQ6oJay6rRtXA617Q4Mg5SZ7P"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4O;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4O;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 10867
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9J;-><init>(Z)V

    .line 10868
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A04:Landroid/content/res/AssetManager;

    .line 10869
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/4O;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x20

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

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/4O;->A05:[B

    return-void

    :array_a
    .array-data 1
        -0x4ct
        0x77t
        -0x57t
        -0x4at
        -0x54t
        -0x46t
        -0x49t
        -0x4ft
        -0x54t
        -0x59t
        -0x57t
        -0x45t
        -0x45t
        -0x53t
        -0x44t
        0x77t
    .end array-data
.end method


# virtual methods
.method public final AA2()Landroid/net/Uri;
    .registers 2

    .line 10870
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A01:Landroid/net/Uri;

    return-object v0
.end method

.method public final AHv(Lcom/facebook/ads/redexgen/X/NX;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/TP;
        }
    .end annotation

    .line 10871
    :try_start_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/NX;->A06:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A01:Landroid/net/Uri;

    .line 10872
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A01:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10873
    .local v0, "path":Ljava/lang/String;
    const/4 v2, 0x1

    const/16 v1, 0xf

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4O;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_42

    .line 10874
    const/16 v0, 0xf

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 10875
    :cond_26
    :goto_26
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A0G(Lcom/facebook/ads/redexgen/X/NX;)V

    .line 10876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A04:Landroid/content/res/AssetManager;

    invoke-virtual {v0, v3, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A02:Ljava/io/InputStream;

    .line 10877
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4O;->A02:Ljava/io/InputStream;

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/NX;->A04:J

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    .line 10878
    .local v3, "skipped":J
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/NX;->A04:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_af

    .line 10879
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    goto :goto_55

    .line 10880
    :cond_42
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4O;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 10881
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_26
    :try_end_55
    .catch Lcom/facebook/ads/redexgen/X/TP; {:try_start_0 .. :try_end_55} :catch_c8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_55} :catch_b8

    .line 10882
    :goto_55
    const-wide/16 v1, -0x1

    sget-object v5, Lcom/facebook/ads/redexgen/X/4O;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v5, v5, v0

    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v0, 0x51

    if-eq v5, v0, :cond_6c

    .line 10883
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10884
    :cond_6c
    sget-object v6, Lcom/facebook/ads/redexgen/X/4O;->A06:[Ljava/lang/String;

    const-string v5, "NGb6erXLGjUofl5sDSaG"

    const/4 v0, 0x5

    aput-object v5, v6, v0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_7c

    .line 10885
    :try_start_77
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/NX;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A00:J

    goto :goto_90

    .line 10886
    :cond_7c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A02:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/4O;->A00:J

    .line 10887
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/4O;->A00:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-nez v0, :cond_90

    .line 10888
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/4O;->A00:J
    :try_end_90
    .catch Lcom/facebook/ads/redexgen/X/TP; {:try_start_77 .. :try_end_90} :catch_c8
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_90} :catch_b8

    .line 10889
    .end local v0    # "path":Ljava/lang/String;
    .end local v3    # "skipped":J
    :cond_90
    :goto_90
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/4O;->A03:Z

    .line 10890
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A0H(Lcom/facebook/ads/redexgen/X/NX;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/4O;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_a5

    .line 10891
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A00:J

    return-wide v0

    :cond_a5
    sget-object v2, Lcom/facebook/ads/redexgen/X/4O;->A06:[Ljava/lang/String;

    const-string v1, "3uLbmiFpLLZjkxa8H8HufVIKKBfusAWo"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A00:J

    return-wide v0

    .line 10892
    :cond_af
    :try_start_af
    const/4 v2, 0x0

    const/16 v1, 0x7d8

    new-instance v0, Lcom/facebook/ads/redexgen/X/TP;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/TP;-><init>(Ljava/lang/Throwable;I)V

    .end local p4
    throw v0
    :try_end_b8
    .catch Lcom/facebook/ads/redexgen/X/TP; {:try_start_af .. :try_end_b8} :catch_c8
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b8} :catch_b8

    .line 10893
    .end local v0
    .end local v3
    .restart local p4
    :catch_b8
    move-exception v2

    .line 10894
    .local v0, "e":Ljava/io/IOException;
    instance-of v0, v2, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_c5

    .line 10895
    const/16 v1, 0x7d5

    .line 10896
    :goto_bf
    new-instance v0, Lcom/facebook/ads/redexgen/X/TP;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/TP;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :cond_c5
    const/16 v1, 0x7d0

    goto :goto_bf

    .line 10897
    .end local v0    # "e":Ljava/io/IOException;
    :catch_c8
    move-exception v0

    .line 10898
    .local v0, "e":Lcom/facebook/ads/redexgen/X/TP;
    throw v0
.end method

.method public final close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/TP;
        }
    .end annotation

    .line 10899
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/4O;->A01:Landroid/net/Uri;

    .line 10900
    const/4 v3, 0x0

    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A02:Ljava/io/InputStream;

    if-eqz v0, :cond_d

    .line 10901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A02:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_3a
    .catchall {:try_start_4 .. :try_end_d} :catchall_43

    .line 10902
    :cond_d
    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/4O;->A02:Ljava/io/InputStream;

    .line 10903
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/4O;->A03:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/4O;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x51

    if-eq v1, v0, :cond_26

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_26
    sget-object v2, Lcom/facebook/ads/redexgen/X/4O;->A06:[Ljava/lang/String;

    const-string v1, "RQ2aPYV0XzSKqKGG6lN3Ew4WQR0Wbc5Z"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "Gl41HGAVYLDZhSdMvoA5zDBgLuWWd6ac"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_39

    .line 10904
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/4O;->A03:Z

    .line 10905
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9J;->A0E()V

    .line 10906
    :cond_39
    return-void

    .line 10907
    :catch_3a
    move-exception v2

    .line 10908
    :try_start_3b
    const/16 v1, 0x7d0

    new-instance v0, Lcom/facebook/ads/redexgen/X/TP;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/TP;-><init>(Ljava/lang/Throwable;I)V

    throw v0
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_43

    .line 10909
    :catchall_43
    move-exception v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/4O;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_5f

    .end local v2
    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/4O;->A02:Ljava/io/InputStream;

    .line 10910
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A03:Z

    if-eqz v0, :cond_5e

    .line 10911
    :goto_59
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/4O;->A03:Z

    .line 10912
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9J;->A0E()V

    .line 10913
    :cond_5e
    throw v4

    .end local v2
    :cond_5f
    sget-object v2, Lcom/facebook/ads/redexgen/X/4O;->A06:[Ljava/lang/String;

    const-string v1, "DCEAnyVwlIo6CEW5mvnm"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/4O;->A02:Ljava/io/InputStream;

    .line 10914
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A03:Z

    if-eqz v0, :cond_5e

    goto :goto_59
.end method

.method public final read([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/TP;
        }
    .end annotation

    .line 10915
    if-nez p3, :cond_23

    .line 10916
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4O;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_16

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_16
    sget-object v2, Lcom/facebook/ads/redexgen/X/4O;->A06:[Ljava/lang/String;

    const-string v1, "HuYs2F2Qnwr41DG6lO3uJ3keMcWeGYbQ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "KFeaSlCR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 10917
    :cond_23
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A00:J

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    cmp-long v2, v0, v3

    if-nez v2, :cond_2d

    .line 10918
    return v5

    .line 10919
    :cond_2d
    :try_start_2d
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A00:J

    const-wide/16 v6, -0x1

    cmp-long v2, v0, v6

    if-nez v2, :cond_56

    .line 10920
    .local v0, "bytesToRead":I
    :goto_35
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A02:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_40} :catch_7c

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/4O;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_62

    goto :goto_5f

    .line 10921
    :cond_56
    :try_start_56
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A00:J

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    goto :goto_35

    .line 10922
    .local v0, "bytesRead":I
    :goto_5f
    if-ne v4, v5, :cond_6c

    goto :goto_6b
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_62} :catch_7c

    .local v0, "bytesRead":I
    :cond_62
    sget-object v2, Lcom/facebook/ads/redexgen/X/4O;->A06:[Ljava/lang/String;

    const-string v1, "YynOmLqIQFTKCOIEuI7TEv5epLeyqL2k"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v4, v5, :cond_6c

    .line 10923
    :goto_6b
    return v5

    .line 10924
    :cond_6c
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/4O;->A00:J

    cmp-long v0, v1, v6

    if-eqz v0, :cond_78

    .line 10925
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/4O;->A00:J

    int-to-long v0, v4

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/4O;->A00:J

    .line 10926
    :cond_78
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/9J;->A0F(I)V

    .line 10927
    return v4

    .line 10928
    .end local v0    # "bytesRead":I
    :catch_7c
    move-exception v2

    .line 10929
    .local v0, "e":Ljava/io/IOException;
    const/16 v1, 0x7d0

    new-instance v0, Lcom/facebook/ads/redexgen/X/TP;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/TP;-><init>(Ljava/lang/Throwable;I)V

    throw v0
.end method
