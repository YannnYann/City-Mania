###### Class info.flowersoft.theotown.tools.RemoveTunnelTool (info.flowersoft.theotown.tools.RemoveTunnelTool)
.class public Linfo/flowersoft/theotown/tools/RemoveTunnelTool;
.super Linfo/flowersoft/theotown/tools/RemoveTool;
.source "RemoveTunnelTool.java"


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0, v0}, Linfo/flowersoft/theotown/tools/RemoveTool;-><init>(ZZ)V

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    .line 17
    iput p1, p0, Linfo/flowersoft/theotown/tools/RemoveTool;->removeTunnelLevel:I

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/tools/RemoveTunnelTool;)Linfo/flowersoft/theotown/city/Tiles;
    .registers 1

    .line 11
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-object p0
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 22
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 23
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/RemoveTool;->enterRemoveTunnelMode()V

    .line 25
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->showTrafficMarkerInRoadTool:Z

    if-eqz v0, :cond_12

    new-instance v0, Linfo/flowersoft/theotown/tools/RemoveTunnelTool$1;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/tools/RemoveTunnelTool$1;-><init>(Linfo/flowersoft/theotown/tools/RemoveTunnelTool;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    :cond_12
    return-void
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 35
    const-string v0, "RemoveTunnel"

    return-object v0
.end method

###### Class info.flowersoft.theotown.tools.RemoveTunnelTool.AnonymousClass1 (info.flowersoft.theotown.tools.RemoveTunnelTool$1)
.class public Linfo/flowersoft/theotown/tools/RemoveTunnelTool$1;
.super Linfo/flowersoft/theotown/tools/marker/TrafficMarker;
.source "RemoveTunnelTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RemoveTunnelTool;->bind(Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RemoveTunnelTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RemoveTunnelTool;Linfo/flowersoft/theotown/city/City;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 25
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RemoveTunnelTool$1;->this$0:Linfo/flowersoft/theotown/tools/RemoveTunnelTool;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/tools/marker/TrafficMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public overlayAlpha(II)F
    .registers 5

    .line 28
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemoveTunnelTool$1;->this$0:Linfo/flowersoft/theotown/tools/RemoveTunnelTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RemoveTunnelTool;->access$000(Linfo/flowersoft/theotown/tools/RemoveTunnelTool;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RemoveTunnelTool$1;->this$0:Linfo/flowersoft/theotown/tools/RemoveTunnelTool;

    iget v1, v1, Linfo/flowersoft/theotown/tools/RemoveTool;->removeTunnelLevel:I

    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_13

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method
