###### Class io.bidmachine.iab.vast.VastUrlProcessorRegistry (io.bidmachine.iab.vast.VastUrlProcessorRegistry)
.class public Lio/bidmachine/iab/vast/VastUrlProcessorRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/vast/VastUrlProcessorRegistry$OnUrlReadyCallback;
    }
.end annotation


# static fields
.field public static a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/iab/vast/VastUrlProcessorRegistry$a;

    invoke-direct {v0}, Lio/bidmachine/iab/vast/VastUrlProcessorRegistry$a;-><init>()V

    sput-object v0, Lio/bidmachine/iab/vast/VastUrlProcessorRegistry;->a:Ljava/util/List;

    return-void
.end method

.method public static processUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "params"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    sget-object v0, Lio/bidmachine/iab/vast/VastUrlProcessorRegistry;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/iab/vast/processor/url/UrlProcessor;

    .line 2
    invoke-interface {v1, p0, p1}, Lio/bidmachine/iab/vast/processor/url/UrlProcessor;->prepare(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_1b
    return-object p0
.end method

.method public static processUrls(Ljava/util/List;Landroid/os/Bundle;Lio/bidmachine/iab/vast/VastUrlProcessorRegistry$OnUrlReadyCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "urls",
            "params",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Lio/bidmachine/iab/vast/VastUrlProcessorRegistry$OnUrlReadyCallback;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_23

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    if-nez p2, :cond_b

    goto :goto_23

    .line 4
    :cond_b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0, p1}, Lio/bidmachine/iab/vast/VastUrlProcessorRegistry;->processUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/bidmachine/iab/vast/VastUrlProcessorRegistry$OnUrlReadyCallback;->onUrlReady(Ljava/lang/String;)V

    goto :goto_f

    :cond_23
    :goto_23
    return-void
.end method

###### Class io.bidmachine.iab.vast.VastUrlProcessorRegistry.OnUrlReadyCallback (io.bidmachine.iab.vast.VastUrlProcessorRegistry$OnUrlReadyCallback)
.class public interface abstract Lio/bidmachine/iab/vast/VastUrlProcessorRegistry$OnUrlReadyCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/VastUrlProcessorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnUrlReadyCallback"
.end annotation


# virtual methods
.method public abstract onUrlReady(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation
.end method

###### Class io.bidmachine.iab.vast.VastUrlProcessorRegistry.a (io.bidmachine.iab.vast.VastUrlProcessorRegistry$a)
.class public Lio/bidmachine/iab/vast/VastUrlProcessorRegistry$a;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/VastUrlProcessorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Lio/bidmachine/iab/vast/processor/url/ErrorCodeUrlProcessor;

    invoke-direct {v0}, Lio/bidmachine/iab/vast/processor/url/ErrorCodeUrlProcessor;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
