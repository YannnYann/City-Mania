###### Class com.unity3d.mediation.LevelPlayConfiguration (com.unity3d.mediation.LevelPlayConfiguration)
.class public final Lcom/unity3d/mediation/LevelPlayConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/unity3d/mediation/LevelPlayConfiguration;->a:Z

    iput-object p2, p0, Lcom/unity3d/mediation/LevelPlayConfiguration;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAb()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/mediation/LevelPlayConfiguration;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final isAdQualityEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/unity3d/mediation/LevelPlayConfiguration;->a:Z

    return v0
.end method
