###### Class io.bidmachine.rendering.model.GradientColorSource (io.bidmachine.rendering.model.GradientColorSource)
.class public final Lio/bidmachine/rendering/model/GradientColorSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/model/ColorSource;


# instance fields
.field public final a:Lio/bidmachine/rendering/model/Gradient;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/Gradient;)V
    .registers 3

    const-string v0, "gradient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/GradientColorSource;->a:Lio/bidmachine/rendering/model/Gradient;

    return-void
.end method


# virtual methods
.method public final getGradient()Lio/bidmachine/rendering/model/Gradient;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/GradientColorSource;->a:Lio/bidmachine/rendering/model/Gradient;

    return-object v0
.end method
