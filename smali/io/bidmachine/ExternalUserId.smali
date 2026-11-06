###### Class io.bidmachine.ExternalUserId (io.bidmachine.ExternalUserId)
.class public Lio/bidmachine/ExternalUserId;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final sourceId:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/ExternalUserId;->sourceId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/ExternalUserId;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSourceId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ExternalUserId;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ExternalUserId;->value:Ljava/lang/String;

    return-object v0
.end method
