###### Class info.flowersoft.theotown.draft.requirement.SingleRequirement (info.flowersoft.theotown.draft.requirement.SingleRequirement)
.class public abstract Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;
.super Ljava/lang/Object;
.source "SingleRequirement.java"


# instance fields
.field public context:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract autoFulfilledInSandboxMode()Z
.end method

.method public abstract hideIfFulfilled()Z
.end method

.method public abstract hideIfNotFulfilled()Z
.end method

.method public abstract isFulfilled(Linfo/flowersoft/theotown/city/City;)Z
.end method

.method public isImportant()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract localize(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
.end method

.method public resolveDraftTitle(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 4

    .line 36
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-direct {v0, p2}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setContext(Ljava/lang/Object;)V
    .registers 2

    .line 16
    iput-object p1, p0, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->context:Ljava/lang/Object;

    return-void
.end method

.method public abstract strongerOrEqualThan(Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;)Z
.end method
