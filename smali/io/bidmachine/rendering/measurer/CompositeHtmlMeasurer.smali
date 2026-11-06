###### Class io.bidmachine.rendering.measurer.CompositeHtmlMeasurer (io.bidmachine.rendering.measurer.CompositeHtmlMeasurer)
.class public final Lio/bidmachine/rendering/measurer/CompositeHtmlMeasurer;
.super Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/measurer/HtmlMeasurer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer<",
        "Lio/bidmachine/rendering/measurer/HtmlMeasurer;",
        "Landroid/webkit/WebView;",
        ">;",
        "Lio/bidmachine/rendering/measurer/HtmlMeasurer;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/rendering/measurer/HtmlMeasurer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "measurerList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public prepareCreativeForMeasure(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "html"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->getMeasurerList()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    .line 9
    invoke-interface {v1, p1}, Lio/bidmachine/rendering/measurer/HtmlMeasurer;->prepareCreativeForMeasure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_1e
    return-object p1
.end method
