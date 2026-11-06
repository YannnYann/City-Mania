###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityGeometryMetric (io.bidmachine.util.viewabilitytracker.metric.ViewabilityGeometryMetric)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;
.super Ljava/lang/Object;
.source "ViewabilityGeometryMetric.kt"

# interfaces
.implements Lio/bidmachine/util/viewabilitytracker/metric/Metric;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$Companion;

.field public static final LOGGER:Lio/bidmachine/util/log/TagLogger;


# instance fields
.field public final isVisible:Z

.field public final minAlpha:Ljava/lang/Float;

.field public final minHeightDp:Ljava/lang/Float;

.field public final minWidthDp:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->Companion:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$Companion;

    .line 50
    new-instance v0, Lio/bidmachine/util/log/TagLogger;

    const-string v2, "GeometryMetric"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3, v1}, Lio/bidmachine/util/log/TagLogger;-><init>(Ljava/lang/String;Lio/bidmachine/util/log/LoggerInstance;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->LOGGER:Lio/bidmachine/util/log/TagLogger;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .registers 5

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->isVisible:Z

    .line 10
    iput-object p2, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->minAlpha:Ljava/lang/Float;

    .line 11
    iput-object p3, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->minWidthDp:Ljava/lang/Float;

    .line 12
    iput-object p4, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->minHeightDp:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public check(Landroid/view/View;)Z
    .registers 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    .line 17
    iget-boolean v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->isVisible:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1d

    if-nez v0, :cond_1d

    .line 18
    sget-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->LOGGER:Lio/bidmachine/util/log/TagLogger;

    new-instance v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$1;

    invoke-direct {v1, p1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$1;-><init>(Landroid/view/View;)V

    invoke-static {v0, v4, v1, v3, v4}, Lio/bidmachine/util/log/LoggerInstance;->d$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v2

    .line 23
    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 24
    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->minAlpha:Ljava/lang/Float;

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_38

    .line 25
    sget-object v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->LOGGER:Lio/bidmachine/util/log/TagLogger;

    new-instance v5, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$2;

    invoke-direct {v5, v0, p0, p1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$2;-><init>(FLio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;Landroid/view/View;)V

    invoke-static {v1, v4, v5, v3, v4}, Lio/bidmachine/util/log/LoggerInstance;->d$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v2

    .line 30
    :cond_38
    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->getWidthDp(Landroid/view/View;)I

    move-result v0

    .line 31
    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->minWidthDp:Ljava/lang/Float;

    if-eqz v1, :cond_54

    int-to-float v5, v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v5, v1

    if-gez v1, :cond_54

    .line 32
    sget-object v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->LOGGER:Lio/bidmachine/util/log/TagLogger;

    new-instance v5, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$3;

    invoke-direct {v5, v0, p0, p1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$3;-><init>(ILio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;Landroid/view/View;)V

    invoke-static {v1, v4, v5, v3, v4}, Lio/bidmachine/util/log/LoggerInstance;->d$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v2

    .line 37
    :cond_54
    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->getHeightDp(Landroid/view/View;)I

    move-result v0

    .line 38
    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->minHeightDp:Ljava/lang/Float;

    if-eqz v1, :cond_70

    int-to-float v5, v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v5, v1

    if-gez v1, :cond_70

    .line 39
    sget-object v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->LOGGER:Lio/bidmachine/util/log/TagLogger;

    new-instance v5, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$4;

    invoke-direct {v5, v0, p0, p1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$4;-><init>(ILio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;Landroid/view/View;)V

    invoke-static {v1, v4, v5, v3, v4}, Lio/bidmachine/util/log/LoggerInstance;->d$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v2

    :cond_70
    return v3
.end method

.method public final getMinAlpha()Ljava/lang/Float;
    .registers 2

    .line 10
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->minAlpha:Ljava/lang/Float;

    return-object v0
.end method

.method public final getMinHeightDp()Ljava/lang/Float;
    .registers 2

    .line 12
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->minHeightDp:Ljava/lang/Float;

    return-object v0
.end method

.method public final getMinWidthDp()Ljava/lang/Float;
    .registers 2

    .line 11
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->minWidthDp:Ljava/lang/Float;

    return-object v0
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityGeometryMetric.Companion (io.bidmachine.util.viewabilitytracker.metric.ViewabilityGeometryMetric$Companion)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$Companion;
.super Ljava/lang/Object;
.source "ViewabilityGeometryMetric.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityGeometryMetric.AnonymousClass1 (io.bidmachine.util.viewabilitytracker.metric.ViewabilityGeometryMetric$check$1)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewabilityGeometryMetric.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->check(Landroid/view/View;)Z
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
    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$1;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 18
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check failed: view visibility (false), must be true - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$1;->$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityGeometryMetric.AnonymousClass2 (io.bidmachine.util.viewabilitytracker.metric.ViewabilityGeometryMetric$check$2)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewabilityGeometryMetric.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->check(Landroid/view/View;)Z
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
.field public final synthetic $alpha:F

.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;


# direct methods
.method public constructor <init>(FLio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;Landroid/view/View;)V
    .registers 4

    .line 0
    iput p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$2;->$alpha:F

    iput-object p2, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$2;->this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;

    iput-object p3, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$2;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check failed: view alpha ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$2;->$alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "), must be more then "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$2;->this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;

    invoke-virtual {v1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->getMinAlpha()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$2;->$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityGeometryMetric.AnonymousClass3 (io.bidmachine.util.viewabilitytracker.metric.ViewabilityGeometryMetric$check$3)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewabilityGeometryMetric.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->check(Landroid/view/View;)Z
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

.field public final synthetic $widthDp:I

.field public final synthetic this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;


# direct methods
.method public constructor <init>(ILio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;Landroid/view/View;)V
    .registers 4

    .line 0
    iput p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$3;->$widthDp:I

    iput-object p2, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$3;->this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;

    iput-object p3, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$3;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$3;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check failed: view width ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$3;->$widthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), must be more then "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$3;->this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;

    invoke-virtual {v1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->getMinWidthDp()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$3;->$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityGeometryMetric.AnonymousClass4 (io.bidmachine.util.viewabilitytracker.metric.ViewabilityGeometryMetric$check$4)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$4;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewabilityGeometryMetric.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->check(Landroid/view/View;)Z
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
.field public final synthetic $heightDp:I

.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;


# direct methods
.method public constructor <init>(ILio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;Landroid/view/View;)V
    .registers 4

    .line 0
    iput p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$4;->$heightDp:I

    iput-object p2, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$4;->this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;

    iput-object p3, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$4;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 39
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$4;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check failed: view height ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$4;->$heightDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), must be more then "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$4;->this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;

    invoke-virtual {v1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;->getMinHeightDp()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric$check$4;->$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
