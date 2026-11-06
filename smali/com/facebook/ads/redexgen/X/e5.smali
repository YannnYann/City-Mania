###### Class com.facebook.ads.redexgen.X.C2350e5 (com.facebook.ads.redexgen.X.e5)
.class public final Lcom/facebook/ads/redexgen/X/e5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/e7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpPriority"
.end annotation


# static fields
.field public static final A02:Lcom/facebook/ads/redexgen/X/e5;


# instance fields
.field public A00:B

.field public A01:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 2393
    new-instance v0, Lcom/facebook/ads/redexgen/X/e5;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/e5;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/e5;->A02:Lcom/facebook/ads/redexgen/X/e5;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 87617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87618
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/facebook/ads/redexgen/X/e5;->A00:B

    .line 87619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/e5;->A01:Z

    .line 87620
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 87621
    const/4 v2, 0x1

    if-ne p1, p0, :cond_4

    .line 87622
    return v2

    .line 87623
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 87624
    return v1

    .line 87625
    :cond_8
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/e5;

    if-eqz v0, :cond_1d

    .line 87626
    check-cast p1, Lcom/facebook/ads/redexgen/X/e5;

    .line 87627
    .local v2, "otherPriority":Lcom/facebook/ads/redexgen/X/e5;
    iget-byte v1, p0, Lcom/facebook/ads/redexgen/X/e5;->A00:B

    iget-byte v0, p1, Lcom/facebook/ads/redexgen/X/e5;->A00:B

    if-ne v1, v0, :cond_1b

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/e5;->A01:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/e5;->A01:Z

    if-ne v1, v0, :cond_1b

    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a

    .line 87628
    .end local v2    # "otherPriority":Lcom/facebook/ads/redexgen/X/e5;
    :cond_1d
    return v1
.end method

.method public final hashCode()I
    .registers 4

    .line 87629
    iget-byte v1, p0, Lcom/facebook/ads/redexgen/X/e5;->A00:B

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0}, Ljava/lang/Byte;->hashCode()I

    move-result v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/e5;->A01:Z

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    return v2
.end method
