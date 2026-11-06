###### Class info.flowersoft.theotown.city.objects.EmptyBuildingCause (info.flowersoft.theotown.city.objects.EmptyBuildingCause)
.class public final Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;
.super Ljava/lang/Object;
.source "EmptyBuildingCause.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$Companion;,
        Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;,
        Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$Companion;

.field public static final lowDemand:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

.field public static final unknown:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;


# instance fields
.field public final attribute:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

.field public final crimeType:Linfo/flowersoft/theotown/city/objects/CrimeType;

.field public final happiness:F

.field public final type:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->Companion:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$Companion;

    .line 23
    new-instance v2, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    sget-object v3, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Unknown:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;-><init>(Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;Linfo/flowersoft/theotown/city/objects/CrimeType;Linfo/flowersoft/theotown/components/management/attribute/Attribute;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->unknown:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    .line 26
    new-instance v3, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    sget-object v4, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->LowDemand:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    const/16 v8, 0xe

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;-><init>(Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;Linfo/flowersoft/theotown/city/objects/CrimeType;Linfo/flowersoft/theotown/components/management/attribute/Attribute;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->lowDemand:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;Linfo/flowersoft/theotown/city/objects/CrimeType;Linfo/flowersoft/theotown/components/management/attribute/Attribute;F)V
    .registers 6

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->type:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    .line 17
    iput-object p2, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->crimeType:Linfo/flowersoft/theotown/city/objects/CrimeType;

    .line 18
    iput-object p3, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->attribute:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    .line 19
    iput p4, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->happiness:F

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;Linfo/flowersoft/theotown/city/objects/CrimeType;Linfo/flowersoft/theotown/components/management/attribute/Attribute;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_12

    const p4, 0x7f7fffff    # Float.MAX_VALUE

    .line 15
    :cond_12
    invoke-direct {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;-><init>(Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;Linfo/flowersoft/theotown/city/objects/CrimeType;Linfo/flowersoft/theotown/components/management/attribute/Attribute;F)V

    return-void
.end method

.method public static final synthetic access$getLowDemand$cp()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;
    .registers 1

    .line 15
    sget-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->lowDemand:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    return-object v0
.end method

.method public static final synthetic access$getUnknown$cp()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;
    .registers 1

    .line 15
    sget-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->unknown:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    return-object v0
.end method

.method public static final forCrime(Linfo/flowersoft/theotown/city/objects/CrimeType;)Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;
    .registers 2

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->Companion:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$Companion;

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$Companion;->forCrime(Linfo/flowersoft/theotown/city/objects/CrimeType;)Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    move-result-object p0

    return-object p0
.end method

.method public static final forHappiness(Linfo/flowersoft/theotown/components/management/attribute/Attribute;F)Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;
    .registers 3

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->Companion:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$Companion;

    invoke-virtual {v0, p0, p1}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$Companion;->forHappiness(Linfo/flowersoft/theotown/components/management/attribute/Attribute;F)Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    move-result-object p0

    return-object p0
.end method

.method public static final forIllness()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;
    .registers 1

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->Companion:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$Companion;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$Companion;->forIllness()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    move-result-object v0

    return-object v0
.end method

.method public static final getLowDemand()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;
    .registers 1

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->Companion:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$Companion;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$Companion;->getLowDemand()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    move-result-object v0

    return-object v0
.end method

.method public static final getUnknown()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;
    .registers 1

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->Companion:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$Companion;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$Companion;->getUnknown()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    move-result-object v0

    return-object v0
.end method

.method public static final load(Lio/blueflower/stapel2d/util/json/JsonReader;)Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;
    .registers 2

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->Companion:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$Companion;

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$Companion;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAttribute()Linfo/flowersoft/theotown/components/management/attribute/Attribute;
    .registers 2

    .line 18
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->attribute:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    return-object v0
.end method

.method public final getCrimeType()Linfo/flowersoft/theotown/city/objects/CrimeType;
    .registers 2

    .line 17
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->crimeType:Linfo/flowersoft/theotown/city/objects/CrimeType;

    return-object v0
.end method

.method public final getHappiness()F
    .registers 2

    .line 19
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->happiness:F

    return v0
.end method

.method public final getType()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;
    .registers 2

    .line 16
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->type:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    return-object v0
.end method

.method public final localize(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/util/DraftLocalizer;)Ljava/lang/String;
    .registers 7

    const-string v0, "translator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localizer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->type:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    sget-object v1, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "translate(...)"

    if-eq v0, v1, :cond_7f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_75

    const/4 v1, 0x3

    const-string v3, "format(...)"

    if-eq v0, v1, :cond_56

    const/4 v1, 0x4

    if-eq v0, v1, :cond_37

    const/4 p2, 0x5

    if-ne v0, p2, :cond_31

    const/16 p2, 0xb35

    .line 131
    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 120
    :cond_31
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_37
    const/16 v0, 0x3be

    .line 128
    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    .line 129
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->crimeType:Linfo/flowersoft/theotown/city/objects/CrimeType;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/CrimeType;->getBuildingIcon()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 127
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_56
    const/16 p2, 0x983

    .line 124
    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    .line 125
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->attribute:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getNameLocalizationId()I

    move-result v0

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 123
    invoke-static {p2, p1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_75
    const/16 p2, 0x325

    .line 122
    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_7f
    const/16 p2, 0x74a

    .line 121
    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 103
    const-string v0, "type"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->type:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 105
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->type:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    sget-object v1, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Crime:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->crimeType:Linfo/flowersoft/theotown/city/objects/CrimeType;

    if-eqz v0, :cond_30

    .line 106
    const-string v0, "crime"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->crimeType:Linfo/flowersoft/theotown/city/objects/CrimeType;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/CrimeType;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 109
    :cond_30
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->type:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    sget-object v1, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Happiness:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    if-ne v0, v1, :cond_49

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->attribute:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    if-eqz v0, :cond_49

    .line 110
    const-string v0, "attrib"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->attribute:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getIndex()I

    move-result v2

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 113
    :cond_49
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->type:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    if-ne v0, v1, :cond_62

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->happiness:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v0, v0, v1

    if-nez v0, :cond_57

    goto :goto_62

    .line 114
    :cond_57
    const-string v0, "happ"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->happiness:F

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 117
    :cond_62
    :goto_62
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

###### Class info.flowersoft.theotown.city.objects.EmptyBuildingCause.Companion (info.flowersoft.theotown.city.objects.EmptyBuildingCause$Companion)
.class public final Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$Companion;
.super Ljava/lang/Object;
.source "EmptyBuildingCause.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getLowDemand$annotations()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic getUnknown$annotations()V
    .registers 0

    .line 0
    return-void
.end method


# virtual methods
.method public final forCrime(Linfo/flowersoft/theotown/city/objects/CrimeType;)Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;
    .registers 10

    const-string v0, "crimeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v1, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    .line 37
    sget-object v2, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Crime:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    .line 36
    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;-><init>(Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;Linfo/flowersoft/theotown/city/objects/CrimeType;Linfo/flowersoft/theotown/components/management/attribute/Attribute;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final forHappiness(Linfo/flowersoft/theotown/components/management/attribute/Attribute;F)Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;
    .registers 10

    .line 29
    new-instance v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    .line 30
    sget-object v1, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Happiness:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v3, p1

    move v4, p2

    .line 29
    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;-><init>(Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;Linfo/flowersoft/theotown/city/objects/CrimeType;Linfo/flowersoft/theotown/components/management/attribute/Attribute;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final forIllness()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;
    .registers 8

    .line 42
    new-instance v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    sget-object v1, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Illness:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;-><init>(Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;Linfo/flowersoft/theotown/city/objects/CrimeType;Linfo/flowersoft/theotown/components/management/attribute/Attribute;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getLowDemand()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;
    .registers 2

    .line 26
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->access$getLowDemand$cp()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknown()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;
    .registers 2

    .line 23
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->access$getUnknown$cp()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    move-result-object v0

    return-object v0
.end method

.method public final load(Lio/blueflower/stapel2d/util/json/JsonReader;)Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;
    .registers 8

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 48
    sget-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Unknown:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v3, v2

    move-object v2, v1

    .line 53
    :cond_10
    :goto_10
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 54
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7a

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_88

    goto :goto_7a

    :sswitch_24
    const-string v5, "crime"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    goto :goto_7a

    .line 59
    :cond_2d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    invoke-static {v1}, Linfo/flowersoft/theotown/city/objects/CrimeType;->resolveId(I)Linfo/flowersoft/theotown/city/objects/CrimeType;

    move-result-object v1

    if-nez v1, :cond_10

    .line 61
    sget-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Unknown:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    goto :goto_10

    .line 54
    :sswitch_3a
    const-string v5, "type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 56
    sget-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Companion:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType$Companion;

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "nextString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType$Companion;->resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    move-result-object v0

    if-nez v0, :cond_10

    sget-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Unknown:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    goto :goto_10

    .line 54
    :sswitch_56
    const-string v5, "happ"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5f

    goto :goto_7a

    .line 71
    :cond_5f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v3

    goto :goto_10

    .line 54
    :sswitch_64
    const-string v5, "attrib"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6d

    goto :goto_7a

    .line 65
    :cond_6d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v2}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttribute(I)Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v2

    if-nez v2, :cond_10

    .line 67
    sget-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Unknown:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    goto :goto_10

    .line 73
    :cond_7a
    :goto_7a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_10

    .line 76
    :cond_7e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 78
    new-instance p1, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    invoke-direct {p1, v0, v1, v2, v3}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;-><init>(Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;Linfo/flowersoft/theotown/city/objects/CrimeType;Linfo/flowersoft/theotown/components/management/attribute/Attribute;F)V

    return-object p1

    nop

    :sswitch_data_88
    .sparse-switch
        -0x53e0d136 -> :sswitch_64
        0x30c0b9 -> :sswitch_56
        0x368f3a -> :sswitch_3a
        0x5a880f2 -> :sswitch_24
    .end sparse-switch
.end method

###### Class info.flowersoft.theotown.city.objects.EmptyBuildingCause.EmptyCauseType (info.flowersoft.theotown.city.objects.EmptyBuildingCause$EmptyCauseType)
.class public final enum Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;
.super Ljava/lang/Enum;
.source "EmptyBuildingCause.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmptyCauseType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmptyBuildingCause.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmptyBuildingCause.kt\ninfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,134:1\n1379#2,2:135\n1408#2,4:137\n*S KotlinDebug\n*F\n+ 1 EmptyBuildingCause.kt\ninfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType\n*L\n95#1:135,2\n95#1:137,4\n*E\n"
.end annotation


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

.field public static final Companion:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType$Companion;

.field public static final enum Crime:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

.field public static final enum Happiness:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

.field public static final enum Illness:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

.field public static final enum LowDemand:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

.field public static final enum Unknown:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

.field public static final mapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final tag:Ljava/lang/String;


# direct methods
.method public static final synthetic $values()[Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;
    .registers 5

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Unknown:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    sget-object v1, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->LowDemand:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    sget-object v2, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Happiness:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    sget-object v3, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Crime:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    sget-object v4, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Illness:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    filled-new-array {v0, v1, v2, v3, v4}, [Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 88
    new-instance v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    const/4 v1, 0x0

    const-string v2, "unknown"

    const-string v3, "Unknown"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Unknown:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    .line 89
    new-instance v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    const/4 v1, 0x1

    const-string v2, "low demand"

    const-string v3, "LowDemand"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->LowDemand:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    .line 90
    new-instance v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    const/4 v1, 0x2

    const-string v2, "happiness"

    const-string v3, "Happiness"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Happiness:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    .line 91
    new-instance v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    const/4 v1, 0x3

    const-string v2, "crime"

    const-string v3, "Crime"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Crime:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    .line 92
    new-instance v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    const/4 v1, 0x4

    const-string v2, "illness"

    const-string v3, "Illness"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Illness:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    invoke-static {}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->$values()[Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->$VALUES:[Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Companion:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType$Companion;

    .line 95
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    const/16 v1, 0xa

    .line 1379
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1380
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1408
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1409
    move-object v3, v1

    check-cast v3, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    .line 95
    iget-object v3, v3, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->tag:Ljava/lang/String;

    .line 1409
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    .line 95
    :cond_80
    sput-object v2, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->mapping:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->tag:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getMapping$cp()Ljava/util/Map;
    .registers 1

    .line 87
    sget-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->mapping:Ljava/util/Map;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;
    .registers 2

    .line 0
    const-class v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;
    .registers 1

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->$VALUES:[Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    return-object v0
.end method


# virtual methods
.method public final getTag()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->tag:Ljava/lang/String;

    return-object v0
.end method

###### Class info.flowersoft.theotown.city.objects.EmptyBuildingCause.EmptyCauseType.Companion (info.flowersoft.theotown.city.objects.EmptyBuildingCause$EmptyCauseType$Companion)
.class public final Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType$Companion;
.super Ljava/lang/Object;
.source "EmptyBuildingCause.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;
    .registers 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->access$getMapping$cp()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    return-object p1
.end method

###### Class info.flowersoft.theotown.city.objects.EmptyBuildingCause.WhenMappings (info.flowersoft.theotown.city.objects.EmptyBuildingCause$WhenMappings)
.class public final synthetic Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$WhenMappings;
.super Ljava/lang/Object;
.source "EmptyBuildingCause.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->values()[Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Unknown:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->LowDemand:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Happiness:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Crime:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;->Illness:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$EmptyCauseType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    sput-object v0, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
