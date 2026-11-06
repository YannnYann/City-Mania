###### Class io.bidmachine.rendering.model.OneColorSource (io.bidmachine.rendering.model.OneColorSource)
.class public final Lio/bidmachine/rendering/model/OneColorSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/model/ColorSource;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/rendering/model/OneColorSource;->a:I

    return-void
.end method


# virtual methods
.method public final getColor()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/OneColorSource;->a:I

    return v0
.end method
