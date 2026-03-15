.class final Lcom/google/common/collect/MapMakerInternalMap$KeySet;
.super Ljava/util/AbstractSet;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 0

    .line 3773
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 3802
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 3792
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 3787
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 3777
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$KeyIterator;

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMakerInternalMap$KeyIterator;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 3797
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public size()I
    .locals 0

    .line 3782
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap;->size()I

    move-result p0

    return p0
.end method
