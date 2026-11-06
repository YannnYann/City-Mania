###### Class io.bidmachine.iab.measurer.MraidAdMeasurer (io.bidmachine.iab.measurer.MraidAdMeasurer)
.class public interface abstract Lio/bidmachine/iab/measurer/MraidAdMeasurer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/measurer/AdMeasurer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/iab/measurer/AdMeasurer<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract prepareCreativeForMeasure(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "html"
        }
    .end annotation
.end method
