###### Class io.bidmachine.rendering.model.ElementLayoutParams (io.bidmachine.rendering.model.ElementLayoutParams)
.class public final Lio/bidmachine/rendering/model/ElementLayoutParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;
    }
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:Lio/bidmachine/rendering/model/SideBindParams;

.field public final f:Lio/bidmachine/rendering/model/SideBindParams;

.field public final g:Lio/bidmachine/rendering/model/SideBindParams;

.field public final h:Lio/bidmachine/rendering/model/SideBindParams;

.field public final i:Lio/bidmachine/rendering/model/SideBindParams;

.field public final j:Lio/bidmachine/rendering/model/SideBindParams;

.field public final k:F

.field public final l:F

.field public final m:F

.field public final n:F

.field public final o:F

.field public final p:F

.field public final q:I


# direct methods
.method public constructor <init>()V
    .registers 21

    const v18, 0x1ffff

    const/16 v19, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {v0 .. v19}, Lio/bidmachine/rendering/model/ElementLayoutParams;-><init>(FFFFLio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;FFFFFFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFFLio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;FFFFFFI)V
    .registers 18

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->a:F

    .line 4
    iput p2, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->b:F

    .line 5
    iput p3, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->c:F

    .line 6
    iput p4, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->d:F

    .line 7
    iput-object p5, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->e:Lio/bidmachine/rendering/model/SideBindParams;

    .line 8
    iput-object p6, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->f:Lio/bidmachine/rendering/model/SideBindParams;

    .line 9
    iput-object p7, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->g:Lio/bidmachine/rendering/model/SideBindParams;

    .line 10
    iput-object p8, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->h:Lio/bidmachine/rendering/model/SideBindParams;

    .line 11
    iput-object p9, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->i:Lio/bidmachine/rendering/model/SideBindParams;

    .line 12
    iput-object p10, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->j:Lio/bidmachine/rendering/model/SideBindParams;

    .line 13
    iput p11, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->k:F

    .line 14
    iput p12, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->l:F

    .line 15
    iput p13, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->m:F

    .line 16
    iput p14, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->n:F

    .line 17
    iput p15, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->o:F

    move/from16 p1, p16

    .line 18
    iput p1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->p:F

    move/from16 p1, p17

    .line 19
    iput p1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->q:I

    return-void
.end method

