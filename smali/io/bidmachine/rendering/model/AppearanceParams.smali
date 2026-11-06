###### Class io.bidmachine.rendering.model.AppearanceParams (io.bidmachine.rendering.model.AppearanceParams)
.class public final Lio/bidmachine/rendering/model/AppearanceParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/AppearanceParams$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/rendering/model/AppearanceParams$Companion;

.field public static final q:Lio/bidmachine/rendering/model/HorizontalGravity;


# instance fields
.field public final a:Lio/bidmachine/rendering/model/Background;

.field public final b:Ljava/lang/Boolean;

.field public final c:Ljava/lang/Boolean;

.field public final d:Ljava/lang/Float;

.field public final e:Ljava/lang/Float;

.field public final f:Lio/bidmachine/rendering/model/FontStyleType;

.field public final g:Ljava/lang/Boolean;

.field public final h:Ljava/lang/Float;

.field public final i:Ljava/lang/Integer;

.field public final j:Ljava/lang/Integer;

.field public final k:Ljava/lang/Integer;

.field public final l:Lio/bidmachine/rendering/model/Padding;

.field public final m:Ljava/lang/Float;

.field public final n:Ljava/lang/Integer;

.field public final o:Ljava/lang/Float;

.field public final p:Lio/bidmachine/rendering/model/HorizontalGravity;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/rendering/model/AppearanceParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/AppearanceParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/model/AppearanceParams;->Companion:Lio/bidmachine/rendering/model/AppearanceParams$Companion;

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/HorizontalGravity;->Center:Lio/bidmachine/rendering/model/HorizontalGravity;

    sput-object v0, Lio/bidmachine/rendering/model/AppearanceParams;->q:Lio/bidmachine/rendering/model/HorizontalGravity;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/rendering/model/Background;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;Lio/bidmachine/rendering/model/FontStyleType;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Padding;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Float;Lio/bidmachine/rendering/model/HorizontalGravity;)V
    .registers 19

    move-object/from16 v0, p16

    const-string v1, "textHorizontalGravity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/rendering/model/AppearanceParams;->a:Lio/bidmachine/rendering/model/Background;

    .line 4
    iput-object p2, p0, Lio/bidmachine/rendering/model/AppearanceParams;->b:Ljava/lang/Boolean;

    .line 5
    iput-object p3, p0, Lio/bidmachine/rendering/model/AppearanceParams;->c:Ljava/lang/Boolean;

    .line 6
    iput-object p4, p0, Lio/bidmachine/rendering/model/AppearanceParams;->d:Ljava/lang/Float;

    .line 7
    iput-object p5, p0, Lio/bidmachine/rendering/model/AppearanceParams;->e:Ljava/lang/Float;

    .line 8
    iput-object p6, p0, Lio/bidmachine/rendering/model/AppearanceParams;->f:Lio/bidmachine/rendering/model/FontStyleType;

    .line 9
    iput-object p7, p0, Lio/bidmachine/rendering/model/AppearanceParams;->g:Ljava/lang/Boolean;

    .line 10
    iput-object p8, p0, Lio/bidmachine/rendering/model/AppearanceParams;->h:Ljava/lang/Float;

    .line 11
    iput-object p9, p0, Lio/bidmachine/rendering/model/AppearanceParams;->i:Ljava/lang/Integer;

    .line 12
    iput-object p10, p0, Lio/bidmachine/rendering/model/AppearanceParams;->j:Ljava/lang/Integer;

    .line 13
    iput-object p11, p0, Lio/bidmachine/rendering/model/AppearanceParams;->k:Ljava/lang/Integer;

    .line 14
    iput-object p12, p0, Lio/bidmachine/rendering/model/AppearanceParams;->l:Lio/bidmachine/rendering/model/Padding;

    .line 15
    iput-object p13, p0, Lio/bidmachine/rendering/model/AppearanceParams;->m:Ljava/lang/Float;

    move-object/from16 p1, p14

    .line 16
    iput-object p1, p0, Lio/bidmachine/rendering/model/AppearanceParams;->n:Ljava/lang/Integer;

    move-object/from16 p1, p15

    .line 17
    iput-object p1, p0, Lio/bidmachine/rendering/model/AppearanceParams;->o:Ljava/lang/Float;

    .line 18
    iput-object v0, p0, Lio/bidmachine/rendering/model/AppearanceParams;->p:Lio/bidmachine/rendering/model/HorizontalGravity;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/rendering/model/Background;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;Lio/bidmachine/rendering/model/FontStyleType;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Padding;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Float;Lio/bidmachine/rendering/model/HorizontalGravity;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 36

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    move-object/from16 v1, p1

    :goto_a
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    goto :goto_12

    :cond_10
    move-object/from16 v3, p2

    :goto_12
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_18

    const/4 v4, 0x0

    goto :goto_1a

    :cond_18
    move-object/from16 v4, p3

    :goto_1a
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_20

    const/4 v5, 0x0

    goto :goto_22

    :cond_20
    move-object/from16 v5, p4

    :goto_22
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_28

    const/4 v6, 0x0

    goto :goto_2a

    :cond_28
    move-object/from16 v6, p5

    :goto_2a
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_30

    const/4 v7, 0x0

    goto :goto_32

    :cond_30
    move-object/from16 v7, p6

    :goto_32
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_38

    const/4 v8, 0x0

    goto :goto_3a

    :cond_38
    move-object/from16 v8, p7

    :goto_3a
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_40

    const/4 v9, 0x0

    goto :goto_42

    :cond_40
    move-object/from16 v9, p8

    :goto_42
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_48

    const/4 v10, 0x0

    goto :goto_4a

    :cond_48
    move-object/from16 v10, p9

    :goto_4a
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_50

    const/4 v11, 0x0

    goto :goto_52

    :cond_50
    move-object/from16 v11, p10

    :goto_52
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_58

    const/4 v12, 0x0

    goto :goto_5a

    :cond_58
    move-object/from16 v12, p11

    :goto_5a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_60

    const/4 v13, 0x0

    goto :goto_62

    :cond_60
    move-object/from16 v13, p12

    :goto_62
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_68

    const/4 v14, 0x0

    goto :goto_6a

    :cond_68
    move-object/from16 v14, p13

    :goto_6a
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_70

    const/4 v15, 0x0

    goto :goto_72

    :cond_70
    move-object/from16 v15, p14

    :goto_72
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_78

    const/4 v2, 0x0

    goto :goto_7a

    :cond_78
    move-object/from16 v2, p15

    :goto_7a
    const v16, 0x8000

    and-int v0, v0, v16

    if-eqz v0, :cond_a6

    .line 19
    sget-object v0, Lio/bidmachine/rendering/model/AppearanceParams;->q:Lio/bidmachine/rendering/model/HorizontalGravity;

    move-object/from16 p17, v0

    :goto_85
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    goto :goto_a9

    :cond_a6
    move-object/from16 p17, p16

    goto :goto_85

    .line 20
    :goto_a9
    invoke-direct/range {p1 .. p17}, Lio/bidmachine/rendering/model/AppearanceParams;-><init>(Lio/bidmachine/rendering/model/Background;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;Lio/bidmachine/rendering/model/FontStyleType;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Padding;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Float;Lio/bidmachine/rendering/model/HorizontalGravity;)V

    return-void
