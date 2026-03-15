.class public Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;
.super Landroid/widget/TextView;
.source "AutoResizeTextView.java"


# instance fields
.field private final availableSpaceRect:Landroid/graphics/RectF;

.field private final displayMetrics:Landroid/util/DisplayMetrics;

.field private lineSpacingExtra:F

.field private lineSpacingMultiplier:F

.field private maxLines:I

.field private maxTextSize:F

.field private maxWidth:I

.field private minTextSize:F

.field private resizeStepUnit:I

.field private final textPaint:Landroid/text/TextPaint;

.field private final textSizesCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 33
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    .line 34
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    .line 35
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    .line 36
    iput v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    const/high16 v2, 0x41800000    # 16.0f

    .line 37
    iput v2, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->minTextSize:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 41
    iput v2, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingMultiplier:F

    const/4 v2, 0x0

    .line 42
    iput v2, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingExtra:F

    .line 46
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 33
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    .line 34
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    .line 35
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    .line 36
    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    const/high16 v1, 0x41800000    # 16.0f

    .line 37
    iput v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->minTextSize:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 41
    iput v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingMultiplier:F

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingExtra:F

    .line 51
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    .line 34
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    .line 35
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    const/high16 v1, 0x41800000    # 16.0f

    .line 37
    iput v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->minTextSize:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 41
    iput v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingMultiplier:F

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingExtra:F

    .line 56
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    .line 34
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    .line 35
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    const/high16 v0, 0x41800000    # 16.0f

    .line 37
    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->minTextSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingMultiplier:F

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingExtra:F

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private adjustTextSize()V
    .locals 3

    .line 186
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 187
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v0, :cond_1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->maxWidth:I

    .line 194
    iget-object v2, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v2, Landroid/graphics/RectF;->right:F

    int-to-float v0, v1

    .line 195
    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 196
    iget v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->minTextSize:F

    invoke-direct {p0, v0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->convertToResizeStepUnits(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 197
    iget v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->maxTextSize:F

    invoke-direct {p0, v1}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->convertToResizeStepUnits(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 198
    iget-object v2, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->computeTextSize(IILandroid/graphics/RectF;)F

    move-result v0

    .line 200
    iget v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    invoke-super {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private binarySearchSizes(IILandroid/graphics/RectF;)I
    .locals 5

    add-int/lit8 v0, p1, 0x1

    :goto_0
    if-gt v0, p2, :cond_1

    add-int p1, v0, p2

    .line 263
    div-int/lit8 p1, p1, 0x2

    .line 264
    iget v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    int-to-float v2, p1

    iget-object v3, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 265
    invoke-direct {p0, v1, p3}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->suggestedSizeFitsInSpace(FLandroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    move v4, v0

    move v0, p1

    move p1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    move p2, p1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private computeTextSize(IILandroid/graphics/RectF;)F
    .locals 3

    .line 242
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object p0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 246
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->binarySearchSizes(IILandroid/graphics/RectF;)I

    move-result p1

    .line 247
    iget-object p0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    if-nez v0, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    int-to-float p0, p1

    return p0
.end method

.method private convertToResizeStepUnits(F)F
    .locals 2

    .line 279
    iget v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    iget-object p0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    div-float/2addr v1, p0

    mul-float/2addr p1, v1

    return p1
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/google/android/libraries/material/autoresizetext/R$styleable;->AutoResizeTextView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->readAttrs(Landroid/content/res/TypedArray;)V

    .line 70
    iget-object p1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    return-void
.end method

.method private readAttrs(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 178
    sget v0, Lcom/google/android/libraries/material/autoresizetext/R$styleable;->AutoResizeTextView_autoResizeText_resizeStepUnit:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    .line 180
    sget v0, Lcom/google/android/libraries/material/autoresizetext/R$styleable;->AutoResizeTextView_autoResizeText_minTextSize:I

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->minTextSize:F

    .line 182
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->maxTextSize:F

    return-void
.end method

.method private suggestedSizeFitsInSpace(FLandroid/graphics/RectF;)Z
    .locals 11

    .line 204
    iget-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 205
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getMaxLines()I

    move-result p1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne p1, v9, :cond_1

    .line 209
    iget-object p1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result p1

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    .line 210
    invoke-virtual {p0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    iget p1, p2, Landroid/graphics/RectF;->right:F

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    move v8, v9

    :cond_0
    return v8

    .line 214
    :cond_1
    new-instance v10, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->maxWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 218
    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getLineSpacingMultiplier()F

    move-result v5

    .line 219
    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getLineSpacingExtra()F

    move-result v6

    const/4 v7, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    const/4 p0, -0x1

    if-eq p1, p0, :cond_2

    .line 223
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p0

    if-le p0, p1, :cond_2

    return v8

    .line 227
    :cond_2
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_3

    return v8

    :cond_3
    return v9
.end method


# virtual methods
.method public final getLineSpacingExtra()F
    .locals 2

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 104
    invoke-super {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result p0

    return p0

    .line 106
    :cond_0
    iget p0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingExtra:F

    return p0
.end method

.method public final getLineSpacingMultiplier()F
    .locals 2

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 94
    invoke-super {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result p0

    return p0

    .line 96
    :cond_0
    iget p0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingMultiplier:F

    return p0
.end method

.method public final getMaxLines()I
    .locals 2

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 77
    invoke-super {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p0

    return p0

    .line 79
    :cond_0
    iget p0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->maxLines:I

    return p0
.end method

.method protected final onMeasure(II)V
    .locals 0

    .line 301
    invoke-direct {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->adjustTextSize()V

    .line 302
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    .line 292
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 295
    invoke-direct {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->adjustTextSize()V

    :cond_1
    return-void
.end method

.method protected final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 286
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 287
    invoke-direct {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->adjustTextSize()V

    return-void
.end method

.method public final setLineSpacing(FF)V
    .locals 0

    .line 115
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 116
    iput p2, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingMultiplier:F

    .line 117
    iput p1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingExtra:F

    return-void
.end method

.method public final setMaxLines(I)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 87
    iput p1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->maxLines:I

    return-void
.end method

.method public final setMinTextSize(IF)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 153
    iget p2, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->minTextSize:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_0

    .line 154
    iput p1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->minTextSize:F

    .line 155
    iget-object p1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 156
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setResizeStepUnit(I)V
    .locals 1

    .line 171
    iget v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    if-eq v0, p1, :cond_0

    .line 172
    iput p1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    .line 173
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setTextSize(IF)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 132
    iget p2, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->maxTextSize:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_0

    .line 133
    iput p1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->maxTextSize:F

    .line 138
    iget-object p1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 139
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_0
    return-void
.end method
