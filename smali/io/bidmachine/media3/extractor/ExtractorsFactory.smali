###### Class io.bidmachine.media3.extractor.ExtractorsFactory (io.bidmachine.media3.extractor.ExtractorsFactory)
.class public interface abstract Lio/bidmachine/media3/extractor/ExtractorsFactory;
.super Ljava/lang/Object;
.source "ExtractorsFactory.java"


# static fields
.field public static final EMPTY:Lio/bidmachine/media3/extractor/ExtractorsFactory;


# direct methods
.method public static synthetic $r8$lambda$JlCPNd9LhEas5W1JOXdqZOwffXc()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 1

    const/4 v0, 0x0

    .line 36
    new-array v0, v0, [Lio/bidmachine/media3/extractor/Extractor;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lio/bidmachine/media3/extractor/ExtractorsFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/ExtractorsFactory$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/extractor/ExtractorsFactory;->EMPTY:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    return-void
.end method


# virtual methods
.method public abstract createExtractors()[Lio/bidmachine/media3/extractor/Extractor;
.end method

.method public createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lio/bidmachine/media3/extractor/Extractor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lio/bidmachine/media3/extractor/Extractor;"
        }
    .end annotation

    .line 102
    invoke-interface {p0}, Lio/bidmachine/media3/extractor/ExtractorsFactory;->createExtractors()[Lio/bidmachine/media3/extractor/Extractor;

    move-result-object p1

    return-object p1
.end method

.method public experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/extractor/ExtractorsFactory;
    .registers 2

    .line 0
    return-object p0
.end method

.method public experimentalSetTextTrackTranscodingEnabled(Z)Lio/bidmachine/media3/extractor/ExtractorsFactory;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-object p0
.end method

.method public setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/extractor/ExtractorsFactory;
    .registers 2

    .line 0
    return-object p0
.end method

###### Class io.bidmachine.media3.extractor.ExtractorsFactory$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.ExtractorsFactory$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/ExtractorsFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/extractor/ExtractorsFactory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 2

    .line 0
    invoke-static {}, Lio/bidmachine/media3/extractor/ExtractorsFactory;->$r8$lambda$JlCPNd9LhEas5W1JOXdqZOwffXc()[Lio/bidmachine/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method
