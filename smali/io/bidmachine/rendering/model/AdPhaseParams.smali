###### Class io.bidmachine.rendering.model.AdPhaseParams (io.bidmachine.rendering.model.AdPhaseParams)
.class public final Lio/bidmachine/rendering/model/AdPhaseParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/AdPhaseParams$Builder;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lio/bidmachine/rendering/model/Background;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/Map;

.field public final h:Ljava/util/List;


# direct methods
.method public constructor <init>(ILio/bidmachine/rendering/model/Background;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/rendering/model/Background;",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/AdElementParams;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/AdElementParams;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/MethodParams;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Lio/bidmachine/rendering/model/EventType;",
            "Lio/bidmachine/rendering/model/EventParams;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adsList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodParamsList"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceEventTypeMap"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customParams"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateGroups"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/bidmachine/rendering/model/AdPhaseParams;->a:I

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/model/AdPhaseParams;->b:Lio/bidmachine/rendering/model/Background;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/model/AdPhaseParams;->c:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lio/bidmachine/rendering/model/AdPhaseParams;->d:Ljava/util/List;

    .line 6
    iput-object p5, p0, Lio/bidmachine/rendering/model/AdPhaseParams;->e:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lio/bidmachine/rendering/model/AdPhaseParams;->f:Ljava/util/Map;

    .line 8
    iput-object p7, p0, Lio/bidmachine/rendering/model/AdPhaseParams;->g:Ljava/util/Map;

    .line 9
    iput-object p8, p0, Lio/bidmachine/rendering/model/AdPhaseParams;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAdsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/AdElementParams;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdPhaseParams;->c:Ljava/util/List;

    return-object v0
.end method

.method public final getBackground()Lio/bidmachine/rendering/model/Background;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdPhaseParams;->b:Lio/bidmachine/rendering/model/Background;

    return-object v0
.end method

.method public final getControlsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/AdElementParams;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdPhaseParams;->d:Ljava/util/List;

    return-object v0
.end method

.method public final getEventTypeMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lio/bidmachine/rendering/model/EventType;",
            "Lio/bidmachine/rendering/model/EventParams;",
            ">;"
        }
    .end annotation

    const-string v0, "sourceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdPhaseParams;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public final getMethodParamsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/MethodParams;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdPhaseParams;->e:Ljava/util/List;

    return-object v0
.end method

.method public final getSequence()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/AdPhaseParams;->a:I

    return v0
.end method

.method public final getStateGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdPhaseParams;->h:Ljava/util/List;

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.AdPhaseParams.Builder (io.bidmachine.rendering.model.AdPhaseParams$Builder)
.class public final Lio/bidmachine/rendering/model/AdPhaseParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/AdPhaseParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/List;

