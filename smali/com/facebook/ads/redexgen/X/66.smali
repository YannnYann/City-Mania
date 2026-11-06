###### Class com.facebook.ads.redexgen.X.AnonymousClass66 (com.facebook.ads.redexgen.X.66)
.class public final Lcom/facebook/ads/redexgen/X/66;
.super Lcom/facebook/ads/redexgen/X/BK;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/65;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/65;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/65;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 14557
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/66;->A00:Lcom/facebook/ads/redexgen/X/65;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BK;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/BL;)V
    .registers 4

    .line 14558
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/0D;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/0D;-><init>(Lcom/facebook/ads/redexgen/X/66;)V

    .line 14559
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14560
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/mO;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 14561
    check-cast p1, Lcom/facebook/ads/redexgen/X/BL;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/66;->A00(Lcom/facebook/ads/redexgen/X/BL;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C0D (com.facebook.ads.redexgen.X.0D)
.class public final Lcom/facebook/ads/redexgen/X/0D;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/66;->A00(Lcom/facebook/ads/redexgen/X/BL;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/66;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 5
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uduF7y1C8f4BfvOCO4Bbq6znZfD289wY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LfQQ99tGpIYoqROwWovpCF40OXz0xcCP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pe2RdaJtvVEZmLt4Dkt9DCEmAABN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zCkDdi8MMPMgBKhzCwwd8Y"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gpXsz89N0H7wm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "U57X7XmLFZehOxidvs2iHeLBOkC7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VomEcvnoa3iVV8u"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "uRkqt"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0D;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0D;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/66;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3860
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/0D;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/0D;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2c

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
    .registers 4

    const/16 v0, 0x12

    new-array v3, v0, [B

    fill-array-data v3, :array_2e

    sget-object v2, Lcom/facebook/ads/redexgen/X/0D;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1f
    sget-object v2, Lcom/facebook/ads/redexgen/X/0D;->A02:[Ljava/lang/String;

    const-string v1, "IRUmVXxJ3xpLtoKGmKUObZK1jjqw"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "FvpPsD11YfGqSvfesnropeXaLbJS"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/0D;->A01:[B

    return-void

    :array_2e
    .array-data 1
        -0x1ct
        -0x9t
        -0xet
        -0xdt
        -0x3t
        -0x22t
        -0x6t
        -0x11t
        0x7t
        -0x10t
        -0x11t
        -0xft
        -0x7t
        -0x2dt
        0x0t
        0x0t
        -0x3t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final run()V
    .registers 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/oi;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v4, p0

    .line 3861
    .local v0, "this":Lcom/facebook/ads/redexgen/X/0D;
    :try_start_8
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/0D;->A00:Lcom/facebook/ads/redexgen/X/66;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/66;->A00:Lcom/facebook/ads/redexgen/X/65;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/65;->A0J(Lcom/facebook/ads/redexgen/X/65;)Lcom/facebook/ads/redexgen/X/rz;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0D;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/rz;->AHa(Ljava/lang/String;)V

    .line 3862
    return-void
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1d

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/0D;
    :catchall_1d
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
