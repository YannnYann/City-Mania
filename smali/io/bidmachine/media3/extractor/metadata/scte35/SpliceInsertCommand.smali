###### Class io.bidmachine.media3.extractor.metadata.scte35.SpliceInsertCommand (io.bidmachine.media3.extractor.metadata.scte35.SpliceInsertCommand)
.class public final Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;
.super Lio/bidmachine/media3/extractor/metadata/scte35/SpliceCommand;
.source "SpliceInsertCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;
    }
.end annotation


# instance fields
.field public final autoReturn:Z

.field public final availNum:I

.field public final availsExpected:I

.field public final breakDurationUs:J

.field public final componentSpliceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;",
            ">;"
        }
    .end annotation
.end field

.field public final outOfNetworkIndicator:Z

.field public final programSpliceFlag:Z

.field public final programSplicePlaybackPositionUs:J

.field public final programSplicePts:J

.field public final spliceEventCancelIndicator:Z

.field public final spliceEventId:J

.field public final spliceImmediateFlag:Z

.field public final uniqueProgramId:I


# direct methods
.method public constructor <init>(JZZZZJJLjava/util/List;ZJIII)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZZJJ",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;",
            ">;ZJIII)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    .line 105
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    .line 106
    iput-boolean p3, p0, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    .line 107
    iput-boolean p4, p0, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    .line 108
    iput-boolean p5, p0, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    .line 109
    iput-boolean p6, p0, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    .line 110
    iput-wide p7, p0, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    .line 111
    iput-wide p9, p0, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSplicePlaybackPositionUs:J

    .line 112
    invoke-static {p11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    .line 113
    iput-boolean p12, p0, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    .line 114
    iput-wide p13, p0, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;->breakDurationUs:J

    .line 115
    iput p15, p0, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    move/from16 p1, p16

    .line 116
    iput p1, p0, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;->availNum:I

    move/from16 p1, p17

    .line 117
    iput p1, p0, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    return-void
.end method

.method public static parseFromSection(Lio/bidmachine/media3/common/util/ParsableByteArray;JLio/bidmachine/media3/common/util/TimestampAdjuster;)Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;
    .registers 29

    move-object/from16 v0, p3

    .line 122
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    .line 124
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    goto :goto_11

    :cond_10
    const/4 v3, 0x0

    .line 129
    :goto_11
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v3, :cond_c3

    .line 136
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    and-int/lit16 v10, v9, 0x80

    if-eqz v10, :cond_24

    const/4 v10, 0x1

    goto :goto_25

    :cond_24
    const/4 v10, 0x0

    :goto_25
    and-int/lit8 v11, v9, 0x40

    if-eqz v11, :cond_2b

    const/4 v11, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v11, 0x0

    :goto_2c
    and-int/lit8 v12, v9, 0x20

    if-eqz v12, :cond_32

    const/4 v12, 0x1

    goto :goto_33

    :cond_32
    const/4 v12, 0x0

    :goto_33
    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_39

    const/4 v9, 0x1

    goto :goto_3a

    :cond_39
    const/4 v9, 0x0

    :goto_3a
    if-eqz v11, :cond_43

    if-nez v9, :cond_43

    .line 142
    invoke-static/range {p0 .. p2}, Lio/bidmachine/media3/extractor/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Lio/bidmachine/media3/common/util/ParsableByteArray;J)J

    move-result-wide v13

    goto :goto_44

    :cond_43
    move-wide v13, v7

    :goto_44
    if-nez v11, :cond_7c

    .line 145
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 146
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_50
    if-ge v4, v6, :cond_7b

    .line 148
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v18

    if-nez v9, :cond_61

    .line 151
    invoke-static/range {p0 .. p2}, Lio/bidmachine/media3/extractor/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Lio/bidmachine/media3/common/util/ParsableByteArray;J)J

    move-result-wide v19

    move/from16 v24, v6

    move-wide/from16 v5, v19

    goto :goto_64

    :cond_61
    move/from16 v24, v6

    move-wide v5, v7

    .line 153
    :goto_64
    new-instance v17, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    .line 157
    invoke-virtual {v0, v5, v6}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v21

    const/16 v23, 0x0

    move-wide/from16 v19, v5

    invoke-direct/range {v17 .. v23}, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;-><init>(IJJLio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand$1;)V

    move-object/from16 v5, v17

    .line 153
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v24

    goto :goto_50

    :cond_7b
    move-object v6, v15

    :cond_7c
    if-eqz v12, :cond_a6

    .line 161
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v7, 0x80

    and-long/2addr v7, v4

    const-wide/16 v17, 0x0

    cmp-long v7, v7, v17

    if-eqz v7, :cond_8f

    const/16 v16, 0x1

    goto :goto_91

    :cond_8f
    const/16 v16, 0x0

    :goto_91
    const-wide/16 v7, 0x1

    and-long/2addr v4, v7

    const/16 v7, 0x20

    shl-long/2addr v4, v7

    .line 163
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    or-long/2addr v4, v7

    const-wide/16 v7, 0x3e8

    mul-long/2addr v4, v7

    const-wide/16 v7, 0x5a

    .line 164
    div-long v7, v4, v7

    move/from16 v5, v16

    goto :goto_a7

    :cond_a6
    const/4 v5, 0x0

    .line 166
    :goto_a7
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 167
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    .line 168
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v15

    move-wide/from16 v16, v13

    move-wide v13, v7

    move-wide/from16 v7, v16

    move/from16 v16, v12

    move/from16 v17, v15

    move v15, v4

    move v12, v5

    move v4, v10

    move v5, v11

    move-object v11, v6

    move v6, v9

    goto :goto_ce

    :cond_c3
    move-object v11, v6

    move-wide v13, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 170
    :goto_ce
    new-instance v9, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;

    .line 177
    invoke-virtual {v0, v7, v8}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v18

    move-object v0, v9

    move-wide/from16 v9, v18

    invoke-direct/range {v0 .. v17}, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;-><init>(JZZZZJJLjava/util/List;ZJIII)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCTE-35 SpliceInsertCommand { programSplicePts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", programSplicePlaybackPositionUs= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSplicePlaybackPositionUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.extractor.metadata.scte35.SpliceInsertCommand.AnonymousClass1 (io.bidmachine.media3.extractor.metadata.scte35.SpliceInsertCommand$1)
.class public synthetic Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand$1;
.super Ljava/lang/Object;
.source "SpliceInsertCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.extractor.metadata.scte35.SpliceInsertCommand.ComponentSplice (io.bidmachine.media3.extractor.metadata.scte35.SpliceInsertCommand$ComponentSplice)
.class public final Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;
.super Ljava/lang/Object;
.source "SpliceInsertCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentSplice"
.end annotation


# instance fields
.field public final componentSplicePlaybackPositionUs:J

.field public final componentSplicePts:J

.field public final componentTag:I


# direct methods
.method public constructor <init>(IJJ)V
    .registers 6

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput p1, p0, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentTag:I

    .line 196
    iput-wide p2, p0, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentSplicePts:J

    .line 197
    iput-wide p4, p0, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentSplicePlaybackPositionUs:J

    return-void
.end method

.method public synthetic constructor <init>(IJJLio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand$1;)V
    .registers 7

    .line 187
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;-><init>(IJJ)V

    return-void
.end method
