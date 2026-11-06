###### Class io.bidmachine.iab.utils.ClickAreaFactory (io.bidmachine.iab.utils.ClickAreaFactory)
.class public final Lio/bidmachine/iab/utils/ClickAreaFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/utils/ClickAreaFactory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/iab/utils/ClickAreaFactory$Companion;

.field public static final d:Lkotlin/ranges/ClosedFloatingPointRange;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Integer;

.field public final c:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/iab/utils/ClickAreaFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/iab/utils/ClickAreaFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/iab/utils/ClickAreaFactory;->Companion:Lio/bidmachine/iab/utils/ClickAreaFactory$Companion;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt__RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v0

    sput-object v0, Lio/bidmachine/iab/utils/ClickAreaFactory;->d:Lkotlin/ranges/ClosedFloatingPointRange;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lio/bidmachine/iab/utils/ClickAreaFactory;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0, v0}, Lio/bidmachine/iab/utils/ClickAreaFactory;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/iab/utils/ClickAreaFactory;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/iab/utils/ClickAreaFactory;->b:Ljava/lang/Integer;

    .line 4
    iput-object p3, p0, Lio/bidmachine/iab/utils/ClickAreaFactory;->c:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic access$getNORMALIZED_RANGE$cp()Lkotlin/ranges/ClosedFloatingPointRange;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/iab/utils/ClickAreaFactory;->d:Lkotlin/ranges/ClosedFloatingPointRange;

    return-object v0
.end method


