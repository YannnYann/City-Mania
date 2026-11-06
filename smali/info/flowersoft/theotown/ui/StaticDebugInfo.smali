###### Class info.flowersoft.theotown.ui.StaticDebugInfo (info.flowersoft.theotown.ui.StaticDebugInfo)
.class public Linfo/flowersoft/theotown/ui/StaticDebugInfo;
.super Linfo/flowersoft/theotown/ui/DebugInfo;
.source "StaticDebugInfo.java"


# instance fields
.field public final color:Lio/blueflower/stapel2d/drawing/Color;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 13
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {p0, p1, v0}, Linfo/flowersoft/theotown/ui/StaticDebugInfo;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 3

    .line 16
    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/DebugInfo;-><init>()V

    .line 17
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/StaticDebugInfo;->text:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/StaticDebugInfo;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method


# virtual methods
.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 28
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StaticDebugInfo;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StaticDebugInfo;->text:Ljava/lang/String;

    return-object v0
.end method
