.class Lcom/google/common/collect/Maps$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps;->valueIterator(Lcom/google/common/collect/UnmodifiableIterator;)Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$entryIterator:Lcom/google/common/collect/UnmodifiableIterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/UnmodifiableIterator;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/google/common/collect/Maps$1;->val$entryIterator:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/google/common/collect/Maps$1;->val$entryIterator:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 130
    iget-object p0, p0, Lcom/google/common/collect/Maps$1;->val$entryIterator:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
