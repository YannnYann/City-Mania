###### Class io.bidmachine.rendering.model.Gradient (io.bidmachine.rendering.model.Gradient)
.class public final Lio/bidmachine/rendering/model/Gradient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/bidmachine/rendering/model/GradientType;

.field public final b:Lio/bidmachine/rendering/model/GradientDirection;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/GradientType;Lio/bidmachine/rendering/model/GradientDirection;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/GradientType;",
            "Lio/bidmachine/rendering/model/GradientDirection;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/Gradient;->a:Lio/bidmachine/rendering/model/GradientType;

    iput-object p2, p0, Lio/bidmachine/rendering/model/Gradient;->b:Lio/bidmachine/rendering/model/GradientDirection;

    iput-object p3, p0, Lio/bidmachine/rendering/model/Gradient;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getColors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/Gradient;->c:Ljava/util/List;

    return-object v0
.end method

.method public final getDirection()Lio/bidmachine/rendering/model/GradientDirection;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/Gradient;->b:Lio/bidmachine/rendering/model/GradientDirection;

    return-object v0
.end method

.method public final getType()Lio/bidmachine/rendering/model/GradientType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/Gradient;->a:Lio/bidmachine/rendering/model/GradientType;

    return-object v0
.end method
