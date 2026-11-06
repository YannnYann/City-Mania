###### Class com.google.android.material.carousel.CarouselStrategy (com.google.android.material.carousel.CarouselStrategy)
.class public abstract Lcom/google/android/material/carousel/CarouselStrategy;
.super Ljava/lang/Object;
.source "CarouselStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;
    }
.end annotation


# instance fields
.field public smallSizeMax:F

.field public smallSizeMin:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doubleCounts([I)[I
    .registers 5

    .line 139
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_f

    .line 141
    aget v3, p0, v2

    mul-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    return-object v1
.end method

.method public static getChildMaskPercentage(FFF)F
    .registers 3

    .line 0
    sub-float/2addr p0, p2

    sub-float/2addr p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    return p1
.end method


# virtual methods
.method public getSmallItemSizeMax()F
    .registers 2

    .line 212
    iget v0, p0, Lcom/google/android/material/carousel/CarouselStrategy;->smallSizeMax:F

    return v0
.end method

.method public getSmallItemSizeMin()F
    .registers 2

    .line 204
    iget v0, p0, Lcom/google/android/material/carousel/CarouselStrategy;->smallSizeMin:F

    return v0
.end method

.method public getStrategyType()Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;
    .registers 2

    .line 156
    sget-object v0, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->CONTAINED:Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .registers 5

    .line 47
    iget v0, p0, Lcom/google/android/material/carousel/CarouselStrategy;->smallSizeMin:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_8

    goto :goto_c

    :cond_8
    invoke-static {p1}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMin(Landroid/content/Context;)F

    move-result v0

    :goto_c
    iput v0, p0, Lcom/google/android/material/carousel/CarouselStrategy;->smallSizeMin:F

    .line 49
    iget v0, p0, Lcom/google/android/material/carousel/CarouselStrategy;->smallSizeMax:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_15

    goto :goto_19

    :cond_15
    invoke-static {p1}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getSmallSizeMax(Landroid/content/Context;)F

    move-result v0

    :goto_19
    iput v0, p0, Lcom/google/android/material/carousel/CarouselStrategy;->smallSizeMax:F

    return-void
.end method

.method public abstract onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;
.end method

.method public abstract shouldRefreshKeylineState(Lcom/google/android/material/carousel/Carousel;I)Z
.end method

###### Class com.google.android.material.carousel.CarouselStrategy.StrategyType (com.google.android.material.carousel.CarouselStrategy$StrategyType)
.class public final enum Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;
.super Ljava/lang/Enum;
.source "CarouselStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/carousel/CarouselStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StrategyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

.field public static final enum CONTAINED:Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

.field public static final enum UNCONTAINED:Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;


# direct methods
.method public static synthetic $values()[Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;
    .registers 2

    .line 40
    sget-object v0, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->CONTAINED:Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    sget-object v1, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->UNCONTAINED:Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    filled-new-array {v0, v1}, [Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 41
    new-instance v0, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    const-string v1, "CONTAINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->CONTAINED:Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    .line 42
    new-instance v0, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    const-string v1, "UNCONTAINED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->UNCONTAINED:Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    .line 40
    invoke-static {}, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->$values()[Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->$VALUES:[Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 40
    const-class v0, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;
    .registers 1

    .line 40
    sget-object v0, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->$VALUES:[Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    invoke-virtual {v0}, [Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    return-object v0
.end method
