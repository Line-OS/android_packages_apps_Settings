.class public Lcom/google/android/material/card/MaterialCardView;
.super Landroidx/cardview/widget/CardView;
.source "MaterialCardView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/card/MaterialCardView$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKABLE_STATE_SET:[I

.field private static final CHECKED_STATE_SET:[I

.field private static final DEF_STYLE_RES:I

.field private static final DRAGGED_STATE_SET:[I


# instance fields
.field private final cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

.field private checked:Z

.field private final contentLayout:Landroid/widget/FrameLayout;

.field private dragged:Z

.field private final isParentCardViewDoneInitializing:Z

.field private onCheckedChangeListener:Lcom/google/android/material/card/MaterialCardView$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x101009f

    aput v3, v1, v2

    .line 88
    sput-object v1, Lcom/google/android/material/card/MaterialCardView;->CHECKABLE_STATE_SET:[I

    new-array v1, v0, [I

    const v3, 0x10100a0

    aput v3, v1, v2

    .line 89
    sput-object v1, Lcom/google/android/material/card/MaterialCardView;->CHECKED_STATE_SET:[I

    new-array v0, v0, [I

    .line 90
    sget v1, Lcom/google/android/material/R$attr;->state_dragged:I

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/card/MaterialCardView;->DRAGGED_STATE_SET:[I

    .line 92
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_CardView:I

    sput v0, Lcom/google/android/material/card/MaterialCardView;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 113
    sget v0, Lcom/google/android/material/R$attr;->materialCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 117
    sget v0, Lcom/google/android/material/card/MaterialCardView;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/internal/ThemeEnforcement;->createThemedContext(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    .line 105
    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->dragged:Z

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->isParentCardViewDoneInitializing:Z

    .line 120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 122
    sget-object v3, Lcom/google/android/material/R$styleable;->MaterialCardView:[I

    sget v5, Lcom/google/android/material/card/MaterialCardView;->DEF_STYLE_RES:I

    new-array v6, p1, [I

    move-object v1, v0

    move-object v2, p2

    move v4, p3

    .line 123
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 127
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/material/card/MaterialCardView;->contentLayout:Landroid/widget/FrameLayout;

    .line 128
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->contentLayout:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance v0, Lcom/google/android/material/card/MaterialCardViewHelper;

    sget v2, Lcom/google/android/material/card/MaterialCardView;->DEF_STYLE_RES:I

    invoke-direct {v0, p0, p2, p3, v2}, Lcom/google/android/material/card/MaterialCardViewHelper;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    .line 133
    iget-object p2, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getCardBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCardBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 134
    iget-object p2, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    .line 135
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingLeft()I

    move-result p3

    .line 136
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingTop()I

    move-result v0

    .line 137
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingRight()I

    move-result v2

    .line 138
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingBottom()I

    move-result v3

    .line 134
    invoke-virtual {p2, p3, v0, v2, v3}, Lcom/google/android/material/card/MaterialCardViewHelper;->setUserContentPadding(IIII)V

    .line 141
    invoke-super {p0, p1, p1, p1, p1}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    .line 142
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p1, v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->loadFromAttributes(Landroid/content/res/TypedArray;)V

    .line 143
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardView;->updateContentLayout()V

    .line 145
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$001(Lcom/google/android/material/card/MaterialCardView;)F
    .locals 0

    .line 73
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getRadius()F

    move-result p0

    return p0
.end method

.method private updateContentLayout()V
    .locals 2

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->createOutlineProvider(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getCardBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method getCardViewRadius()F
    .locals 0

    .line 231
    invoke-static {p0}, Lcom/google/android/material/card/MaterialCardView;->access$001(Lcom/google/android/material/card/MaterialCardView;)F

    move-result p0

    return p0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 511
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getCheckedIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 0

    .line 542
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getCheckedIconTint()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getContentPaddingBottom()I
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getUserContentPadding()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public getContentPaddingLeft()I
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getUserContentPadding()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public getContentPaddingRight()I
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getUserContentPadding()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public getContentPaddingTop()I
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getUserContentPadding()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public getRadius()F
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getCornerRadius()F

    move-result p0

    return p0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 500
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getStrokeColor()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getStrokeColor()I

    move-result p0

    return p0
.end method

.method public getStrokeColorStateList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getStrokeColorStateList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getStrokeWidth()I
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->getStrokeWidth()I

    move-result p0

    return p0
.end method

.method public isCheckable()Z
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->isCheckable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 379
    iget-boolean p0, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    return p0
.end method

.method public isDragged()Z
    .locals 0

    .line 402
    iget-boolean p0, p0, Lcom/google/android/material/card/MaterialCardView;->dragged:Z

    return p0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x3

    .line 441
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 442
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->CHECKABLE_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    .line 450
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isDragged()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 451
    sget-object p0, Lcom/google/android/material/card/MaterialCardView;->DRAGGED_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_2
    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 150
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 151
    const-class v0, Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isCheckable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isCheckable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 154
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isClickable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 165
    invoke-super {p0, p1, p2}, Landroidx/cardview/widget/CardView;->onMeasure(II)V

    .line 166
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->onMeasure(II)V

    return-void
.end method

.method public removeAllViews()V
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public removeViews(II)V
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViews(II)V

    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViewsInLayout(II)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 353
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 358
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->isParentCardViewDoneInitializing:Z

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->isBackgroundOverwritten()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MaterialCardView"

    const-string v1, "Setting a custom background is not supported."

    .line 360
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setBackgroundOverwritten(Z)V

    .line 363
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 370
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCardBackgroundColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCardBackgroundColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 0

    .line 292
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 293
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateElevation()V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCheckable(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 384
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    if-eq v0, p1, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->toggle()V

    :cond_0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 531
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 553
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCheckedIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 286
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 287
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateClickable()V

    return-void
.end method

.method setContentLayoutPadding(IIII)V
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public setDragged(Z)V
    .locals 1

    .line 394
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->dragged:Z

    if-eq v0, p1, :cond_0

    .line 395
    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->dragged:Z

    .line 396
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    .line 397
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 276
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 278
    instance-of v1, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 279
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 280
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 0

    .line 298
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    .line 299
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateInsets()V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/material/card/MaterialCardView$OnCheckedChangeListener;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->onCheckedChangeListener:Lcom/google/android/material/card/MaterialCardView$OnCheckedChangeListener;

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 0

    .line 311
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    .line 312
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateInsets()V

    .line 313
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateContentPadding()V

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    .line 220
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 221
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setCornerRadius(F)V

    .line 222
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardView;->updateContentLayout()V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    .line 488
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 487
    invoke-virtual {v0, p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->setRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setStrokeWidth(I)V

    .line 209
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardView;->updateContentLayout()V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 0

    .line 304
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setUseCompatPadding(Z)V

    .line 305
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateInsets()V

    .line 306
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateContentPadding()V

    return-void
.end method

.method public toggle()V
    .locals 2

    .line 427
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    .line 429
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    .line 430
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->forceRippleRedraw()V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->onCheckedChangeListener:Lcom/google/android/material/card/MaterialCardView$OnCheckedChangeListener;

    if-eqz v0, :cond_1

    .line 434
    iget-boolean v1, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    invoke-interface {v0, p0, v1}, Lcom/google/android/material/card/MaterialCardView$OnCheckedChangeListener;->onCheckedChanged(Lcom/google/android/material/card/MaterialCardView;Z)V

    :cond_1
    return-void
.end method
