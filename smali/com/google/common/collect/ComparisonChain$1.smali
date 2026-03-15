.class Lcom/google/common/collect/ComparisonChain$1;
.super Lcom/google/common/collect/ComparisonChain;
.source "ComparisonChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ComparisonChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, v0}, Lcom/google/common/collect/ComparisonChain;-><init>(Lcom/google/common/collect/ComparisonChain$1;)V

    return-void
.end method


# virtual methods
.method classify(I)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    if-gez p1, :cond_0

    .line 101
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->access$100()Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->access$200()Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->access$300()Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;
    .locals 0

    .line 76
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    return-object p0
.end method

.method public result()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
