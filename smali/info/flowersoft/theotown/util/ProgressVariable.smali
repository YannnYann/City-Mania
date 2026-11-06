###### Class info.flowersoft.theotown.util.ProgressVariable (info.flowersoft.theotown.util.ProgressVariable)
.class public Linfo/flowersoft/theotown/util/ProgressVariable;
.super Ljava/lang/Object;
.source "ProgressVariable.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/ProgressProvider;


# instance fields
.field public progress:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Linfo/flowersoft/theotown/util/ProgressVariable;->progress:F

    return-void
.end method


# virtual methods
.method public getProgress()F
    .registers 2

    .line 12
    iget v0, p0, Linfo/flowersoft/theotown/util/ProgressVariable;->progress:F

    return v0
.end method

.method public setProgress(F)V
    .registers 2

    .line 16
    iput p1, p0, Linfo/flowersoft/theotown/util/ProgressVariable;->progress:F

    return-void
.end method
