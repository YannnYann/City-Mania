###### Class io.bidmachine.internal.B (io.bidmachine.internal.B)
.class public final Lio/bidmachine/internal/B;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/bidmachine/internal/B;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/internal/B;

    invoke-direct {v0}, Lio/bidmachine/internal/B;-><init>()V

    sput-object v0, Lio/bidmachine/internal/B;->a:Lio/bidmachine/internal/B;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lio/bidmachine/protobuf/sdk/Regs$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/u;)V
    .registers 5

    const-string v0, "regsBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maskedSignalsBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/internal/B;->a:Lio/bidmachine/internal/B;

    invoke-virtual {p2}, Lio/bidmachine/internal/u;->f()Lio/bidmachine/internal/A;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/B;->a(Lio/bidmachine/internal/A;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->setPub(Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    .line 2
    invoke-virtual {p2}, Lio/bidmachine/internal/u;->b()Lio/bidmachine/internal/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/B;->a(Lio/bidmachine/internal/t;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->setCmp(Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    .line 3
    invoke-virtual {p2}, Lio/bidmachine/internal/u;->e()Lio/bidmachine/internal/y;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/internal/F;->a(Lio/bidmachine/internal/y;)Lio/bidmachine/protobuf/sdk/RestrictionMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->setPersistedMode(Lio/bidmachine/protobuf/sdk/RestrictionMode;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    .line 4
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->setMaskedSignals(Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    .line 5
    invoke-virtual {p2}, Lio/bidmachine/internal/u;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_40

    goto :goto_41

    :cond_40
    const/4 p1, 0x0

    :goto_41
    if-eqz p1, :cond_7a

    .line 45
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_52
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 47
    check-cast v0, Lio/bidmachine/internal/C;

    .line 48
    invoke-static {v0}, Lio/bidmachine/internal/D;->a(Lio/bidmachine/internal/C;)Lio/bidmachine/protobuf/sdk/RestrictionKind;

    move-result-object v0

    .line 89
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 91
    :cond_66
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/sdk/RestrictionKind;

    .line 92
    invoke-virtual {p0, p2}, Lio/bidmachine/protobuf/sdk/Regs$Builder;->addRestrictionKinds(Lio/bidmachine/protobuf/sdk/RestrictionKind;)Lio/bidmachine/protobuf/sdk/Regs$Builder;

    goto :goto_6a

    :cond_7a
    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/internal/t;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;
    .registers 5

    const-string v0, "platformPrivacySettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$CMP;->newBuilder()Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {p1}, Lio/bidmachine/internal/t;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "builder"

    if-eqz v1, :cond_1d

    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->setTcfV1String(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    .line 141
    :cond_1d
    invoke-virtual {p1}, Lio/bidmachine/internal/t;->f()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoBooleanValue(Z)Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->setTcfV1Zone(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    .line 142
    :cond_33
    invoke-virtual {p1}, Lio/bidmachine/internal/t;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    if-eqz v1, :cond_45

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->setTcfV2String(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    .line 143
    :cond_45
    invoke-virtual {p1}, Lio/bidmachine/internal/t;->h()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoBooleanValue(Z)Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    if-eqz v1, :cond_5b

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->setTcfV2Zone(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    .line 144
    :cond_5b
    invoke-virtual {p1}, Lio/bidmachine/internal/t;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6d

    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    if-eqz v1, :cond_6d

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->setCcpa(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    .line 145
    :cond_6d
    invoke-virtual {p1}, Lio/bidmachine/internal/t;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7f

    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    if-eqz v1, :cond_7f

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->setGpp(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    .line 146
    :cond_7f
    invoke-virtual {p1}, Lio/bidmachine/internal/t;->b()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a7

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8c

    goto :goto_8d

    :cond_8c
    const/4 p1, 0x0

    :goto_8d
    if-eqz p1, :cond_a7

    .line 163
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_93
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 164
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;->addGppSid(I)Lio/bidmachine/protobuf/sdk/Regs$CMP$Builder;

    goto :goto_93

    .line 167
    :cond_a7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lio/bidmachine/internal/A;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;
    .registers 5

    const-string v0, "publisherPrivacySettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Regs$Pub;->newBuilder()Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Lio/bidmachine/internal/A;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "builder"

    if-eqz v1, :cond_1d

    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->setConsentString(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    .line 96
    :cond_1d
    invoke-virtual {p1}, Lio/bidmachine/internal/A;->h()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoBooleanValue(Z)Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->setGdprZone(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    .line 97
    :cond_33
    invoke-virtual {p1}, Lio/bidmachine/internal/A;->b()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoBooleanValue(Z)Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->setGdprConsent(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    .line 98
    :cond_49
    invoke-virtual {p1}, Lio/bidmachine/internal/A;->c()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoBooleanValue(Z)Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    if-eqz v1, :cond_5f

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->setCoppa(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    .line 99
    :cond_5f
    invoke-virtual {p1}, Lio/bidmachine/internal/A;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_71

    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    if-eqz v1, :cond_71

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->setCcpa(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    .line 100
    :cond_71
    invoke-virtual {p1}, Lio/bidmachine/internal/A;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_83

    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    if-eqz v1, :cond_83

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->setGpp(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    .line 101
    :cond_83
    invoke-virtual {p1}, Lio/bidmachine/internal/A;->g()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_99

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoBooleanValue(Z)Lcom/explorestack/protobuf/BoolValue;

    move-result-object v1

    if-eqz v1, :cond_99

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->setNonPersonalized(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    .line 102
    :cond_99
    invoke-virtual {p1}, Lio/bidmachine/internal/A;->e()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_c1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a6

    goto :goto_a7

    :cond_a6
    const/4 p1, 0x0

    :goto_a7
    if-eqz p1, :cond_c1

    .line 133
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ad
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 134
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;->addGppSid(I)Lio/bidmachine/protobuf/sdk/Regs$Pub$Builder;

    goto :goto_ad

    .line 137
    :cond_c1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
