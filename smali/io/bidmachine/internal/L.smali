###### Class io.bidmachine.internal.L (io.bidmachine.internal.L)
.class public final Lio/bidmachine/internal/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/bidmachine/internal/L;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/internal/L;

    invoke-direct {v0}, Lio/bidmachine/internal/L;-><init>()V

    sput-object v0, Lio/bidmachine/internal/L;->a:Lio/bidmachine/internal/L;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/internal/L;Ljava/util/List;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/internal/L;->a(Ljava/util/List;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lio/bidmachine/TargetingParams;Lcom/explorestack/protobuf/adcom/Context$User$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)V
    .registers 12

    const-string v0, "params"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maskedSignalsBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyGroupRestrictions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyDataMasker"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lio/bidmachine/internal/L;->a:Lio/bidmachine/internal/L;

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/TargetingParams;->getData$bidmachine_android_sdk_ba_3_8_0()Lio/bidmachine/TargetingParams$Data;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 4
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/internal/L;->a(Lio/bidmachine/TargetingParams$Data;Lcom/explorestack/protobuf/adcom/Context$User$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)V

    return-void
.end method

.method public static final synthetic b(Lio/bidmachine/internal/L;Ljava/util/List;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/internal/L;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_84

    .line 51
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_84

    .line 55
    :cond_b
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v1

    const-string v2, "external_user_ids"

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v1

    .line 99
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/ExternalUserId;

    .line 100
    :try_start_25
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v2}, Lio/bidmachine/ExternalUserId;->getSourceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_30

    goto :goto_3b

    :catchall_30
    move-exception v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_3b
    invoke-static {v3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    move-object v3, v0

    :cond_42
    check-cast v3, Ljava/lang/String;

    .line 101
    :try_start_44
    invoke-virtual {v2}, Lio/bidmachine/ExternalUserId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4d

    goto :goto_58

    :catchall_4d
    move-exception v2

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_58
    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    move-object v2, v0

    :cond_5f
    check-cast v2, Ljava/lang/String;

    if-eqz v3, :cond_19

    .line 102
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_6a

    goto :goto_19

    :cond_6a
    if-eqz v2, :cond_19

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_73

    goto :goto_19

    .line 106
    :cond_73
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v4

    .line 107
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v3

    .line 108
    invoke-virtual {v3, v2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->setValue(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v2

    .line 109
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->addSegment(Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    goto :goto_19

    :cond_83
    return-object v1

    :cond_84
    :goto_84
    return-object v0
.end method

.method public final a(Lio/bidmachine/TargetingParams$Data;Lcom/explorestack/protobuf/adcom/Context$User$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)V
    .registers 12

    .line 5
    new-instance v1, Lio/bidmachine/internal/L$a;

    invoke-direct {v1, p1, p2}, Lio/bidmachine/internal/L$a;-><init>(Lio/bidmachine/TargetingParams$Data;Lcom/explorestack/protobuf/adcom/Context$User$Builder;)V

    new-instance v2, Lio/bidmachine/internal/L$b;

    invoke-direct {v2, p1, p3, p5}, Lio/bidmachine/internal/L$b;-><init>(Lio/bidmachine/TargetingParams$Data;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p4

    invoke-static/range {v0 .. v5}, Lio/bidmachine/internal/w;->a(Lio/bidmachine/internal/w;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 24
    new-instance p4, Lio/bidmachine/internal/L$c;

    invoke-direct {p4, p1, p2}, Lio/bidmachine/internal/L$c;-><init>(Lio/bidmachine/TargetingParams$Data;Lcom/explorestack/protobuf/adcom/Context$User$Builder;)V

    new-instance v1, Lio/bidmachine/internal/L$d;

    invoke-direct {v1, p1, p3, p5}, Lio/bidmachine/internal/L$d;-><init>(Lio/bidmachine/TargetingParams$Data;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V

    invoke-virtual {v0, p4, v1}, Lio/bidmachine/internal/w;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 44
    sget-object p4, Lio/bidmachine/internal/m;->a:Lio/bidmachine/internal/m;

    invoke-virtual {p4, p1, p3, v0, p5}, Lio/bidmachine/internal/m;->a(Lio/bidmachine/TargetingParams$Data;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object p1

    .line 50
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    return-void
.end method

.method public final b(Ljava/util/List;)Ljava/lang/String;
    .registers 12

    if-eqz p1, :cond_19

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_19

    :cond_9
    const/16 v8, 0x3e

    const/4 v9, 0x0

    .line 5
    const-string v2, ","

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_19
    :goto_19
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.bidmachine.internal.L.a (io.bidmachine.internal.L$a)
.class public final Lio/bidmachine/internal/L$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/L;->a(Lio/bidmachine/TargetingParams$Data;Lcom/explorestack/protobuf/adcom/Context$User$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/TargetingParams$Data;

.field public final synthetic b:Lcom/explorestack/protobuf/adcom/Context$User$Builder;


# direct methods
.method public constructor <init>(Lio/bidmachine/TargetingParams$Data;Lcom/explorestack/protobuf/adcom/Context$User$Builder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/L$a;->a:Lio/bidmachine/TargetingParams$Data;

    iput-object p2, p0, Lio/bidmachine/internal/L$a;->b:Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/L$a;->a:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lio/bidmachine/internal/L$a;->b:Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 2
    :cond_d
    sget-object v0, Lio/bidmachine/internal/L;->a:Lio/bidmachine/internal/L;

    iget-object v1, p0, Lio/bidmachine/internal/L$a;->a:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v1}, Lio/bidmachine/TargetingParams$Data;->getExternalUserIdList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/internal/L;->a(Lio/bidmachine/internal/L;Ljava/util/List;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v1, p0, Lio/bidmachine/internal/L$a;->b:Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->addData(Lcom/explorestack/protobuf/adcom/Context$Data;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    :cond_24
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/internal/L$a;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.internal.L.b (io.bidmachine.internal.L$b)
.class public final Lio/bidmachine/internal/L$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/L;->a(Lio/bidmachine/TargetingParams$Data;Lcom/explorestack/protobuf/adcom/Context$User$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/TargetingParams$Data;

.field public final synthetic b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

.field public final synthetic c:Lio/bidmachine/internal/v;


# direct methods
.method public constructor <init>(Lio/bidmachine/TargetingParams$Data;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/L$b;->a:Lio/bidmachine/TargetingParams$Data;

    iput-object p2, p0, Lio/bidmachine/internal/L$b;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iput-object p3, p0, Lio/bidmachine/internal/L$b;->c:Lio/bidmachine/internal/v;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/L$b;->a:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lio/bidmachine/internal/L$b;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/internal/L$b;->c:Lio/bidmachine/internal/v;

    .line 2
    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setUserId(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4
    :cond_1b
    iget-object v0, p0, Lio/bidmachine/internal/L$b;->a:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getExternalUserIdList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_71

    iget-object v1, p0, Lio/bidmachine/internal/L$b;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/internal/L$b;->c:Lio/bidmachine/internal/v;

    .line 91
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 93
    check-cast v4, Lio/bidmachine/ExternalUserId;

    .line 94
    invoke-virtual {v4}, Lio/bidmachine/ExternalUserId;->getSourceId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-virtual {v4}, Lio/bidmachine/ExternalUserId;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v6, "value"

    invoke-static {v6, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    filled-new-array {v5, v4}, [Lkotlin/Pair;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 182
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 183
    :cond_62
    invoke-static {v3}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/Iterable;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    .line 184
    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setExternalUserIds(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    :cond_71
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/internal/L$b;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.internal.L.c (io.bidmachine.internal.L$c)
.class public final Lio/bidmachine/internal/L$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/L;->a(Lio/bidmachine/TargetingParams$Data;Lcom/explorestack/protobuf/adcom/Context$User$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/TargetingParams$Data;

.field public final synthetic b:Lcom/explorestack/protobuf/adcom/Context$User$Builder;


# direct methods
.method public constructor <init>(Lio/bidmachine/TargetingParams$Data;Lcom/explorestack/protobuf/adcom/Context$User$Builder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/L$c;->a:Lio/bidmachine/TargetingParams$Data;

    iput-object p2, p0, Lio/bidmachine/internal/L$c;->b:Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/L$c;->a:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getBirthdayYear()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lio/bidmachine/internal/L$c;->b:Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setYob(I)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 2
    :cond_11
    iget-object v0, p0, Lio/bidmachine/internal/L$c;->a:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getGender()Lio/bidmachine/utils/Gender;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v1, p0, Lio/bidmachine/internal/L$c;->b:Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    invoke-virtual {v0}, Lio/bidmachine/utils/Gender;->getOrtbValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setGender(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 3
    :cond_22
    sget-object v0, Lio/bidmachine/internal/L;->a:Lio/bidmachine/internal/L;

    iget-object v1, p0, Lio/bidmachine/internal/L$c;->a:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v1}, Lio/bidmachine/TargetingParams$Data;->getKeywords()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/internal/L;->b(Lio/bidmachine/internal/L;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v1, p0, Lio/bidmachine/internal/L$c;->b:Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setKeywords(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    :cond_35
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/internal/L$c;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.internal.L.d (io.bidmachine.internal.L$d)
.class public final Lio/bidmachine/internal/L$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/L;->a(Lio/bidmachine/TargetingParams$Data;Lcom/explorestack/protobuf/adcom/Context$User$Builder;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/w;Lio/bidmachine/internal/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/TargetingParams$Data;

.field public final synthetic b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

.field public final synthetic c:Lio/bidmachine/internal/v;


# direct methods
.method public constructor <init>(Lio/bidmachine/TargetingParams$Data;Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;Lio/bidmachine/internal/v;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/L$d;->a:Lio/bidmachine/TargetingParams$Data;

    iput-object p2, p0, Lio/bidmachine/internal/L$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iput-object p3, p0, Lio/bidmachine/internal/L$d;->c:Lio/bidmachine/internal/v;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/L$d;->a:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getBirthdayYear()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lio/bidmachine/internal/L$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/internal/L$d;->c:Lio/bidmachine/internal/v;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 2
    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(I)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setYob(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 4
    :cond_1f
    iget-object v0, p0, Lio/bidmachine/internal/L$d;->a:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v0}, Lio/bidmachine/TargetingParams$Data;->getGender()Lio/bidmachine/utils/Gender;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v1, p0, Lio/bidmachine/internal/L$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/internal/L$d;->c:Lio/bidmachine/internal/v;

    .line 6
    invoke-virtual {v0}, Lio/bidmachine/utils/Gender;->getOrtbValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "it.ortbValue"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    .line 7
    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setGender(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    .line 10
    :cond_43
    sget-object v0, Lio/bidmachine/internal/L;->a:Lio/bidmachine/internal/L;

    iget-object v1, p0, Lio/bidmachine/internal/L$d;->a:Lio/bidmachine/TargetingParams$Data;

    invoke-virtual {v1}, Lio/bidmachine/TargetingParams$Data;->getKeywords()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/internal/L;->b(Lio/bidmachine/internal/L;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v1, p0, Lio/bidmachine/internal/L$d;->b:Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    iget-object v2, p0, Lio/bidmachine/internal/L$d;->c:Lio/bidmachine/internal/v;

    .line 11
    invoke-static {v0}, Lio/bidmachine/utils/ProtoSerializerKt;->protoSerialize(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/internal/v;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;->setKeywords(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/MaskedSignals$Builder;

    :cond_64
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/internal/L$d;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
