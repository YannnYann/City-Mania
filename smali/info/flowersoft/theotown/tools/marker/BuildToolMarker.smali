###### Class info.flowersoft.theotown.tools.marker.BuildToolMarker (info.flowersoft.theotown.tools.marker.BuildToolMarker)
.class public interface abstract Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;
.super Ljava/lang/Object;
.source "BuildToolMarker.java"


# virtual methods
.method public abstract countVariants()I
.end method

.method public abstract getBuildingIntensity(II)F
.end method

.method public abstract getColor(IILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
.end method

.method public abstract getIcon()I
.end method

.method public abstract getIntensity(II)F
.end method

.method public abstract getLegend()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tools/marker/LegendEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract getTempIntensity(II)F
.end method

.method public abstract ignoreBuilding(II)Z
.end method

.method public abstract markBuilding(II)Z
.end method

.method public abstract markTree(II)Z
.end method

.method public abstract overlayAlpha(II)F
.end method

.method public abstract overlayTempAlpha(II)F
.end method

.method public abstract setVariant(I)V
.end method

.method public abstract useOverlay(II)Z
.end method
