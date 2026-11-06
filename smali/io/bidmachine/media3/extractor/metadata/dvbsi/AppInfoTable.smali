###### Class io.bidmachine.media3.extractor.metadata.dvbsi.AppInfoTable (io.bidmachine.media3.extractor.metadata.dvbsi.AppInfoTable)
.class public final Lio/bidmachine/media3/extractor/metadata/dvbsi/AppInfoTable;
.super Ljava/lang/Object;
.source "AppInfoTable.java"

# interfaces
.implements Lio/bidmachine/media3/common/Metadata$Entry;


# instance fields
.field public final controlCode:I

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lio/bidmachine/media3/extractor/metadata/dvbsi/AppInfoTable;->controlCode:I

    .line 47
    iput-object p2, p0, Lio/bidmachine/media3/extractor/metadata/dvbsi/AppInfoTable;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ait(controlCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/media3/extractor/metadata/dvbsi/AppInfoTable;->controlCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/dvbsi/AppInfoTable;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
