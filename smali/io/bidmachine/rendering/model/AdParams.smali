###### Class io.bidmachine.rendering.model.AdParams (io.bidmachine.rendering.model.AdParams)
.class public final Lio/bidmachine/rendering/model/AdParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/AdParams$Builder;
    }
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/model/CacheType;

.field public final b:Ljava/util/Queue;

.field public final c:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;

.field public final d:Lio/bidmachine/util/visibilitytracking/VisibilityParams;

.field public final e:Lio/bidmachine/rendering/model/AdPhaseParams;

.field public final f:Lio/bidmachine/rendering/model/Orientation;

.field public final g:Lio/bidmachine/rendering/model/Background;

.field public final h:Lio/bidmachine/rendering/model/WatermarkParams;

.field public final i:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/CacheType;Ljava/util/Queue;Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;Lio/bidmachine/util/visibilitytracking/VisibilityParams;Lio/bidmachine/rendering/model/AdPhaseParams;Lio/bidmachine/rendering/model/Orientation;Lio/bidmachine/rendering/model/Background;Lio/bidmachine/rendering/model/WatermarkParams;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/CacheType;",
            "Ljava/util/Queue<",
            "Lio/bidmachine/rendering/model/AdPhaseParams;",
            ">;",
            "Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;",
            "Lio/bidmachine/util/visibilitytracking/VisibilityParams;",
            "Lio/bidmachine/rendering/model/AdPhaseParams;",
            "Lio/bidmachine/rendering/model/Orientation;",
            "Lio/bidmachine/rendering/model/Background;",
            "Lio/bidmachine/rendering/model/WatermarkParams;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cacheType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adPhaseParamsQueue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewabilityTrackerParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityParams"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customParams"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/model/AdParams;->a:Lio/bidmachine/rendering/model/CacheType;

    .line 10
    iput-object p2, p0, Lio/bidmachine/rendering/model/AdParams;->b:Ljava/util/Queue;

    .line 11
    iput-object p3, p0, Lio/bidmachine/rendering/model/AdParams;->c:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;

    .line 12
    iput-object p4, p0, Lio/bidmachine/rendering/model/AdParams;->d:Lio/bidmachine/util/visibilitytracking/VisibilityParams;

    .line 13
    iput-object p5, p0, Lio/bidmachine/rendering/model/AdParams;->e:Lio/bidmachine/rendering/model/AdPhaseParams;

    .line 14
    iput-object p6, p0, Lio/bidmachine/rendering/model/AdParams;->f:Lio/bidmachine/rendering/model/Orientation;

    .line 15
    iput-object p7, p0, Lio/bidmachine/rendering/model/AdParams;->g:Lio/bidmachine/rendering/model/Background;

    .line 16
    iput-object p8, p0, Lio/bidmachine/rendering/model/AdParams;->h:Lio/bidmachine/rendering/model/WatermarkParams;

    .line 17
    iput-object p9, p0, Lio/bidmachine/rendering/model/AdParams;->i:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getAdPhaseParamsQueue()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lio/bidmachine/rendering/model/AdPhaseParams;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdParams;->b:Ljava/util/Queue;

    return-object v0
.end method

.method public final getBackground()Lio/bidmachine/rendering/model/Background;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdParams;->g:Lio/bidmachine/rendering/model/Background;

    return-object v0
.end method

.method public final getCacheType()Lio/bidmachine/rendering/model/CacheType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdParams;->a:Lio/bidmachine/rendering/model/CacheType;

    return-object v0
.end method

.method public final getOrientation()Lio/bidmachine/rendering/model/Orientation;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdParams;->f:Lio/bidmachine/rendering/model/Orientation;

    return-object v0
.end method

.method public final getPlaceholderParams()Lio/bidmachine/rendering/model/AdPhaseParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdParams;->e:Lio/bidmachine/rendering/model/AdPhaseParams;

    return-object v0
.end method

.method public final getViewabilityTrackerParams()Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdParams;->c:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;

    return-object v0
.end method

.method public final getVisibilityParams()Lio/bidmachine/util/visibilitytracking/VisibilityParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdParams;->d:Lio/bidmachine/util/visibilitytracking/VisibilityParams;

    return-object v0
.end method

.method public final getWatermarkParams()Lio/bidmachine/rendering/model/WatermarkParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdParams;->h:Lio/bidmachine/rendering/model/WatermarkParams;

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.AdParams.Builder (io.bidmachine.rendering.model.AdParams$Builder)
.class public final Lio/bidmachine/rendering/model/AdParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/AdParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;

.field public final b:Ljava/util/Queue;

.field public final c:Ljava/util/Map;

.field public d:Lio/bidmachine/rendering/model/CacheType;

.field public e:Lio/bidmachine/rendering/model/AdPhaseParams;

.field public f:Lio/bidmachine/util/visibilitytracking/VisibilityParams;

.field public g:Lio/bidmachine/rendering/model/Orientation;

.field public h:Lio/bidmachine/rendering/model/Background;

