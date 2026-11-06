###### Class io.bidmachine.analytics.ReaderConfig (io.bidmachine.analytics.ReaderConfig)
.class public final Lio/bidmachine/analytics/ReaderConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/ReaderConfig$Rule;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:Z

.field private final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZLjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/analytics/ReaderConfig$Rule;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/ReaderConfig;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/ReaderConfig;->b:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lio/bidmachine/analytics/ReaderConfig;->c:J

    .line 5
    iput-boolean p5, p0, Lio/bidmachine/analytics/ReaderConfig;->d:Z

    .line 6
    iput-object p6, p0, Lio/bidmachine/analytics/ReaderConfig;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getInterval()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/analytics/ReaderConfig;->c:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/ReaderConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getRules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/analytics/ReaderConfig$Rule;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/ReaderConfig;->e:Ljava/util/List;

    return-object v0
.end method

.method public final getUniqueOnly()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/analytics/ReaderConfig;->d:Z

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/ReaderConfig;->b:Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.analytics.ReaderConfig.Rule (io.bidmachine.analytics.ReaderConfig$Rule)
.class public interface abstract Lio/bidmachine/analytics/ReaderConfig$Rule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/ReaderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Rule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;,
        Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;
    }
.end annotation

###### Class io.bidmachine.analytics.ReaderConfig.Rule.GeneralRule (io.bidmachine.analytics.ReaderConfig$Rule$GeneralRule)
.class public final Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/ReaderConfig$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/ReaderConfig$Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeneralRule"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.analytics.ReaderConfig.Rule.PurRule (io.bidmachine.analytics.ReaderConfig$Rule$PurRule)
.class public final Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/ReaderConfig$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/ReaderConfig$Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurRule"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;->c:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;->d:Z

    return-void
.end method


# virtual methods
.method public final getPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getShouldReport()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;->d:Z

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;->a:Ljava/lang/String;

    return-object v0
.end method
