###### Class info.flowersoft.theotown.crossplatform.CustomAnalytics (info.flowersoft.theotown.crossplatform.CustomAnalytics)
.class public abstract Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;
.super Ljava/lang/Object;
.source "CustomAnalytics.java"

# interfaces
.implements Linfo/flowersoft/theotown/crossplatform/Analytics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$OutputStreamComposite;
    }
.end annotation


# instance fields
.field public final dateFormat:Ljava/text/DateFormat;

.field public logFile:Ljava/io/File;

.field public numId:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy/MM/dd HH:mm:ss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v3, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->dateFormat:Ljava/text/DateFormat;

    const-wide/16 v3, -0x1

    .line 32
    iput-wide v3, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->numId:J

    .line 37
    iput-object p1, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->logFile:Ljava/io/File;

    .line 39
    const-string p1, "Startup"

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->writeToLog(Ljava/lang/String;)V

    if-eqz p2, :cond_4f

    const-wide/32 v3, 0x100000

    .line 42
    invoke-static {p2, v3, v4}, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->getManagedFOS(Ljava/io/File;J)Ljava/io/OutputStream;

    move-result-object p1

    .line 43
    new-instance p2, Ljava/io/PrintStream;

    new-instance v3, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$OutputStreamComposite;

    new-array v4, v2, [Ljava/io/OutputStream;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aput-object v5, v4, v1

    aput-object p1, v4, v0

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$OutputStreamComposite;-><init>([Ljava/io/OutputStream;)V

    invoke-direct {p2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p2}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 47
    new-instance p2, Ljava/io/PrintStream;

    new-instance v3, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$OutputStreamComposite;

    new-array v2, v2, [Ljava/io/OutputStream;

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    aput-object v4, v2, v1

    aput-object p1, v2, v0

    invoke-direct {v3, v2}, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$OutputStreamComposite;-><init>([Ljava/io/OutputStream;)V

    invoke-direct {p2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p2}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    :cond_4f
    return-void
.end method

.method public static getManagedFOS(Ljava/io/File;J)Ljava/io/OutputStream;
    .registers 4

    .line 118
    new-instance v0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;

    invoke-direct {v0, p1, p2, p0}, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;-><init>(JLjava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public final clearupLog()V
    .registers 5

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->logFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->logFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x400000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1a

    iget-object v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->logFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1a
    return-void
.end method

.method public final fetchNumId()V
    .registers 10

    .line 97
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const-string v1, "analytics"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 99
    const-string v4, "numid"

    invoke-interface {v1, v4, v2, v3}, Linfo/flowersoft/theotown/util/SSP$Reader;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->numId:J

    const-wide v5, 0x174876e800L

    cmp-long v3, v1, v5

    if-ltz v3, :cond_29

    const-wide v7, 0xe8d4a50fffL

    cmp-long v1, v1, v7

    if-lez v1, :cond_28

    goto :goto_29

    :cond_28
    return-void

    .line 101
    :cond_29
    :goto_29
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    const-wide/16 v7, 0x2

    div-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide v7, 0xd18c2e2800L

    rem-long/2addr v1, v7

    add-long/2addr v1, v5

    iput-wide v1, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->numId:J

    .line 102
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->edit()Linfo/flowersoft/theotown/util/SSP$Writer;

    move-result-object v0

    .line 103
    iget-wide v1, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->numId:J

    invoke-interface {v0, v4, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putLong(Ljava/lang/String;J)V

    .line 104
    invoke-interface {v0}, Linfo/flowersoft/theotown/util/SSP$Writer;->apply()V

    .line 105
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->numId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomAnalytics"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getNumId()J
    .registers 5

    .line 111
    iget-wide v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->numId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    if-eqz v0, :cond_f

    .line 112
    invoke-virtual {p0}, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->fetchNumId()V

    .line 114
    :cond_f
    iget-wide v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->numId:J

    return-wide v0
.end method

.method public logException(Ljava/lang/Exception;)V
    .registers 3

    .line 62
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public logException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 7

    .line 67
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 68
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 69
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception"

    invoke-interface {p0, v3, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->writeToLog(Ljava/lang/String;)V

    return-void
.end method

.method public writeToLog(Ljava/lang/String;)V
    .registers 7

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->logFile:Ljava/io/File;

    if-nez v0, :cond_5

    goto :goto_77

    .line 78
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->logFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    .line 79
    iget-object v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->logFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_23

    :catch_21
    move-exception p1

    goto :goto_74

    .line 81
    :cond_23
    :goto_23
    invoke-virtual {p0}, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->clearupLog()V

    .line 82
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->logFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->dateFormat:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 84
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_73} :catch_21

    return-void

    .line 88
    :goto_74
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_77
    return-void
.end method

###### Class info.flowersoft.theotown.crossplatform.CustomAnalytics.AnonymousClass1 (info.flowersoft.theotown.crossplatform.CustomAnalytics$1)
.class public Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;
.super Ljava/io/OutputStream;
.source "CustomAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;->getManagedFOS(Ljava/io/File;J)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public length:J

.field public os:Ljava/io/OutputStream;

.field public final synthetic val$file:Ljava/io/File;

.field public final synthetic val$maxSize:J


# direct methods
.method public constructor <init>(JLjava/io/File;)V
    .registers 4

    .line 118
    iput-wide p1, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->val$maxSize:J

    iput-object p3, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkStream()V
    .registers 5

    .line 123
    iget-wide v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->length:J

    iget-wide v2, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->val$maxSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_c

    iget-object v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->os:Ljava/io/OutputStream;

    if-nez v0, :cond_28

    :cond_c
    const-wide/16 v0, 0x0

    .line 124
    iput-wide v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->length:J

    .line 125
    iget-object v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->os:Ljava/io/OutputStream;

    if-eqz v0, :cond_17

    .line 127
    :try_start_14
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_17

    .line 133
    :catch_17
    :cond_17
    :try_start_17
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->val$file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->os:Ljava/io/OutputStream;
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_28

    .line 136
    :catch_21
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->os:Ljava/io/OutputStream;

    :cond_28
    :goto_28
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->os:Ljava/io/OutputStream;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_7
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->os:Ljava/io/OutputStream;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_7
    return-void
.end method

.method public write(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->checkStream()V

    .line 144
    iget-object v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 145
    iget-wide v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->length:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->length:J

    return-void
.end method

.method public write([B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->checkStream()V

    .line 151
    iget-object v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 152
    iget-wide v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->length:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->length:J

    return-void
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->checkStream()V

    .line 158
    iget-object v0, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 159
    iget-wide p1, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->length:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$1;->length:J

    return-void
.end method

###### Class info.flowersoft.theotown.crossplatform.CustomAnalytics.OutputStreamComposite (info.flowersoft.theotown.crossplatform.CustomAnalytics$OutputStreamComposite)
.class public Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$OutputStreamComposite;
.super Ljava/io/OutputStream;
.source "CustomAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/crossplatform/CustomAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStreamComposite"
.end annotation


# instance fields
.field public final oss:[Ljava/io/OutputStream;


# direct methods
.method public constructor <init>([Ljava/io/OutputStream;)V
    .registers 2

    .line 179
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 180
    iput-object p1, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$OutputStreamComposite;->oss:[Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 207
    :goto_1
    :try_start_1
    iget-object v1, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$OutputStreamComposite;->oss:[Ljava/io/OutputStream;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_e
    :cond_e
    return-void
.end method

.method public flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 200
    :goto_1
    :try_start_1
    iget-object v1, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$OutputStreamComposite;->oss:[Ljava/io/OutputStream;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_e
    :cond_e
    return-void
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 186
    :goto_1
    :try_start_1
    iget-object v1, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$OutputStreamComposite;->oss:[Ljava/io/OutputStream;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_e
    :cond_e
    return-void
.end method

.method public write([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 193
    :goto_1
    :try_start_1
    iget-object v1, p0, Linfo/flowersoft/theotown/crossplatform/CustomAnalytics$OutputStreamComposite;->oss:[Ljava/io/OutputStream;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_e
    :cond_e
    return-void
.end method
