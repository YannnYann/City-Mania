###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityLifecycleMetric (io.bidmachine.util.viewabilitytracker.metric.ViewabilityLifecycleMetric)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric;
.super Ljava/lang/Object;
.source "ViewabilityLifecycleMetric.kt"

# interfaces
.implements Lio/bidmachine/util/viewabilitytracker/metric/Metric;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$Companion;,
        Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$Companion;

.field public static final LOGGER:Lio/bidmachine/util/log/TagLogger;


# instance fields
.field public final states:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric;->Companion:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$Companion;

    .line 21
    new-instance v0, Lio/bidmachine/util/log/TagLogger;

    const-string v2, "LifecycleMetric"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3, v1}, Lio/bidmachine/util/log/TagLogger;-><init>(Ljava/lang/String;Lio/bidmachine/util/log/LoggerInstance;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric;->LOGGER:Lio/bidmachine/util/log/TagLogger;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;",
            ">;)V"
        }
    .end annotation

    const-string v0, "states"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric;->states:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public check(Landroid/view/View;)Z
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric;->states:Ljava/util/List;

    sget-object v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;->HAS_WINDOW_FOCUS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_23

    .line 10
    sget-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric;->LOGGER:Lio/bidmachine/util/log/TagLogger;

    new-instance v2, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$check$1;

    invoke-direct {v2, p1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$check$1;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v2, v1, p1}, Lio/bidmachine/util/log/LoggerInstance;->d$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_23
    return v1
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityLifecycleMetric.Companion (io.bidmachine.util.viewabilitytracker.metric.ViewabilityLifecycleMetric$Companion)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$Companion;
.super Ljava/lang/Object;
.source "ViewabilityLifecycleMetric.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityLifecycleMetric.State (io.bidmachine.util.viewabilitytracker.metric.ViewabilityLifecycleMetric$State)
.class public final enum Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;
.super Ljava/lang/Enum;
.source "ViewabilityLifecycleMetric.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;

.field public static final enum HAS_WINDOW_FOCUS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;


# direct methods
.method public static final synthetic $values()[Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;->HAS_WINDOW_FOCUS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;

    filled-new-array {v0}, [Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;

    const-string v1, "HAS_WINDOW_FOCUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;->HAS_WINDOW_FOCUS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;

    invoke-static {}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;->$values()[Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;

    move-result-object v0

    sput-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;->$VALUES:[Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;->$VALUES:[Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;

    return-object v0
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityLifecycleMetric.AnonymousClass1 (io.bidmachine.util.viewabilitytracker.metric.ViewabilityLifecycleMetric$check$1)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$check$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewabilityLifecycleMetric.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric;->check(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$check$1;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 10
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$check$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check failed: view window focus (false), must be true - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$check$1;->$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
