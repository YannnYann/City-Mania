###### Class info.flowersoft.theotown.util.DraftLocalizer (info.flowersoft.theotown.util.DraftLocalizer)
.class public Linfo/flowersoft/theotown/util/DraftLocalizer;
.super Ljava/lang/Object;
.source "DraftLocalizer.java"


# static fields
.field public static final PACKED_TRANSLATION_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public cityName:Ljava/lang/String;

.field public transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

.field public final translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-string v0, "(^|\\[([a-zA-Z-]+)])([^\\[]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/util/DraftLocalizer;->PACKED_TRANSLATION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 43
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->cityName:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->city:Linfo/flowersoft/theotown/city/City;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 38
    iput-object p2, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->cityName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "draft_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\$"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRCITypeName(Linfo/flowersoft/theotown/draft/BuildingType;I)Ljava/lang/String;
    .registers 6

    .line 62
    sget-object v0, Linfo/flowersoft/theotown/util/DraftLocalizer$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_76

    goto :goto_59

    :pswitch_f
    if-eq p2, v2, :cond_28

    if-eq p2, v1, :cond_1f

    if-eq p2, v0, :cond_16

    goto :goto_59

    .line 79
    :cond_16
    iget-object p1, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p2, 0x794

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 78
    :cond_1f
    iget-object p1, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p2, 0x790

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 77
    :cond_28
    iget-object p1, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p2, 0x78e

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_31
    if-eq p2, v2, :cond_4a

    if-eq p2, v1, :cond_41

    if-eq p2, v0, :cond_38

    goto :goto_59

    .line 73
    :cond_38
    iget-object p1, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p2, 0x4ca

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 72
    :cond_41
    iget-object p1, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p2, 0x4cb

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 71
    :cond_4a
    iget-object p1, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p2, 0x4cc

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_53
    if-eq p2, v2, :cond_6d

    if-eq p2, v1, :cond_64

    if-eq p2, v0, :cond_5b

    :goto_59
    const/4 p1, 0x0

    return-object p1

    .line 67
    :cond_5b
    iget-object p1, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p2, 0xb4c

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :cond_64
    iget-object p1, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p2, 0xb4b

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 65
    :cond_6d
    iget-object p1, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p2, 0xb4f

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_53
        :pswitch_31
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public getText(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;
    .registers 6

    .line 117
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->textId:Ljava/lang/String;

    const-string v1, ">"

    const-string v2, "<"

    if-eqz v0, :cond_21

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->textId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 121
    :cond_21
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->getUnifiedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->processId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "text"

    invoke-virtual {p0, v0, v3}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizeOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 123
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->text:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->transformPluginStringByTranslation(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizePacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3b
    if-eqz v0, :cond_41

    .line 126
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->interpolate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_41
    if-nez v0, :cond_5e

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->getUnifiedId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5e
    return-object v0
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 151
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->processId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "text"

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizeNotNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitle(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 86
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->titleId:Ljava/lang/String;

    const-string v1, ">"

    const-string v2, "<"

    if-eqz v0, :cond_21

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->titleId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 90
    :cond_21
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v0, :cond_37

    iget-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->title:Ljava/lang/String;

    if-nez v0, :cond_37

    .line 91
    move-object v0, p1

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 92
    iget-object v3, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    invoke-virtual {p0, v3, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getRCITypeName(Linfo/flowersoft/theotown/draft/BuildingType;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    return-object v0

    .line 98
    :cond_37
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->getUnifiedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->processId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "title"

    invoke-virtual {p0, v0, v3}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizeOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_51

    .line 100
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->title:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->transformPluginStringByTranslation(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizePacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_51
    if-eqz v0, :cond_57

    .line 103
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->interpolate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_57
    if-nez v0, :cond_77

    if-nez p2, :cond_76

    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->getUnifiedId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_76
    return-object p2

    :cond_77
    return-object v0
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 147
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->processId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizeNotNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final interpolate(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_1f

    .line 194
    invoke-static {p1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->isInterpolatedString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->city:Linfo/flowersoft/theotown/city/City;

    if-eqz v0, :cond_1f

    .line 195
    iget-object v0, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    if-nez v0, :cond_19

    .line 196
    new-instance v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    .line 198
    :cond_19
    iget-object v0, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->interpolateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1f
    return-object p1
.end method

.method public localizeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 184
    iget-object v0, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->_translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 186
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->interpolate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 188
    :cond_d
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->interpolate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final localizeNotNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 167
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizeOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_23

    .line 169
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "text"

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_23
    return-object p2
.end method

.method public final localizeOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 175
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 177
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    return-object p2

    .line 180
    :cond_c
    iget-object p2, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->cityName:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public localizePacked(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    if-eqz p1, :cond_f6

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_f6

    .line 208
    :cond_a
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ec

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_ec

    .line 212
    :cond_1c
    sget-object v0, Linfo/flowersoft/theotown/util/DraftLocalizer;->PACKED_TRANSLATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 214
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 215
    :goto_29
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_47

    const/4 v3, 0x2

    .line 216
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 217
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_3d

    move-object v2, v4

    goto :goto_29

    .line 221
    :cond_3d
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 226
    :cond_47
    iget-object p1, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-interface {p1}, Lio/blueflower/stapel2d/gamestack/Translator;->getLocale()Ljava/util/Locale;

    move-result-object p1

    .line 228
    const-string v3, "native"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_5b

    .line 230
    invoke-virtual {p0, v3, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    :cond_5b
    const-string v3, "-"

    if-nez v1, :cond_85

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_85
    if-nez v1, :cond_98

    .line 237
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_98
    if-nez v1, :cond_d1

    .line 240
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_d1

    .line 243
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_d1
    if-nez v1, :cond_d4

    goto :goto_d5

    :cond_d4
    move-object v2, v1

    :goto_d5
    if-nez v2, :cond_da

    .line 251
    const-string p1, ""

    return-object p1

    .line 252
    :cond_da
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_eb

    .line 253
    iget-object p1, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->cityName:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_eb
    return-object v2

    .line 209
    :cond_ec
    :goto_ec
    iget-object v0, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->cityName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_f6
    :goto_f6
    return-object p1
.end method

.method public final processId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 155
    const-string v0, "deco"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "00"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_24
    return-object p1
.end method

.method public setCityName(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Linfo/flowersoft/theotown/util/DraftLocalizer;->cityName:Ljava/lang/String;

    return-void
.end method

.method public final transformPluginStringByTranslation(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 136
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->translatePlugins:Z

    if-eqz v0, :cond_24

    if-nez p2, :cond_7

    goto :goto_24

    .line 137
    :cond_7
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->plugin:Z

    if-eqz v0, :cond_24

    iget p1, p1, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    if-lez p1, :cond_24

    .line 138
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->LOADED_PLUGINS_BY_ID:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    if-eqz p1, :cond_24

    .line 139
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->hasTranslations()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 140
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->translateInline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_24
    :goto_24
    return-object p2
.end method

###### Class info.flowersoft.theotown.util.DraftLocalizer.AnonymousClass1 (info.flowersoft.theotown.util.DraftLocalizer$1)
.class public synthetic Linfo/flowersoft/theotown/util/DraftLocalizer$1;
.super Ljava/lang/Object;
.source "DraftLocalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/DraftLocalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 62
    invoke-static {}, Linfo/flowersoft/theotown/draft/BuildingType;->values()[Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Linfo/flowersoft/theotown/util/DraftLocalizer$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    :try_start_9
    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Linfo/flowersoft/theotown/util/DraftLocalizer$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->COMMERCIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Linfo/flowersoft/theotown/util/DraftLocalizer$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->INDUSTRIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Linfo/flowersoft/theotown/util/DraftLocalizer$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->FARM:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Linfo/flowersoft/theotown/util/DraftLocalizer$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->HARBOR_IND:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Linfo/flowersoft/theotown/util/DraftLocalizer$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->HARBOR_PIER:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    return-void
.end method
