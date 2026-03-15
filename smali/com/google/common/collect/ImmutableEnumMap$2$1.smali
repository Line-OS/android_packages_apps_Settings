.class Lcom/google/common/collect/ImmutableEnumMap$2$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "ImmutableEnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableEnumMap$2;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final backingIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/ImmutableEnumMap$2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableEnumMap$2;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/google/common/collect/ImmutableEnumMap$2$1;->this$1:Lcom/google/common/collect/ImmutableEnumMap$2;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 110
    iget-object p1, p0, Lcom/google/common/collect/ImmutableEnumMap$2$1;->this$1:Lcom/google/common/collect/ImmutableEnumMap$2;

    iget-object p1, p1, Lcom/google/common/collect/ImmutableEnumMap$2;->this$0:Lcom/google/common/collect/ImmutableEnumMap;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableEnumMap;->access$000(Lcom/google/common/collect/ImmutableEnumMap;)Ljava/util/EnumMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableEnumMap$2$1;->backingIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/google/common/collect/ImmutableEnumMap$2$1;->backingIterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableEnumMap$2$1;->next()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 119
    iget-object p0, p0, Lcom/google/common/collect/ImmutableEnumMap$2$1;->backingIterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 120
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
