###### Class com.facebook.ads.redexgen.X.Py (com.facebook.ads.redexgen.X.Py)
.class public final Lcom/facebook/ads/redexgen/X/Py;
.super Lcom/facebook/ads/redexgen/X/Yo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Q0;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Z5;IJJ)V
    .registers 25

    .line 65629
    move-object/from16 v2, p1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Q1;

    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/Q1;-><init>(Lcom/facebook/ads/redexgen/X/Z5;)V

    const/4 v0, 0x0

    new-instance v4, Lcom/facebook/ads/redexgen/X/Q0;

    move/from16 v1, p2

    invoke-direct {v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q0;-><init>(Lcom/facebook/ads/redexgen/X/Z5;ILcom/facebook/ads/redexgen/X/Za;)V

    .line 65630
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Z5;->A06()J

    move-result-wide v5

    iget-wide v9, v2, Lcom/facebook/ads/redexgen/X/Z5;->A09:J

    .line 65631
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Z5;->A05()J

    move-result-wide v15

    iget v1, v2, Lcom/facebook/ads/redexgen/X/Z5;->A06:I

    .line 65632
    const/4 v0, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 65633
    const-wide/16 v7, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    invoke-direct/range {v2 .. v17}, Lcom/facebook/ads/redexgen/X/Yo;-><init>(Lcom/facebook/ads/redexgen/X/Yj;Lcom/facebook/ads/redexgen/X/Yn;JJJJJJI)V

    .line 65634
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.Q1 (com.facebook.ads.redexgen.X.Q1)
.class public final synthetic Lcom/facebook/ads/redexgen/X/Q1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Yj;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Z5;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Z5;)V
    .registers 2

    .line 65724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Q1;->A00:Lcom/facebook/ads/redexgen/X/Z5;

    return-void
.end method


# virtual methods
.method public final ALk(J)J
    .registers 5

    .line 65725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q1;->A00:Lcom/facebook/ads/redexgen/X/Z5;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Z5;->A07(J)J

    move-result-wide v0

    return-wide v0
.end method
