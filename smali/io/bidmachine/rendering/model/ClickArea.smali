###### Class io.bidmachine.rendering.model.ClickArea (io.bidmachine.rendering.model.ClickArea)
.class public final Lio/bidmachine/rendering/model/ClickArea;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/ClickArea$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/rendering/model/ClickArea$Companion;

.field public static final d:Landroid/graphics/PointF;

.field public static final e:Landroid/graphics/PointF;


# instance fields
.field public final a:Landroid/graphics/PointF;

.field public final b:Landroid/graphics/PointF;

.field public final c:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/rendering/model/ClickArea$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/ClickArea$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/model/ClickArea;->Companion:Lio/bidmachine/rendering/model/ClickArea$Companion;

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lio/bidmachine/rendering/model/ClickArea;->d:Landroid/graphics/PointF;

    .line 3
    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lio/bidmachine/rendering/model/ClickArea;->e:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/rendering/model/ClickArea;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/Long;)V
    .registers 5

    const-string v0, "center"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spread"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/rendering/model/ClickArea;->a:Landroid/graphics/PointF;

    .line 4
    iput-object p2, p0, Lio/bidmachine/rendering/model/ClickArea;->b:Landroid/graphics/PointF;

    .line 5
    iput-object p3, p0, Lio/bidmachine/rendering/model/ClickArea;->c:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    .line 6
    sget-object p1, Lio/bidmachine/rendering/model/ClickArea;->d:Landroid/graphics/PointF;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    .line 7
    sget-object p2, Lio/bidmachine/rendering/model/ClickArea;->e:Landroid/graphics/PointF;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_11

    const/4 p3, 0x0

    .line 8
    :cond_11
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/rendering/model/ClickArea;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/Long;)V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_CENTER$cp()Landroid/graphics/PointF;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/ClickArea;->d:Landroid/graphics/PointF;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_SPREAD$cp()Landroid/graphics/PointF;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/ClickArea;->e:Landroid/graphics/PointF;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/rendering/model/ClickArea;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/rendering/model/ClickArea;

    iget-object v1, p0, Lio/bidmachine/rendering/model/ClickArea;->a:Landroid/graphics/PointF;

    iget-object v3, p1, Lio/bidmachine/rendering/model/ClickArea;->a:Landroid/graphics/PointF;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/bidmachine/rendering/model/ClickArea;->b:Landroid/graphics/PointF;

    iget-object v3, p1, Lio/bidmachine/rendering/model/ClickArea;->b:Landroid/graphics/PointF;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/bidmachine/rendering/model/ClickArea;->c:Ljava/lang/Long;

    iget-object p1, p1, Lio/bidmachine/rendering/model/ClickArea;->c:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getCenter()Landroid/graphics/PointF;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/ClickArea;->a:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final getSeed()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/ClickArea;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSpread()Landroid/graphics/PointF;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/ClickArea;->b:Landroid/graphics/PointF;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/model/ClickArea;->a:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/PointF;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/ClickArea;->b:Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/graphics/PointF;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/ClickArea;->c:Ljava/lang/Long;

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1b
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClickArea(center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/ClickArea;->a:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/ClickArea;->b:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", seed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/ClickArea;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.ClickArea.Companion (io.bidmachine.rendering.model.ClickArea$Companion)
.class public final Lio/bidmachine/rendering/model/ClickArea$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/ClickArea;
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
    invoke-direct {p0}, Lio/bidmachine/rendering/model/ClickArea$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDEFAULT_CENTER$bidmachine_android_sdk_bb_3_8_0()Landroid/graphics/PointF;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/rendering/model/ClickArea;->access$getDEFAULT_CENTER$cp()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public final getDEFAULT_SPREAD$bidmachine_android_sdk_bb_3_8_0()Landroid/graphics/PointF;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/rendering/model/ClickArea;->access$getDEFAULT_SPREAD$cp()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
