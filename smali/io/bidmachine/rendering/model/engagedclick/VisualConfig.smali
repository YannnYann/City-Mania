###### Class io.bidmachine.rendering.model.engagedclick.VisualConfig (io.bidmachine.rendering.model.engagedclick.VisualConfig)
.class public final Lio/bidmachine/rendering/model/engagedclick/VisualConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/engagedclick/VisualConfig$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/rendering/model/engagedclick/VisualConfig$Companion;


# instance fields
.field public final a:I

.field public final b:D

.field public final c:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/rendering/model/engagedclick/VisualConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/engagedclick/VisualConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/model/engagedclick/VisualConfig;->Companion:Lio/bidmachine/rendering/model/engagedclick/VisualConfig$Companion;

    return-void
.end method

.method public constructor <init>(IDD)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-lez p1, :cond_b

    goto :goto_c

    :cond_b
    move-object v0, v1

    :goto_c
    if-eqz v0, :cond_13

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_15

    :cond_13
    const/16 p1, 0x80

    .line 9
    :goto_15
    iput p1, p0, Lio/bidmachine/rendering/model/engagedclick/VisualConfig;->a:I

    .line 12
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-wide/16 v2, 0x0

    cmpl-double p2, p2, v2

    if-lez p2, :cond_22

    goto :goto_23

    :cond_22
    move-object p1, v1

    :goto_23
    if-eqz p1, :cond_2a

    .line 13
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    goto :goto_2f

    :cond_2a
    const-wide p1, 0x3fbeb851eb851eb8L    # 0.12

    .line 14
    :goto_2f
    iput-wide p1, p0, Lio/bidmachine/rendering/model/engagedclick/VisualConfig;->b:D

    .line 17
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    cmpl-double p2, p4, v2

    if-lez p2, :cond_3a

    move-object v1, p1

    :cond_3a
    if-eqz v1, :cond_41

    .line 18
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    goto :goto_46

    :cond_41
    const-wide p1, 0x3ff4cccccccccccdL    # 1.3

    .line 19
    :goto_46
    iput-wide p1, p0, Lio/bidmachine/rendering/model/engagedclick/VisualConfig;->c:D

    return-void
.end method


# virtual methods
.method public final getBaselineMultiplier()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/model/engagedclick/VisualConfig;->c:D

    return-wide v0
.end method

.method public final getDiffThreshold()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/model/engagedclick/VisualConfig;->b:D

    return-wide v0
.end method

.method public final getDownscaleMaxSidePx()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/engagedclick/VisualConfig;->a:I

    return v0
.end method

###### Class io.bidmachine.rendering.model.engagedclick.VisualConfig.Companion (io.bidmachine.rendering.model.engagedclick.VisualConfig$Companion)
.class public final Lio/bidmachine/rendering/model/engagedclick/VisualConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/engagedclick/VisualConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/model/engagedclick/VisualConfig$Companion;-><init>()V

    return-void
.end method
