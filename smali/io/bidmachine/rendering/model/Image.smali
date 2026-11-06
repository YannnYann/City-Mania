###### Class io.bidmachine.rendering.model.Image (io.bidmachine.rendering.model.Image)
.class public final Lio/bidmachine/rendering/model/Image;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/bidmachine/rendering/model/ScaleType;

.field public final b:Lio/bidmachine/rendering/model/Resource;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/ScaleType;Lio/bidmachine/rendering/model/Resource;)V
    .registers 4

    const-string v0, "scaleType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/Image;->a:Lio/bidmachine/rendering/model/ScaleType;

    iput-object p2, p0, Lio/bidmachine/rendering/model/Image;->b:Lio/bidmachine/rendering/model/Resource;

    return-void
.end method


# virtual methods
.method public final getResource()Lio/bidmachine/rendering/model/Resource;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/Image;->b:Lio/bidmachine/rendering/model/Resource;

    return-object v0
.end method

.method public final getScaleType()Lio/bidmachine/rendering/model/ScaleType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/Image;->a:Lio/bidmachine/rendering/model/ScaleType;

    return-object v0
.end method
