###### Class info.flowersoft.theotown.stages.ReuseContextStage (info.flowersoft.theotown.stages.ReuseContextStage)
.class public final Linfo/flowersoft/theotown/stages/ReuseContextStage;
.super Lio/blueflower/stapel2d/gamestack/Stage;
.source "ReuseContextStage.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReuseContextStage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReuseContextStage.kt\ninfo/flowersoft/theotown/stages/ReuseContextStage\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,75:1\n1755#2:76\n1788#2,4:77\n*S KotlinDebug\n*F\n+ 1 ReuseContextStage.kt\ninfo/flowersoft/theotown/stages/ReuseContextStage\n*L\n37#1:76\n37#1:77,4\n*E\n"
.end annotation


# instance fields
.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public currentTaskIndex:I

.field public startScreen:Linfo/flowersoft/theotown/ui/StartScreenDrawer;

.field public tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$qjsTyXgEhhsDNJZpw6shOh9GR3o(Linfo/flowersoft/theotown/stages/ReuseContextStage;Lio/blueflower/stapel2d/drawing/Texture;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/stages/ReuseContextStage;->enter$lambda$1$0(Linfo/flowersoft/theotown/stages/ReuseContextStage;Lio/blueflower/stapel2d/drawing/Texture;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lio/blueflower/stapel2d/gamestack/Stage;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method

.method public static final enter$lambda$1$0(Linfo/flowersoft/theotown/stages/ReuseContextStage;Lio/blueflower/stapel2d/drawing/Texture;)Lkotlin/Unit;
    .registers 2

    .line 39
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->loadTextureIfDirty(Lio/blueflower/stapel2d/drawing/Texture;)V

    .line 40
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public enter()V
    .registers 8

    .line 24
    new-instance v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;-><init>(Lio/blueflower/stapel2d/drawing/Engine;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->startScreen:Linfo/flowersoft/theotown/ui/StartScreenDrawer;

    .line 26
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 27
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v1, v1, Lio/blueflower/stapel2d/drawing/Font;->image:Lio/blueflower/stapel2d/drawing/Image;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->getTextureOfId(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Image;->countTextureIds()I

    move-result v1

    move v3, v2

    :goto_26
    if-ge v3, v1, :cond_48

    .line 29
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/drawing/Image;->getTextureOfId(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v4

    .line 30
    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Texture;->getWidth()I

    move-result v5

    const/16 v6, 0x80

    if-gt v5, v6, :cond_3c

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Texture;->getHeight()I

    move-result v4

    if-le v4, v6, :cond_45

    .line 32
    :cond_3c
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/drawing/Image;->getTextureOfId(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 26
    :cond_48
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 37
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 1755
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1789
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    if-gez v2, :cond_6f

    .line 1790
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_6f
    check-cast v4, Lio/blueflower/stapel2d/drawing/Texture;

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading texture "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Linfo/flowersoft/theotown/stages/ReuseContextStage$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v4}, Linfo/flowersoft/theotown/stages/ReuseContextStage$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/ReuseContextStage;Lio/blueflower/stapel2d/drawing/Texture;)V

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 1790
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_5e

    .line 37
    :cond_9c
    iput-object v3, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->tasks:Ljava/util/List;

    const/16 v0, -0xa

    .line 42
    iput v0, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->currentTaskIndex:I

    return-void
.end method

.method public leave()V
    .registers 2

    .line 46
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->startScreen:Linfo/flowersoft/theotown/ui/StartScreenDrawer;

    if-nez v0, :cond_a

    const-string v0, "startScreen"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->dispose()V

    .line 47
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->tasks:Ljava/util/List;

    return-void
.end method

.method public prepare()V
    .registers 1

    .line 20
    invoke-static {}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->startNewSession()V

    return-void
.end method

.method public update()V
    .registers 9

    .line 51
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->beginFrame()V

    .line 53
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->tasks:Ljava/util/List;

    const-string v1, "tasks"

    const/4 v2, 0x0

    if-nez v0, :cond_10

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_10
    iget v3, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->currentTaskIndex:I

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 54
    iget v3, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->currentTaskIndex:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->currentTaskIndex:I

    .line 55
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->tasks:Ljava/util/List;

    if-nez v3, :cond_26

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_26
    iget v5, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->currentTaskIndex:I

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    if-nez v3, :cond_31

    move-object v3, v0

    :cond_31
    if-eqz v0, :cond_3e

    .line 57
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_3e

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 59
    :cond_3e
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->startScreen:Linfo/flowersoft/theotown/ui/StartScreenDrawer;

    const-string v5, "startScreen"

    if-nez v0, :cond_48

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_48
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->drawBackground()V

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->startScreen:Linfo/flowersoft/theotown/ui/StartScreenDrawer;

    if-nez v0, :cond_53

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_53
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->drawLogo()V

    .line 61
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->startScreen:Linfo/flowersoft/theotown/ui/StartScreenDrawer;

    if-nez v0, :cond_5e

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5e
    iget v6, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->currentTaskIndex:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->tasks:Ljava/util/List;

    if-nez v7, :cond_6c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v2

    :cond_6c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->drawBar(F)V

    .line 63
    iget v0, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->currentTaskIndex:I

    if-lt v0, v4, :cond_90

    .line 65
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->startScreen:Linfo/flowersoft/theotown/ui/StartScreenDrawer;

    if-nez v0, :cond_81

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_81
    if-eqz v3, :cond_8b

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_8d

    :cond_8b
    const-string v3, ""

    :cond_8d
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->drawText(Ljava/lang/String;)V

    .line 68
    :cond_90
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->endFrame()V

    .line 70
    iget v0, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->currentTaskIndex:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage;->tasks:Ljava/util/List;

    if-nez v3, :cond_9f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a0

    :cond_9f
    move-object v2, v3

    :goto_a0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_ad

    .line 71
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    :cond_ad
    return-void
.end method

###### Class info.flowersoft.theotown.stages.ReuseContextStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.ReuseContextStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/ReuseContextStage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/ReuseContextStage;

.field public final synthetic f$1:Lio/blueflower/stapel2d/drawing/Texture;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/ReuseContextStage;Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/ReuseContextStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage$$ExternalSyntheticLambda0;->f$1:Lio/blueflower/stapel2d/drawing/Texture;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/ReuseContextStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/ReuseContextStage$$ExternalSyntheticLambda0;->f$1:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/ReuseContextStage;->$r8$lambda$qjsTyXgEhhsDNJZpw6shOh9GR3o(Linfo/flowersoft/theotown/stages/ReuseContextStage;Lio/blueflower/stapel2d/drawing/Texture;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
