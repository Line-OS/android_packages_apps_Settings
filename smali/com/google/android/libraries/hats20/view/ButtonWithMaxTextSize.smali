.class public Lcom/google/android/libraries/hats20/view/ButtonWithMaxTextSize;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "ButtonWithMaxTextSize.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/hats20/view/ButtonWithMaxTextSize;->capTextSize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/hats20/view/ButtonWithMaxTextSize;->capTextSize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private capTextSize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 37
    sget-object v0, Lcom/google/android/libraries/hats20/R$styleable;->ButtonWithMaxTextSize:[I

    .line 38
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 40
    invoke-virtual {p0}, Landroid/widget/Button;->getTextSize()F

    move-result p2

    .line 41
    sget v0, Lcom/google/android/libraries/hats20/R$styleable;->ButtonWithMaxTextSize_textSizeMaxDp:I

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    .line 44
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    .line 45
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
