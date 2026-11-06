###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric (io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;
.super Ljava/lang/Object;
.source "ViewabilityVisibilityMetric.kt"

# interfaces
.implements Lio/bidmachine/util/viewabilitytracker/metric/Metric;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Companion;,
        Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;,
        Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Companion;

.field public static final LOGGER:Lio/bidmachine/util/log/TagLogger;


# instance fields
.field public final minVisiblePercentage:F

.field public final scope:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->Companion:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Companion;

    .line 68
    new-instance v0, Lio/bidmachine/util/log/TagLogger;

    const-string v2, "VisibilityMetric"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3, v1}, Lio/bidmachine/util/log/TagLogger;-><init>(Ljava/lang/String;Lio/bidmachine/util/log/LoggerInstance;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->LOGGER:Lio/bidmachine/util/log/TagLogger;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;F)V
    .registers 4

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->scope:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    .line 11
    iput p2, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->minVisiblePercentage:F

    return-void
.end method


# virtual methods
.method public check(Landroid/view/View;)Z
    .registers 9

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->scope:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    sget-object v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_31

    const/4 p1, 0x2

    if-eq v0, p1, :cond_26

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1b

    goto/16 :goto_9c

    .line 57
    :cond_1b
    sget-object p1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->LOGGER:Lio/bidmachine/util/log/TagLogger;

    new-instance v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$6;

    invoke-direct {v0, p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$6;-><init>(Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;)V

    invoke-static {p1, v2, v0, v1, v2}, Lio/bidmachine/util/log/LoggerInstance;->e$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_9c

    .line 51
    :cond_26
    sget-object p1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->LOGGER:Lio/bidmachine/util/log/TagLogger;

    new-instance v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$5;

    invoke-direct {v0, p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$5;-><init>(Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;)V

    invoke-static {p1, v2, v0, v1, v2}, Lio/bidmachine/util/log/LoggerInstance;->e$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_9c

    .line 17
    :cond_31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_48

    .line 19
    sget-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->LOGGER:Lio/bidmachine/util/log/TagLogger;

    new-instance v3, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$1;

    invoke-direct {v3, p1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$1;-><init>(Landroid/view/View;)V

    invoke-static {v0, v2, v3, v1, v2}, Lio/bidmachine/util/log/LoggerInstance;->d$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v4

    .line 24
    :cond_48
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v3, v5

    int-to-float v3, v3

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/16 v5, 0x64

    int-to-float v5, v5

    mul-float/2addr v3, v5

    .line 27
    iget v5, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->minVisiblePercentage:F

    cmpg-float v5, v3, v5

    if-gez v5, :cond_72

    .line 28
    sget-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->LOGGER:Lio/bidmachine/util/log/TagLogger;

    new-instance v5, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$2;

    invoke-direct {v5, v3, p0, p1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$2;-><init>(FLio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;Landroid/view/View;)V

    invoke-static {v0, v2, v5, v1, v2}, Lio/bidmachine/util/log/LoggerInstance;->d$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v4

    .line 33
    :cond_72
    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->findContentOrRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_83

    .line 35
    sget-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->LOGGER:Lio/bidmachine/util/log/TagLogger;

    new-instance v3, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$3;

    invoke-direct {v3, p1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$3;-><init>(Landroid/view/View;)V

    invoke-static {v0, v2, v3, v1, v2}, Lio/bidmachine/util/log/LoggerInstance;->d$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v4

    .line 40
    :cond_83
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 41
    invoke-virtual {v3, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 42
    invoke-static {v0, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 43
    sget-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->LOGGER:Lio/bidmachine/util/log/TagLogger;

    new-instance v3, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$4;

    invoke-direct {v3, p1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$4;-><init>(Landroid/view/View;)V

    invoke-static {v0, v2, v3, v1, v2}, Lio/bidmachine/util/log/LoggerInstance;->d$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v4

    :cond_9c
    :goto_9c
    return v1
.end method

.method public final getMinVisiblePercentage()F
    .registers 2

    .line 11
    iget v0, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->minVisiblePercentage:F

    return v0
.end method

.method public final getScope()Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;
    .registers 2

    .line 10
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->scope:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    return-object v0
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric.Companion (io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric$Companion)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Companion;
.super Ljava/lang/Object;
.source "ViewabilityVisibilityMetric.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric.Scope (io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric$Scope)
.class public final enum Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;
.super Ljava/lang/Enum;
.source "ViewabilityVisibilityMetric.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

.field public static final enum PARENT_VIEW:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

.field public static final enum SAFE_AREA:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

.field public static final enum SCREEN:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;


# direct methods
.method public static final synthetic $values()[Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;
    .registers 3

    .line 0
    sget-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;->PARENT_VIEW:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    sget-object v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;->SCREEN:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    sget-object v2, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;->SAFE_AREA:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 74
    new-instance v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    const-string v1, "PARENT_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;->PARENT_VIEW:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    .line 75
    new-instance v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    const-string v1, "SCREEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;->SCREEN:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    .line 76
    new-instance v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    const-string v1, "SAFE_AREA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;->SAFE_AREA:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    invoke-static {}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;->$values()[Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    move-result-object v0

    sput-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;->$VALUES:[Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;->$VALUES:[Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    return-object v0
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric.WhenMappings (io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric$WhenMappings)
.class public final synthetic Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$WhenMappings;
.super Ljava/lang/Object;
.source "ViewabilityVisibilityMetric.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;->values()[Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;->PARENT_VIEW:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;->SCREEN:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;->SAFE_AREA:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric.AnonymousClass1 (io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric$check$1)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewabilityVisibilityMetric.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->check(Landroid/view/View;)Z
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
    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$1;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check failed: view is completely clipped - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$1;->$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric.AnonymousClass2 (io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric$check$2)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewabilityVisibilityMetric.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->check(Landroid/view/View;)Z
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
.field public final synthetic $adViewVisiblePercentage:F

.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;


# direct methods
.method public constructor <init>(FLio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;Landroid/view/View;)V
    .registers 4

    .line 0
    iput p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$2;->$adViewVisiblePercentage:F

    iput-object p2, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$2;->this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;

    iput-object p3, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$2;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check failed: view not completely visible ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$2;->$adViewVisiblePercentage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "%), must be more then "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$2;->this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;

    invoke-virtual {v1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->getMinVisiblePercentage()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "% - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$2;->$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric.AnonymousClass3 (io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric$check$3)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewabilityVisibilityMetric.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->check(Landroid/view/View;)Z
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
    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$3;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$3;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check failed: content or root layout not found - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$3;->$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric.AnonymousClass4 (io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric$check$4)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$4;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewabilityVisibilityMetric.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->check(Landroid/view/View;)Z
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
    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$4;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 43
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$4;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check failed: view is out of current window - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$4;->$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric.AnonymousClass5 (io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric$check$5)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$5;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewabilityVisibilityMetric.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->check(Landroid/view/View;)Z
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
.field public final synthetic this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$5;->this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$5;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check not supported (scope - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$5;->this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;

    invoke-virtual {v1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->getScope()Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric.AnonymousClass6 (io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric$check$6)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$6;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewabilityVisibilityMetric.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->check(Landroid/view/View;)Z
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
.field public final synthetic this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$6;->this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 57
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$6;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check not supported (scope - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$check$6;->this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;

    invoke-virtual {v1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;->getScope()Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
