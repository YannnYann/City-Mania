###### Class info.flowersoft.theotown.draftloader.PluginImageFile (info.flowersoft.theotown.draftloader.PluginImageFile)
.class public Linfo/flowersoft/theotown/draftloader/PluginImageFile;
.super Ljava/lang/Object;
.source "PluginImageFile.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Linfo/flowersoft/theotown/draftloader/PluginImageFile;",
        ">;"
    }
.end annotation


# static fields
.field public static MAX_SIZE:I = 0x400


# instance fields
.field public h:I

.field public path:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

.field public w:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Linfo/flowersoft/theotown/draftloader/PluginImageFile;)I
    .registers 3

    .line 22
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draftloader/PluginImageFile;->score()I

    move-result p1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/PluginImageFile;->score()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 9
    check-cast p1, Linfo/flowersoft/theotown/draftloader/PluginImageFile;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draftloader/PluginImageFile;->compareTo(Linfo/flowersoft/theotown/draftloader/PluginImageFile;)I

    move-result p1

    return p1
.end method

.method public final score()I
    .registers 4

    .line 17
    iget v0, p0, Linfo/flowersoft/theotown/draftloader/PluginImageFile;->w:I

    iget v1, p0, Linfo/flowersoft/theotown/draftloader/PluginImageFile;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v1, Linfo/flowersoft/theotown/draftloader/PluginImageFile;->MAX_SIZE:I

    mul-int/2addr v0, v1

    iget v1, p0, Linfo/flowersoft/theotown/draftloader/PluginImageFile;->w:I

    iget v2, p0, Linfo/flowersoft/theotown/draftloader/PluginImageFile;->h:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Linfo/flowersoft/theotown/draftloader/PluginImageFile;->w:I

    iget v2, p0, Linfo/flowersoft/theotown/draftloader/PluginImageFile;->h:I

    if-lt v1, v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    add-int/2addr v0, v1

    return v0
.end method
