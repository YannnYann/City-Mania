###### Class io.bidmachine.iab.mraid.MraidUtilsKt (io.bidmachine.iab.mraid.MraidUtilsKt)
.class public final Lio/bidmachine/iab/mraid/MraidUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:Lio/bidmachine/iab/mraid/MraidJsValidator;

.field public static final c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 29

    const/16 v0, 0x22

    .line 1
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x60

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Character;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/bidmachine/iab/mraid/MraidUtilsKt;->a:Ljava/util/List;

    .line 2
    new-instance v0, Lio/bidmachine/iab/mraid/a;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/a;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidUtilsKt;->b:Lio/bidmachine/iab/mraid/MraidJsValidator;

    .line 9
    const-string v27, "storePicture"

    const-string v28, "openPrivacySheet"

    const-string v1, "close"

    const-string v2, "expand"

    const-string v3, "open"

    const-string v4, "playVideo"

    const-string v5, "resize"

    const-string v6, "setOrientationProperties"

    const-string v7, "setResizeProperties"

    const-string v8, "useCustomClose"

    const-string v9, "noFill"

    const-string v10, "loaded"

    const-string v11, "AdStarted"

    const-string v12, "AdStopped"

    const-string v13, "AdSkipped"

    const-string v14, "AdSkippableStateChange"

    const-string v15, "AdVideoStart"

    const-string v16, "AdVideoFirstQuartile"

    const-string v17, "AdVideoMidpoint"

    const-string v18, "AdVideoThirdQuartile"

    const-string v19, "AdVideoComplete"

    const-string v20, "AdUserClose"

    const-string v21, "AdPaused"

    const-string v22, "AdPlaying"

    const-string v23, "AdClickThru"

    const-string v24, "AdLog"

    const-string v25, "AdError"

    const-string v26, "createCalendarEvent"

    filled-new-array/range {v1 .. v28}, [Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/bidmachine/iab/mraid/MraidUtilsKt;->c:Ljava/util/Set;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 2
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_16

    .line 3
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final a(Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const v0, 0x1020002

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_12

    return-object p0

    :cond_12
    return-object v0
.end method

.method public static final a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .registers 4

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(?=[\\s/>])[^>]*>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 12
    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string v0, "compile(this, flags)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, "\"<$tag(?=[\\\\s/>])[^>]*>\"\u2026)\n        .matcher(input)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final a(I)Z
    .registers 2

    .line 0
    const/4 v0, -0x1

    if-le p0, v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static final a(ILjava/util/List;)Z
    .registers 4

    .line 14
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_29

    .line 15
    :cond_b
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/ranges/IntRange;

    .line 16
    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v0

    if-gt p0, v0, :cond_f

    if-gt v1, p0, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_29
    :goto_29
    const/4 p0, 0x1

    return p0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .registers 3

    .line 6
    invoke-static {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidUtilsKt;->findTagPosition(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    .line 10
    invoke-static {p0}, Lio/bidmachine/iab/mraid/MraidUtilsKt;->a(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMRAID_JS_VALIDATOR$p()Lio/bidmachine/iab/mraid/MraidJsValidator;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidUtilsKt;->b:Lio/bidmachine/iab/mraid/MraidJsValidator;

    return-object v0
.end method

.method public static final synthetic access$getRootViewFromActivity(Landroid/content/Context;)Landroid/view/View;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/bidmachine/iab/mraid/MraidUtilsKt;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRootViewFromView(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/bidmachine/iab/mraid/MraidUtilsKt;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getVALID_COMMANDS$p()Ljava/util/Set;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidUtilsKt;->c:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$isPositionFound(I)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lio/bidmachine/iab/mraid/MraidUtilsKt;->a(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isTagPresent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidUtilsKt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static final createMetaStyle()Ljava/lang/String;
    .registers 1

    .line 1
    const-string v0, "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no\" /><style>body { margin:0; padding:0;}*:not(input) { -webkit-touch-callout:none; -webkit-user-select:none; -webkit-text-size-adjust:none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); }</style>"

    return-object v0
.end method

.method public static final findQuotes(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/util/List<",
            "Lkotlin/ranges/IntRange;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchChars"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_15

    .line 2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 5
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v6, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 146
    :goto_20
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_73

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v4, 0x1

    const/16 v9, 0x5c

    if-ne v7, v9, :cond_34

    xor-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_6f

    :cond_34
    if-nez v5, :cond_6e

    if-nez v6, :cond_4f

    .line 147
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 149
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    goto :goto_6e

    .line 151
    :cond_4f
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    if-ne v7, v5, :cond_6e

    .line 153
    new-instance v5, Lkotlin/ranges/IntRange;

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-direct {v5, v6, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v6, v1

    :cond_6e
    :goto_6e
    move v5, v2

    :goto_6f
    add-int/lit8 v3, v3, 0x1

    move v4, v8

    goto :goto_20

    :cond_73
    return-object v0
.end method

.method public static synthetic findQuotes$default(Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 1
    sget-object p1, Lio/bidmachine/iab/mraid/MraidUtilsKt;->a:Ljava/util/List;

    :cond_6
    invoke-static {p0, p1}, Lio/bidmachine/iab/mraid/MraidUtilsKt;->findQuotes(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final findTagPosition(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lkotlin/ranges/IntRange;",
            ">;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restrictedRangeList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_17

    goto :goto_1d

    :cond_17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1e

    :goto_1d
    return v1

    .line 5
    :cond_1e
    invoke-static {p0, p1}, Lio/bidmachine/iab/mraid/MraidUtilsKt;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 9
    :cond_22
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 10
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    .line 11
    invoke-static {v0, p2}, Lio/bidmachine/iab/mraid/MraidUtilsKt;->a(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_22

    return p1

    :cond_35
    return v1
.end method

.method public static synthetic findTagPosition$default(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)I
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_a

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 1
    invoke-static {p0, p3, p2, p3}, Lio/bidmachine/iab/mraid/MraidUtilsKt;->findQuotes$default(Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 2
    :cond_a
    invoke-static {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidUtilsKt;->findTagPosition(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static final injectMetaStyle(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2a

    .line 5
    :cond_c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "head"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lio/bidmachine/iab/mraid/MraidUtilsKt;->findTagPosition$default(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)I

    move-result v0

    .line 6
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidUtilsKt;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 7
    invoke-static {}, Lio/bidmachine/iab/mraid/MraidUtilsKt;->createMetaStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    :goto_2a
    return-object p0
.end method
