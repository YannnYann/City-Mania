###### Class com.facebook.ads.redexgen.X.C2c (com.facebook.ads.redexgen.X.2c)
.class public final Lcom/facebook/ads/redexgen/X/2c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 67
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "DduZffXA7K0ZQeQPuUImCqPPqjB5V8d3"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4HiSCw8wzKtTRjoKHfUVRxFJIEHqnII"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "So5fKdRfupm4BsWVXPpB3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "F6GzKtrFQLkcuHFnjPs3fAjAO8UCjJE2"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7VghWjwBwSzDorhocWXjUz2fu2z51rHW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "uNLB6n7UJauVDXofWx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pY2lX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MuTYX4lHvN4rapxLqaXbvwI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2c;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2c;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/1i;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2c;-><init>()V

    return-void
.end method

.method private final A00(Landroid/content/Context;)Landroid/app/Activity;
    .registers 6

    .line 5475
    .local v0, "context":Landroid/content/Context;
    :goto_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_38

    .line 5476
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1d

    .line 5477
    check-cast p1, Landroid/app/Activity;

    sget-object v1, Lcom/facebook/ads/redexgen/X/2c;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_30

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5478
    :cond_1d
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2c;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/1h;->A08(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_30
    sget-object v2, Lcom/facebook/ads/redexgen/X/2c;->A01:[Ljava/lang/String;

    const-string v1, "MjPXH"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object p1

    .line 5479
    :cond_38
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/2c;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_55

    sget-object v2, Lcom/facebook/ads/redexgen/X/2c;->A01:[Ljava/lang/String;

    const-string v1, "PfZvvewQNm1JY2YuwiJRzNzfQskT4Nk"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "TU26JCwkylDDlfCJVfxggYn"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object v3

    :cond_55
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static final synthetic A01(Lcom/facebook/ads/redexgen/X/2c;Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    .line 5480
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2c;->A00(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/2c;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x42

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .registers 4

    const/16 v0, 0x13

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/2c;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_17

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_17
    sget-object v2, Lcom/facebook/ads/redexgen/X/2c;->A01:[Ljava/lang/String;

    const-string v1, "fVQMz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    fill-array-data v3, :array_24

    sput-object v3, Lcom/facebook/ads/redexgen/X/2c;->A00:[B

    return-void

    :array_24
    .array-data 1
        -0x7t
        -0x9t
        0x6t
        -0x2ct
        -0xdt
        0x5t
        -0x9t
        -0x2bt
        0x1t
        0x0t
        0x6t
        -0x9t
        0xat
        0x6t
        -0x46t
        -0x40t
        -0x40t
        -0x40t
        -0x45t
    .end array-data
.end method
