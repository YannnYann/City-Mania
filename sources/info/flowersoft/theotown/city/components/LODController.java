package info.flowersoft.theotown.city.components;

import info.flowersoft.theotown.resources.Settings;

/* JADX INFO: loaded from: classes4.dex */
public final class LODController {
    public boolean duringScreenshot;
    public boolean noBackground;
    public boolean noBuffering;
    public int scale;

    public boolean drawNeighboringCities() {
        return !this.duringScreenshot && Settings.drawNeighbors;
    }

    public boolean drawCars() {
        return (this.duringScreenshot || !Settings.lod || this.scale >= -1) && !this.noBackground;
    }

    public boolean drawWeather() {
        return Settings.weather && !this.duringScreenshot && !this.noBackground && this.scale >= -4;
    }

    public boolean drawOverlay() {
        return (this.duringScreenshot || this.noBackground) ? false : true;
    }

    public boolean drawSmoke() {
        if (Settings.drawSmoke) {
            return (this.duringScreenshot || !Settings.lod || this.scale >= -1) && !this.noBackground;
        }
        return false;
    }

    public boolean drawWaterBackground() {
        return !this.noBackground;
    }

    public boolean drawTransparentBuildMode() {
        if (Settings.transparencyInBuildMode) {
            return this.duringScreenshot || !Settings.lod || this.scale >= 0;
        }
        return false;
    }

    public boolean drawEdges() {
        if (Settings.drawMapEdges) {
            return this.duringScreenshot || !Settings.lod || this.scale >= -4;
        }
        return false;
    }

    public boolean drawGrid() {
        if (Settings.gridInBuildMode) {
            return this.duringScreenshot || !Settings.lod || this.scale >= 0;
        }
        return false;
    }

    public boolean drawSigns() {
        return this.scale <= 0 && !this.noBackground;
    }

    public boolean drawFancyWater() {
        return this.scale >= -1;
    }

    public boolean isNoBackground() {
        return this.noBackground;
    }

    public boolean isNoBuffering() {
        return this.noBuffering;
    }

    public void setNoBuffering(boolean z) {
        this.noBuffering = z;
    }

    public void setCityScale(int i) {
        this.scale = i;
    }

    public int getScale() {
        return this.scale;
    }

    public void setDuringScreenshot(boolean z) {
        this.duringScreenshot = z;
    }

    public void setNoBackground(boolean z) {
        this.noBackground = z;
    }

    public boolean drawRoadLength() {
        return Settings.showRoadLength && this.scale >= -1;
    }
}
