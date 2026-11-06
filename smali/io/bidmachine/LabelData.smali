###### Class io.bidmachine.LabelData (io.bidmachine.LabelData)
.class public final Lio/bidmachine/LabelData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final heightDp:F

.field private final image:Landroid/graphics/Bitmap;

.field private final positionData:Lio/bidmachine/PositionData;

.field private final widthDp:F


# direct methods
.method public constructor <init>(FFLandroid/graphics/Bitmap;Lio/bidmachine/PositionData;)V
    .registers 6

    const-string v0, "image"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positionData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/bidmachine/LabelData;->widthDp:F

    .line 3
    iput p2, p0, Lio/bidmachine/LabelData;->heightDp:F

    .line 4
    iput-object p3, p0, Lio/bidmachine/LabelData;->image:Landroid/graphics/Bitmap;

    .line 5
    iput-object p4, p0, Lio/bidmachine/LabelData;->positionData:Lio/bidmachine/PositionData;

    return-void
.end method

.method public static synthetic copy$default(Lio/bidmachine/LabelData;FFLandroid/graphics/Bitmap;Lio/bidmachine/PositionData;ILjava/lang/Object;)Lio/bidmachine/LabelData;
    .registers 7

    .line 0
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lio/bidmachine/LabelData;->widthDp:F

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lio/bidmachine/LabelData;->heightDp:F

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lio/bidmachine/LabelData;->image:Landroid/graphics/Bitmap;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lio/bidmachine/LabelData;->positionData:Lio/bidmachine/PositionData;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/LabelData;->copy(FFLandroid/graphics/Bitmap;Lio/bidmachine/PositionData;)Lio/bidmachine/LabelData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .registers 2

    .line 0
    iget v0, p0, Lio/bidmachine/LabelData;->widthDp:F

    return v0
.end method

.method public final component2()F
    .registers 2

    .line 0
    iget v0, p0, Lio/bidmachine/LabelData;->heightDp:F

    return v0
.end method

.method public final component3()Landroid/graphics/Bitmap;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/LabelData;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final component4()Lio/bidmachine/PositionData;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/LabelData;->positionData:Lio/bidmachine/PositionData;

    return-object v0
.end method

.method public final copy(FFLandroid/graphics/Bitmap;Lio/bidmachine/PositionData;)Lio/bidmachine/LabelData;
    .registers 6

    .line 0
    const-string v0, "image"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positionData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/bidmachine/LabelData;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/bidmachine/LabelData;-><init>(FFLandroid/graphics/Bitmap;Lio/bidmachine/PositionData;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/LabelData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/LabelData;

    iget v1, p0, Lio/bidmachine/LabelData;->widthDp:F

    iget v3, p1, Lio/bidmachine/LabelData;->widthDp:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lio/bidmachine/LabelData;->heightDp:F

    iget v3, p1, Lio/bidmachine/LabelData;->heightDp:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/bidmachine/LabelData;->image:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lio/bidmachine/LabelData;->image:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lio/bidmachine/LabelData;->positionData:Lio/bidmachine/PositionData;

    iget-object p1, p1, Lio/bidmachine/LabelData;->positionData:Lio/bidmachine/PositionData;

    if-eq v1, p1, :cond_34

    return v2

    :cond_34
    return v0
.end method

.method public final getHeightDp()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/LabelData;->heightDp:F

    return v0
.end method

.method public final getImage()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/LabelData;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getPositionData()Lio/bidmachine/PositionData;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/LabelData;->positionData:Lio/bidmachine/PositionData;

    return-object v0
.end method

.method public final getWidthDp()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/LabelData;->widthDp:F

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget v0, p0, Lio/bidmachine/LabelData;->widthDp:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/LabelData;->heightDp:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/LabelData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/LabelData;->positionData:Lio/bidmachine/PositionData;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LabelData(widthDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/LabelData;->widthDp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", heightDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/LabelData;->heightDp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/LabelData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", positionData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/LabelData;->positionData:Lio/bidmachine/PositionData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
