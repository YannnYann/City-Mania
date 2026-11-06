###### Class io.bidmachine.rendering.model.ColorPlaceholderSource (io.bidmachine.rendering.model.ColorPlaceholderSource)
.class public final Lio/bidmachine/rendering/model/ColorPlaceholderSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/model/PlaceholderSource;


# instance fields
.field public final a:Lio/bidmachine/rendering/model/Color;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/Color;)V
    .registers 3

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/ColorPlaceholderSource;->a:Lio/bidmachine/rendering/model/Color;

    return-void
.end method


# virtual methods
.method public final getColor()Lio/bidmachine/rendering/model/Color;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/ColorPlaceholderSource;->a:Lio/bidmachine/rendering/model/Color;

    return-object v0
.end method