.field public h:Lio/bidmachine/rendering/model/Background;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->a:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->b:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->c:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->d:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->e:Ljava/util/Map;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->f:Ljava/util/Map;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addAdsElementParams(Lio/bidmachine/rendering/model/AdElementParams;)Lio/bidmachine/rendering/model/AdPhaseParams$Builder;
    .registers 3

    const-string v0, "adElementParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addControlsElementParams(Lio/bidmachine/rendering/model/AdElementParams;)Lio/bidmachine/rendering/model/AdPhaseParams$Builder;
    .registers 3

    const-string v0, "adElementParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addEventParams(Lio/bidmachine/rendering/model/EventParams;)Lio/bidmachine/rendering/model/AdPhaseParams$Builder;
    .registers 5

    const-string v0, "eventParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/EventParams;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    return-object p0

    .line 4
    :cond_c
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/EventParams;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_26

    .line 6
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lio/bidmachine/rendering/model/EventType;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 7
    iget-object v2, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->e:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_26
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/EventParams;->getEventType()Lio/bidmachine/rendering/model/EventType;

    move-result-object v0

    .line 12
    sget-object v2, Lio/bidmachine/rendering/model/AdPhaseParams$Builder$a;->a:Lio/bidmachine/rendering/model/AdPhaseParams$Builder$a;

    .line 13
    invoke-static {v1, v0, p1, v2}, Lio/bidmachine/util/UtilsKt;->mergeOrRemove(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    return-object p0
.end method

.method public final addMethodParams(Lio/bidmachine/rendering/model/MethodParams;)Lio/bidmachine/rendering/model/AdPhaseParams$Builder;
    .registers 3

    const-string v0, "methodParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Lio/bidmachine/rendering/model/AdPhaseParams;
    .registers 10

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/AdPhaseParams;

    .line 2
    iget v1, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->a:I

    .line 3
    iget-object v2, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->h:Lio/bidmachine/rendering/model/Background;

    .line 4
    iget-object v3, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->b:Ljava/util/List;

    .line 5
    iget-object v4, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->c:Ljava/util/List;

    .line 6
    iget-object v5, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->d:Ljava/util/List;

    .line 7
    iget-object v6, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->e:Ljava/util/Map;

    .line 8
    iget-object v7, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->f:Ljava/util/Map;

    .line 9
    iget-object v8, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->g:Ljava/util/List;

    .line 10
    invoke-direct/range {v0 .. v8}, Lio/bidmachine/rendering/model/AdPhaseParams;-><init>(ILio/bidmachine/rendering/model/Background;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    return-object v0
.end method

.method public final setBackground(Lio/bidmachine/rendering/model/Background;)Lio/bidmachine/rendering/model/AdPhaseParams$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->h:Lio/bidmachine/rendering/model/Background;

    return-object p0
.end method

.method public final setCustomParams(Ljava/util/Map;)Lio/bidmachine/rendering/model/AdPhaseParams$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/rendering/model/AdPhaseParams$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->f:Ljava/util/Map;

    invoke-static {v0, p1}, Lio/bidmachine/util/UtilsKt;->setSafely(Ljava/util/Map;Ljava/util/Map;)V

    return-object p0
.end method

.method public final setStateGroups(Ljava/util/List;)Lio/bidmachine/rendering/model/AdPhaseParams$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/rendering/model/AdPhaseParams$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->g:Ljava/util/List;

    invoke-static {v0, p1}, Lio/bidmachine/util/UtilsKt;->setSafely(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object p0
.end method

###### Class io.bidmachine.rendering.model.AdPhaseParams.Builder.a (io.bidmachine.rendering.model.AdPhaseParams$Builder$a)
.class public final synthetic Lio/bidmachine/rendering/model/AdPhaseParams$Builder$a;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/model/AdPhaseParams$Builder;->addEventParams(Lio/bidmachine/rendering/model/EventParams;)Lio/bidmachine/rendering/model/AdPhaseParams$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/model/AdPhaseParams$Builder$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder$a;

    invoke-direct {v0}, Lio/bidmachine/rendering/model/AdPhaseParams$Builder$a;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/model/AdPhaseParams$Builder$a;->a:Lio/bidmachine/rendering/model/AdPhaseParams$Builder$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 0
    const-string v4, "mergeWith(Lio/bidmachine/rendering/model/EventParams;)Lio/bidmachine/rendering/model/EventParams;"

    const/4 v5, 0x0

    const/4 v1, 0x2

    const-class v2, Lio/bidmachine/rendering/model/EventParams;

    const-string v3, "mergeWith"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/rendering/model/EventParams;Lio/bidmachine/rendering/model/EventParams;)Lio/bidmachine/rendering/model/EventParams;
    .registers 4

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/model/EventParams;->mergeWith(Lio/bidmachine/rendering/model/EventParams;)Lio/bidmachine/rendering/model/EventParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lio/bidmachine/rendering/model/EventParams;

    check-cast p2, Lio/bidmachine/rendering/model/EventParams;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/model/AdPhaseParams$Builder$a;->a(Lio/bidmachine/rendering/model/EventParams;Lio/bidmachine/rendering/model/EventParams;)Lio/bidmachine/rendering/model/EventParams;

    move-result-object p1

    return-object p1
.end method
