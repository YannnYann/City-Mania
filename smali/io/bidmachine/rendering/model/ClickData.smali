###### Class io.bidmachine.rendering.model.ClickData (io.bidmachine.rendering.model.ClickData)
.class public final Lio/bidmachine/rendering/model/ClickData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/bidmachine/rendering/model/ClickData;->a:I

    .line 3
    iput p2, p0, Lio/bidmachine/rendering/model/ClickData;->b:I

    .line 4
    iput p3, p0, Lio/bidmachine/rendering/model/ClickData;->c:I

    .line 5
    iput p4, p0, Lio/bidmachine/rendering/model/ClickData;->d:I

    return-void
.end method


# virtual methods
.method public final getViewportHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/ClickData;->d:I

    return v0
.end method

.method public final getViewportWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/ClickData;->c:I

    return v0
.end method

.method public final getX()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/ClickData;->a:I

    return v0
.end method

.method public final getY()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/ClickData;->b:I

    return v0
.end method
