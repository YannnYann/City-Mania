###### Class io.bidmachine.rendering.model.ImagePlaceholderSource (io.bidmachine.rendering.model.ImagePlaceholderSource)
.class public final Lio/bidmachine/rendering/model/ImagePlaceholderSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/model/PlaceholderSource;


# instance fields
.field public final a:Lio/bidmachine/rendering/model/Image;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/Image;)V
    .registers 3

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/ImagePlaceholderSource;->a:Lio/bidmachine/rendering/model/Image;

    return-void
.end method


# virtual methods
.method public final getImage()Lio/bidmachine/rendering/model/Image;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/ImagePlaceholderSource;->a:Lio/bidmachine/rendering/model/Image;

    return-object v0
.end method
