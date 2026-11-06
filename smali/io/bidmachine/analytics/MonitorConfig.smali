###### Class io.bidmachine.analytics.MonitorConfig (io.bidmachine.analytics.MonitorConfig)
.class public final Lio/bidmachine/analytics/MonitorConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/MonitorConfig$ConfigExtension;,
        Lio/bidmachine/analytics/MonitorConfig$ImpConfigExtension;,
        Lio/bidmachine/analytics/MonitorConfig$GenericConfigExtension;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:J

.field private final e:Z

.field private final f:Lio/bidmachine/analytics/Filter;

.field private final g:Lio/bidmachine/analytics/MonitorConfig$ConfigExtension;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJZLio/bidmachine/analytics/Filter;Lio/bidmachine/analytics/MonitorConfig$ConfigExtension;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/MonitorConfig;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/MonitorConfig;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lio/bidmachine/analytics/MonitorConfig;->c:I

    .line 5
    iput-wide p4, p0, Lio/bidmachine/analytics/MonitorConfig;->d:J

    .line 6
    iput-boolean p6, p0, Lio/bidmachine/analytics/MonitorConfig;->e:Z

    .line 7
    iput-object p7, p0, Lio/bidmachine/analytics/MonitorConfig;->f:Lio/bidmachine/analytics/Filter;

    .line 8
    iput-object p8, p0, Lio/bidmachine/analytics/MonitorConfig;->g:Lio/bidmachine/analytics/MonitorConfig$ConfigExtension;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IJZLio/bidmachine/analytics/Filter;Lio/bidmachine/analytics/MonitorConfig$ConfigExtension;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 21

    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    move-object v9, v0

    :goto_6
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    goto :goto_13

    :cond_10
    move-object/from16 v9, p8

    goto :goto_6

    .line 9
    :goto_13
    invoke-direct/range {v1 .. v9}, Lio/bidmachine/analytics/MonitorConfig;-><init>(Ljava/lang/String;Ljava/lang/String;IJZLio/bidmachine/analytics/Filter;Lio/bidmachine/analytics/MonitorConfig$ConfigExtension;)V

    return-void
.end method


# virtual methods
.method public final getBatchSize()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/MonitorConfig;->c:I

    return v0
.end method

.method public final getConfigExtension()Lio/bidmachine/analytics/MonitorConfig$ConfigExtension;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/MonitorConfig;->g:Lio/bidmachine/analytics/MonitorConfig$ConfigExtension;

    return-object v0
.end method

.method public final getFilter()Lio/bidmachine/analytics/Filter;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/MonitorConfig;->f:Lio/bidmachine/analytics/Filter;

    return-object v0
.end method

.method public final getInterval()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/analytics/MonitorConfig;->d:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/MonitorConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/MonitorConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final isReportEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/analytics/MonitorConfig;->e:Z

    return v0
.end method

###### Class io.bidmachine.analytics.MonitorConfig.ConfigExtension (io.bidmachine.analytics.MonitorConfig$ConfigExtension)
.class public interface abstract Lio/bidmachine/analytics/MonitorConfig$ConfigExtension;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/MonitorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConfigExtension"
.end annotation

###### Class io.bidmachine.analytics.MonitorConfig.GenericConfigExtension (io.bidmachine.analytics.MonitorConfig$GenericConfigExtension)
.class public final Lio/bidmachine/analytics/MonitorConfig$GenericConfigExtension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/MonitorConfig$ConfigExtension;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/MonitorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GenericConfigExtension"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1, v0}, Lio/bidmachine/analytics/MonitorConfig$GenericConfigExtension;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/analytics/MonitorConfig$GenericConfigExtension;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 4
    :cond_5
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/MonitorConfig$GenericConfigExtension;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getConfig()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/MonitorConfig$GenericConfigExtension;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.analytics.MonitorConfig.ImpConfigExtension (io.bidmachine.analytics.MonitorConfig$ImpConfigExtension)
.class public final Lio/bidmachine/analytics/MonitorConfig$ImpConfigExtension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/MonitorConfig$ConfigExtension;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/MonitorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImpConfigExtension"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/analytics/MonitorConfig$ImpConfigExtension;->a:Ljava/lang/String;

    .line 4
    iput-wide p2, p0, Lio/bidmachine/analytics/MonitorConfig$ImpConfigExtension;->b:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_14

    .line 5
    sget-object p2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object p2, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    const/16 p3, 0x5a

    invoke-static {p3, p2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide p2

    .line 6
    :cond_14
    invoke-direct {p0, p1, p2, p3, v0}, Lio/bidmachine/analytics/MonitorConfig$ImpConfigExtension;-><init>(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/analytics/MonitorConfig$ImpConfigExtension;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final getIaaQuery()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/MonitorConfig$ImpConfigExtension;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecordsTtl-UwyO8pc()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/analytics/MonitorConfig$ImpConfigExtension;->b:J

    return-wide v0
.end method
