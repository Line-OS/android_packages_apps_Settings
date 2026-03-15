.class public Lcom/android/settings/widget/UsageView;
.super Landroid/widget/FrameLayout;
.source "UsageView.java"


# instance fields
.field private final mBottomLabels:[Landroid/widget/TextView;

.field private final mLabels:[Landroid/widget/TextView;

.field private final mUsageGraph:Lcom/android/settings/widget/UsageGraph;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d020a

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a04a4

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/UsageGraph;

    iput-object v0, p0, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/widget/TextView;

    const v2, 0x7f0a0250

    .line 43
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0a0253

    .line 44
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const v2, 0x7f0a0255

    .line 45
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/settings/widget/UsageView;->mLabels:[Landroid/widget/TextView;

    new-array v1, v5, [Landroid/widget/TextView;

    const v2, 0x7f0a0254

    .line 48
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v1, v3

    const v2, 0x7f0a0251

    .line 49
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/settings/widget/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    .line 51
    sget-object v1, Lcom/android/settingslib/R$styleable;->UsageView:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    .line 55
    :cond_0
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 56
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p2, 0x4

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 60
    iget-object v0, p0, Lcom/android/settings/widget/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v1, v0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v5, v0, v2

    .line 61
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v1, v0

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v5, v0, v2

    .line 64
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 67
    :cond_3
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 68
    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const v0, 0x800005

    if-ne p2, v0, :cond_4

    const p2, 0x7f0a01d5

    .line 70
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0252

    .line 71
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 73
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 74
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const p2, 0x7f0a00b4

    .line 78
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const v0, 0x7f0a00b5

    .line 79
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 81
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    const v0, 0x800003

    if-ne p2, v0, :cond_5

    goto :goto_2

    .line 83
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported gravity "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/UsageGraph;->setAccentColor(I)V

    .line 87
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setWeight(IF)V
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 126
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 127
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addPath(Landroid/util/SparseIntArray;)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/UsageGraph;->addPath(Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public addProjectedPath(Landroid/util/SparseIntArray;)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/UsageGraph;->addProjectedPath(Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public clearPaths()V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    invoke-virtual {p0}, Lcom/android/settings/widget/UsageGraph;->clearPaths()V

    return-void
.end method

.method public configureGraph(II)V
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/UsageGraph;->setMax(II)V

    return-void
.end method

.method public setAccentColor(I)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/UsageGraph;->setAccentColor(I)V

    return-void
.end method

.method public setBottomLabels([Ljava/lang/CharSequence;)V
    .locals 3

    .line 140
    array-length v0, p1

    iget-object v1, p0, Lcom/android/settings/widget/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/android/settings/widget/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 144
    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 141
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid number of labels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDividerColors(II)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/UsageGraph;->setDividerColors(II)V

    return-void
.end method

.method public setDividerLoc(I)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/settings/widget/UsageView;->mUsageGraph:Lcom/android/settings/widget/UsageGraph;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/UsageGraph;->setDividerLoc(I)V

    return-void
.end method

.method public setSideLabelWeights(FF)V
    .locals 1

    const v0, 0x7f0a03fc

    .line 119
    invoke-direct {p0, v0, p1}, Lcom/android/settings/widget/UsageView;->setWeight(IF)V

    const p1, 0x7f0a03fd

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/UsageView;->setWeight(IF)V

    return-void
.end method

.method public setSideLabels([Ljava/lang/CharSequence;)V
    .locals 3

    .line 131
    array-length v0, p1

    iget-object v1, p0, Lcom/android/settings/widget/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/android/settings/widget/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 135
    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 132
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid number of labels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
