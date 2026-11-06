###### Class info.flowersoft.theotown.resources.DraftResolver (info.flowersoft.theotown.resources.DraftResolver)
.class public Linfo/flowersoft/theotown/resources/DraftResolver;
.super Lio/blueflower/stapel2d/util/LazyGetter;
.source "DraftResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linfo/flowersoft/theotown/draft/Draft;",
        ">",
        "Lio/blueflower/stapel2d/util/LazyGetter<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$3dAm6--EITCQpavJSCvyaAM5fA8(Ljava/lang/String;)Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 13
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/draft/Draft;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 12
    new-instance v0, Linfo/flowersoft/theotown/resources/DraftResolver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/resources/DraftResolver$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/LazyGetter;-><init>(Lio/blueflower/stapel2d/util/Getter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.resources.DraftResolver$$ExternalSyntheticLambda0 (info.flowersoft.theotown.resources.DraftResolver$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/resources/DraftResolver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/DraftResolver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/DraftResolver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/DraftResolver;->$r8$lambda$3dAm6--EITCQpavJSCvyaAM5fA8(Ljava/lang/String;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    return-object v0
.end method
