###### Class com.facebook.ads.redexgen.X.A4 (com.facebook.ads.redexgen.X.A4)
.class public final Lcom/facebook/ads/redexgen/X/A4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/We;->A03(Lcom/facebook/ads/redexgen/X/A7;)Lcom/facebook/ads/redexgen/X/We;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/A7;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/A7;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$separatorMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29428
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/A4;->A00:Lcom/facebook/ads/redexgen/X/A7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/We;Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/4l;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "splitter",
            "toSplit"
        }
    .end annotation

    .line 29429
    new-instance v0, Lcom/facebook/ads/redexgen/X/4l;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4l;-><init>(Lcom/facebook/ads/redexgen/X/A4;Lcom/facebook/ads/redexgen/X/We;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic ABT(Lcom/facebook/ads/redexgen/X/We;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            "splitter",
            "toSplit"
        }
    .end annotation

    .line 29430
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/A4;->A00(Lcom/facebook/ads/redexgen/X/We;Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/4l;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.ads.redexgen.X.C13264l (com.facebook.ads.redexgen.X.4l)
.class public final Lcom/facebook/ads/redexgen/X/4l;
.super Lcom/facebook/ads/redexgen/X/A3;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/A4;->A00(Lcom/facebook/ads/redexgen/X/We;Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/4l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/A4;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/A4;Lcom/facebook/ads/redexgen/X/We;Ljava/lang/CharSequence;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "splitter",
            "toSplit"
        }
    .end annotation

    .line 11234
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4l;->A00:Lcom/facebook/ads/redexgen/X/A4;

    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/A3;-><init>(Lcom/facebook/ads/redexgen/X/We;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final A04(I)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "separatorPosition"
        }
    .end annotation

    .line 11235
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public final A05(I)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start"
        }
    .end annotation

    .line 11236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4l;->A00:Lcom/facebook/ads/redexgen/X/A4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/A4;->A00:Lcom/facebook/ads/redexgen/X/A7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A3;->A03:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/A7;->A08(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method
