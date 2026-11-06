###### Class info.flowersoft.theotown.draftloader.BiomeDraftLoader$$ExternalSyntheticLambda1 (info.flowersoft.theotown.draftloader.BiomeDraftLoader$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/draft/GroundDraft;->getDefaultSpawnDefinition()Linfo/flowersoft/theotown/draft/SpawnDefinition;

    move-result-object v0

    return-object v0
.end method
