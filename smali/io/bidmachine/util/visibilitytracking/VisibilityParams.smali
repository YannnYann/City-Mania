###### Class io.bidmachine.util.visibilitytracking.VisibilityParams (io.bidmachine.util.visibilitytracking.VisibilityParams)
.class public final Lio/bidmachine/util/visibilitytracking/VisibilityParams;
.super Ljava/lang/Object;
.source "VisibilityParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion;,
        Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion;

.field public static final DEFAULT_VISIBILITY_PARAMS$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lio/bidmachine/util/visibilitytracking/VisibilityParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final isIgnoreOverlap:Z

.field public final isIgnoreWindowFocus:Z

.field public final minVisiblePercentage:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/visibilitytracking/VisibilityParams;->Companion:Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion;

    .line 17
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion$DEFAULT_VISIBILITY_PARAMS$2;->INSTANCE:Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion$DEFAULT_VISIBILITY_PARAMS$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/bidmachine/util/visibilitytracking/VisibilityParams;->DEFAULT_VISIBILITY_PARAMS$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(FZZ)V
    .registers 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityParams;->minVisiblePercentage:F

    .line 7
    iput-boolean p2, p0, Lio/bidmachine/util/visibilitytracking/VisibilityParams;->isIgnoreWindowFocus:Z

    .line 8
    iput-boolean p3, p0, Lio/bidmachine/util/visibilitytracking/VisibilityParams;->isIgnoreOverlap:Z

    return-void
.end method

.method public static final synthetic access$getDEFAULT_VISIBILITY_PARAMS$delegate$cp()Lkotlin/Lazy;
    .registers 1

    .line 5
    sget-object v0, Lio/bidmachine/util/visibilitytracking/VisibilityParams;->DEFAULT_VISIBILITY_PARAMS$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final getMinVisiblePercentage()F
    .registers 2

    .line 6
    iget v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityParams;->minVisiblePercentage:F

    return v0
.end method

.method public final isIgnoreOverlap()Z
    .registers 2

    .line 8
    iget-boolean v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityParams;->isIgnoreOverlap:Z

    return v0
.end method

.method public final isIgnoreWindowFocus()Z
    .registers 2

    .line 7
    iget-boolean v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityParams;->isIgnoreWindowFocus:Z

    return v0
.end method

###### Class io.bidmachine.util.visibilitytracking.VisibilityParams.Builder (io.bidmachine.util.visibilitytracking.VisibilityParams$Builder)
.class public final Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;
.super Ljava/lang/Object;
.source "VisibilityParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/visibilitytracking/VisibilityParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public isIgnoreOverlap:Z

.field public isIgnoreWindowFocus:Z

.field public minVisiblePercentage:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42480000    # 50.0f

    .line 35
    iput v0, p0, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;->minVisiblePercentage:F

    return-void
.end method


# virtual methods
.method public final build()Lio/bidmachine/util/visibilitytracking/VisibilityParams;
    .registers 5

    .line 52
    new-instance v0, Lio/bidmachine/util/visibilitytracking/VisibilityParams;

    .line 53
    iget v1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;->minVisiblePercentage:F

    .line 54
    iget-boolean v2, p0, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;->isIgnoreWindowFocus:Z

    .line 55
    iget-boolean v3, p0, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;->isIgnoreOverlap:Z

    .line 52
    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/util/visibilitytracking/VisibilityParams;-><init>(FZZ)V

    return-object v0
.end method

.method public final setIgnoreOverlap(Z)Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;
    .registers 2

    .line 48
    iput-boolean p1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;->isIgnoreOverlap:Z

    return-object p0
.end method

.method public final setIgnoreWindowFocus(Z)Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;
    .registers 2

    .line 44
    iput-boolean p1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;->isIgnoreWindowFocus:Z

    return-object p0
.end method

.method public final setMinVisiblePercentage(F)Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;
    .registers 2

    .line 40
    iput p1, p0, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;->minVisiblePercentage:F

    return-object p0
.end method

###### Class io.bidmachine.util.visibilitytracking.VisibilityParams.Companion (io.bidmachine.util.visibilitytracking.VisibilityParams$Companion)
.class public final Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion;
.super Ljava/lang/Object;
.source "VisibilityParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/visibilitytracking/VisibilityParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDefaultBuilder()Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;
    .registers 3

    .line 22
    new-instance v0, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;

    invoke-direct {v0}, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;-><init>()V

    const/high16 v1, 0x42480000    # 50.0f

    .line 23
    invoke-virtual {v0, v1}, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;->setMinVisiblePercentage(F)Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;->setIgnoreWindowFocus(Z)Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;->setIgnoreOverlap(Z)Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDEFAULT_VISIBILITY_PARAMS()Lio/bidmachine/util/visibilitytracking/VisibilityParams;
    .registers 2

    .line 17
    invoke-static {}, Lio/bidmachine/util/visibilitytracking/VisibilityParams;->access$getDEFAULT_VISIBILITY_PARAMS$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/util/visibilitytracking/VisibilityParams;

    return-object v0
.end method

.method public final getDefault()Lio/bidmachine/util/visibilitytracking/VisibilityParams;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion;->getDEFAULT_VISIBILITY_PARAMS()Lio/bidmachine/util/visibilitytracking/VisibilityParams;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.visibilitytracking.VisibilityParams$Companion$DEFAULT_VISIBILITY_PARAMS$2 (io.bidmachine.util.visibilitytracking.VisibilityParams$Companion$DEFAULT_VISIBILITY_PARAMS$2)
.class public final Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion$DEFAULT_VISIBILITY_PARAMS$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VisibilityParams.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/visibilitytracking/VisibilityParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/bidmachine/util/visibilitytracking/VisibilityParams;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion$DEFAULT_VISIBILITY_PARAMS$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion$DEFAULT_VISIBILITY_PARAMS$2;

    invoke-direct {v0}, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion$DEFAULT_VISIBILITY_PARAMS$2;-><init>()V

    sput-object v0, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion$DEFAULT_VISIBILITY_PARAMS$2;->INSTANCE:Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion$DEFAULT_VISIBILITY_PARAMS$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/bidmachine/util/visibilitytracking/VisibilityParams;
    .registers 2

    .line 18
    sget-object v0, Lio/bidmachine/util/visibilitytracking/VisibilityParams;->Companion:Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion;

    invoke-virtual {v0}, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion;->createDefaultBuilder()Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Builder;->build()Lio/bidmachine/util/visibilitytracking/VisibilityParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 17
    invoke-virtual {p0}, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion$DEFAULT_VISIBILITY_PARAMS$2;->invoke()Lio/bidmachine/util/visibilitytracking/VisibilityParams;

    move-result-object v0

    return-object v0
.end method
