###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric (io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;
.super Ljava/lang/Object;
.source "ViewabilityOverlapMetric.kt"

# interfaces
.implements Lio/bidmachine/util/viewabilitytracker/metric/Metric;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Companion;,
        Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;,
        Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Companion;

.field public static final LOGGER:Lio/bidmachine/util/log/TagLogger;


# instance fields
.field public final maxOverlapPercentage:F

.field public final minVisiblePercent:F

.field public final scope:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;->Companion:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Companion;

    .line 80
    new-instance v0, Lio/bidmachine/util/log/TagLogger;

    const-string v2, "OverlapMetric"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3, v1}, Lio/bidmachine/util/log/TagLogger;-><init>(Ljava/lang/String;Lio/bidmachine/util/log/LoggerInstance;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;->LOGGER:Lio/bidmachine/util/log/TagLogger;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;F)V
    .registers 4

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;->scope:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    .line 14
    iput p2, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;->maxOverlapPercentage:F

    const/16 p1, 0x64

    int-to-float p1, p1

    sub-float/2addr p1, p2

    .line 18
    iput p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;->minVisiblePercent:F

    return-void
.end method

.method public static final synthetic access$getMinVisiblePercent$p(Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;)F
    .registers 1

    .line 12
    iget p0, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;->minVisiblePercent:F

    return p0
.end method


# virtual methods
.method public check(Landroid/view/View;)Z
    .registers 13

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 22
    iget-object p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;->scope:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    sget-object v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_22

    goto/16 :goto_c6

    .line 69
    :cond_22
    sget-object p1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;->LOGGER:Lio/bidmachine/util/log/TagLogger;

    new-instance v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$4;

    invoke-direct {v0, p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$4;-><init>(Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;)V

    invoke-static {p1, v2, v0, v1, v2}, Lio/bidmachine/util/log/LoggerInstance;->e$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto/16 :goto_c6

    .line 63
    :cond_2e
    sget-object p1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;->LOGGER:Lio/bidmachine/util/log/TagLogger;

    new-instance v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$3;

    invoke-direct {v0, p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$3;-><init>(Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;)V

    invoke-static {p1, v2, v0, v1, v2}, Lio/bidmachine/util/log/LoggerInstance;->e$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto/16 :goto_c6

    .line 24
    :cond_3a
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 25
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_55

    .line 26
    sget-object p1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;->LOGGER:Lio/bidmachine/util/log/TagLogger;

    new-instance v3, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$1;

    invoke-direct {v3, v0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {p1, v2, v3, v1, v2}, Lio/bidmachine/util/log/LoggerInstance;->d$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v4

    .line 31
    :cond_55
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    instance-of v5, v3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_64

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_65

    :cond_64
    move-object v3, v2

    .line 32
    :goto_65
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_c4

    check-cast v5, Landroid/view/ViewGroup;

    :goto_73
    if-eqz v5, :cond_c6

    .line 34
    iget-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int/2addr v6, v1

    .line 35
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    :goto_82
    if-ge v6, v7, :cond_b5

    .line 36
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const-string v9, "parent.getChildAt(i)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {v8}, Lio/bidmachine/util/ViewUtilsKt;->isViewVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_b2

    .line 38
    invoke-static {v8}, Lio/bidmachine/util/ViewUtilsKt;->getLocationInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v9

    .line 39
    invoke-static {p1, v9}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_b2

    .line 40
    invoke-static {p1, v9}, Lio/bidmachine/util/Utils;->getNotOverlappedAreaPercent(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v9

    .line 44
    iget v10, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;->minVisiblePercent:F

    cmpg-float v10, v9, v10

    if-gez v10, :cond_b2

    .line 45
    sget-object p1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;->LOGGER:Lio/bidmachine/util/log/TagLogger;

    new-instance v3, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$2;

    invoke-direct {v3, v9, p0, v0, v8}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$2;-><init>(FLio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    invoke-static {p1, v2, v3, v1, v2}, Lio/bidmachine/util/log/LoggerInstance;->d$default(Lio/bidmachine/util/log/LoggerInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v4

    :cond_b2
    add-int/lit8 v6, v6, 0x1

    goto :goto_82

    :cond_b5
    if-eq v5, v3, :cond_c4

    .line 54
    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 55
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_c4

    check-cast v5, Landroid/view/ViewGroup;

    goto :goto_73

    :cond_c4
    move-object v5, v2

    goto :goto_73

    :cond_c6
    :goto_c6
    return v1
.end method

.method public final getScope()Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;
    .registers 2

    .line 13
    iget-object v0, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;->scope:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    return-object v0
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric.Companion (io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric$Companion)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Companion;
.super Ljava/lang/Object;
.source "ViewabilityOverlapMetric.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric.Scope (io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric$Scope)
.class public final enum Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;
.super Ljava/lang/Enum;
.source "ViewabilityOverlapMetric.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

.field public static final enum ALL_VIEWS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

.field public static final enum VIEW_SIBLINGS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

.field public static final enum WINDOWS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;


# direct methods
.method public static final synthetic $values()[Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;
    .registers 3

    .line 0
    sget-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;->VIEW_SIBLINGS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    sget-object v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;->ALL_VIEWS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    sget-object v2, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;->WINDOWS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 86
    new-instance v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    const-string v1, "VIEW_SIBLINGS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;->VIEW_SIBLINGS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    .line 87
    new-instance v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    const-string v1, "ALL_VIEWS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;->ALL_VIEWS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    .line 88
    new-instance v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    const-string v1, "WINDOWS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;->WINDOWS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    invoke-static {}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;->$values()[Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    move-result-object v0

    sput-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;->$VALUES:[Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;->$VALUES:[Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    return-object v0
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric.WhenMappings (io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric$WhenMappings)
.class public final synthetic Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$WhenMappings;
.super Ljava/lang/Object;
.source "ViewabilityOverlapMetric.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;
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
    invoke-static {}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;->values()[Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;->VIEW_SIBLINGS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;->ALL_VIEWS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;->WINDOWS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric.AnonymousClass1 (io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric$check$1)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewabilityOverlapMetric.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;->check(Landroid/view/View;)Z
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
.field public final synthetic $view:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$1;->$view:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check failed: view is completely clipped - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$1;->$view:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric.AnonymousClass2 (io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric$check$2)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewabilityOverlapMetric.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;->check(Landroid/view/View;)Z
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
.field public final synthetic $childView:Landroid/view/View;

.field public final synthetic $view:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $visiblePercent:F

.field public final synthetic this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;


# direct methods
.method public constructor <init>(FLio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 0
    iput p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$2;->$visiblePercent:F

    iput-object p2, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$2;->this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;

    iput-object p3, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$2;->$view:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$2;->$childView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check failed: view is covered by another view ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$2;->$visiblePercent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "% / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$2;->this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;

    invoke-static {v1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;->access$getMinVisiblePercent$p(Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "%) - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$2;->$view:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", overlapping view - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$2;->$childView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric.AnonymousClass3 (io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric$check$3)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewabilityOverlapMetric.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;->check(Landroid/view/View;)Z
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
.field public final synthetic this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$3;->this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 63
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$3;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check not supported (scope - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$3;->this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;

    invoke-virtual {v1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;->getScope()Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

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

###### Class io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric.AnonymousClass4 (io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric$check$4)
.class public final Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$4;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewabilityOverlapMetric.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;->check(Landroid/view/View;)Z
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
.field public final synthetic this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$4;->this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 69
    invoke-virtual {p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$4;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check not supported (scope - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$check$4;->this$0:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;

    invoke-virtual {v1}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;->getScope()Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

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