.end method

.method public static synthetic getCornerRadiusPxOrDefault$default(Lio/bidmachine/rendering/model/AppearanceParams;Landroid/content/Context;IILjava/lang/Object;)I
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 1
    :cond_5
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/model/AppearanceParams;->getCornerRadiusPxOrDefault(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getBackground()Lio/bidmachine/rendering/model/Background;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AppearanceParams;->a:Lio/bidmachine/rendering/model/Background;

    return-object v0
.end method

.method public final getBorder(Landroid/content/Context;)Lio/bidmachine/rendering/model/Border;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AppearanceParams;->g:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lio/bidmachine/rendering/model/AppearanceParams;->i:Ljava/lang/Integer;

    if-nez v0, :cond_15

    goto :goto_32

    .line 4
    :cond_15
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/model/AppearanceParams;->getStrokeWidthPx(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_22

    goto :goto_32

    .line 8
    :cond_22
    new-instance v0, Lio/bidmachine/rendering/model/Border;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 10
    iget-object v1, p0, Lio/bidmachine/rendering/model/AppearanceParams;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 11
    invoke-direct {v0, p1, v1}, Lio/bidmachine/rendering/model/Border;-><init>(II)V

    return-object v0

    :cond_32
    :goto_32
    return-object v1
.end method

.method public final getClickable()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AppearanceParams;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getCornerRadiusPxOrDefault(Landroid/content/Context;I)I
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AppearanceParams;->m:Ljava/lang/Float;

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    return p1

    :cond_12
    return p2
.end method

.method public final getFillColor()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AppearanceParams;->j:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getFontSize()Ljava/lang/Float;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AppearanceParams;->e:Ljava/lang/Float;

    return-object v0
.end method

.method public final getFontStyleType()Lio/bidmachine/rendering/model/FontStyleType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AppearanceParams;->f:Lio/bidmachine/rendering/model/FontStyleType;

    return-object v0
.end method

.method public final getOpacity()Ljava/lang/Float;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AppearanceParams;->d:Ljava/lang/Float;

    return-object v0
.end method

.method public final getPadding()Lio/bidmachine/rendering/model/Padding;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AppearanceParams;->l:Lio/bidmachine/rendering/model/Padding;

    return-object v0
.end method

.method public final getShadowColor()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AppearanceParams;->k:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStrokeColor()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AppearanceParams;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStrokeWidthPx(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AppearanceParams;->h:Ljava/lang/Float;

    if-eqz v0, :cond_16

    .line 2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getTextHorizontalGravity()Lio/bidmachine/rendering/model/HorizontalGravity;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AppearanceParams;->p:Lio/bidmachine/rendering/model/HorizontalGravity;

    return-object v0
.end method

.method public final getTextLineSpacingPx(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AppearanceParams;->o:Ljava/lang/Float;

    if-eqz v0, :cond_16

    .line 2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getTextMaxLines()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AppearanceParams;->n:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getVisible()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AppearanceParams;->b:Ljava/lang/Boolean;

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.AppearanceParams.Companion (io.bidmachine.rendering.model.AppearanceParams$Companion)
.class public final Lio/bidmachine/rendering/model/AppearanceParams$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/AppearanceParams;
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
    invoke-direct {p0}, Lio/bidmachine/rendering/model/AppearanceParams$Companion;-><init>()V

    return-void
.end method
