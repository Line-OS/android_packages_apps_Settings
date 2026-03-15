.class Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;
.super Lcom/google/common/collect/ImmutableAsList;
.source "RegularImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;->createAsList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableAsList<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final keyList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;->this$1:Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableAsList;-><init>()V

    .line 64
    iget-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;->this$1:Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;

    iget-object p1, p1, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableSortedMap;

    invoke-virtual {p1}, Lcom/google/common/collect/RegularImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;->keyList:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 73
    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;->this$1:Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;->get(I)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public get(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;->keyList:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;->this$1:Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableSortedMap;

    invoke-static {p0}, Lcom/google/common/collect/RegularImmutableSortedMap;->access$100(Lcom/google/common/collect/RegularImmutableSortedMap;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
