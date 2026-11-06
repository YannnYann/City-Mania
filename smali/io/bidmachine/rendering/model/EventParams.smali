###### Class io.bidmachine.rendering.model.EventParams (io.bidmachine.rendering.model.EventParams)
.class public final Lio/bidmachine/rendering/model/EventParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/EventParams$Builder;
    }
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/model/EventType;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/EventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/EventType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/EventTaskBucketParams;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventTaskBucketParamsList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/model/EventParams;->a:Lio/bidmachine/rendering/model/EventType;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/model/EventParams;->b:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lio/bidmachine/rendering/model/EventParams;->c:Ljava/util/List;

    .line 8
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p3, "ENGLISH"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/rendering/model/EventParams;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/rendering/model/EventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_5

    const/4 p3, 0x0

    :cond_5
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_d

    .line 9
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    .line 10
    :cond_d
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/rendering/model/EventParams;-><init>(Lio/bidmachine/rendering/model/EventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getEventTaskBucketParamsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/EventTaskBucketParams;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventParams;->c:Ljava/util/List;

    return-object v0
.end method

.method public final getEventType()Lio/bidmachine/rendering/model/EventType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventParams;->a:Lio/bidmachine/rendering/model/EventType;

    return-object v0
.end method

.method public final getRequestPermissionUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventParams;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getSource()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventParams;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventParams;->b:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_a
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventParams;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public final mergeWith(Lio/bidmachine/rendering/model/EventParams;)Lio/bidmachine/rendering/model/EventParams;
    .registers 4

    const-string v0, "eventParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventParams;->a:Lio/bidmachine/rendering/model/EventType;

    iget-object v1, p1, Lio/bidmachine/rendering/model/EventParams;->a:Lio/bidmachine/rendering/model/EventType;

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lio/bidmachine/rendering/model/EventParams;->d:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/rendering/model/EventParams;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_34

    .line 4
    :cond_16
    new-instance v0, Lio/bidmachine/rendering/model/EventParams$Builder;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/model/EventParams$Builder;-><init>(Lio/bidmachine/rendering/model/EventParams;)V

    .line 5
    iget-object v1, p0, Lio/bidmachine/rendering/model/EventParams;->b:Ljava/lang/String;

    if-eqz v1, :cond_25

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 6
    :cond_25
    iget-object v1, p1, Lio/bidmachine/rendering/model/EventParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/model/EventParams$Builder;->setRequestPermissionUrl(Ljava/lang/String;)Lio/bidmachine/rendering/model/EventParams$Builder;

    .line 8
    :cond_2a
    iget-object p1, p1, Lio/bidmachine/rendering/model/EventParams;->c:Ljava/util/List;

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/model/EventParams$Builder;->addEventTaskBucketParamsList(Ljava/util/List;)Lio/bidmachine/rendering/model/EventParams$Builder;

    .line 9
    invoke-virtual {v0}, Lio/bidmachine/rendering/model/EventParams$Builder;->build()Lio/bidmachine/rendering/model/EventParams;

    move-result-object p1

    return-object p1

    :cond_34
    :goto_34
    return-object p0
.end method

###### Class io.bidmachine.rendering.model.EventParams.Builder (io.bidmachine.rendering.model.EventParams$Builder)
.class public final Lio/bidmachine/rendering/model/EventParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/EventParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/model/EventType;

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/EventParams;)V
    .registers 5

    const-string v0, "eventParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/EventParams;->getEventType()Lio/bidmachine/rendering/model/EventType;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/EventParams;->getSource()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/EventParams;->getRequestPermissionUrl()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/EventParams;->getEventTaskBucketParamsList()Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-direct {p0, v0, v1, v2, p1}, Lio/bidmachine/rendering/model/EventParams$Builder;-><init>(Lio/bidmachine/rendering/model/EventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/rendering/model/EventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/EventType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/EventTaskBucketParams;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventTaskBucketParamsList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lio/bidmachine/rendering/model/EventParams$Builder;->a:Lio/bidmachine/rendering/model/EventType;

    .line 5
    iput-object p2, p0, Lio/bidmachine/rendering/model/EventParams$Builder;->b:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lio/bidmachine/rendering/model/EventParams$Builder;->c:Ljava/lang/String;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    iput-object p1, p0, Lio/bidmachine/rendering/model/EventParams$Builder;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addEventTaskBucketParamsList(Ljava/util/List;)Lio/bidmachine/rendering/model/EventParams$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/EventTaskBucketParams;",
            ">;)",
            "Lio/bidmachine/rendering/model/EventParams$Builder;"
        }
    .end annotation

    const-string v0, "eventTaskBucketParamsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventParams$Builder;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final build()Lio/bidmachine/rendering/model/EventParams;
    .registers 6

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/EventParams;

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/model/EventParams$Builder;->a:Lio/bidmachine/rendering/model/EventType;

    .line 3
    iget-object v2, p0, Lio/bidmachine/rendering/model/EventParams$Builder;->b:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lio/bidmachine/rendering/model/EventParams$Builder;->c:Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lio/bidmachine/rendering/model/EventParams$Builder;->d:Ljava/util/List;

    .line 6
    invoke-direct {v0, v1, v2, v3, v4}, Lio/bidmachine/rendering/model/EventParams;-><init>(Lio/bidmachine/rendering/model/EventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public final setRequestPermissionUrl(Ljava/lang/String;)Lio/bidmachine/rendering/model/EventParams$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/model/EventParams$Builder;->c:Ljava/lang/String;

    return-object p0
.end method
