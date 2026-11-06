###### Class info.flowersoft.theotown.draft.HeightMapDraft (info.flowersoft.theotown.draft.HeightMapDraft)
.class public final Linfo/flowersoft/theotown/draft/HeightMapDraft;
.super Linfo/flowersoft/theotown/draft/Draft;
.source "HeightMapDraft.kt"


# instance fields
.field public file:Linfo/flowersoft/theotown/util/vfs/AbstractFile;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/Draft;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFile()Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 2

    .line 7
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/HeightMapDraft;->file:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-object v0
.end method

.method public final setFile(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V
    .registers 2

    .line 7
    iput-object p1, p0, Linfo/flowersoft/theotown/draft/HeightMapDraft;->file:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-void
.end method
