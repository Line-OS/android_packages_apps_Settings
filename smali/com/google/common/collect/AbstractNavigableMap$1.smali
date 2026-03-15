.class Lcom/google/common/collect/AbstractNavigableMap$1;
.super Lcom/google/common/collect/Maps$EntrySet;
.source "AbstractNavigableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractNavigableMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$EntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractNavigableMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractNavigableMap;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/google/common/collect/AbstractNavigableMap$1;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 171
    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$1;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractNavigableMap;->entryIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method map()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 166
    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$1;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    return-object p0
.end method
