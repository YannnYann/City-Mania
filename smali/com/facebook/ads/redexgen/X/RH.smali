###### Class com.facebook.ads.redexgen.X.RH (com.facebook.ads.redexgen.X.RH)
.class public final Lcom/facebook/ads/redexgen/X/RH;
.super Lcom/facebook/ads/redexgen/X/WT;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/WT<",
        "Lcom/facebook/ads/redexgen/X/RH;",
        ">;"
    }
.end annotation


# static fields
.field public static A0H:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation
.end field

.field public final A04:I
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation
.end field

.field public final A05:I

.field public final A06:I

.field public final A07:I

.field public final A08:I

.field public final A09:Lcom/facebook/ads/redexgen/X/8i;

.field public final A0A:Z

.field public final A0B:Z

.field public final A0C:Z

.field public final A0D:Z

.field public final A0E:Z

.field public final A0F:Z

.field public final A0G:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1212
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "M"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eiCoMS0B1NS75IHdkKjmmSEk8V7XJo6R"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MHaFb4K7cS0D09ebPHFZEdXLD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "H"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "edZGWAqUUBsDDpq2lfAjvFAJjKauvcUn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "h8RIemLK21YaGGwPwjZOAzN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bo2sNdf3z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/RH;->A0H:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/U8;ILcom/facebook/ads/redexgen/X/8i;ILjava/lang/String;IZ)V
    .registers 18
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 67101
    move-object v2, p0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/WT;-><init>(ILcom/facebook/ads/redexgen/X/U8;I)V

    .line 67102
    iput-object p4, v2, Lcom/facebook/ads/redexgen/X/RH;->A09:Lcom/facebook/ads/redexgen/X/8i;

    .line 67103
    iget-boolean v0, p4, Lcom/facebook/ads/redexgen/X/8i;->A07:Z

    if-eqz v0, :cond_164

    .line 67104
    const/16 v3, 0x18

    .line 67105
    .local v3, "requiredAdaptiveSupport":I
    :goto_c
    iget-boolean v0, p4, Lcom/facebook/ads/redexgen/X/8i;->A06:Z

    const/4 v4, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_161

    and-int p7, p7, v3

    if-eqz p7, :cond_161

    const/4 v0, 0x1

    :goto_17
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/RH;->A0A:Z

    .line 67106
    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, -0x1

    if-eqz p8, :cond_15e

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    if-eq v0, v5, :cond_2c

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/U1;->A06:I

    if-gt v1, v0, :cond_15e

    :cond_2c
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    if-eq v0, v5, :cond_3a

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/U1;->A05:I

    if-gt v1, v0, :cond_15e

    :cond_3a
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/VC;->A01:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_4d

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/VC;->A01:F

    iget v0, p4, Lcom/facebook/ads/redexgen/X/U1;->A04:I

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_15e

    :cond_4d
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/VC;->A05:I

    if-eq v0, v5, :cond_5b

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/VC;->A05:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/U1;->A03:I

    if-gt v1, v0, :cond_15e

    :cond_5b
    const/4 v0, 0x1

    :goto_5c
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/RH;->A0C:Z

    .line 67107
    if-eqz p8, :cond_15b

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    if-eq v0, v5, :cond_6e

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/VC;->A0L:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/U1;->A0A:I

    if-lt v1, v0, :cond_15b

    :cond_6e
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    if-eq v0, v5, :cond_7c

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/VC;->A0A:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/U1;->A09:I

    if-lt v1, v0, :cond_15b

    :cond_7c
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/VC;->A01:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_8f

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/VC;->A01:F

    iget v0, p4, Lcom/facebook/ads/redexgen/X/U1;->A08:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_15b

    :cond_8f
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/VC;->A05:I

    if-eq v0, v5, :cond_9d

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/VC;->A05:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/U1;->A07:I

    if-lt v1, v0, :cond_15b

    :cond_9d
    const/4 v0, 0x1

    :goto_9e
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/RH;->A0D:Z

    .line 67108
    invoke-static {p5, v4}, Lcom/facebook/ads/redexgen/X/8h;->A0S(IZ)Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/RH;->A0E:Z

    .line 67109
    const/4 v7, 0x0

    .line 67110
    .local v4, "bestLanguageScore":I
    const v6, 0x7fffffff

    .line 67111
    .local v7, "bestLanguageIndex":I
    const/4 v5, 0x0

    .local v8, "i":I
    :goto_ab
    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/U1;->A0L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_c5

    .line 67112
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/U1;->A0L:Ljava/util/List;

    .line 67113
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67114
    invoke-static {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/8h;->A02(Lcom/facebook/ads/redexgen/X/VC;Ljava/lang/String;Z)I

    move-result v0

    .line 67115
    .local p0, "score":I
    if-lez v0, :cond_157

    .line 67116
    move v6, v5

    .line 67117
    move v7, v0

    .line 67118
    .end local v8    # "i":I
    :cond_c5
    iput v6, v2, Lcom/facebook/ads/redexgen/X/RH;->A03:I

    .line 67119
    iput v7, v2, Lcom/facebook/ads/redexgen/X/RH;->A04:I

    .line 67120
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/VC;->A05:I

    iput v0, v2, Lcom/facebook/ads/redexgen/X/RH;->A00:I

    .line 67121
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/VC;->A06()I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/RH;->A02:I

    .line 67122
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/VC;->A0E:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/U1;->A0D:I

    .line 67123
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/8h;->A01(II)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/RH;->A06:I

    .line 67124
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/VC;->A0E:I

    if-eqz v0, :cond_f0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/VC;->A0E:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_155

    :cond_f0
    const/4 v0, 0x1

    :goto_f1
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/RH;->A0B:Z

    .line 67125
    invoke-static {p6}, Lcom/facebook/ads/redexgen/X/8h;->A0K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_153

    const/4 v1, 0x1

    .line 67126
    .local v8, "selectedAudioLanguageUndetermined":Z
    :goto_fa
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    .line 67127
    invoke-static {v0, p6, v1}, Lcom/facebook/ads/redexgen/X/8h;->A02(Lcom/facebook/ads/redexgen/X/VC;Ljava/lang/String;Z)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/RH;->A07:I

    .line 67128
    const v6, 0x7fffffff

    .line 67129
    .local p0, "bestMimeTypeMatchIndex":I
    const/4 v5, 0x0

    .local p2, "i":I
    :goto_106
    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/U1;->A0M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_125

    .line 67130
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    if-eqz v0, :cond_150

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/U1;->A0M:Ljava/util/List;

    .line 67131
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_150

    .line 67132
    move v6, v5

    .line 67133
    .end local p2    # "i":I
    :cond_125
    iput v6, v2, Lcom/facebook/ads/redexgen/X/RH;->A05:I

    .line 67134
    invoke-static {p5}, Lcom/facebook/ads/redexgen/X/PX;->A02(I)I

    move-result v1

    const/16 v0, 0x80

    if-ne v1, v0, :cond_14e

    const/4 v0, 0x1

    :goto_130
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/RH;->A0G:Z

    .line 67135
    invoke-static {p5}, Lcom/facebook/ads/redexgen/X/PX;->A04(I)I

    move-result v1

    const/16 v0, 0x40

    if-ne v1, v0, :cond_13b

    const/4 v4, 0x1

    :cond_13b
    iput-boolean v4, v2, Lcom/facebook/ads/redexgen/X/RH;->A0F:Z

    .line 67136
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8h;->A08(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/RH;->A01:I

    .line 67137
    invoke-direct {p0, p5, v3}, Lcom/facebook/ads/redexgen/X/RH;->A00(II)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/RH;->A08:I

    .line 67138
    return-void

    .line 67139
    :cond_14e
    const/4 v0, 0x0

    goto :goto_130

    .line 67140
    :cond_150
    add-int/lit8 v5, v5, 0x1

    goto :goto_106

    .line 67141
    :cond_153
    const/4 v1, 0x0

    goto :goto_fa

    .line 67142
    :cond_155
    const/4 v0, 0x0

    goto :goto_f1

    .line 67143
    .end local p0    # "bestMimeTypeMatchIndex":I
    :cond_157
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_ab

    .line 67144
    :cond_15b
    const/4 v0, 0x0

    goto/16 :goto_9e

    .line 67145
    :cond_15e
    const/4 v0, 0x0

    goto/16 :goto_5c

    .line 67146
    :cond_161
    const/4 v0, 0x0

    goto/16 :goto_17

    .line 67147
    :cond_164
    const/16 v3, 0x10

    goto/16 :goto_c
.end method

.method private A00(II)I
    .registers 7

    .line 67148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/VC;->A0E:I

    and-int/lit16 v0, v0, 0x4000

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 67149
    return v1

    .line 67150
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A09:Lcom/facebook/ads/redexgen/X/8i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/8i;->A0B:Z

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/8h;->A0S(IZ)Z

    move-result v0

    if-nez v0, :cond_15

    .line 67151
    return v1

    .line 67152
    :cond_15
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A09:Lcom/facebook/ads/redexgen/X/8i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/8i;->A0C:Z

    if-nez v0, :cond_20

    .line 67153
    return v1

    .line 67154
    :cond_20
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/8h;->A0S(IZ)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0D:Z

    if-eqz v0, :cond_5a

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/RH;->A0H:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_5c

    sget-object v2, Lcom/facebook/ads/redexgen/X/RH;->A0H:[Ljava/lang/String;

    const-string v1, "cQBv6Gw35"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_5a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/VC;->A05:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_5a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A09:Lcom/facebook/ads/redexgen/X/8i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/U1;->A0N:Z

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A09:Lcom/facebook/ads/redexgen/X/8i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/U1;->A0O:Z

    if-nez v0, :cond_5a

    and-int/2addr p1, p2

    if-eqz p1, :cond_5a

    .line 67155
    const/4 v0, 0x2

    .line 67156
    :goto_59
    return v0

    .line 67157
    :cond_5a
    const/4 v0, 0x1

    goto :goto_59

    :cond_5c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/RH;)I
    .registers 6
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 67158
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vy;->A01()Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0E:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/RH;->A0E:Z

    .line 67159
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A09(ZZ)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A03:I

    .line 67160
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p1, Lcom/facebook/ads/redexgen/X/RH;->A03:I

    .line 67161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 67162
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vc;->A03()Lcom/facebook/ads/redexgen/X/9Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9Y;->A06()Lcom/facebook/ads/redexgen/X/Vc;

    move-result-object v0

    .line 67163
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A04:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/RH;->A04:I

    .line 67164
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A06(II)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A06:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/RH;->A06:I

    .line 67165
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A06(II)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0B:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/RH;->A0B:Z

    .line 67166
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A09(ZZ)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A07:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/RH;->A07:I

    .line 67167
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A06(II)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/RH;->A0C:Z

    .line 67168
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A09(ZZ)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0D:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/RH;->A0D:Z

    .line 67169
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A09(ZZ)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:I

    .line 67170
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p1, Lcom/facebook/ads/redexgen/X/RH;->A05:I

    .line 67171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 67172
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vc;->A03()Lcom/facebook/ads/redexgen/X/9Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9Y;->A06()Lcom/facebook/ads/redexgen/X/Vc;

    move-result-object v0

    .line 67173
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0G:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/RH;->A0G:Z

    .line 67174
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A09(ZZ)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0F:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/RH;->A0F:Z

    .line 67175
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A09(ZZ)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v2

    .line 67176
    .local v0, "chain":Lcom/facebook/ads/redexgen/X/Vy;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0G:Z

    if-eqz v0, :cond_8c

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0F:Z

    if-eqz v0, :cond_8c

    .line 67177
    iget v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/RH;->A01:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A06(II)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v2

    .line 67178
    :cond_8c
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Vy;->A05()I

    move-result v0

    return v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/RH;)I
    .registers 10

    .line 67179
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Z

    if-eqz v0, :cond_73

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0E:Z

    if-eqz v0, :cond_73

    .line 67180
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8h;->A0H()Lcom/facebook/ads/redexgen/X/Vc;

    move-result-object v3

    .line 67181
    .local v0, "qualityOrdering":Lcom/facebook/ads/redexgen/X/Vc;, "Lcom/google/common/collect/Ordering<Ljava/lang/Integer;>;"
    :goto_c
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vy;->A01()Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v6

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A00:I

    .line 67182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p1, Lcom/facebook/ads/redexgen/X/RH;->A00:I

    .line 67183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 67184
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/RH;->A09:Lcom/facebook/ads/redexgen/X/8i;

    sget-object v1, Lcom/facebook/ads/redexgen/X/RH;->A0H:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_9c

    sget-object v2, Lcom/facebook/ads/redexgen/X/RH;->A0H:[Ljava/lang/String;

    const-string v1, "nzfXK0yQO"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "LhwujyBI8CJgLxGyr3cmCtWqM"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/U1;->A0O:Z

    if-eqz v0, :cond_6e

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8h;->A0H()Lcom/facebook/ads/redexgen/X/Vc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vc;->A06()Lcom/facebook/ads/redexgen/X/Vc;

    move-result-object v0

    .line 67185
    :goto_45
    invoke-virtual {v6, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A02:I

    .line 67186
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/RH;->A02:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A00:I

    .line 67187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/RH;->A00:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v0

    .line 67188
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vy;->A05()I

    move-result v0

    .line 67189
    return v0

    .line 67190
    :cond_6e
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8h;->A0I()Lcom/facebook/ads/redexgen/X/Vc;

    move-result-object v0

    goto :goto_45

    .line 67191
    :cond_73
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8h;->A0H()Lcom/facebook/ads/redexgen/X/Vc;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/RH;->A0H:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_96

    sget-object v2, Lcom/facebook/ads/redexgen/X/RH;->A0H:[Ljava/lang/String;

    const-string v1, "6"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "u"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vc;->A06()Lcom/facebook/ads/redexgen/X/Vc;

    move-result-object v3

    goto/16 :goto_c

    :cond_96
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vc;->A06()Lcom/facebook/ads/redexgen/X/Vc;

    move-result-object v3

    goto/16 :goto_c

    :cond_9c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/RH;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/RH;->A01(Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/RH;)I

    move-result p0

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/RH;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/RH;->A02(Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/RH;)I

    move-result p0

    return p0
.end method

.method public static A05(Ljava/util/List;Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/RH;",
            ">;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/RH;",
            ">;)I"
        }
    .end annotation

    .line 67192
    .local p0, "infos1":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;>;"
    .local p1, "infos2":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vy;->A01()Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v3

    new-instance v0, Lcom/facebook/ads/redexgen/X/WU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WU;-><init>()V

    .line 67193
    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/RH;

    new-instance v0, Lcom/facebook/ads/redexgen/X/WU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WU;-><init>()V

    .line 67194
    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/RH;

    new-instance v0, Lcom/facebook/ads/redexgen/X/WU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WU;-><init>()V

    .line 67195
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v2

    .line 67196
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A06(II)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v3

    new-instance v0, Lcom/facebook/ads/redexgen/X/WV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WV;-><init>()V

    .line 67197
    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/RH;

    new-instance v0, Lcom/facebook/ads/redexgen/X/WV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WV;-><init>()V

    .line 67198
    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/RH;

    new-instance v0, Lcom/facebook/ads/redexgen/X/WV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WV;-><init>()V

    .line 67199
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v0

    .line 67200
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vy;->A05()I

    move-result v0

    .line 67201
    return v0
.end method

.method public static A06(ILcom/facebook/ads/redexgen/X/U8;Lcom/facebook/ads/redexgen/X/8i;[ILjava/lang/String;I)Lcom/facebook/ads/redexgen/X/9l;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/U8;",
            "Lcom/facebook/ads/redexgen/X/8i;",
            "[I",
            "Ljava/lang/String;",
            "I)",
            "Lcom/facebook/ads/redexgen/X/9l<",
            "Lcom/facebook/ads/redexgen/X/RH;",
            ">;"
        }
    .end annotation

    .line 67202
    move-object v8, p2

    iget v2, v8, Lcom/facebook/ads/redexgen/X/U1;->A0F:I

    iget v1, v8, Lcom/facebook/ads/redexgen/X/U1;->A0E:I

    iget-boolean v0, v8, Lcom/facebook/ads/redexgen/X/U1;->A0Q:Z

    .line 67203
    invoke-static {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8h;->A04(Lcom/facebook/ads/redexgen/X/U8;IIZ)I

    move-result v3

    .line 67204
    .local v11, "maxPixelsToRetainForViewport":I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9l;->A01()Lcom/facebook/ads/redexgen/X/4e;

    move-result-object v2

    .line 67205
    .local v12, "listBuilder":Lcom/facebook/ads/redexgen/X/4e;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;>;"
    const/4 v7, 0x0

    .local p0, "i":I
    :goto_10
    iget v0, p1, Lcom/facebook/ads/redexgen/X/U8;->A01:I

    if-ge v7, v0, :cond_3c

    .line 67206
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/U8;->A08(I)Lcom/facebook/ads/redexgen/X/VC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/VC;->A06()I

    move-result v1

    .line 67207
    .local p1, "pixelCount":I
    const v0, 0x7fffffff

    if-eq v3, v0, :cond_26

    const/4 v0, -0x1

    if-eq v1, v0, :cond_3a

    if-gt v1, v3, :cond_3a

    :cond_26
    const/4 v12, 0x1

    .line 67208
    .local v8, "isSuitableForViewport":Z
    :goto_27
    new-instance v4, Lcom/facebook/ads/redexgen/X/RH;

    aget v9, p3, v7

    move-object v6, p1

    move v5, p0

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/RH;-><init>(ILcom/facebook/ads/redexgen/X/U8;ILcom/facebook/ads/redexgen/X/8i;ILjava/lang/String;IZ)V

    invoke-virtual {v2, v4}, Lcom/facebook/ads/redexgen/X/4e;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/4e;

    .line 67209
    .end local v8    # "isSuitableForViewport":Z
    .end local p1    # "pixelCount":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 67210
    :cond_3a
    const/4 v12, 0x0

    goto :goto_27

    .line 67211
    .end local p0    # "i":I
    :cond_3c
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4e;->A05()Lcom/facebook/ads/redexgen/X/9l;

    move-result-object v0

    return-object v0
.end method

.method private final A07(Lcom/facebook/ads/redexgen/X/RH;)Z
    .registers 4

    .line 67212
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0A:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/WT;->A02:Lcom/facebook/ads/redexgen/X/VC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/VC;->A0W:Ljava/lang/String;

    .line 67213
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/N1;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A09:Lcom/facebook/ads/redexgen/X/8i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/8i;->A05:Z

    if-nez v0, :cond_24

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0G:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/RH;->A0G:Z

    if-ne v1, v0, :cond_26

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0F:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/RH;->A0F:Z

    if-ne v1, v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    .line 67214
    :goto_25
    return v0

    .line 67215
    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method


# virtual methods
.method public final A08()I
    .registers 2

    .line 67216
    iget v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A08:I

    return v0
.end method

.method public final bridge synthetic A09(Lcom/facebook/ads/redexgen/X/WT;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 67217
    check-cast p1, Lcom/facebook/ads/redexgen/X/RH;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/RH;->A07(Lcom/facebook/ads/redexgen/X/RH;)Z

    move-result v0

    return v0
.end method

###### Class com.facebook.ads.redexgen.X.WU (com.facebook.ads.redexgen.X.WU)
.class public final synthetic Lcom/facebook/ads/redexgen/X/WU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 75813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 75814
    check-cast p1, Lcom/facebook/ads/redexgen/X/RH;

    check-cast p2, Lcom/facebook/ads/redexgen/X/RH;

    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/RH;->A03(Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v0

    return v0
.end method

###### Class com.facebook.ads.redexgen.X.WV (com.facebook.ads.redexgen.X.WV)
.class public final synthetic Lcom/facebook/ads/redexgen/X/WV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 75815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 75816
    check-cast p1, Lcom/facebook/ads/redexgen/X/RH;

    check-cast p2, Lcom/facebook/ads/redexgen/X/RH;

    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/RH;->A04(Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v0

    return v0
.end method
