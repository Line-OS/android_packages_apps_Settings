.class public Lcom/google/android/material/shape/ShapeAppearanceModel;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;
    }
.end annotation


# instance fields
.field private bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private final onChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private topEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private topRightCorner:Lcom/google/android/material/shape/CornerTreatment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    .line 69
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 70
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 71
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 72
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 74
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 75
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 76
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 77
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 79
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 96
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 5

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    .line 105
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialShape:[I

    .line 106
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 108
    sget p3, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearance:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 109
    sget v0, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearanceOverlay:I

    .line 110
    invoke-virtual {p2, v0, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 111
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_0

    .line 115
    new-instance p2, Landroid/view/ContextThemeWrapper;

    invoke-direct {p2, p1, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p1, p2

    move p3, v0

    .line 119
    :cond_0
    sget-object p2, Lcom/google/android/material/R$styleable;->ShapeAppearance:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 121
    sget p2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamily:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 122
    sget p3, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopLeft:I

    .line 123
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 124
    sget p4, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopRight:I

    .line 125
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    .line 126
    sget v0, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomRight:I

    .line 127
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 128
    sget v1, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomLeft:I

    .line 129
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 131
    sget v1, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSize:I

    .line 132
    invoke-virtual {p1, v1, p5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p5

    .line 133
    sget v1, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopLeft:I

    .line 134
    invoke-virtual {p1, v1, p5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 135
    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopRight:I

    .line 136
    invoke-virtual {p1, v2, p5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 137
    sget v3, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomRight:I

    .line 138
    invoke-virtual {p1, v3, p5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 139
    sget v4, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomLeft:I

    .line 140
    invoke-virtual {p1, v4, p5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p5

    .line 143
    invoke-static {p3, v1}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p3

    .line 142
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 145
    invoke-static {p4, v2}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p3

    .line 144
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 147
    invoke-static {v0, v3}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p3

    .line 146
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 149
    invoke-static {p2, p5}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object p2

    .line 148
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 151
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 152
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 153
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 154
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 156
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    .line 83
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 84
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 85
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 86
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 88
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getLeftEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 89
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 90
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getRightEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 91
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    return-void
.end method

.method private onShapeAppearanceModelChanged()V
    .locals 1

    .line 603
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;

    if-eqz v0, :cond_0

    .line 605
    invoke-interface {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;->onShapeAppearanceModelChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    if-eq v0, p1, :cond_0

    .line 579
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    if-eq v0, p1, :cond_0

    .line 463
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setBottomLeftCornerSizeInternal(F)Z
    .locals 1

    .line 253
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget v0, p0, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 254
    iput p1, p0, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    if-eq v0, p1, :cond_0

    .line 424
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setBottomRightCornerSizeInternal(F)Z
    .locals 1

    .line 244
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget v0, p0, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 245
    iput p1, p0, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    if-eq v0, p1, :cond_0

    .line 492
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    if-eq v0, p1, :cond_0

    .line 550
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    if-eq v0, p1, :cond_0

    .line 521
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    if-eq v0, p1, :cond_0

    .line 346
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setTopLeftCornerSizeInternal(F)Z
    .locals 1

    .line 226
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget v0, p0, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 227
    iput p1, p0, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    if-eq v0, p1, :cond_0

    .line 385
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setTopRightCornerSizeInternal(F)Z
    .locals 1

    .line 235
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget v0, p0, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 236
    iput p1, p0, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method addOnChangedListener(Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;)V
    .locals 0

    .line 595
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBottomEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 0

    .line 591
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object p0
.end method

.method public getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object p0
.end method

.method public getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 0

    .line 436
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object p0
.end method

.method public getLeftEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 0

    .line 504
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object p0
.end method

.method public getRightEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 0

    .line 562
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object p0
.end method

.method public getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object p0
.end method

.method public getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object p0
.end method

.method public getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object p0
.end method

.method public isRoundRect()Z
    .locals 5

    .line 618
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 619
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 620
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 621
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 622
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 624
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    invoke-virtual {v3}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v3

    .line 626
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 627
    invoke-virtual {v4}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 628
    invoke-virtual {v4}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 629
    invoke-virtual {v4}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v4

    cmpl-float v3, v4, v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 631
    :goto_1
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v4, v4, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v4, v4, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v4, v4, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v4, :cond_2

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of p0, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_2

    :cond_2
    move p0, v2

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    return v1
.end method

.method removeOnChangedListener(Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;)V
    .locals 0

    .line 599
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCornerRadii(FFFF)V
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerSizeInternal(F)Z

    move-result p1

    .line 215
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerSizeInternal(F)Z

    move-result p2

    or-int/2addr p1, p2

    .line 216
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerSizeInternal(F)Z

    move-result p2

    or-int/2addr p1, p2

    .line 217
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerSizeInternal(F)Z

    move-result p2

    or-int/2addr p1, p2

    if-eqz p1, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 198
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setCornerRadii(FFFF)V

    return-void
.end method

.method public setTopEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 0

    .line 513
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    :cond_0
    return-void
.end method
