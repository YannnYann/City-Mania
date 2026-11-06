###### Class com.facebook.ads.redexgen.X.RunnableC3147rC (com.facebook.ads.redexgen.X.rC)
.class public final Lcom/facebook/ads/redexgen/X/rC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/78;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/78;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/rC;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/78;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 109895
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/rC;->A00:Lcom/facebook/ads/redexgen/X/78;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/rC;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x36

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

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/rC;->A01:[B

    return-void

    :array_a
    .array-data 1
        0x3et
        0x38t
        0x2et
        0x39t
        0x14t
        0x29t
        0x3et
        0x2dt
        0x2dt
        0x2et
        0x39t
        0x2et
        0x2ft
        0x14t
        0x28t
        0x27t
        0x22t
        0x28t
        0x20t
        0x14t
        0x2at
        0x2dt
        0x3ft
        0x2et
        0x39t
        0x14t
        0x2ft
        0x2et
        0x27t
        0x2at
        0x32t
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

    .line 109896
    .local v0, "this":Lcom/facebook/ads/redexgen/X/rC;
    :try_start_8
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/rC;->A00:Lcom/facebook/ads/redexgen/X/78;

    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/rC;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/78;->A0K(Ljava/lang/String;)V

    .line 109897
    return-void
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_17

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/rC;
    :catchall_17
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
