###### Class io.bidmachine.iab.mraid.MraidNativeFeatureUrlParser (io.bidmachine.iab.mraid.MraidNativeFeatureUrlParser)
.class public final Lio/bidmachine/iab/mraid/MraidNativeFeatureUrlParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/bidmachine/iab/mraid/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lio/bidmachine/iab/mraid/b;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/b;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidNativeFeatureUrlParser;->a:Lio/bidmachine/iab/mraid/b;

    return-void
.end method


# virtual methods
.method public parseCalendarEvent(Landroid/net/Uri;)Lio/bidmachine/iab/mraid/MraidCalendarEvent;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 5
    :try_start_0
    const-string v0, "eventJson"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidNativeFeatureUrlParser;->a:Lio/bidmachine/iab/mraid/b;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/b;->a(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidCalendarEvent;

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception p1

    .line 8
    const-string v0, "MraidNativeFeatureUrlParser"

    invoke-static {v0, p1}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public parseStorePictureUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 5
    :try_start_0
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    .line 8
    const-string v0, "MraidNativeFeatureUrlParser"

    invoke-static {v0, p1}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
