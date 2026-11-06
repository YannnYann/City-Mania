###### Class io.bidmachine.rendering.model.Color (io.bidmachine.rendering.model.Color)
.class public final Lio/bidmachine/rendering/model/Color;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/bidmachine/rendering/model/ColorSource;

.field public final b:Z


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/ColorSource;Z)V
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/Color;->a:Lio/bidmachine/rendering/model/ColorSource;

    iput-boolean p2, p0, Lio/bidmachine/rendering/model/Color;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/rendering/model/ColorSource;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 2
    :cond_5
    invoke-direct {p0, p1, p2}, Lio/bidmachine/rendering/model/Color;-><init>(Lio/bidmachine/rendering/model/ColorSource;Z)V

    return-void
.end method


# virtual methods
.method public final getSource()Lio/bidmachine/rendering/model/ColorSource;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/Color;->a:Lio/bidmachine/rendering/model/ColorSource;

    return-object v0
.end method

.method public final isContextBased()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/model/Color;->b:Z

    return v0
.end method
