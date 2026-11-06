###### Class info.flowersoft.theotown.drawing.TSMapSystemDrawer (info.flowersoft.theotown.drawing.TSMapSystemDrawer)
.class public final Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;
.super Ljava/lang/Object;
.source "TSMapSystemDrawer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$PathSegment;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTSMapSystemDrawer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TSMapSystemDrawer.kt\ninfo/flowersoft/theotown/drawing/TSMapSystemDrawer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,255:1\n2199#2,2:256\n2199#2,2:258\n2199#2,2:260\n2199#2:262\n2208#2,3:263\n2200#2:266\n2199#2:267\n2208#2,3:268\n2200#2:271\n*S KotlinDebug\n*F\n+ 1 TSMapSystemDrawer.kt\ninfo/flowersoft/theotown/drawing/TSMapSystemDrawer\n*L\n46#1:256,2\n71#1:258,2\n75#1:260,2\n117#1:262\n127#1:263,3\n117#1:266\n140#1:267\n178#1:268,3\n140#1:271\n*E\n"
.end annotation


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final pathSegments:Lcom/badlogic/gdx/utils/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap<",
            "Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$PathSegment;",
            ">;"
        }
    .end annotation
.end field

.field public final routes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;",
            ">;"
        }
    .end annotation
.end field

.field public final stationBounds:Lcom/badlogic/gdx/math/Rectangle;

.field public final stationRoutes:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;",
            ">;>;"
        }
    .end annotation
.end field

.field public style:Linfo/flowersoft/theotown/drawing/TSMapStyle;

.field public final system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

.field public final tempColor:Lio/blueflower/stapel2d/drawing/Color;


# direct methods
.method public static synthetic $r8$lambda$WPSVBp8ppDu_TjzMwK8JOWykFuI(Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;I)V
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->stationBounds$lambda$0$0$0(Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;I)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Linfo/flowersoft/theotown/drawing/TSMapStyle;)V
    .registers 13

    const-string v0, "city"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "system"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "style"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->city:Linfo/flowersoft/theotown/city/City;

    .line 24
    iput-object p2, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    .line 25
    iput-object p3, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->style:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    .line 28
    new-instance p3, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {p3}, Lio/blueflower/stapel2d/drawing/Color;-><init>()V

    iput-object p3, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->tempColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 30
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->queryRoutes()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->routes:Ljava/util/List;

    .line 41
    new-instance p3, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {p3}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    .line 42
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    iput v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 43
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result p1

    iput p1, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 44
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 45
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 46
    const-string p1, "routes"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    .line 2199
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_55
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;

    .line 47
    iget-object v6, v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    new-instance v0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$$ExternalSyntheticLambda0;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v6, v0}, Lio/blueflower/stapel2d/util/IntList;->forEach(Lio/blueflower/stapel2d/util/IntList$IntConsumer;)V

    goto :goto_55

    :cond_6d
    move-object v1, p0

    .line 55
    iget p2, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-float p2, p2

    iget-object v0, v1, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v5, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    iget v4, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    int-to-float v2, v4

    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    int-to-float v3, v5

    invoke-virtual {p3, p2, v0, v2, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 58
    iget p2, p3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    const/high16 v0, 0x40800000    # 4.0f

    sub-float/2addr p2, v0

    iput p2, p3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 59
    iget p2, p3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr p2, v0

    iput p2, p3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 60
    iget p2, p3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v0, 0x41000000    # 8.0f

    add-float/2addr p2, v0

    iput p2, p3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 61
    iget p2, p3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr p2, v0

    iput p2, p3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 41
    iput-object p3, v1, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->stationBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 67
    new-instance p2, Lcom/badlogic/gdx/utils/LongMap;

    invoke-direct {p2}, Lcom/badlogic/gdx/utils/LongMap;-><init>()V

    iput-object p2, v1, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->pathSegments:Lcom/badlogic/gdx/utils/LongMap;

    .line 68
    new-instance p2, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {p2}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object p2, v1, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->stationRoutes:Lcom/badlogic/gdx/utils/IntMap;

    .line 71
    iget-object p2, v1, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStations()Ljava/util/List;

    move-result-object p2

    const-string p3, "getStations(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    .line 2199
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_e2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    .line 72
    iget-object v0, v1, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->stationRoutes:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result p3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p3, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_c7

    .line 75
    :cond_e2
    iget-object p2, v1, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->routes:Ljava/util/List;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    .line 2199
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_ed
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_17f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;

    .line 76
    iget-object p3, p2, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p3}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p3

    const/4 v0, 0x0

    move v2, v0

    :goto_101
    if-ge v2, p3, :cond_15e

    add-int/lit8 v3, v2, 0x1

    .line 77
    iget-object v4, p2, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v4

    if-lt v3, v4, :cond_114

    iget-object v4, p2, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;->mode:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    sget-object v5, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;->LOOP:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    if-eq v4, v5, :cond_114

    goto :goto_15e

    .line 81
    :cond_114
    iget-object v4, p2, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    .line 82
    iget-object v4, p2, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v5

    rem-int v5, v3, v5

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    .line 83
    iget-object v5, v1, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v5, v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationById(I)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object v5

    .line 84
    iget-object v6, v1, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v6, v4}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationById(I)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object v6

    .line 85
    invoke-virtual {p0, v2, v4}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->getPathSegmentKey(II)J

    move-result-wide v7

    .line 87
    iget-object v2, v1, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->pathSegments:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v2, v7, v8}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$PathSegment;

    if-nez v2, :cond_150

    .line 89
    new-instance v2, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$PathSegment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v5, v6}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$PathSegment;-><init>(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)V

    .line 90
    iget-object v4, v1, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->pathSegments:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v4, v7, v8, v2}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_150
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v5, v6}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$PathSegment;->addRoute(Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)V

    move v2, v3

    goto :goto_101

    .line 96
    :cond_15e
    :goto_15e
    iget-object p3, p2, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p3}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p3

    :goto_164
    if-ge v0, p3, :cond_ed

    .line 97
    iget-object v2, p2, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    .line 98
    iget-object v3, v1, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->stationRoutes:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_17c

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17c
    add-int/lit8 v0, v0, 0x1

    goto :goto_164

    :cond_17f
    return-void
