###### Class info.flowersoft.theotown.ui.DebugInfo (info.flowersoft.theotown.ui.DebugInfo)
.class public abstract Linfo/flowersoft/theotown/ui/DebugInfo;
.super Ljava/lang/Object;
.source "DebugInfo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 13
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public abstract getText()Ljava/lang/String;
.end method
