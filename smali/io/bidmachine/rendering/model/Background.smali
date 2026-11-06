###### Class io.bidmachine.rendering.model.Background (io.bidmachine.rendering.model.Background)
.class public final Lio/bidmachine/rendering/model/Background;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:Lio/bidmachine/rendering/model/BackgroundSource;

.field public final c:Lio/bidmachine/rendering/model/Placeholder;

.field public final d:Z


# direct methods
.method public constructor <init>(FLio/bidmachine/rendering/model/BackgroundSource;Lio/bidmachine/rendering/model/Placeholder;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lio/bidmachine/rendering/model/Background;->a:F

    .line 4
    iput-object p2, p0, Lio/bidmachine/rendering/model/Background;->b:Lio/bidmachine/rendering/model/BackgroundSource;

    .line 5
    iput-object p3, p0, Lio/bidmachine/rendering/model/Background;->c:Lio/bidmachine/rendering/model/Placeholder;

    .line 8
    instance-of p1, p2, Lio/bidmachine/rendering/model/ColorBackgroundSource;

    if-eqz p1, :cond_1b

    check-cast p2, Lio/bidmachine/rendering/model/ColorBackgroundSource;

    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ColorBackgroundSource;->getColor()Lio/bidmachine/rendering/model/Color;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/Color;->isContextBased()Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    iput-boolean p1, p0, Lio/bidmachine/rendering/model/Background;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(FLio/bidmachine/rendering/model/BackgroundSource;Lio/bidmachine/rendering/model/Placeholder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_6
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_c

    move-object p2, v0

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_11

    move-object p3, v0

    .line 9
    :cond_11
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/rendering/model/Background;-><init>(FLio/bidmachine/rendering/model/BackgroundSource;Lio/bidmachine/rendering/model/Placeholder;)V

    return-void
.end method


# virtual methods
.method public final getOpacity()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/Background;->a:F

    return v0
.end method

.method public final getPlaceholder()Lio/bidmachine/rendering/model/Placeholder;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/Background;->c:Lio/bidmachine/rendering/model/Placeholder;

    return-object v0
.end method

.method public final getSource()Lio/bidmachine/rendering/model/BackgroundSource;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/Background;->b:Lio/bidmachine/rendering/model/BackgroundSource;

    return-object v0
.end method

.method public final isContextBased()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/model/Background;->d:Z

    return v0
.end method
