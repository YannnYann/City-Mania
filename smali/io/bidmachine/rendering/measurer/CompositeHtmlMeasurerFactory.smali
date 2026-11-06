###### Class io.bidmachine.rendering.measurer.CompositeHtmlMeasurerFactory (io.bidmachine.rendering.measurer.CompositeHtmlMeasurerFactory)
.class public final Lio/bidmachine/rendering/measurer/CompositeHtmlMeasurerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/measurer/HtmlMeasurerFactory;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/rendering/measurer/MeasurerFactory;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/measurer/CompositeHtmlMeasurerFactory;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createHtmlMeasurer(Landroid/content/Context;)Lio/bidmachine/rendering/measurer/HtmlMeasurer;
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/measurer/CompositeHtmlMeasurerFactory;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_4a

    .line 5
    :cond_11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/measurer/CompositeHtmlMeasurerFactory;->a:Ljava/util/List;

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 28
    check-cast v3, Lio/bidmachine/rendering/measurer/MeasurerFactory;

    .line 29
    :try_start_31
    invoke-interface {v3, p1}, Lio/bidmachine/rendering/measurer/HtmlMeasurerFactory;->createHtmlMeasurer(Landroid/content/Context;)Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    move-result-object v3
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_36

    goto :goto_37

    :catchall_36
    move-object v3, v1

    :goto_37
    if-eqz v3, :cond_25

    .line 47
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 48
    :cond_3d
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_44

    return-object v1

    .line 51
    :cond_44
    new-instance p1, Lio/bidmachine/rendering/measurer/CompositeHtmlMeasurer;

    invoke-direct {p1, v2}, Lio/bidmachine/rendering/measurer/CompositeHtmlMeasurer;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_4a
    :goto_4a
    return-object v1
.end method
