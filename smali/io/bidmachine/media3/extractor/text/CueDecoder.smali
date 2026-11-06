###### Class io.bidmachine.media3.extractor.text.CueDecoder (io.bidmachine.media3.extractor.text.CueDecoder)
.class public final Lio/bidmachine/media3/extractor/text/CueDecoder;
.super Ljava/lang/Object;
.source "CueDecoder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(J[BII)Lio/bidmachine/media3/extractor/text/CuesWithTiming;
    .registers 12

    .line 48
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p3, p4, p5}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 p3, 0x0

    .line 50
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    const-class p3, Landroid/os/Bundle;

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p3

    .line 52
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 53
    const-string p4, "c"

    .line 54
    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p4}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/ArrayList;

    .line 55
    new-instance v0, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    new-instance p5, Lio/bidmachine/media3/extractor/text/CueDecoder$$ExternalSyntheticLambda0;

    invoke-direct {p5}, Lio/bidmachine/media3/extractor/text/CueDecoder$$ExternalSyntheticLambda0;-><init>()V

    .line 56
    invoke-static {p5, p4}, Lio/bidmachine/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const-string p4, "d"

    .line 58
    invoke-virtual {p3, p4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    return-object v0
.end method

###### Class io.bidmachine.media3.extractor.text.CueDecoder$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.text.CueDecoder$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/text/CueDecoder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lio/bidmachine/media3/common/text/Cue;->fromBundle(Landroid/os/Bundle;)Lio/bidmachine/media3/common/text/Cue;

    move-result-object p1

    return-object p1
.end method
