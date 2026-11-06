###### Class com.facebook.ads.redexgen.X.C6D (com.facebook.ads.redexgen.X.6D)
.class public final Lcom/facebook/ads/redexgen/X/6D;
.super Lcom/facebook/ads/redexgen/X/BK;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/6C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6C;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6C;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 15034
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6D;->A00:Lcom/facebook/ads/redexgen/X/6C;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BK;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/BL;)V
    .registers 4

    .line 15035
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/0z;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/0z;-><init>(Lcom/facebook/ads/redexgen/X/6D;)V

    .line 15036
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15037
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

    .line 15038
    check-cast p1, Lcom/facebook/ads/redexgen/X/BL;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6D;->A00(Lcom/facebook/ads/redexgen/X/BL;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.RunnableC12590z (com.facebook.ads.redexgen.X.0z)
.class public final Lcom/facebook/ads/redexgen/X/0z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6D;->A00(Lcom/facebook/ads/redexgen/X/BL;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6D;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0z;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6D;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4347
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/0z;->A00:Lcom/facebook/ads/redexgen/X/6D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/0z;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x56

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

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/0z;->A01:[B

    return-void

    :array_a
    .array-data 1
        0x74t
        0x4bt
        0x46t
        0x47t
        0x4dt
        0x72t
        0x4et
        0x43t
        0x5bt
        0x40t
        0x43t
        0x41t
        0x49t
        0x67t
        0x50t
        0x50t
        0x4dt
        0x50t
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

    .line 4348
    .local v0, "this":Lcom/facebook/ads/redexgen/X/0z;
    :try_start_8
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/0z;->A00:Lcom/facebook/ads/redexgen/X/6D;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/6D;->A00:Lcom/facebook/ads/redexgen/X/6C;

    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0z;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/6C;->A0T(Lcom/facebook/ads/redexgen/X/6C;Ljava/lang/String;)V

    .line 4349
    return-void
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_19

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/0z;
    :catchall_19
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
