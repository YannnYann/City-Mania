###### Class io.bidmachine.rendering.model.Border (io.bidmachine.rendering.model.Border)
.class public final Lio/bidmachine/rendering/model/Border;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/rendering/model/Border;->a:I

    iput p2, p0, Lio/bidmachine/rendering/model/Border;->b:I

    return-void
.end method


# virtual methods
.method public final getStrokeColor()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/Border;->b:I

    return v0
.end method

.method public final getStrokeWidthPx()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/Border;->a:I

    return v0
.end method