.field public i:Lio/bidmachine/rendering/model/WatermarkParams;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;)V
    .registers 3

    const-string v0, "viewabilityTrackerParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/AdParams$Builder;->a:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;

    .line 3
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/AdParams$Builder;->b:Ljava/util/Queue;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/AdParams$Builder;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addAdPhaseParams(Lio/bidmachine/rendering/model/AdPhaseParams;)Lio/bidmachine/rendering/model/AdParams$Builder;
    .registers 3

    const-string v0, "adPhaseParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdParams$Builder;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Lio/bidmachine/rendering/model/AdParams;
    .registers 11

    .line 1
    iget-object v7, p0, Lio/bidmachine/rendering/model/AdParams$Builder;->h:Lio/bidmachine/rendering/model/Background;

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdParams$Builder;->d:Lio/bidmachine/rendering/model/CacheType;

    if-nez v0, :cond_c

    sget-object v0, Lio/bidmachine/rendering/internal/k;->a:Lio/bidmachine/rendering/internal/k;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/k;->b()Lio/bidmachine/rendering/model/CacheType;

    move-result-object v0

    :cond_c
    move-object v1, v0

    .line 3
    iget-object v2, p0, Lio/bidmachine/rendering/model/AdParams$Builder;->b:Ljava/util/Queue;

    .line 4
    iget-object v3, p0, Lio/bidmachine/rendering/model/AdParams$Builder;->a:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;

    .line 5
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdParams$Builder;->f:Lio/bidmachine/util/visibilitytracking/VisibilityParams;

    if-nez v0, :cond_1b

    sget-object v0, Lio/bidmachine/util/visibilitytracking/VisibilityParams;->Companion:Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion;

    invoke-virtual {v0}, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion;->getDefault()Lio/bidmachine/util/visibilitytracking/VisibilityParams;

    move-result-object v0

    :cond_1b
    move-object v4, v0

    .line 6
    iget-object v5, p0, Lio/bidmachine/rendering/model/AdParams$Builder;->e:Lio/bidmachine/rendering/model/AdPhaseParams;

    .line 7
    iget-object v6, p0, Lio/bidmachine/rendering/model/AdParams$Builder;->g:Lio/bidmachine/rendering/model/Orientation;

    .line 8
    iget-object v8, p0, Lio/bidmachine/rendering/model/AdParams$Builder;->i:Lio/bidmachine/rendering/model/WatermarkParams;

    .line 9
    iget-object v9, p0, Lio/bidmachine/rendering/model/AdParams$Builder;->c:Ljava/util/Map;

    .line 10
    new-instance v0, Lio/bidmachine/rendering/model/AdParams;

    invoke-direct/range {v0 .. v9}, Lio/bidmachine/rendering/model/AdParams;-><init>(Lio/bidmachine/rendering/model/CacheType;Ljava/util/Queue;Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;Lio/bidmachine/util/visibilitytracking/VisibilityParams;Lio/bidmachine/rendering/model/AdPhaseParams;Lio/bidmachine/rendering/model/Orientation;Lio/bidmachine/rendering/model/Background;Lio/bidmachine/rendering/model/WatermarkParams;Ljava/util/Map;)V

    return-object v0
.end method

.method public final setBackground(Lio/bidmachine/rendering/model/Background;)Lio/bidmachine/rendering/model/AdParams$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/model/AdParams$Builder;->h:Lio/bidmachine/rendering/model/Background;

    return-object p0
.end method

.method public final setCacheType(Lio/bidmachine/rendering/model/CacheType;)Lio/bidmachine/rendering/model/AdParams$Builder;
    .registers 3

    const-string v0, "cacheType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/model/AdParams$Builder;->d:Lio/bidmachine/rendering/model/CacheType;

    return-object p0
.end method

.method public final setCustomParams(Ljava/util/Map;)Lio/bidmachine/rendering/model/AdParams$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/rendering/model/AdParams$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdParams$Builder;->c:Ljava/util/Map;

    invoke-static {v0, p1}, Lio/bidmachine/util/UtilsKt;->setSafely(Ljava/util/Map;Ljava/util/Map;)V

    return-object p0
.end method

.method public final setOrientation(Lio/bidmachine/rendering/model/Orientation;)Lio/bidmachine/rendering/model/AdParams$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/model/AdParams$Builder;->g:Lio/bidmachine/rendering/model/Orientation;

    return-object p0
.end method

.method public final setPlaceholderParams(Lio/bidmachine/rendering/model/AdPhaseParams;)Lio/bidmachine/rendering/model/AdParams$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/model/AdParams$Builder;->e:Lio/bidmachine/rendering/model/AdPhaseParams;

    return-object p0
.end method

.method public final setVisibilityParams(Lio/bidmachine/util/visibilitytracking/VisibilityParams;)Lio/bidmachine/rendering/model/AdParams$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/model/AdParams$Builder;->f:Lio/bidmachine/util/visibilitytracking/VisibilityParams;

    return-object p0
.end method

.method public final setWatermarkParams(Lio/bidmachine/rendering/model/WatermarkParams;)Lio/bidmachine/rendering/model/AdParams$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/model/AdParams$Builder;->i:Lio/bidmachine/rendering/model/WatermarkParams;

    return-object p0
.end method
