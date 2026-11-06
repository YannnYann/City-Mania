###### Class info.flowersoft.theotown.tools.marker.LegendEntry (info.flowersoft.theotown.tools.marker.LegendEntry)
.class public final Linfo/flowersoft/theotown/tools/marker/LegendEntry;
.super Ljava/lang/Object;
.source "LegendEntry.kt"


# instance fields
.field public final color:Lio/blueflower/stapel2d/drawing/Color;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 4

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "color"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/marker/LegendEntry;->text:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Linfo/flowersoft/theotown/tools/marker/LegendEntry;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method


# virtual methods
.method public final getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 7
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/LegendEntry;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/LegendEntry;->text:Ljava/lang/String;

    return-object v0
.end method