.end method

.method public static final stationBounds$lambda$0$0$0(Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;I)V
    .registers 7

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {p0, p5}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationById(I)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object p0

    .line 49
    iget p5, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/TileSet;->getMinX()I

    move-result v0

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    iput p5, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 50
    iget p1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object p5

    invoke-virtual {p5}, Linfo/flowersoft/theotown/util/TileSet;->getMinY()I

    move-result p5

    invoke-static {p1, p5}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 51
    iget p1, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/util/TileSet;->getMaxX()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 52
    iget p1, p4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object p0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TileSet;->getMaxY()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return-void
.end method


# virtual methods
.method public final draw(Lio/blueflower/stapel2d/drawing/Engine;FFFF)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v1, "engine"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v1, v0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->pathSegments:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/LongMap;->entries()Lcom/badlogic/gdx/utils/LongMap$Entries;

    move-result-object v1

    const-string v8, "entries(...)"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2199
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_18
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const v10, 0x3e4ccccd    # 0.2f

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f000000    # 0.5f

    if-eqz v1, :cond_c7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/LongMap$Entry;

    .line 118
    iget-object v1, v1, Lcom/badlogic/gdx/utils/LongMap$Entry;->value:Ljava/lang/Object;

    move-object v14, v1

    check-cast v14, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$PathSegment;

    .line 119
    invoke-virtual {v14}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$PathSegment;->getStart()Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object v1

    .line 120
    invoke-virtual {v14}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$PathSegment;->getEnd()Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object v2

    .line 122
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->getTileX(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v13

    mul-float v3, v3, p2

    add-float v3, v3, p4

    .line 123
    iget-object v4, v0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v12

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->getTileY(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v4, v1

    add-float/2addr v4, v13

    mul-float v4, v4, p3

    add-float v4, v4, p5

    .line 124
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->getTileX(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v13

    mul-float v1, v1, p2

    add-float v1, v1, p4

    .line 125
    iget-object v5, v0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v12

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->getTileY(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v5, v2

    add-float/2addr v5, v13

    mul-float v5, v5, p3

    add-float v5, v5, p5

    .line 127
    invoke-virtual {v14}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$PathSegment;->getRoutes()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 2209
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v16, v11, 0x1

    if-gez v11, :cond_8e

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_8e
    check-cast v2, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;

    .line 128
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->getStyledColor(Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v7, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    const v2, 0x3e99999a    # 0.3f

    mul-float v2, v2, p2

    int-to-float v6, v11

    .line 132
    invoke-virtual {v14}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$PathSegment;->getRoutes()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    mul-float/2addr v11, v13

    sub-float/2addr v6, v11

    mul-float/2addr v2, v6

    mul-float v6, p2, v10

    .line 133
    invoke-static {v6, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    move/from16 v19, v3

    move v3, v1

    move/from16 v1, v19

    move/from16 v19, v5

    move v5, v2

    move v2, v4

    move/from16 v4, v19

    .line 129
    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->drawCurve(FFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move v5, v3

    move v3, v1

    move v1, v5

    move v5, v4

    move/from16 v11, v16

    move v4, v2

    goto :goto_7d

    .line 140
    :cond_c7
    iget-object v1, v0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->stationRoutes:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntMap;->entries()Lcom/badlogic/gdx/utils/IntMap$Entries;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2199
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1ce

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/IntMap$Entry;

    .line 141
    iget v2, v1, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    .line 142
    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    move-object v14, v1

    check-cast v14, Ljava/util/List;

    .line 143
    iget-object v1, v0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationById(I)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object v1

    .line 144
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->getTileX(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)I

    move-result v2

    .line 145
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->getTileY(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)I

    move-result v3

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float v2, v2, p4

    mul-float v4, p2, v13

    add-float/2addr v2, v4

    .line 148
    iget-object v4, v0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v12

    int-to-float v3, v3

    sub-float/2addr v4, v3

    mul-float v4, v4, p3

    add-float v4, v4, p5

    mul-float v15, p3, v13

    add-float v16, v4, v15

    .line 150
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_122

    .line 151
    iget-object v3, v0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->style:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/drawing/TSMapStyle;->getStationInactiveColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    invoke-virtual {v7, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_12b

    .line 153
    :cond_122
    iget-object v3, v0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->style:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/drawing/TSMapStyle;->getStationColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    invoke-virtual {v7, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    :goto_12b
    const/high16 v3, 0x40a00000    # 5.0f

    div-float v4, p2, v3

    div-float v3, p3, v3

    .line 157
    invoke-virtual {v7, v4, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 159
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 160
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getNameOrUnnamed()Ljava/lang/String;

    move-result-object v1

    add-float v4, v16, v15

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v17, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v3, v17

    move/from16 v17, v10

    move-object v10, v0

    move-object/from16 v0, p1

    .line 158
    invoke-virtual/range {v0 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move v7, v3

    .line 165
    invoke-virtual {v0, v12, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 168
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    mul-float v2, p2, v17

    add-float/2addr v1, v2

    const v2, 0x3f99999a    # 1.2f

    mul-float v3, p2, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 170
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    mul-float v3, v4, v13

    sub-float v3, v7, v3

    const v5, 0x3f19999a    # 0.6f

    mul-float v5, v5, p3

    sub-float v5, v16, v5

    mul-float v2, v2, p3

    .line 175
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move/from16 v19, v5

    move v5, v2

    move v2, v3

    move/from16 v3, v19

    .line 169
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 178
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v14

    check-cast v1, Ljava/lang/Iterable;

    .line 2209
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v11

    :goto_18d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v18, v1, 0x1

    if-gez v1, :cond_19e

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_19e
    check-cast v2, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;

    .line 179
    invoke-virtual {v10, v2}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->getStyledColor(Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 181
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v1, v1

    .line 182
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v13

    sub-float/2addr v1, v3

    mul-float v1, v1, p2

    add-float/2addr v1, v7

    sub-float v3, v16, v15

    .line 186
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move-object v4, v2

    move v2, v1

    move-object v1, v4

    move/from16 v4, p2

    move/from16 v5, p3

    .line 180
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    move-object/from16 v0, p1

    move/from16 v1, v18

    goto :goto_18d

    :cond_1c7
    move-object/from16 v7, p1

    move-object v0, v10

    move/from16 v10, v17

    goto/16 :goto_d4

    :cond_1ce
    move-object v10, v0

    return-void
.end method

.method public final drawCurve(FFFFFFLio/blueflower/stapel2d/drawing/Engine;)V
    .registers 23

    cmpg-float v0, p3, p1

    if-gez v0, :cond_11

    move/from16 v0, p5

    neg-float v0, v0

    move/from16 v4, p1

    move/from16 v6, p3

    move/from16 v1, p4

    move v2, v0

    move/from16 v0, p2

    goto :goto_1c

    :cond_11
    move/from16 v0, p5

    move/from16 v6, p1

    move/from16 v1, p2

    move/from16 v4, p3

    move v2, v0

    move/from16 v0, p4

    :goto_1c
    sub-float v3, v4, v6

    sub-float v14, v0, v1

    .line 216
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v5, v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    if-lez v5, :cond_70

    .line 217
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v5

    mul-float/2addr v2, v5

    float-to-double v7, v7

    .line 218
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v5, v7

    mul-float v12, v5, v2

    .line 219
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v5

    add-float v7, v1, v2

    .line 221
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v2, v8

    sub-float v8, v4, v2

    move v9, v7

    move/from16 v10, p6

    move-object/from16 v11, p7

    .line 219
    invoke-virtual/range {v5 .. v11}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move v5, v1

    .line 224
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    .line 225
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    sub-float v2, v4, v2

    add-float v3, v5, v12

    add-float v5, v0, v12

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 224
    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    return-void

    :cond_70
    move v5, v1

    .line 230
    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v2, v1

    float-to-double v7, v7

    .line 231
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v1, v7

    mul-float/2addr v1, v2

    .line 232
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v7

    add-float v8, v4, v2

    .line 233
    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v2, v9

    add-float v9, v5, v2

    move v10, v8

    move/from16 v12, p6

    move-object/from16 v13, p7

    move v11, v0

    .line 232
    invoke-virtual/range {v7 .. v13}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 237
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v7

    add-float v8, v6, v1

    add-float v10, v4, v1

    .line 239
    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    add-float v11, v5, v0

    move v9, v5

    .line 237
    invoke-virtual/range {v7 .. v13}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    return-void
.end method

.method public final getPathSegmentKey(II)J
    .registers 6

    .line 65
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long p1, p1

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public final getRoutes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->routes:Ljava/util/List;

    return-object v0
.end method

.method public final getStationBounds()Lcom/badlogic/gdx/math/Rectangle;
    .registers 2

    .line 41
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->stationBounds:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method public final getStyledColor(Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->tempColor:Lio/blueflower/stapel2d/drawing/Color;

    iget-object p1, p1, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Color;->setTo(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    .line 37
    iget-object p1, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->tempColor:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->style:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/drawing/TSMapStyle;->getRouteTintColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->style:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/drawing/TSMapStyle;->getRouteTintFactor()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    .line 38
    iget-object p1, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->tempColor:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public final getTileX(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)I
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->isCity()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 104
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getCityX()I

    move-result p1

    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/4 v1, -0x4

    invoke-static {p1, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p1

    return p1

    .line 106
    :cond_1d
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/TileSet;->getMeanX()I

    move-result p1

    return p1
.end method

.method public final getTileY(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)I
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->isCity()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 110
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getCityY()I

    move-result p1

    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/4 v1, -0x4

    invoke-static {p1, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p1

    return p1

    .line 112
    :cond_1d
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/TileSet;->getMeanY()I

    move-result p1

    return p1
.end method

.method public final setStyle(Linfo/flowersoft/theotown/drawing/TSMapStyle;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->style:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    return-void
.end method

###### Class info.flowersoft.theotown.drawing.TSMapSystemDrawer.PathSegment (info.flowersoft.theotown.drawing.TSMapSystemDrawer$PathSegment)
.class public final Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$PathSegment;
.super Ljava/lang/Object;
.source "TSMapSystemDrawer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PathSegment"
.end annotation


# instance fields
.field public final end:Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

.field public final routes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;",
            ">;"
        }
    .end annotation
.end field

.field public final start:Linfo/flowersoft/theotown/components/transportationsystem/TSStation;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)V
    .registers 4

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$PathSegment;->start:Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    .line 247
    iput-object p2, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$PathSegment;->end:Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    .line 249
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$PathSegment;->routes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addRoute(Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)V
    .registers 5

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "start"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "end"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object p2, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$PathSegment;->routes:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getEnd()Linfo/flowersoft/theotown/components/transportationsystem/TSStation;
    .registers 2

    .line 247
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$PathSegment;->end:Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    return-object v0
.end method

.method public final getRoutes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$PathSegment;->routes:Ljava/util/List;

    return-object v0
.end method

.method public final getStart()Linfo/flowersoft/theotown/components/transportationsystem/TSStation;
    .registers 2

    .line 246
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$PathSegment;->start:Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    return-object v0
.end method

###### Class info.flowersoft.theotown.drawing.TSMapSystemDrawer$$ExternalSyntheticLambda0 (info.flowersoft.theotown.drawing.TSMapSystemDrawer$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/IntList$IntConsumer;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f$3:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f$4:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;

    iput-object p2, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p4, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p5, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/internal/Ref$IntRef;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 8

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;

    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v2, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v3, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v4, p0, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/internal/Ref$IntRef;

    move v5, p1

    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;->$r8$lambda$WPSVBp8ppDu_TjzMwK8JOWykFuI(Linfo/flowersoft/theotown/drawing/TSMapSystemDrawer;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;I)V

    return-void
.end method