.method public synthetic constructor <init>(FFFFLio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;FFFFFFIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 38

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    move/from16 v1, p1

    :goto_a
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    goto :goto_12

    :cond_10
    move/from16 v3, p2

    :goto_12
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_18

    const/4 v4, 0x0

    goto :goto_1a

    :cond_18
    move/from16 v4, p3

    :goto_1a
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_20

    const/4 v5, 0x0

    goto :goto_22

    :cond_20
    move/from16 v5, p4

    :goto_22
    and-int/lit8 v6, v0, 0x10

    const/4 v7, 0x0

    if-eqz v6, :cond_29

    move-object v6, v7

    goto :goto_2b

    :cond_29
    move-object/from16 v6, p5

    :goto_2b
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_31

    move-object v8, v7

    goto :goto_33

    :cond_31
    move-object/from16 v8, p6

    :goto_33
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_39

    move-object v9, v7

    goto :goto_3b

    :cond_39
    move-object/from16 v9, p7

    :goto_3b
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_41

    move-object v10, v7

    goto :goto_43

    :cond_41
    move-object/from16 v10, p8

    :goto_43
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_49

    move-object v11, v7

    goto :goto_4b

    :cond_49
    move-object/from16 v11, p9

    :goto_4b
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_50

    goto :goto_52

    :cond_50
    move-object/from16 v7, p10

    :goto_52
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_58

    const/4 v12, 0x0

    goto :goto_5a

    :cond_58
    move/from16 v12, p11

    :goto_5a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_60

    const/4 v13, 0x0

    goto :goto_62

    :cond_60
    move/from16 v13, p12

    :goto_62
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_68

    const/4 v14, 0x0

    goto :goto_6a

    :cond_68
    move/from16 v14, p13

    :goto_6a
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_70

    const/4 v15, 0x0

    goto :goto_72

    :cond_70
    move/from16 v15, p14

    :goto_72
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_78

    const/4 v2, 0x0

    goto :goto_7a

    :cond_78
    move/from16 v2, p15

    :goto_7a
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_84

    const/16 v16, 0x0

    goto :goto_86

    :cond_84
    move/from16 v16, p16

    :goto_86
    const/high16 v17, 0x10000

    and-int v0, v0, v17

    if-eqz v0, :cond_b2

    const/4 v0, 0x0

    move/from16 p18, v0

    :goto_8f
    move-object/from16 p1, p0

    move/from16 p2, v1

    move/from16 p16, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p11, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move/from16 p12, v12

    move/from16 p13, v13

    move/from16 p14, v14

    move/from16 p15, v15

    move/from16 p17, v16

    goto :goto_b5

    :cond_b2
    move/from16 p18, p17

    goto :goto_8f

    .line 20
    :goto_b5
    invoke-direct/range {p1 .. p18}, Lio/bidmachine/rendering/model/ElementLayoutParams;-><init>(FFFFLio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;FFFFFFI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/rendering/model/ElementLayoutParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/rendering/model/ElementLayoutParams;

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->a:F

    iget v3, p1, Lio/bidmachine/rendering/model/ElementLayoutParams;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->b:F

    iget v3, p1, Lio/bidmachine/rendering/model/ElementLayoutParams;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->c:F

    iget v3, p1, Lio/bidmachine/rendering/model/ElementLayoutParams;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2d

    return v2

    :cond_2d
    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->d:F

    iget v3, p1, Lio/bidmachine/rendering/model/ElementLayoutParams;->d:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->e:Lio/bidmachine/rendering/model/SideBindParams;

    iget-object v3, p1, Lio/bidmachine/rendering/model/ElementLayoutParams;->e:Lio/bidmachine/rendering/model/SideBindParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->f:Lio/bidmachine/rendering/model/SideBindParams;

    iget-object v3, p1, Lio/bidmachine/rendering/model/ElementLayoutParams;->f:Lio/bidmachine/rendering/model/SideBindParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->g:Lio/bidmachine/rendering/model/SideBindParams;

    iget-object v3, p1, Lio/bidmachine/rendering/model/ElementLayoutParams;->g:Lio/bidmachine/rendering/model/SideBindParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->h:Lio/bidmachine/rendering/model/SideBindParams;

    iget-object v3, p1, Lio/bidmachine/rendering/model/ElementLayoutParams;->h:Lio/bidmachine/rendering/model/SideBindParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->i:Lio/bidmachine/rendering/model/SideBindParams;

    iget-object v3, p1, Lio/bidmachine/rendering/model/ElementLayoutParams;->i:Lio/bidmachine/rendering/model/SideBindParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v2

    :cond_6f
    iget-object v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->j:Lio/bidmachine/rendering/model/SideBindParams;

    iget-object v3, p1, Lio/bidmachine/rendering/model/ElementLayoutParams;->j:Lio/bidmachine/rendering/model/SideBindParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    return v2

    :cond_7a
    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->k:F

    iget v3, p1, Lio/bidmachine/rendering/model/ElementLayoutParams;->k:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_85

    return v2

    :cond_85
    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->l:F

    iget v3, p1, Lio/bidmachine/rendering/model/ElementLayoutParams;->l:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_90

    return v2

    :cond_90
    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->m:F

    iget v3, p1, Lio/bidmachine/rendering/model/ElementLayoutParams;->m:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_9b

    return v2

    :cond_9b
    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->n:F

    iget v3, p1, Lio/bidmachine/rendering/model/ElementLayoutParams;->n:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_a6

    return v2

    :cond_a6
    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->o:F

    iget v3, p1, Lio/bidmachine/rendering/model/ElementLayoutParams;->o:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_b1

    return v2

    :cond_b1
    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->p:F

    iget v3, p1, Lio/bidmachine/rendering/model/ElementLayoutParams;->p:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_bc

    return v2

    :cond_bc
    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->q:I

    iget p1, p1, Lio/bidmachine/rendering/model/ElementLayoutParams;->q:I

    if-eq v1, p1, :cond_c3

    return v2

    :cond_c3
    return v0
.end method

.method public final getBottomSideBindParams()Lio/bidmachine/rendering/model/SideBindParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->h:Lio/bidmachine/rendering/model/SideBindParams;

    return-object v0
.end method

.method public final getCenterXSideBindParams()Lio/bidmachine/rendering/model/SideBindParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->i:Lio/bidmachine/rendering/model/SideBindParams;

    return-object v0
.end method

.method public final getCenterYSideBindParams()Lio/bidmachine/rendering/model/SideBindParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->j:Lio/bidmachine/rendering/model/SideBindParams;

    return-object v0
.end method

.method public final getHeightPercent()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->d:F

    return v0
.end method

.method public final getHeightPx(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->b:F

    invoke-static {p1, v0}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method public final getLeftSideBindParams()Lio/bidmachine/rendering/model/SideBindParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->e:Lio/bidmachine/rendering/model/SideBindParams;

    return-object v0
.end method

.method public final getMarginBottomPx(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->n:F

    invoke-static {p1, v0}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method public final getMarginLeftPx(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->k:F

    invoke-static {p1, v0}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method public final getMarginRightPx(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->m:F

    invoke-static {p1, v0}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method public final getMarginTopPx(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->l:F

    invoke-static {p1, v0}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method public final getRightSideBindParams()Lio/bidmachine/rendering/model/SideBindParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->g:Lio/bidmachine/rendering/model/SideBindParams;

    return-object v0
.end method

.method public final getTopSideBindParams()Lio/bidmachine/rendering/model/SideBindParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->f:Lio/bidmachine/rendering/model/SideBindParams;

    return-object v0
.end method

.method public final getWidthPercent()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->c:F

    return v0
.end method

.method public final getWidthPx(Landroid/content/Context;)I
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->a:F

    invoke-static {p1, v0}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method public final getZIndex()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->q:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget v0, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->b:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->c:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->d:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->e:Lio/bidmachine/rendering/model/SideBindParams;

    const/4 v2, 0x0

    if-nez v1, :cond_2a

    move v1, v2

    goto :goto_2e

    :cond_2a
    invoke-virtual {v1}, Lio/bidmachine/rendering/model/SideBindParams;->hashCode()I

    move-result v1

    :goto_2e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->f:Lio/bidmachine/rendering/model/SideBindParams;

    if-nez v1, :cond_37

    move v1, v2

    goto :goto_3b

    :cond_37
    invoke-virtual {v1}, Lio/bidmachine/rendering/model/SideBindParams;->hashCode()I

    move-result v1

    :goto_3b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->g:Lio/bidmachine/rendering/model/SideBindParams;

    if-nez v1, :cond_44

    move v1, v2

    goto :goto_48

    :cond_44
    invoke-virtual {v1}, Lio/bidmachine/rendering/model/SideBindParams;->hashCode()I

    move-result v1

    :goto_48
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->h:Lio/bidmachine/rendering/model/SideBindParams;

    if-nez v1, :cond_51

    move v1, v2

    goto :goto_55

    :cond_51
    invoke-virtual {v1}, Lio/bidmachine/rendering/model/SideBindParams;->hashCode()I

    move-result v1

    :goto_55
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->i:Lio/bidmachine/rendering/model/SideBindParams;

    if-nez v1, :cond_5e

    move v1, v2

    goto :goto_62

    :cond_5e
    invoke-virtual {v1}, Lio/bidmachine/rendering/model/SideBindParams;->hashCode()I

    move-result v1

    :goto_62
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->j:Lio/bidmachine/rendering/model/SideBindParams;

    if-nez v1, :cond_6a

    goto :goto_6e

    :cond_6a
    invoke-virtual {v1}, Lio/bidmachine/rendering/model/SideBindParams;->hashCode()I

    move-result v2

    :goto_6e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->k:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->l:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->m:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->n:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->o:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->p:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElementLayoutParams(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", widthPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", heightPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", leftSideBindParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->e:Lio/bidmachine/rendering/model/SideBindParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topSideBindParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->f:Lio/bidmachine/rendering/model/SideBindParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rightSideBindParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->g:Lio/bidmachine/rendering/model/SideBindParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomSideBindParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->h:Lio/bidmachine/rendering/model/SideBindParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", centerXSideBindParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->i:Lio/bidmachine/rendering/model/SideBindParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", centerYSideBindParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->j:Lio/bidmachine/rendering/model/SideBindParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", marginLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->k:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", marginTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->l:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", marginRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->m:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", marginBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->n:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", translationX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->o:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", translationY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->p:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", zIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.ElementLayoutParams.Builder (io.bidmachine.rendering.model.ElementLayoutParams$Builder)
.class public final Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/ElementLayoutParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:Lio/bidmachine/rendering/model/SideBindParams;

.field public f:Lio/bidmachine/rendering/model/SideBindParams;

.field public g:Lio/bidmachine/rendering/model/SideBindParams;

.field public h:Lio/bidmachine/rendering/model/SideBindParams;

.field public i:Lio/bidmachine/rendering/model/SideBindParams;

.field public j:Lio/bidmachine/rendering/model/SideBindParams;

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/bidmachine/rendering/model/ElementLayoutParams;
    .registers 21

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lio/bidmachine/rendering/model/ElementLayoutParams;

    .line 2
    iget v2, v0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->a:F

    .line 3
    iget v3, v0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->b:F

    .line 4
    iget v4, v0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->c:F

    .line 5
    iget v5, v0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->d:F

    .line 6
    iget-object v6, v0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->e:Lio/bidmachine/rendering/model/SideBindParams;

    .line 7
    iget-object v7, v0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->f:Lio/bidmachine/rendering/model/SideBindParams;

    .line 8
    iget-object v8, v0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->g:Lio/bidmachine/rendering/model/SideBindParams;

    .line 9
    iget-object v9, v0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->h:Lio/bidmachine/rendering/model/SideBindParams;

    .line 10
    iget-object v10, v0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->i:Lio/bidmachine/rendering/model/SideBindParams;

    .line 11
    iget-object v11, v0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->j:Lio/bidmachine/rendering/model/SideBindParams;

    .line 12
    iget v12, v0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->k:F

    .line 13
    iget v13, v0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->l:F

    .line 14
    iget v14, v0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->m:F

    .line 15
    iget v15, v0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->n:F

    move-object/from16 v16, v1

    .line 16
    iget v1, v0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->o:F

    move/from16 v17, v1

    .line 17
    iget v1, v0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->p:F

    move/from16 v18, v1

    .line 18
    iget v1, v0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->q:I

    move/from16 v19, v18

    move/from16 v18, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v19

    .line 19
    invoke-direct/range {v1 .. v18}, Lio/bidmachine/rendering/model/ElementLayoutParams;-><init>(FFFFLio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;FFFFFFI)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final setBottomSideBindParams(Lio/bidmachine/rendering/model/SideBindParams;)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->h:Lio/bidmachine/rendering/model/SideBindParams;

    return-object p0
.end method

.method public final setCenterXSideBindParams(Lio/bidmachine/rendering/model/SideBindParams;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->i:Lio/bidmachine/rendering/model/SideBindParams;

    return-void
.end method

.method public final setCenterYSideBindParams(Lio/bidmachine/rendering/model/SideBindParams;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->j:Lio/bidmachine/rendering/model/SideBindParams;

    return-void
.end method

.method public final setHeight(F)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->b:F

    return-object p0
.end method

.method public final setHeightPercent(F)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->d:F

    return-object p0
.end method

.method public final setLeftSideBindParams(Lio/bidmachine/rendering/model/SideBindParams;)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->e:Lio/bidmachine/rendering/model/SideBindParams;

    return-object p0
.end method

.method public final setMarginBottom(F)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->n:F

    return-object p0
.end method

.method public final setMarginLeft(F)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->k:F

    return-object p0
.end method

.method public final setMarginRight(F)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->m:F

    return-object p0
.end method

.method public final setMarginTop(F)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->l:F

    return-object p0
.end method

.method public final setRightSideBindParams(Lio/bidmachine/rendering/model/SideBindParams;)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->g:Lio/bidmachine/rendering/model/SideBindParams;

    return-object p0
.end method

.method public final setTopSideBindParams(Lio/bidmachine/rendering/model/SideBindParams;)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->f:Lio/bidmachine/rendering/model/SideBindParams;

    return-object p0
.end method

.method public final setTranslationX(F)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->o:F

    return-object p0
.end method

.method public final setTranslationY(F)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->p:F

    return-object p0
.end method

.method public final setWidth(F)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->a:F

    return-object p0
.end method

.method public final setWidthPercent(F)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->c:F

    return-object p0
.end method

.method public final setZIndex(I)Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/model/ElementLayoutParams$Builder;->q:I

    return-object p0
.end method
