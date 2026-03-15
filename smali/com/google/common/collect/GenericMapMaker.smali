.class abstract Lcom/google/common/collect/GenericMapMaker;
.super Ljava/lang/Object;
.source "GenericMapMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/GenericMapMaker$NullListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field removalListener:Lcom/google/common/collect/MapMaker$RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMaker$RemovalListener<",
            "TK0;TV0;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getRemovalListener()Lcom/google/common/collect/MapMaker$RemovalListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/common/collect/MapMaker$RemovalListener<",
            "TK;TV;>;"
        }
    .end annotation

    .line 131
    iget-object p0, p0, Lcom/google/common/collect/GenericMapMaker;->removalListener:Lcom/google/common/collect/MapMaker$RemovalListener;

    sget-object v0, Lcom/google/common/collect/GenericMapMaker$NullListener;->INSTANCE:Lcom/google/common/collect/GenericMapMaker$NullListener;

    invoke-static {p0, v0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/MapMaker$RemovalListener;

    return-object p0
.end method