# virtual methods
.method public final a(II)Lio/bidmachine/rendering/model/ClickArea;
    .registers 9

    .line 15
    new-instance v0, Lio/bidmachine/rendering/model/ClickArea;

    .line 16
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x11

    if-eq p1, v2, :cond_14

    const/4 v2, 0x5

    if-eq p1, v2, :cond_12

    if-eq p1, v5, :cond_14

    :cond_12
    move p1, v4

    goto :goto_15

    :cond_14
    move p1, v3

    :goto_15
    const/16 v2, 0x10

    if-eq p2, v2, :cond_22

    if-eq p2, v5, :cond_22

    const/16 v2, 0x50

    if-eq p2, v2, :cond_21

    const/4 v3, 0x0

    goto :goto_22

    :cond_21
    move v3, v4

    .line 17
    :cond_22
    :goto_22
    invoke-direct {v1, p1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 29
    sget-object p1, Lio/bidmachine/rendering/model/ClickArea;->Companion:Lio/bidmachine/rendering/model/ClickArea$Companion;

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/ClickArea$Companion;->getDEFAULT_SPREAD$bidmachine_android_sdk_bb_3_8_0()Landroid/graphics/PointF;

    move-result-object p1

    const/4 p2, 0x0

    .line 30
    invoke-direct {v0, v1, p1, p2}, Lio/bidmachine/rendering/model/ClickArea;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/Long;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lio/bidmachine/rendering/model/ClickArea;
    .registers 11

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/bidmachine/util/UtilsKt;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    .line 2
    const-string v0, "spread"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    check-cast v0, Ljava/util/Map;

    goto :goto_18

    :cond_17
    move-object v0, v2

    .line 3
    :goto_18
    new-instance v1, Lio/bidmachine/rendering/model/ClickArea;

    .line 4
    sget-object v3, Lio/bidmachine/iab/utils/ClickAreaFactory;->Companion:Lio/bidmachine/iab/utils/ClickAreaFactory$Companion;

    const-string v4, "center"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v4, p1, Ljava/util/Map;

    if-eqz v4, :cond_29

    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    .line 5
    :cond_29
    invoke-static {v3, v2}, Lio/bidmachine/iab/utils/ClickAreaFactory$Companion;->access$toPointF(Lio/bidmachine/iab/utils/ClickAreaFactory$Companion;Ljava/util/Map;)Landroid/graphics/PointF;

    move-result-object p1

    if-nez p1, :cond_35

    sget-object p1, Lio/bidmachine/rendering/model/ClickArea;->Companion:Lio/bidmachine/rendering/model/ClickArea$Companion;

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/ClickArea$Companion;->getDEFAULT_CENTER$bidmachine_android_sdk_bb_3_8_0()Landroid/graphics/PointF;

    move-result-object p1

    .line 6
    :cond_35
    invoke-static {v3, v0}, Lio/bidmachine/iab/utils/ClickAreaFactory$Companion;->access$toPointF(Lio/bidmachine/iab/utils/ClickAreaFactory$Companion;Ljava/util/Map;)Landroid/graphics/PointF;

    move-result-object v2

    if-nez v2, :cond_41

    sget-object v2, Lio/bidmachine/rendering/model/ClickArea;->Companion:Lio/bidmachine/rendering/model/ClickArea$Companion;

    invoke-virtual {v2}, Lio/bidmachine/rendering/model/ClickArea$Companion;->getDEFAULT_SPREAD$bidmachine_android_sdk_bb_3_8_0()Landroid/graphics/PointF;

    move-result-object v2

    .line 7
    :cond_41
    invoke-static {v3, v0}, Lio/bidmachine/iab/utils/ClickAreaFactory$Companion;->access$toSeed(Lio/bidmachine/iab/utils/ClickAreaFactory$Companion;Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v0

    .line 8
    invoke-direct {v1, p1, v2, v0}, Lio/bidmachine/rendering/model/ClickArea;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/Long;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    return-object v1

    .line 14
    :catch_49
    new-instance v3, Lio/bidmachine/rendering/model/ClickArea;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/rendering/model/ClickArea;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method

.method public final build()Lio/bidmachine/rendering/model/ClickArea;
    .registers 8

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/ClickAreaFactory;->a:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/utils/ClickAreaFactory;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/ClickArea;

    move-result-object v0

    return-object v0

    .line 2
    :cond_9
    iget-object v0, p0, Lio/bidmachine/iab/utils/ClickAreaFactory;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lio/bidmachine/iab/utils/ClickAreaFactory;->c:Ljava/lang/Integer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/iab/utils/ClickAreaFactory;->a(II)Lio/bidmachine/rendering/model/ClickArea;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1f
    new-instance v1, Lio/bidmachine/rendering/model/ClickArea;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/rendering/model/ClickArea;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

###### Class io.bidmachine.iab.utils.ClickAreaFactory.Companion (io.bidmachine.iab.utils.ClickAreaFactory$Companion)
.class public final Lio/bidmachine/iab/utils/ClickAreaFactory$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/utils/ClickAreaFactory;
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
    invoke-direct {p0}, Lio/bidmachine/iab/utils/ClickAreaFactory$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$toPointF(Lio/bidmachine/iab/utils/ClickAreaFactory$Companion;Ljava/util/Map;)Landroid/graphics/PointF;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/ClickAreaFactory$Companion;->a(Ljava/util/Map;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$toSeed(Lio/bidmachine/iab/utils/ClickAreaFactory$Companion;Ljava/util/Map;)Ljava/lang/Long;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/ClickAreaFactory$Companion;->b(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Landroid/graphics/PointF;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 1
    const-string v1, "x"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_b

    :cond_a
    move-object v1, v0

    :goto_b
    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v0}, Lio/bidmachine/util/UtilsKt;->toFloatOrDefault$default(Ljava/lang/Object;Ljava/lang/Float;ILjava/lang/Object;)Ljava/lang/Float;

    move-result-object v1

    if-eqz p1, :cond_19

    .line 2
    const-string v3, "y"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1a

    :cond_19
    move-object p1, v0

    :goto_1a
    invoke-static {p1, v0, v2, v0}, Lio/bidmachine/util/UtilsKt;->toFloatOrDefault$default(Ljava/lang/Object;Ljava/lang/Float;ILjava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    if-eqz v1, :cond_43

    .line 3
    invoke-static {}, Lio/bidmachine/iab/utils/ClickAreaFactory;->access$getNORMALIZED_RANGE$cp()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v2

    invoke-interface {v2, v1}, Lkotlin/ranges/ClosedFloatingPointRange;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_43

    if-eqz p1, :cond_43

    invoke-static {}, Lio/bidmachine/iab/utils/ClickAreaFactory;->access$getNORMALIZED_RANGE$cp()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v2

    invoke-interface {v2, p1}, Lkotlin/ranges/ClosedFloatingPointRange;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_43

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    :cond_43
    return-object v0
.end method

.method public final b(Ljava/util/Map;)Ljava/lang/Long;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 1
    const-string v1, "seed"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_11

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lio/bidmachine/util/UtilsKt;->toLongOrDefault$default(Ljava/lang/Object;Ljava/lang/Long;ILjava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_11
    return-object v0
.end method
