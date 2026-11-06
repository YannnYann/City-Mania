###### Class io.bidmachine.rendering.utils.CreativeProfileClassifier (io.bidmachine.rendering.utils.CreativeProfileClassifier)
.class public final Lio/bidmachine/rendering/utils/CreativeProfileClassifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/bidmachine/rendering/utils/CreativeProfileClassifier;

.field public static final a:Ljava/util/List;

.field public static final b:Ljava/util/List;

.field public static final c:Ljava/util/List;

.field public static final d:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lio/bidmachine/rendering/utils/CreativeProfileClassifier;

    invoke-direct {v0}, Lio/bidmachine/rendering/utils/CreativeProfileClassifier;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/utils/CreativeProfileClassifier;->INSTANCE:Lio/bidmachine/rendering/utils/CreativeProfileClassifier;

    .line 1
    const-string v12, "playableInteraction"

    const-string v13, "playablefactory"

    const-string v1, "appdata.playable"

    const-string v2, "\"type\":\"p\""

    const-string v3, "playable_click"

    const-string v4, "engaged_click_tracker"

    const-string v5, "tmlPlay"

    const-string v6, "window.dapi"

    const-string v7, "playable.js"

    const-string v8, "asset_provider=luna"

    const-string v9, "af_ad_type=playable"

    const-string v10, "af_ad_format=playable"

    const-string v11, "game.js"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    if-eqz v3, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 79
    check-cast v3, Ljava/lang/String;

    .line 80
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 144
    :cond_53
    sput-object v1, Lio/bidmachine/rendering/utils/CreativeProfileClassifier;->a:Ljava/util/List;

    .line 156
    const-string v14, "three.js"

    const-string v15, "bamAdConfig"

    const-string v5, "<canvas"

    const-string v6, "webgl"

    const-string v7, "requestAnimationFrame"

    const-string v8, "ontouchstart"

    const-string v9, "phaser"

    const-string v10, "pixi"

    const-string v11, "cocos"

    const-string v12, "createjs"

    const-string v13, "playcanvas"

    filled-new-array/range {v5 .. v15}, [Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_80
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_99

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 223
    check-cast v2, Ljava/lang/String;

    .line 224
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 279
    :cond_99
    sput-object v1, Lio/bidmachine/rendering/utils/CreativeProfileClassifier;->b:Ljava/util/List;

    .line 283
    new-instance v0, Lkotlin/text/Regex;

    .line 285
    sget-object v1, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    .line 286
    const-string v2, "addEventListener\\s*\\(\\s*[\"\'`]?(touch|pointer)"

    invoke-direct {v0, v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    .line 287
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/utils/CreativeProfileClassifier;->c:Ljava/util/List;

    .line 293
    new-instance v0, Lkotlin/text/Regex;

    .line 294
    const-string v2, "<script[^>]*src\\s*=\\s*[\"\']?http"

    invoke-direct {v0, v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    sput-object v0, Lio/bidmachine/rendering/utils/CreativeProfileClassifier;->d:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final classifyByMarkup(Ljava/lang/String;)Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;
    .registers 7

    const-string v0, "adm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lio/bidmachine/rendering/utils/CreativeProfileClassifier;->a:Ljava/util/List;

    .line 25
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_40

    .line 26
    :cond_20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 27
    invoke-static {p1, v1, v4, v3, v2}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 28
    new-instance p1, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    .line 29
    sget-object v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->LIKELY_PLAYABLE:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    .line 30
    sget-object v1, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;->ADM_HINT:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    .line 31
    invoke-direct {p1, v0, v1}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;-><init>(Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;Lio/bidmachine/rendering/model/engagedclick/ProfileSource;)V

    return-object p1

    .line 36
    :cond_40
    :goto_40
    sget-object v0, Lio/bidmachine/rendering/utils/CreativeProfileClassifier;->b:Ljava/util/List;

    .line 56
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4d

    goto :goto_64

    .line 57
    :cond_4d
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 58
    invoke-static {p1, v1, v4, v3, v2}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    goto :goto_87

    .line 59
    :cond_64
    :goto_64
    sget-object v0, Lio/bidmachine/rendering/utils/CreativeProfileClassifier;->c:Ljava/util/List;

    .line 81
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_71

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_71

    goto :goto_91

    .line 82
    :cond_71
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_75
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/text/Regex;

    .line 83
    invoke-virtual {v1, p1}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 84
    :goto_87
    new-instance p1, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    .line 85
    sget-object v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->INTERACTIVE_HTML:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    .line 86
    sget-object v1, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;->ADM_HINT:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    .line 87
    invoke-direct {p1, v0, v1}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;-><init>(Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;Lio/bidmachine/rendering/model/engagedclick/ProfileSource;)V

    return-object p1

    .line 92
    :cond_91
    :goto_91
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5dc

    if-gt v0, v1, :cond_ab

    sget-object v0, Lio/bidmachine/rendering/utils/CreativeProfileClassifier;->d:Lkotlin/text/Regex;

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_ab

    .line 93
    new-instance p1, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    .line 94
    sget-object v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->INTERACTIVE_HTML:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    .line 95
    sget-object v1, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;->ADM_HINT:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    .line 96
    invoke-direct {p1, v0, v1}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;-><init>(Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;Lio/bidmachine/rendering/model/engagedclick/ProfileSource;)V

    return-object p1

    .line 101
    :cond_ab
    sget-object p1, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->Companion:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo$Companion;

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo$Companion;->getDEFAULT_CREATIVE_PROFILE_INFO()Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    move-result-object p1

    return-object p1
.end method
